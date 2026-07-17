# Agentic Audit Brief: Synthetix

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 1 (0 matched; 1 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Synthetix (`synthetix`)
- Website: [https://synthetix.io](https://synthetix.io)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, arbitrum-sepolia, base, base-sepolia, ethereum, optimism, sepolia
- Contract surface: 275 unique implementations (459 raw deployments)
- Coverage basis: 0/15 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $1,304,903.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Synthetix. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 16 contract row(s) across arbitrum, arbitrum-sepolia, base, base-sepolia, ethereum, optimism, sepolia. Structural roles: 9 supporting, 4 unclassified, 2 core, 1 infra. 5 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 16
- Structural roles: supporting (9), unclassified (4), core (2), infra (1)
- Contract kinds: contract (13), abstract (3)
- Detected standards: erc1967proxy (5), erc165 (1)
- Frameworks: openzeppelin (4), openzeppelin-upgradeable (1)
- Upgradeable-pattern rows: 5

## Fork Analysis

0 of 89 contracts are derived from known codebases. 89 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x0aaf300e148378489a8a471dd3e9e53e30cb42e3`, chain 1)
- UnnamedContract (`0x0e429603d3cb1dfae4e6f52add5fe82d96d77dac`, chain 1)
- UnnamedContract (`0x10a5f7d9d65bcc2734763444d4940a31b109275f`, chain 1)
- UnnamedContract (`0x200d50e61ad543086081e58518f2def6278f27a9`, chain 1)
- UnnamedContract (`0x2cd12ccac6f869650ba88a220b2eb91a937fa5c0`, chain 1)
- UnnamedContract (`0x3f3ed1002f55121b8213182f09d4be544e08b9f9`, chain 1)
- UnnamedContract (`0x7b952507306e7d983bcfe6942ac9f2f75c1332d8`, chain 1)
- UnnamedContract (`0xb2f30a7c980f052f02563fb518dcc39e6bf38175`, chain 1)
- UnnamedContract (`0xc011a73ee8576fb46f5e1c5751ca3b9fe0af2a6f`, chain 1)
- UnnamedContract (`0xd711709efc452152b7ad11dbd01ed4b69c9421b3`, chain 1)
- UnnamedContract (`0xe2c5658cc5c448b48141168f3e475df8f65a1e3e`, chain 1)
- UnnamedContract (`0x08b2a7e830258f28c9c04501447a8bc83dce42be`, chain 10)
- UnnamedContract (`0x0aaf300e148378489a8a471dd3e9e53e30cb42e3`, chain 10)
- UnnamedContract (`0x0e429603d3cb1dfae4e6f52add5fe82d96d77dac`, chain 10)
- UnnamedContract (`0x38908ee087d7db73a1bd1ecab9aab8e8c9c74595`, chain 10)
- UnnamedContract (`0x4200000000000000000000000000000000000006`, chain 10)
- UnnamedContract (`0x421dec7c865469128c76f910351df693cbf6bf04`, chain 10)
- UnnamedContract (`0x5a41f634958db9183e9d0d1cd8dee439b6abb3bf`, chain 10)
- UnnamedContract (`0xa0639fbb49a5ae32e1309f17f2e553865d5b12fe`, chain 10)
- UnnamedContract (`0xb2f30a7c980f052f02563fb518dcc39e6bf38175`, chain 10)
- UnnamedContract (`0xdfa2d3a0d32f870d87f8a0d7aa6b9cdeb7bc5adb`, chain 10)
- UnnamedContract (`0xe2c5658cc5c448b48141168f3e475df8f65a1e3e`, chain 10)
- UnnamedContract (`0x09d51516f38980035153a554c26df3c6f51a23c3`, chain 8453)
- UnnamedContract (`0x2ae3f1ec7f1f5012cfeab0185bfc7aa3cf0dec22`, chain 8453)
- UnnamedContract (`0x2f64ad511c33a78080b114c5ef51370b31488e65`, chain 8453)
- UnnamedContract (`0x3526d453d1edb105e4e2b8448760fc501050d976`, chain 8453)
- UnnamedContract (`0x3d07cbc5cb9376a67e76c0655fe239dda8e2b264`, chain 8453)
- UnnamedContract (`0x4200000000000000000000000000000000000006`, chain 8453)
- UnnamedContract (`0x4d64e1fdcfd08081f0bf088c1e6b32087fef0237`, chain 8453)
- UnnamedContract (`0x4ea71a20e655794051d1ee8b6e4a3269b13ccacc`, chain 8453)
- UnnamedContract (`0x63f4dd0434beb5baecd27f3778a909278d8cf5b8`, chain 8453)
- UnnamedContract (`0x729ef31d86d31440ecbf49f27f7cd7c16c6616d2`, chain 8453)
- UnnamedContract (`0x7656bdee9f4e7a507fd0c5b2431d3f3690e20711`, chain 8453)
- UnnamedContract (`0x7a1b3db73e5b8c58edc8a821890005064f2b83fd`, chain 8453)
- UnnamedContract (`0x833589fcd6edb6e08f4c7c32d4f71b54bda02913`, chain 8453)
- UnnamedContract (`0x8f80b20efb6bcca7809997b4609094c63f315c32`, chain 8453)
- UnnamedContract (`0x90e42b97188f4e99466a06d1419b5a7fb367fe38`, chain 8453)
- UnnamedContract (`0xa7163fe9788bf14ccdac854131cac2c17d1a1676`, chain 8453)
- UnnamedContract (`0xc1cba3fcea344f92d9239c08c0568f6f2f0ee452`, chain 8453)
- UnnamedContract (`0xc302f3f74ec19d0917c7f19bca6775f7000a292a`, chain 8453)
- UnnamedContract (`0xc74ea762cf06c9151ce074e6a569a5945b6302e7`, chain 8453)
- UnnamedContract (`0xcb68b813210afa0373f076239ad4803f8809e8cf`, chain 8453)
- UnnamedContract (`0xcbb7c0000ab88b473b1f5afd9ef808440eed33bf`, chain 8453)
- UnnamedContract (`0xe8183a61d64ea44a430bb361467063535b769052`, chain 8453)
- UnnamedContract (`0xede1d04c864eeec40393ed4cb454b85a5abd071c`, chain 8453)
- UnnamedContract (`0xfa24be208408f20395914ba82def333d987e0080`, chain 8453)
- UnnamedContract (`0x0aaf300e148378489a8a471dd3e9e53e30cb42e3`, chain 42161)
- UnnamedContract (`0x0e429603d3cb1dfae4e6f52add5fe82d96d77dac`, chain 42161)
- UnnamedContract (`0x211cc4dd073734da055fbf44a2b4667d5e5fe5d2`, chain 42161)
- UnnamedContract (`0x28b69c6a5ddd5e370114b164e7a9cabf051b6b87`, chain 42161)
- UnnamedContract (`0x35751007a407ca6feffe80b3cb397736d2cf4dbe`, chain 42161)
- UnnamedContract (`0x3ec3feda50b718b5a9ff387f93eea7841d795b1e`, chain 42161)
- UnnamedContract (`0x5979d7b546e38e414f7e9822514be443a4800529`, chain 42161)
- UnnamedContract (`0x5d3a1ff2b6bab83b63cd9ad0787074081a52ef34`, chain 42161)
- UnnamedContract (`0x5eff594e10acb20919a577794c4e9b4bb1221f17`, chain 42161)
- UnnamedContract (`0x7301a8dbd293b85a06726ae12e433a829ba3b871`, chain 42161)
- UnnamedContract (`0x806b9d4b0a56b6d1d9cacb60aee95e8d885bd55a`, chain 42161)
- UnnamedContract (`0x82af49447d8a07e3bd95bd0d56f35241523fbab1`, chain 42161)
- UnnamedContract (`0x8b6d6416017de3d1dcac4158fe8a401c6b951fa8`, chain 42161)
- UnnamedContract (`0x8cb5d51099933e04baa1a32de3aded3dac35f13b`, chain 42161)
- UnnamedContract (`0x912ce59144191c1204e64559fe8253a0e49e6548`, chain 42161)
- UnnamedContract (`0x91935e21ad9a7b80981cfc10dffdd4cff0531c50`, chain 42161)
- UnnamedContract (`0x95af0bf00e365e6c7fd3e1de4413afd3e0b8da48`, chain 42161)
- UnnamedContract (`0x9ac841f5716fde2abd5e966695b8bbcc29d7cee5`, chain 42161)
- UnnamedContract (`0xa65538a6b9a8442854decb6e3f85782c60757d60`, chain 42161)
- UnnamedContract (`0xaf88d065e77c8cc2239327c5edb3a432268e5831`, chain 42161)
- UnnamedContract (`0xb2f30a7c980f052f02563fb518dcc39e6bf38175`, chain 42161)
- UnnamedContract (`0xb363932c7c56f2b6b684abbd63cc4515f015416a`, chain 42161)
- UnnamedContract (`0xb74da9fe2f96b9e0a5f4a3cf0b92dd2bec617124`, chain 42161)
- UnnamedContract (`0xd237f237356e456214ad5b57e0a962d632f1f3c5`, chain 42161)
- UnnamedContract (`0xd762960c31210cf1bdf75b06a5192d395eedc659`, chain 42161)
- UnnamedContract (`0xd935444f5dc75a407ed475c9f387e124911d36c6`, chain 42161)
- UnnamedContract (`0xe3ee09c200584228f7c45d50e12bcc3fb65c19ca`, chain 42161)
- UnnamedContract (`0xe81be4495f138fae5846d21ac2ca822bef452365`, chain 42161)
- UnnamedContract (`0xfa86ab03412ab63fea238d43d1e839c4f7a80232`, chain 42161)
- Proxy (`0x3acf163b9e6a384d539e10dac7e11213c638b2f5`, chain 1)
- Proxy (`0xffffffaeff0b96ea8e4f94b2253f31abdd875847`, chain 1)
- Proxy (`0x19f03fcf06204df85b2593145b87134d3366170c`, chain 10)
- Proxy (`0xffffffaeff0b96ea8e4f94b2253f31abdd875847`, chain 10)
- Proxy (`0x0a2af931effd34b81ebcc57e3d3c9b1e1de1c9ce`, chain 8453)
- Proxy (`0x18141523403e2595d31b22604acb8fc06a4caa61`, chain 8453)
- Proxy (`0x32c222a9a159782afd7529c87fa34b96ca72c696`, chain 8453)
- Proxy (`0xffffffaeff0b96ea8e4f94b2253f31abdd875847`, chain 42161)
- ProxyERC20 (`0x8700daec35af8ff88c16bdf0418774cb3d7599b4`, chain 10)
- PythERC7412Wrapper (`0x9cb0b428632fc7dc56fdf453aed890ba55b1953a`, chain 8453)
- RewardsDistributor (`0xe92bcd40849be5a5eb90065402e508af4b28263b`, chain 8453)
- TransparentUpgradeableProxy (`0x6c84a8f1c29108f47a79964b5fe888d4f4d0de40`, chain 42161)
- TrustedMulticallForwarder (`0xe2c5658cc5c448b48141168f3e475df8f65a1e3e`, chain 8453)
- TrustedMulticallForwarder (`0xe2c5658cc5c448b48141168f3e475df8f65a1e3e`, chain 42161)

## Contract Surface Quality

- Logic-topography rows: 16; live-surface rows included: 16 (15 live, 1 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 89/176 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/15 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 90 own, 86 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 99 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 3 standard proxy/library)
- Proxy deployments represented within implementation groups: 13
- Confirmed-live implementations: 90 of 275 unique; 185 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/85
- Verified + Unaudited implementations: 85
- Verified by bytecode match: 0
- Unverified implementations: 190
- Unique implementations: 275
- Raw deployments: 459
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-04 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (85)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AccountModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 8 deployments: optimism `0x12a948d2fb8f22baeb62baa620f8fbef65ec89e9`; optimism `0x1628476203829db18e4df095d3c67e9344f4712b`; optimism `0x3b078d6c1b6d114815c495c99b177200a4872649`; optimism `0x435358abcfd3e85563ae88665fbb2033c1a003ec`; optimism `0x786e8e0d0c9da1cf9379c27b037d3ae6b0a78923`; optimism `0xd007f8832c34c0c203d127103d588bc31085ce2d`; base `0x35606ad42990c243175590312791c3e24fc69a8d`; base `0xd5fccd43205cef11fbaf9b38df15adbe1b186869` | ⚠️ Unaudited |
| AccountRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 3 deployments: optimism `0x52899a903a9585329c38f6e89e1f110c2e0f6665`; base `0x7e06f2b2199d91f620e6967f1c7d594e77a3ac67`; base `0x7f222729bc07418083ae0593f22b47ef0bdc7d3e` | ⚠️ Unaudited |
| AccountTokenModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 3 deployments: optimism `0x9977bd49df09ec3fad35e15048f768d95ecb9743`; base `0xd10cd91683301c8c15eda40f59e73d1b0bcfecdd`; base `0xf28e37715ed3587197e993d0c6cac7d4ecbc11a1` | ⚠️ Unaudited |
| AssociateDebtModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 12 deployments: optimism `0x098be3ba54dbc6674e08e91ce38f75928dc97a87`; optimism `0x12e3f8d1d01f8534c685fa4d99cbc31597dc9332`; optimism `0x1588fc106e9c0d7fed56844e0fc05f7a050a36b2`; optimism `0x1a122d3c4269470c767c5ead22ed09d1f387a0f4`; optimism `0x2436703abb814dff0f5b394fd28eb5dd1e7da400`; optimism `0x7782a4d1d211fa34cedacff8fb4269167a93ca30`; optimism `0xc09a31d7fcade6d48ad37ab72833a34600c21b9b`; optimism `0xd57521750a45a78d656c0ebbcce92299c302d025`; optimism `0xe4895414f246b26fbf62bf391784c8ff7d523135`; optimism `0xef35b98d2e2bba6717fbf12130f741e573dde7cb`; base `0x2f9158edc43d5a0c78215de7b02680a35af231aa`; base `0x3091acaeaf27985f33a8a4b0eefea49dc60c8506` | ⚠️ Unaudited |
| AssociatedSystemsModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: base `0x0daea0367d7b82644c4db4d992cf4ba39c8a359c`; base `0xdae65a48f9885b8bbf7d6c4f9dc472b65a917515` | ⚠️ Unaudited |
| AsyncOrderCancelModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 3 deployments: base `0x0b08d567d1893d9e0b48e61d1f9ecd9d7c6b11ee`; base `0xd7c1eaca5843230e94fb35bef9111b6a9bd96b34`; base `0xfb10377f5de8f393c9d00213ea34d530e575e86a` | ⚠️ Unaudited |
| AsyncOrderConfigurationModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: base `0x72054fbdadba5b8619de02bfe8bca34276e1b940`; base `0x86770a2940eff6a778768592b42a6668ffb162a4` | ⚠️ Unaudited |
| AsyncOrderModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 5 deployments: base `0x17163332e58c05085aed6fde4fc745a9dd58374d`; base `0x4636c5edcafce169b5d5abd984b071f47ea6a10e`; base `0x740444afa4f5a7cd569a7714d5252a35dc1fe299`; base `0xad35498d97f3b1a0b99de42da7ad81c91156ba77`; base `0xdb497a95771f7f50541a220737b14ae0b1069eec` | ⚠️ Unaudited |
| AsyncOrderSettlementModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: base `0x98d601e04527a0acbb603bad845d9b7b8840de1c`; base `0xf326884b44005eda6ed8a8fc2ab020517b538d74` | ⚠️ Unaudited |
| AsyncOrderSettlementPythModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 3 deployments: base `0x030c3c458cce7c77f05e7b0826226609da350242`; base `0x66afccba827d911f0b32bda69c22d38e07fa920e`; base `0xb1204d3fffeaea354f2f04779bedcd0d8f3598fa` | ⚠️ Unaudited |
| AtomicOrderModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: base `0x4e8f55f1948d3e61a1fd3cd38ce05efc77bffeb5`; base `0x6d9a85c7362af9238a9951f15ca41c8341dde85e` | ⚠️ Unaudited |
| CcipReceiverModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: base `0x46f438c7b0c9fabf03d21eacfa1aec9e075c6e7a`; base `0x978d4b5438d3e4edf4f03682e5a53b48e56604c5` | ⚠️ Unaudited |
| CollateralConfigurationModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 4 deployments: optimism `0x5d94ee64c5e698dbeeb95a3d0d5a0d4b8b8bc647`; optimism `0x7c67fe1ca0a66faad30046cb9492ac13ffa4b08b`; base `0xb16a8b06318c78c274f3bbc5cc5c9191b0d0c1a3`; base `0xfc10ce0c846b990bf02864eb61e6e2d050643a41` | ⚠️ Unaudited |
| CollateralModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 13 deployments: optimism `0x12346f9443b458779ff20dee55a12432b2097f8d`; optimism `0x3caa810450ce5473a1a0d386e29a03f4a3c18e36`; optimism `0x5c4909b982a106f9f59bd8d6b44c4d38b18e064e`; optimism `0x5e528cb7cfe590e05785132f98aa7027214e9381`; optimism `0x8e4461e20efe5356ece53ebf6765539bacf11ec5`; optimism `0x91727101c1dfa8ef96dd7c7ba9af6a8c9a3df1a3`; optimism `0x9476e8882b8dec9ddc598501b5bdd5c9c3ad9d9e`; optimism `0xbdef7a8a2ca34d51eb2ff3bfac65e17e9b421b64`; optimism `0xcbcdab832df1c5257cefbb55850bc4c90c944ea6`; optimism `0xeb30f42da93c20e921247a56bbf09859a2626d26`; optimism `0xef738d5590e25fccb696205984e6e3551a9a81f9`; base `0x7ea002b383e875bf522031cbbde09f2b27e1ca5d`; base `0xe082bd0ac75c78196f312150a298ade27aebecb0` | ⚠️ Unaudited |
| CoreModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: base `0x7bc5eced96aec561012c5274bc7fce49e1c8414b`; base `0xf12b26b9f28a0220b98d1fbbb7737df699b59202` | ⚠️ Unaudited |
| CoreRouter | adapter | project_anchor | own_supporting | 1 | ethereum | unit-393822 | `0xffffffaeff0b96ea8e4f94b2253f31abdd875847` | ⚠️ Unaudited |
| CoreRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 5 deployments: optimism `0x32ed65f810dfce7baf3aa643d7414b8731108002`; optimism `0x71727feb6a1d21b96308bad1991c918fb1bd840f`; optimism `0xe3b41fe8769a00c25a88f57cb23d892312c60e0e`; base `0x6c3edb904fb33db2685af20916d44fe68831cfe1`; base `0xaae20df4f3caea488350ee1e919e0474155bc639` | ⚠️ Unaudited |
| CoreRouter | adapter | project_anchor | own_supporting | 1 | optimism | unit-393823 | `0xffffffaeff0b96ea8e4f94b2253f31abdd875847` | ⚠️ Unaudited |
| CoreRouter | adapter | project_anchor | own_supporting | 1 | base | unit-393828 | `0x32c222a9a159782afd7529c87fa34b96ca72c696` | ⚠️ Unaudited |
| CoreRouter | adapter | project_anchor | own_supporting | 1 | arbitrum | unit-393825 | `0xffffffaeff0b96ea8e4f94b2253f31abdd875847` | ⚠️ Unaudited |
| CrossChainUSDModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: base `0xcee7529e30b39340ba6a181829c5881f7d5b433d`; base `0xf5c78bab6d1e52ea3c2be6c657bb4ef29244e0f5` | ⚠️ Unaudited |
| DebtRepayer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xbd8004ea5c73e33d405d35d594221efc733f7e37` | ⚠️ Unaudited |
| Depot | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x15ed8dcd6d5d7c9e66a28cb70673389a5dc4fcf5` | ⚠️ Unaudited |
| ExchangeRates | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x73b172756bd5ddf0110ba8d7b88816eb639eb21c` | ⚠️ Unaudited |
| FeatureFlagModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 6 deployments: base `0x27a64e368cf200c4d106b3f225cdbb2d02448376`; base `0x569e1a3ca9ae30416d2cbfe9a8e43538f35bdc8d`; base `0x6a8a998a0c4a7c687cee4e362f64481b2bd8bee5`; base `0x7e23088eebf14489a3c57419eee809e65b42faee`; base `0xd966c6382cc0f2ae1980e3cec040d5a725f58d70`; base `0xe00ce119a2be16c88299fb96859f969030deddbc` | ⚠️ Unaudited |
| FeePool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xebdbac38835a1105851e80c7fa1f1e6e25a86e32` | ⚠️ Unaudited |
| GlobalPerpsMarketModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 3 deployments: base `0x0ddf6f7653676b87138c2f89dca7fcafb2eb3eac`; base `0xdebc936c5adfd1331e5fa4ae76db7197283342d0`; base `0xf9332c9869aa5757c44992f5b5a804a61930319d` | ⚠️ Unaudited |
| GnosisSafe | governance | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0xeb3107117fead7de89cd14d463d340a2e6917769` | ⚠️ Unaudited |
| GnosisSafeL2 | governance | non_address_book | standard_proxy_or_library (excluded) | 1 | base | n/a | `0xbb63ca5554dc4ccaca4edd6ecc2837d5efe83c82` | ⚠️ Unaudited |
| GnosisSafeL2 | governance | non_address_book | standard_proxy_or_library (excluded) | 1 | arbitrum | n/a | `0xd3dfa13cdc7c133b1700c243f03a8c6df513a93b` | ⚠️ Unaudited |
| InitialModuleBundle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x6dff970f25f7dcb049a9f9688ed8b537a528bc34` | ⚠️ Unaudited |
| Issuer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 3 deployments: optimism `0x16476e5cafc73def792ff82a42372468f63bd571`; optimism `0x232ee7840a0747a006afd044f47d1abf0a28b889`; optimism `0x49acf95f875984ff57e1bb8b9ba49c5487c133a7` | ⚠️ Unaudited |
| IssueUSDModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 11 deployments: optimism `0x058dc95f4628dcf7cbfe702fce0ec433c6d094f7`; optimism `0x0a1708b3a55dbbae213fdd1ef46b8553c0660400`; optimism `0x3a6061c7642f1df8503e6eb8a599d7d8b4317524`; optimism `0x5c68b59302362549672b09b779e34017a933776d`; optimism `0x608bb88f181232b54e0da1158cadf6bfcf201718`; optimism `0x7beac3243bdb6c2420fc1a930e5632dd4f21670c`; optimism `0xcf195ee68bd6cae922e37ea5c0a9e885fb360fa2`; optimism `0xe63606f6bf674ff9ddc1cfb1175becefa13d59a4`; optimism `0xf02b4c1db13210bfe792def4d6f700c7d2727f92`; base `0xb3da45dea391b0be38f41c6214ff3c0530baa25c`; base `0xe8f3c0a64fa3d76942521923352f9ddfbb3763b9` | ⚠️ Unaudited |
| L2TBTC | unknown | project_anchor | own_supporting | 1 | arbitrum | unit-393826 | `0x6c84a8f1c29108f47a79964b5fe888d4f4d0de40` | ⚠️ Unaudited |
| LegacyMarket | unknown | project_anchor | own_supporting | 1 | ethereum | unit-393821 | `0x3acf163b9e6a384d539e10dac7e11213c638b2f5` | ⚠️ Unaudited |
| LegacyMarket | unknown | project_anchor | own_supporting | 1 | optimism | unit-393824 | 2 deployments: optimism `0x19f03fcf06204df85b2593145b87134d3366170c`; optimism `0xa9056e68fabeb1cfaecb5a223c25eb02d13348ab` | ⚠️ Unaudited |
| LegacyMarket | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 2 deployments: optimism `0x24a3074e41b534480b210e6198f40d9d98f23dba`; optimism `0x8835327cbde544e3356906bc2fda258cd0c66f86` | ⚠️ Unaudited |
| LiquidationModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 14 deployments: optimism `0x23e1614f360ca09fd1c431df52d44abcd1b65d10`; optimism `0x4cb44de9e943347e701e9a1d3d80004ee1e9159e`; optimism `0x6e045e3ad60755e5c97a4d15332e4088520b8424`; optimism `0x7a135113253b6ae26af65e6bdcab94ddcdd2ba67`; optimism `0x93ee4d85c5029d4120ee0ad3d7f1691205f5d677`; optimism `0x973e9acd09a47b2e375fcc7ee4112a6e3adc354f`; optimism `0xaa2c0b23517a0ca1b58fac3aed3ffce29b8e95f9`; optimism `0xd5603b6e20eb04cb7b73af3746f69d010f11d74a`; optimism `0xe1ba4af6e3b76af365a391d9d1ed75caecbdc965`; base `0x661a88b7720391d199b1dfbebaf01fe49fd6f9ba`; base `0x6f7e8eb502cefe31a0565390cf6a17e50a237a02`; base `0x72e13c7c96b6bf4825e9f61350b0a4f22fd807d2`; base `0x94433f0da8b5bfb473ea8cd7ad10d9c8aef4ab7b`; base `0xbc4804f67fd066724aaba67a732b97a0ad07088b` | ⚠️ Unaudited |
| MarketCollateralModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 5 deployments: optimism `0x8b9b5a5b9c438729a8ade38a0432a3f3ab3497f1`; optimism `0x91b6181977a0eb4089e1bdee34734454a21ac9e9`; optimism `0xbb46f9fb7bb2c73c9486148bfc70bcdf6a2beaaf`; base `0xa29c7b06ffe455f7fe20c1a080204ee5c9b729f0`; base `0xf326af86ff32b430d7ba01e9bce198246ef2b027` | ⚠️ Unaudited |
| MarketConfigurationModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 5 deployments: base `0x1174e8895d4302bbedd8f97bec298735d9f7f65e`; base `0x38c9e00b2a6029d4e59ab44199682315f5de1801`; base `0x6ebf18cb998f3fa0d800fc58c667d1e50c389caa`; base `0xb919ed11d5e73af41fabbaeb14e617516073229b`; base `0xc2993002d4b6eb1dd5227b35101a900317e1fa62` | ⚠️ Unaudited |
| MarketManagerModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 3 deployments: optimism `0x0cb4bf413d8eabe0f7892eaae9f69f3fa31094dc`; base `0x758a399e97d9d7f0253a854af451e6d1275e72e4`; base `0xf273aa2e230e317fc13b93e6a65ebccbe89dd93e` | ⚠️ Unaudited |
| Migration_HanOptimism | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x36082579990559a9e72380715019e2cdd2d27e2e` | ⚠️ Unaudited |
| MultipleMerkleDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 3 deployments: optimism `0x6fa4b55c8b9adc03129c3796414d44ca0ef50764`; optimism `0xa059f505d5feda7f80e4ea442709c7220210aa01`; optimism `0xd2a4c0ebe11ae384426aa1615a0a1b6f68288421` | ⚠️ Unaudited |
| NodeModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 3 deployments: optimism `0x1fa92386075f90e7a12fb33e448494bb1c3fe786`; base `0x67a5a7785d0ebd65e44eab4fec55ca81c80c95b1`; base `0x94d473d05a3882929b2c2af1772870a9ad602b77` | ⚠️ Unaudited |
| OracleRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 3 deployments: optimism `0x27d97fa42409251e3ff4bb614ca93d6a0d5562cb`; base `0x3f5ec5ef9d26ebbe7d431ecb36d0b74cd0da0a2d`; base `0xb5dc6c08d7019fea2e4bde577c2951ff4f529000` | ⚠️ Unaudited |
| Permit2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x000000000022d473030f116ddee9f6b43ac78ba3` | ⚠️ Unaudited |
| PerpsAccountModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 4 deployments: base `0x12de5755104ac1a9c20ad8ffff8056ca9979f95f`; base `0x484dd4359453e9f6e685330483d21d69247fd4b7`; base `0x4a047176bc791acfd4684d69b4bbdf7a57b8f0d6`; base `0x7417024f4715017cc5be705be65e351c6e8d22bf` | ⚠️ Unaudited |
| PerpsMarketFactoryModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 3 deployments: base `0x60f83b3dc91ff77791c4d4d3b3e436deba07e266`; base `0x9e731770429ea5bd9cb43811c44870cbe2021659`; base `0xd002ba55e959fa69573a17f18db5fcd87dacf0ce` | ⚠️ Unaudited |
| PerpsMarketModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 3 deployments: base `0x0ac30c0a05e1750ec2b9314d17a79404833caa73`; base `0xe0d1a14ebc3bc4460feeb67a45c8198063ccc7c7`; base `0xe779136cb09728ab8cc279b7c5ce1eb9d2d7dc60` | ⚠️ Unaudited |
| PerpsMarketRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 4 deployments: base `0x020eda8cc1370a32164ee738ffa61dc953c81c3c`; base `0x0f5ccde20910487076bc97cf04ea7242b57cafc0`; base `0x5e28b2910c0a20bc367924e4a3a8f05e828e9540`; base `0xdcc310859747a60ffb9da1dd806a4771b8c06ac6` | ⚠️ Unaudited |
| PerpsMarketRouter | adapter | project_anchor | own_supporting | 1 | base | unit-393829 | `0x0a2af931effd34b81ebcc57e3d3c9b1e1de1c9ce` | ⚠️ Unaudited |
| Pool420 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 7 deployments: optimism `0x22f86f928a6575397359b3c93c8895d1e6201cdc`; optimism `0x24c001dabfe4fb364eb205681bdae2b72595fe1e`; optimism `0x29f2f1d9266a0a65ae7a5cf8f5d24a1c33326ab0`; optimism `0x2fd250e33bf538f5b1af81493339b42e5c77b308`; optimism `0x2ffba70532ef45cf5e87b916009df5faa8859113`; optimism `0x5032c196d9cb343f22e09834e9b61eef355fb675`; optimism `0xa3fdf801e44fb04f1895adee105ae0be5fb31bea` | ⚠️ Unaudited |
| Pool420Migrate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x2305f5f9ef3abf0d6d02411aca44f85113b247af` | ⚠️ Unaudited |
| Pool420Withdraw | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 2 deployments: optimism `0x67108f978cdb95e3a316c4366ee1a61fa9071cce`; optimism `0x74177d22f068258e31674422925ced74586b446d` | ⚠️ Unaudited |
| PoolConfigurationModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 3 deployments: optimism `0x3093cbba626e60e4164975f5b15dd1c0d03bf927`; base `0x2fac3593fb5cc89c626fa296a0ab723fa3415eac`; base `0x3f10b7157c1da14d5429790959eba750c17a8c46` | ⚠️ Unaudited |
| PoolModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 3 deployments: optimism `0x600f30c285c11f1a94f282a933b24fb5fda13cf3`; base `0x02696911702740f85ed8ad8b6de6c37e44026b03`; base `0xbcc471ec390e59f3d5f77e9a8bb24cd26d29bfb7` | ⚠️ Unaudited |
| PositionManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 2 deployments: optimism `0x040962686ee34247f6837e7efd47e1eaf8510115`; optimism `0x8d99de5c3528883fcb9ccfa8e13fff6330e45cdb` | ⚠️ Unaudited |
| PositionManagerNewPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x693cd986b8b840607d3c7952f038bc22da636f48` | ⚠️ Unaudited |
| Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 10 deployments: ethereum `0x29a904eecbcab49b667b2f5a1e5d5ad72065f7d0`; ethereum `0x3eb064766109d150e4362222df80638bce00e037`; ethereum `0x559e848a1b6a7afc69ee27f8d20280a42628b2cf`; ethereum `0x62492f15cf60c5847d3053e482cade8c5c29af88`; ethereum `0x64d5df8fe2b69031c136ab515e504394d0f09a99`; ethereum `0xb440dd674e1243644791a4adfe3a2abb0a92d309`; ethereum `0xdce506b196b0df677d07e718f872cac9bc368a33`; ethereum `0xe05d803fa0c5832fa2262465290abb25d6c2bfa3`; ethereum `0xed4699f180a14b5974c26f494483f9c327fd381a`; ethereum `0xf48129784a3f4bc39d66874b45585dd08a713258` | ⚠️ Unaudited |
| ProxyERC20 | token | project_anchor | own_supporting | 0 | optimism | unit-393672 | `0x8700daec35af8ff88c16bdf0418774cb3d7599b4` | ⚠️ Unaudited |
| PythERC7412Wrapper | unknown | project_anchor | own_supporting | 0 | base | unit-393778 | `0x9cb0b428632fc7dc56fdf453aed890ba55b1953a` | ⚠️ Unaudited |
| RetiredSynthsUSD | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x9614b0d381c3c08449b4e569f0e280252cdcb1c3` | ⚠️ Unaudited |
| RewardsDistributor | unknown | project_anchor | own_supporting | 0 | base | unit-393768 | `0x45063dcd92f56138686810eacb1b510c941d6593` | ⚠️ Unaudited |
| RewardsDistributor | unknown | project_anchor | own_supporting | 0 | base | unit-393787 | `0xe92bcd40849be5a5eb90065402e508af4b28263b` | ⚠️ Unaudited |
| RewardsManagerModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 10 deployments: optimism `0x17996f2047f3ca1cbc1d7a2820d5f31b68f541c8`; optimism `0x3d3161d5fe1c14b9734cdc41b8d442ea360e43a9`; optimism `0x69052d205b5ccea2dd30a0b9f9d1e0d40621968a`; optimism `0x7cea62f6191e7990c55a218d1874e40629feec27`; optimism `0xcb3707d3fd182679d1a61ed5f30d94bff532e144`; optimism `0xd0683ad37bc83c4fc489cdda5b9434280651ac63`; optimism `0xe4cf03d9104b73feeaf4c8c9e245056899a36ce2`; optimism `0xf93e4094cd4a99f53dbd7610c5cba56a3af42788`; base `0x184f59ee143d01dd3fb1c14363c8fac99a7f2477`; base `0xa51b344beb72bb9dac84a70cb9b77ca33db1675b` | ⚠️ Unaudited |
| SafeDecimalMath | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x84d626b2bb4d0f064067e4bf80fce7055d8f3e7b` | ⚠️ Unaudited |
| SimpleNFT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x0f2816cc3aef25ce93eefb0b5ae4346c0ea28482` | ⚠️ Unaudited |
| SpotMarketFactoryModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: base `0x3400f899ee37db540681fbf0fb49bef2bc7f351b`; base `0x6a7921414b9b84c5bc3074a34987c717a72fc7e0` | ⚠️ Unaudited |
| SpotMarketRouter | adapter | project_anchor | own_supporting | 1 | base | unit-393827 | `0x18141523403e2595d31b22604acb8fc06a4caa61` | ⚠️ Unaudited |
| SpotMarketRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: base `0x2933477a4f7b0125d9e7e6b95295c4d6aadb26e7`; base `0x333e0b9626637e427b7e9c4c0bfc5ae531853569` | ⚠️ Unaudited |
| Synth | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 8 deployments: ethereum `0x0cbe2df57ca9191b64a7af3baa3f946fa7df2f25`; ethereum `0x112d5fa64e4902b6ff1a35495a0f878c210a5601`; ethereum `0x2972705af18c66c14cdd27ad412961e01944a9c3`; ethereum `0x48414e5b7ed589956070dffebe6e4877dae35ea6`; ethereum `0xb03dfc4b9c9756b6d4fbc12dade7732149fcf00d`; ethereum `0xc2bb52457d81fbd223cc92b44cd372d36b338a10`; ethereum `0xd9e5a009ec07de76616d7361ed713ef434d71325`; ethereum `0xdf846d3ded30a0590319f8a7ecd4e233b0e9188c` | ⚠️ Unaudited |
| Synthetix | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x07ec35051431289a08648eacf33bd849bc44c0b9`; ethereum `0x457cd14f384e7d103b17feeb01d2a42ad2eca529`; ethereum `0x58a4cdba423a4d143426951512f066a995527bff` | ⚠️ Unaudited |
| SynthetixDepositContract | core_logic | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xd62595c3c23b690baee0935e107a209cb1dbd37b` | ⚠️ Unaudited |
| SynthetixState | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x4b9ca5607f1ff8019c1c6a3c2f0cc8de622d5b82`; ethereum `0x7e295884f3f5e2ea462620018e9193a1c305c185`; ethereum `0xffd79c36aa52d4846f9f35dab4399f6b2ca896d3` | ⚠️ Unaudited |
| SynthRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: base `0x5312175cc17eb3502d73581055d12ce076ab00d1`; base `0x6d200dd8ee1f619fefd43a5fa08b27c465d44415` | ⚠️ Unaudited |
| SynthTokenModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: base `0x832258d2744fef7ddab4eee269d1b21b8dc0f116`; base `0x889d9fc27859e7596bb2dd9604ade9eb0adebd31` | ⚠️ Unaudited |
| TokenState | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 6 deployments: ethereum `0x20569b49d74c1ede765382574f7f3fdc2a078a4f`; ethereum `0x249a10c68afa9827571cb73f29ab5af57ee5a596`; ethereum `0x4dfacfb15514c21c991ff75bc7bf6fb1f98361ed`; ethereum `0x6568d9e750fc44af00f857885dfb8281c00529c4`; ethereum `0xbf093390d8046ae2d0f5465dec7001d65dc159d5`; ethereum `0xcb29d2cf2c65d3be1d00f07f3441390432d55203` | ⚠️ Unaudited |
| TreasuryStakingRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 2 deployments: optimism `0x6ace5b4ce6a47e8e4d2fe60afe6c2316a82453e4`; optimism `0xf65063521f3f21ddea43dd75179814a020cf3365` | ⚠️ Unaudited |
| TrustedMulticallForwarder | periphery | project_anchor | own_supporting | 0 | base | unit-393785 | `0xe2c5658cc5c448b48141168f3e475df8f65a1e3e` | ⚠️ Unaudited |
| TrustedMulticallForwarder | periphery | project_anchor | own_supporting | 0 | arbitrum | unit-393723 | `0xe2c5658cc5c448b48141168f3e475df8f65a1e3e` | ⚠️ Unaudited |
| USDRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 3 deployments: optimism `0x95ac74dd94013a611d4a1111fc02c04056132637`; base `0x199e5d8bb237d545deacf1ed9cd8707f1123ad16`; base `0x8d8e9994c33f6494d28070e5ff20e656468546ec` | ⚠️ Unaudited |
| USDTokenModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 3 deployments: optimism `0xdaf89f5a0125e7eba36cd01b5a3c40b76f697b91`; base `0x3a650ef07d45133e02a0a412bf653121ff5bfd13`; base `0x6e78b99d441bd1a78c7fbb61195e58e07e9601c4` | ⚠️ Unaudited |
| UtilsModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 3 deployments: optimism `0x750714ec1357042e2102bc25e20e5359c27168d3`; base `0x6dd6e520bf54cfe8d54373b66637bc162f2ec76b`; base `0xfcad0ff92f4854a467c28bd98fbb40f8352f127a` | ⚠️ Unaudited |
| VaultModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 11 deployments: optimism `0x0dce5804aaf8ededf133d87785e65af718a093a8`; optimism `0x255fd9cdf297ffe30f62bcc39fd2f1cd71414e7d`; optimism `0x52c89f12b1c42ae3d23af3a9dae435279a4ca334`; optimism `0xa49ef964876b802454cd2ec11ac6a23f7ca01158`; optimism `0xa861ed94cc5b74962a293b58a71a692104e06f63`; optimism `0xae3d2a51b53c0ea85ce14123621ddfae8ec3514d`; optimism `0xdb83d867a20d4d76815ac54077b2c1becf9a32af`; optimism `0xec09d3d435c4b236d339df71981fce6d12a36a9b`; optimism `0xf69845397cdef05f08a2ca4e37107ab85829faa0`; base `0xd9f3956055092cb4b2c0ec67b0182723dfcb8783`; base `0xebe6f4cc763ba847608d45c967f8807405d2a7c2` | ⚠️ Unaudited |
| WrapperModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: base `0x20042b9d44b8168c2cb2a5edb021e436010dbdec`; base `0xf87ce3f19ca32d6b990b59f74aa53a0b0166632a` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (190)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-393654 | `0x0aaf300e148378489a8a471dd3e9e53e30cb42e3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-393655 | `0x0e429603d3cb1dfae4e6f52add5fe82d96d77dac` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-393656 | `0x10a5f7d9d65bcc2734763444d4940a31b109275f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-393657 | `0x200d50e61ad543086081e58518f2def6278f27a9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-393658 | `0x2cd12ccac6f869650ba88a220b2eb91a937fa5c0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-393659 | `0x3f3ed1002f55121b8213182f09d4be544e08b9f9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-393660 | `0x7b952507306e7d983bcfe6942ac9f2f75c1332d8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-393661 | `0xb2f30a7c980f052f02563fb518dcc39e6bf38175` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-393662 | `0xc011a73ee8576fb46f5e1c5751ca3b9fe0af2a6f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-393663 | `0xd711709efc452152b7ad11dbd01ed4b69c9421b3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-393664 | `0xe2c5658cc5c448b48141168f3e475df8f65a1e3e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x00e0479e842cef0d8c4320034836753e94433134` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x0588502c322222586d367a80683988ad09eef8c9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-393665 | `0x08b2a7e830258f28c9c04501447a8bc83dce42be` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-393666 | `0x0aaf300e148378489a8a471dd3e9e53e30cb42e3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-393667 | `0x0e429603d3cb1dfae4e6f52add5fe82d96d77dac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x1b748465c781fa8b5c43d433cbd709121e509c07` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x228f4a2c8bdc984a82757d599a4c73edc1086494` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x26d4ffd582d79dac494fba213c37ed80047587b8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x299ece651329d2c028519432be740c28bcbe312c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x2b75d303a15b9badd951650e95fa00ac67e1699d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-393668 | `0x38908ee087d7db73a1bd1ecab9aab8e8c9c74595` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x3b59404592815cfe55fe4b5a8cb165ff625db619` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x3ee05e8ee216f30e946fe116c63f696e1b34c94b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x3f053568da231eaf31df881aa84f473296dbbac4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-393669 | `0x4200000000000000000000000000000000000006` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-393670 | `0x421dec7c865469128c76f910351df693cbf6bf04` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x46eaf2ceeba9e96fafd84d8fcce426adeea67102` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x4e2d8de6b555c87294a6dfafec47fda2082bfc64` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x514130b6655add6a03eaf1cce07094263e73b542` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x5764bab5f0d16103f9c11325963f6389f007e130` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-393671 | `0x5a41f634958db9183e9d0d1cd8dee439b6abb3bf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x5d379c208efd5b328f6b808616a56a725ccc7c9f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x683a665d67346667181fd21b878faa1ab2c3221f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x70da0e86a9f9fcc19ceaf774e15250be0ee52ad4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x8a610256b313473bcf4d5835cf993487f5d16585` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x90e42b97188f4e99466a06d1419b5a7fb367fe38` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-393673 | `0xa0639fbb49a5ae32e1309f17f2e553865d5b12fe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xa7ae6d9199ece7df03f685485abc73821fef672f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xa99616ae1dd17377a2ef5a3e13e988a5cfce4a0b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-393674 | `0xb2f30a7c980f052f02563fb518dcc39e6bf38175` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xb363932c7c56f2b6b684abbd63cc4515f015416a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xb606f2c570a30e9d01fcba7dbe103a5ed7b57e1a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xb87b56863f9b55751cbf5e4417117f7de1671e91` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-393675 | `0xdfa2d3a0d32f870d87f8a0d7aa6b9cdeb7bc5adb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xe0385f82323f11ba611eae3d822054ac63e21cf8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-393676 | `0xe2c5658cc5c448b48141168f3e475df8f65a1e3e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xe7f85bd60662a4f11242e0123a52b36f9ae7c2bf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xfcb6e46e60ca842b27a3a74b80a233b0baf2c78e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xfdb10bc5758bdf9f8d2b58d5b562af28728b0643` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-393762 | `0x09d51516f38980035153a554c26df3c6f51a23c3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-393763 | `0x2ae3f1ec7f1f5012cfeab0185bfc7aa3cf0dec22` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-393764 | `0x2f64ad511c33a78080b114c5ef51370b31488e65` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-393765 | `0x3526d453d1edb105e4e2b8448760fc501050d976` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-393766 | `0x3d07cbc5cb9376a67e76c0655fe239dda8e2b264` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-393767 | `0x4200000000000000000000000000000000000006` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-393769 | `0x4d64e1fdcfd08081f0bf088c1e6b32087fef0237` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-393770 | `0x4ea71a20e655794051d1ee8b6e4a3269b13ccacc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-393771 | `0x63f4dd0434beb5baecd27f3778a909278d8cf5b8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-393772 | `0x729ef31d86d31440ecbf49f27f7cd7c16c6616d2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-393773 | `0x7656bdee9f4e7a507fd0c5b2431d3f3690e20711` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-393774 | `0x7a1b3db73e5b8c58edc8a821890005064f2b83fd` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-393775 | `0x833589fcd6edb6e08f4c7c32d4f71b54bda02913` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-393776 | `0x8f80b20efb6bcca7809997b4609094c63f315c32` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-393777 | `0x90e42b97188f4e99466a06d1419b5a7fb367fe38` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-393779 | `0xa7163fe9788bf14ccdac854131cac2c17d1a1676` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-393780 | `0xc1cba3fcea344f92d9239c08c0568f6f2f0ee452` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-393781 | `0xc302f3f74ec19d0917c7f19bca6775f7000a292a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-393782 | `0xc74ea762cf06c9151ce074e6a569a5945b6302e7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-393783 | `0xcb68b813210afa0373f076239ad4803f8809e8cf` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-393784 | `0xcbb7c0000ab88b473b1f5afd9ef808440eed33bf` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-393786 | `0xe8183a61d64ea44a430bb361467063535b769052` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-393788 | `0xede1d04c864eeec40393ed4cb454b85a5abd071c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-393789 | `0xfa24be208408f20395914ba82def333d987e0080` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xfe46d0fe3c97446c4911d4c1d2685e4a58f5bbed` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-393697 | `0x0aaf300e148378489a8a471dd3e9e53e30cb42e3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-393698 | `0x0e429603d3cb1dfae4e6f52add5fe82d96d77dac` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-393699 | `0x211cc4dd073734da055fbf44a2b4667d5e5fe5d2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-393700 | `0x28b69c6a5ddd5e370114b164e7a9cabf051b6b87` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-393701 | `0x35751007a407ca6feffe80b3cb397736d2cf4dbe` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-393702 | `0x3ec3feda50b718b5a9ff387f93eea7841d795b1e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-393703 | `0x5979d7b546e38e414f7e9822514be443a4800529` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-393704 | `0x5d3a1ff2b6bab83b63cd9ad0787074081a52ef34` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-393705 | `0x5eff594e10acb20919a577794c4e9b4bb1221f17` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-393706 | `0x7301a8dbd293b85a06726ae12e433a829ba3b871` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-393707 | `0x806b9d4b0a56b6d1d9cacb60aee95e8d885bd55a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-393708 | `0x82af49447d8a07e3bd95bd0d56f35241523fbab1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-393709 | `0x8b6d6416017de3d1dcac4158fe8a401c6b951fa8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-393710 | `0x8cb5d51099933e04baa1a32de3aded3dac35f13b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-393711 | `0x912ce59144191c1204e64559fe8253a0e49e6548` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-393712 | `0x91935e21ad9a7b80981cfc10dffdd4cff0531c50` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-393713 | `0x95af0bf00e365e6c7fd3e1de4413afd3e0b8da48` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-393714 | `0x9ac841f5716fde2abd5e966695b8bbcc29d7cee5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-393715 | `0xa65538a6b9a8442854decb6e3f85782c60757d60` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-393716 | `0xaf88d065e77c8cc2239327c5edb3a432268e5831` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-393717 | `0xb2f30a7c980f052f02563fb518dcc39e6bf38175` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-393718 | `0xb363932c7c56f2b6b684abbd63cc4515f015416a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-393719 | `0xb74da9fe2f96b9e0a5f4a3cf0b92dd2bec617124` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-393720 | `0xd237f237356e456214ad5b57e0a962d632f1f3c5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-393721 | `0xd762960c31210cf1bdf75b06a5192d395eedc659` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-393722 | `0xd935444f5dc75a407ed475c9f387e124911d36c6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-393724 | `0xe3ee09c200584228f7c45d50e12bcc3fb65c19ca` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-393725 | `0xe81be4495f138fae5846d21ac2ca822bef452365` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-393726 | `0xfa86ab03412ab63fea238d43d1e839c4f7a80232` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | base-sepolia | unit-393790 | `0x00ab6b818652bb3bfe334983171edfd38184dbed` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | base-sepolia | unit-393791 | `0x0148f0c84f6c44cff24450d70bfdabb9f46c69cf` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | base-sepolia | unit-393792 | `0x1c6dfe3205334fece6a9169c88bf698ed4370107` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | base-sepolia | unit-393793 | `0x21fdb21da8102da4776e2de1abd8901ff8c21a2a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | base-sepolia | unit-393794 | `0x410eecb4b4cf7175352a472572492c1c9997a5e8` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | base-sepolia | unit-393795 | `0x4200000000000000000000000000000000000006` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | base-sepolia | unit-393796 | `0x49ecf205e6f7990e376fc64442d7d7fade3d70f3` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | base-sepolia | unit-393797 | `0x4f908d36ec7a887b161b8745e8ea8acbd60db935` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | base-sepolia | unit-393798 | `0x517a744c28f26044c5d049125992e5d139b52284` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | base-sepolia | unit-393799 | `0x5ca6e1afddffc3979bc1ae88bc99d414d8c60edc` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | base-sepolia | unit-393800 | `0x5dc2592d23f72833c559acb35c7122995ea80486` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | base-sepolia | unit-393801 | `0x60c970d7d66f915c4720b6ff16ae76e7db705678` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | base-sepolia | unit-393802 | `0x682f0d17fedc62b2a0b91f8992243bf44cafeaae` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | base-sepolia | unit-393803 | `0x764f4c95fda0d6f8114fac54f6709b1b45f919a1` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | base-sepolia | unit-393804 | `0x7bf65af7efbd0e933fb87dd2c9ce7a17d959b822` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | base-sepolia | unit-393805 | `0x8069c44244e72443722cfb22dce5492cba239d39` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | base-sepolia | unit-393806 | `0x8608d511e224180051a36d34121725d978064e6e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | base-sepolia | unit-393807 | `0x86771cac78a8ce62cbcfad639dfdeb9443856fab` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | base-sepolia | unit-393808 | `0x86b35f1b900b15c98049f68f4248815518e71985` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | base-sepolia | unit-393809 | `0x961f69e073350d4ff7d24ce31127a79fa1b5416f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | base-sepolia | unit-393810 | `0x9eb560cc26c2766929a41f8e46e87bd4b8b145d9` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | base-sepolia | unit-393811 | `0xa28719ddda6e129d5e8fd470a17cd075cef5d25a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | base-sepolia | unit-393812 | `0xad2fe7cd224c58871f541dae01202f93928fef72` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | base-sepolia | unit-393813 | `0xb3f05d39504da95876ea0174d25ae51ac2422a70` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | base-sepolia | unit-393814 | `0xb94c6e4f5162717c6fab1eeab8f0296307f91528` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | base-sepolia | unit-393815 | `0xc43708f8987df3f3681801e5e640667d86ce3c30` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | base-sepolia | unit-393816 | `0xc8ee218577545d5b38443c0eb5d7b9e4140085f2` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | base-sepolia | unit-393817 | `0xd4e93f8a0abc321ecc5b4bfbb501cb968e121f21` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | base-sepolia | unit-393818 | `0xe2c5658cc5c448b48141168f3e475df8f65a1e3e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | base-sepolia | unit-393819 | `0xe51a5cebfe24b6f50cbf89b3f8b33d252e10fe3a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | base-sepolia | unit-393820 | `0xf53ca60f031faf0e347d44fbaa4870da68250c8d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum-sepolia | unit-393727 | `0x12ae0d5cd26f212bfe242da78139d463019f7a73` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum-sepolia | unit-393728 | `0x1b791d05e437c78039424749243f5a79e747525e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum-sepolia | unit-393729 | `0x208b65b1520f1b7356f3f752c637d56cee268815` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum-sepolia | unit-393730 | `0x26c9b83fa781e93ec4ca5fbac07ac82135872512` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum-sepolia | unit-393731 | `0x35e81eb2ddf4c42e4bbc21a555864369d62f5956` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum-sepolia | unit-393732 | `0x3974935755a50295b727ab40ae144be29391d818` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum-sepolia | unit-393733 | `0x3a17252d35d30961798ed7a59b36e27a9b6cf243` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum-sepolia | unit-393734 | `0x4159018c381e5aeb9a95ab27c26726fbc4671f08` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum-sepolia | unit-393735 | `0x4aff595044ac6844151481b031d9a2e291ae37fd` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum-sepolia | unit-393736 | `0x54664815b709252ddc99db3cb91e2d584717dbfc` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum-sepolia | unit-393737 | `0x711d4f22cc39223a7273e45537c9d371e66a8a40` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum-sepolia | unit-393738 | `0x726cfb7f07231d8dbfe993c3a8b09d933caee78b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum-sepolia | unit-393739 | `0x75faf114eafb1bdbe2f0316df893fd58ce46aa4d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum-sepolia | unit-393740 | `0x76490713314fcec173f44e99346f54c6e92a8e42` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum-sepolia | unit-393741 | `0x7b356eedabc1035834cd1f714658627fcb4820e3` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum-sepolia | unit-393742 | `0x7fcad85b378d9a13733dd5c715ef318f45cd7699` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum-sepolia | unit-393743 | `0x88dccaae7872377f80c59cf3c04865741fdbafff` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum-sepolia | unit-393744 | `0x8db7e7e3f00c2fd011bb715935d33bfa0570cdb6` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum-sepolia | unit-393745 | `0x93d645c42a0ca3e08e9552367b8c454765fff041` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum-sepolia | unit-393746 | `0x980b62da83eff3d4576c647993b0c1d7faf17c73` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum-sepolia | unit-393747 | `0x9ac0a92afdec87bc08b0d31b3f200a5fe5d13a8f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum-sepolia | unit-393748 | `0xa13daed702b28cd8d83e064fbdea2781183906c1` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum-sepolia | unit-393749 | `0xa73a7b754ec870b3738d0654ca75b7d0eebdb460` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum-sepolia | unit-393750 | `0xb1dca5430db838c1d43e349aae8b04bc54a1416d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum-sepolia | unit-393751 | `0xb3a0e9e0699b82b1f33a03fff38e72513c2dc933` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum-sepolia | unit-393752 | `0xc555afdca6fbef64fbe9fed62e27bd98f8a686d3` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum-sepolia | unit-393753 | `0xcf45784084ca3fd91c215a87265014c3dc67182d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum-sepolia | unit-393754 | `0xd45eacf062f6c7c780ef7953c23e112041f0bd1b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum-sepolia | unit-393755 | `0xd58a253022fe19693abc61e041c88f32b51c7cbf` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum-sepolia | unit-393756 | `0xda7b438d762110083602abc497b1ec8bc6605ec9` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum-sepolia | unit-393757 | `0xde0a47cf02bd6c4cf5dc30a059656c26a10d01b8` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum-sepolia | unit-393758 | `0xe2c5658cc5c448b48141168f3e475df8f65a1e3e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum-sepolia | unit-393759 | `0xe487ad4291019b33e2230f8e2fb1fb6490325260` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum-sepolia | unit-393760 | `0xecbcb88bff2f5f24173793cf86df08f852ed4f2a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum-sepolia | unit-393761 | `0xf3d4109eb4e7ec31f8eee5d9addad5f3c53a6c87` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-393677 | `0x07049d05fc829933511274f6e3a828d464d3517e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-393678 | `0x079e7e1c0cbfee4b2d2798a9d426009d08b1f9cb` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-393679 | `0x08c1f629ec5935f95ef3e614df5b94086528c25c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-393680 | `0x286ddaba2304acb2ce0ce890647a75d658506f35` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-393681 | `0x29ba9b0c440ce9e7b0e46138b5fda83c22467006` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-393682 | `0x3a12e3f802437cd3a9755386bed65cca751a730e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-393683 | `0x4ae41c02994a623d55ea24a8a6bf678c6b192245` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-393684 | `0x5f75ea59fc0cf335e09775eb676cd53c1c49cbf0` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-393685 | `0x8715b7eadc55df39f0d7bd8d5ae44bad4a7a0a8f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-393686 | `0x94c53500d38f95deea37bada599d54d8dabef776` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-393687 | `0x961b263d3c66ad3f9dd18f14e17280d6ecdb742c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-393688 | `0xa86dcb6f02a0afec5b66ad7112acd3bcbbdf98ca` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-393689 | `0xbee85d5fc4d486d06086560928a79d9d016d8f2e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-393690 | `0xc4c3fa8eccc667b5e1f8ae4685b63251eafb0a88` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-393691 | `0xcb5d8fe2b4afbedb1970ccdc2f2e2919a6114240` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-393692 | `0xdbe114ef3054ad9ed2a3b6beee538433f72bafc2` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-393693 | `0xe2c5658cc5c448b48141168f3e475df8f65a1e3e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-393694 | `0xea1ef48647e2418b50480724e120c6a0b0fb54c3` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-393695 | `0xf87e23c41ce898ab7640fc3ce2eb8b11f257e67a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-393696 | `0xfda8192b495cb568c6c556a6f6d89a1e3ab87106` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [iosiro.com/audits/synthetix-v3-smart-contract-audit](https://iosiro.com/audits/synthetix-v3-smart-contract-audit) | iosiro | Audit | 2023-04 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 42 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [20635] iosiro.com/audits/synthetix-v3-smart-contract-audit — no match: Extracted contracts from scope section (modules and storage directories) and coverage table. Audit date is the end date of Phase 2 (2023-04-26).

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| iosiro.com/audits/synthetix-v3-smart-contract-audit | AccountModule | unmatched — not counted | — | listed in scope and coverage table | no |
| iosiro.com/audits/synthetix-v3-smart-contract-audit | AccountTokenModule | unmatched — not counted | — | listed in coverage table | no |
| iosiro.com/audits/synthetix-v3-smart-contract-audit | AssociateDebtModule | unmatched — not counted | — | listed in coverage table | no |
| iosiro.com/audits/synthetix-v3-smart-contract-audit | AssociatedSystemsModule | unmatched — not counted | — | listed in coverage table | no |
| iosiro.com/audits/synthetix-v3-smart-contract-audit | CollateralConfigurationModule | unmatched — not counted | — | listed in coverage table | no |
| iosiro.com/audits/synthetix-v3-smart-contract-audit | CollateralModule | unmatched — not counted | — | listed in scope and coverage table | no |
| iosiro.com/audits/synthetix-v3-smart-contract-audit | FeatureFlagModule | unmatched — not counted | — | listed in coverage table | no |
| iosiro.com/audits/synthetix-v3-smart-contract-audit | IssueUSDModule | unmatched — not counted | — | listed in scope and coverage table | no |
| iosiro.com/audits/synthetix-v3-smart-contract-audit | LiquidationModule | unmatched — not counted | — | listed in coverage table | no |
| iosiro.com/audits/synthetix-v3-smart-contract-audit | MarketCollateralModule | unmatched — not counted | — | listed in coverage table | no |
| iosiro.com/audits/synthetix-v3-smart-contract-audit | MarketManagerModule | unmatched — not counted | — | listed in coverage table | no |
| iosiro.com/audits/synthetix-v3-smart-contract-audit | MulticallModule | unmatched — not counted | — | listed in coverage table | no |
| iosiro.com/audits/synthetix-v3-smart-contract-audit | OwnerModule | unmatched — not counted | — | listed in coverage table | no |
| iosiro.com/audits/synthetix-v3-smart-contract-audit | PoolConfigurationModule | unmatched — not counted | — | listed in coverage table | no |
| iosiro.com/audits/synthetix-v3-smart-contract-audit | PoolModule | unmatched — not counted | — | listed in scope and coverage table | no |
| iosiro.com/audits/synthetix-v3-smart-contract-audit | RewardsManagerModule | unmatched — not counted | — | listed in coverage table | no |
| iosiro.com/audits/synthetix-v3-smart-contract-audit | UpgradeModule | unmatched — not counted | — | listed in coverage table | no |
| iosiro.com/audits/synthetix-v3-smart-contract-audit | USDTokenModule | unmatched — not counted | — | listed in coverage table | no |
| iosiro.com/audits/synthetix-v3-smart-contract-audit | UtilsModule | unmatched — not counted | — | listed in coverage table | no |
| iosiro.com/audits/synthetix-v3-smart-contract-audit | VaultModule | unmatched — not counted | — | listed in coverage table | no |
| iosiro.com/audits/synthetix-v3-smart-contract-audit | Account | unmatched — not counted | — | listed in coverage table | no |
| iosiro.com/audits/synthetix-v3-smart-contract-audit | AccountRBAC | unmatched — not counted | — | listed in coverage table | no |
| iosiro.com/audits/synthetix-v3-smart-contract-audit | Collateral | unmatched — not counted | — | listed in coverage table | no |
| iosiro.com/audits/synthetix-v3-smart-contract-audit | CollateralConfiguration | unmatched — not counted | — | listed in coverage table | no |
| iosiro.com/audits/synthetix-v3-smart-contract-audit | CollateralLock | unmatched — not counted | — | listed in coverage table | no |
| iosiro.com/audits/synthetix-v3-smart-contract-audit | Config | unmatched — not counted | — | listed in coverage table | no |
| iosiro.com/audits/synthetix-v3-smart-contract-audit | Distribution | unmatched — not counted | — | listed in coverage table | no |
| iosiro.com/audits/synthetix-v3-smart-contract-audit | DistributionActor | unmatched — not counted | — | listed in coverage table | no |
| iosiro.com/audits/synthetix-v3-smart-contract-audit | Market | unmatched — not counted | — | listed in coverage table | no |
| iosiro.com/audits/synthetix-v3-smart-contract-audit | MarketConfiguration | unmatched — not counted | — | listed in coverage table | no |
| iosiro.com/audits/synthetix-v3-smart-contract-audit | MarketCreator | unmatched — not counted | — | listed in coverage table | no |
| iosiro.com/audits/synthetix-v3-smart-contract-audit | MarketPoolInfo | unmatched — not counted | — | listed in coverage table | no |
| iosiro.com/audits/synthetix-v3-smart-contract-audit | OracleManager | unmatched — not counted | — | listed in coverage table | no |
| iosiro.com/audits/synthetix-v3-smart-contract-audit | Pool | unmatched — not counted | — | listed in coverage table | no |
| iosiro.com/audits/synthetix-v3-smart-contract-audit | RewardDistribution | unmatched — not counted | — | listed in coverage table | no |
| iosiro.com/audits/synthetix-v3-smart-contract-audit | RewardDistributionClaimStatus | unmatched — not counted | — | listed in coverage table | no |
| iosiro.com/audits/synthetix-v3-smart-contract-audit | ScalableMapping | unmatched — not counted | — | listed in coverage table | no |
| iosiro.com/audits/synthetix-v3-smart-contract-audit | SystemAccountConfiguration | unmatched — not counted | — | listed in coverage table | no |
| iosiro.com/audits/synthetix-v3-smart-contract-audit | SystemPoolConfiguration | unmatched — not counted | — | listed in coverage table | no |
| iosiro.com/audits/synthetix-v3-smart-contract-audit | Vault | unmatched — not counted | — | listed in coverage table | no |
| iosiro.com/audits/synthetix-v3-smart-contract-audit | VaultEpoch | unmatched — not counted | — | listed in coverage table | no |
| iosiro.com/audits/synthetix-v3-smart-contract-audit | InitialModuleBundle | unmatched — not counted | — | listed in coverage table | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0xffffffaeff0b96ea8e4f94b2253f31abdd875847` | CoreRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0xffffffaeff0b96ea8e4f94b2253f31abdd875847` | CoreRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x32c222a9a159782afd7529c87fa34b96ca72c696` | CoreRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xffffffaeff0b96ea8e4f94b2253f31abdd875847` | CoreRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x6c84a8f1c29108f47a79964b5fe888d4f4d0de40` | L2TBTC | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x3acf163b9e6a384d539e10dac7e11213c638b2f5` | LegacyMarket | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x19f03fcf06204df85b2593145b87134d3366170c` | LegacyMarket | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x0a2af931effd34b81ebcc57e3d3c9b1e1de1c9ce` | PerpsMarketRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x8700daec35af8ff88c16bdf0418774cb3d7599b4` | ProxyERC20 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x9cb0b428632fc7dc56fdf453aed890ba55b1953a` | PythERC7412Wrapper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x45063dcd92f56138686810eacb1b510c941d6593` | RewardsDistributor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xe92bcd40849be5a5eb90065402e508af4b28263b` | RewardsDistributor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x18141523403e2595d31b22604acb8fc06a4caa61` | SpotMarketRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xe2c5658cc5c448b48141168f3e475df8f65a1e3e` | TrustedMulticallForwarder | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xe2c5658cc5c448b48141168f3e475df8f65a1e3e` | TrustedMulticallForwarder | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 80 |
| upstream | 0 |
| standard_library | 5 |
| needs_review | 190 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 42 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=1
- Match method counts: n/a

Zero-match audit list:

- [20635] iosiro.com/audits/synthetix-v3-smart-contract-audit

Fork inheritance lineage and inherited audits are included when available.
