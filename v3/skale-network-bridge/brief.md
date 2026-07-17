# Agentic Audit Brief: SKALE Network Bridge

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 2 (0 matched; 2 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: SKALE Network Bridge (`skale-network-bridge`)
- Website: [https://portal.skale.space/bridge](https://portal.skale.space/bridge)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: base, ethereum, sepolia
- Contract surface: 239 unique implementations (510 raw deployments)
- Coverage basis: not assessable — No confirmed own live-verified denominator is available.
- DeFi Llama TVL: $489,520.35
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

No contract logic was present for SKALE Network Bridge in the closed normalized topography run; this brief does not infer a protocol purpose from missing code.

### Architecture

The activated project remains an explicit cohort member with an empty normalized logic-topography closure.

## Logic Topography

- Exact-run contract rows: 0
- Structural roles: none
- Contract kinds: none
- Detected standards: none
- Frameworks: none
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 4 contracts are derived from known codebases. 4 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x0555e30da8f98308edb960aa94c0db47230d2b9c`, chain 8453)
- UnnamedContract (`0x4200000000000000000000000000000000000006`, chain 8453)
- UnnamedContract (`0x833589fcd6edb6e08f4c7c32d4f71b54bda02913`, chain 8453)
- UnnamedContract (`0xfde4c96c8593536e31f229ea8f37b2ada2699bb2`, chain 8453)

## Contract Surface Quality

- Logic-topography rows: 0; live-surface rows included: 0 (0 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 4/18 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No confirmed own live-verified denominator is available.
- Address-book implementation classification: 4 own, 1 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 234 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 50
- Confirmed-live implementations: 4 of 239 unique; 235 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/91
- Verified + Unaudited implementations: 91
- Verified by bytecode match: 0
- Unverified implementations: 148
- Unique implementations: 239
- Raw deployments: 510
- Audits discovered: 2 (2 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-01 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 2 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (91)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AdminEscrow | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x79f722f58bbf4eb688ecb79747bd9f2b2ccf19a7`; ethereum `0xa984f0d3e3b3f4668b45582909cd5287c388fc8c`; ethereum `0xdff011b97550ecbf6c616a313275f86807d679c3` | ⚠️ Unaudited |
| AdminUpgradeabilityProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 6 deployments: ethereum `0x0c564fd7c86e1689438bbedea244e9e18f29dfaa`; ethereum `0x303234eea1c148cfea1a0562ae9c3b49887d3647`; ethereum `0x8d222892ec69323e3e5a8b783a5f9db00f7b8c37`; ethereum `0xc582584cf4f033512f65b9586999908b8b959cbc`; ethereum `0xdec451abc54b08efcbd916e7cd90196b4c2d0703`; ethereum `0xf08aedf52983faf15826f419e87c8599e1e93695` | ⚠️ Unaudited |
| Allocator | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x07121d22e865fc7513240127742cb87b24c847a9`; ethereum `0x4440951a8173ea42ca5669973e7aea7a19076020` | ⚠️ Unaudited |
| Allocator | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x2ce9c54c5e5f167a838cd49441e085ade7368671`; ethereum `0xeaa4508483ff1f0f2ddbf475521a18d068e3c0eb` | ⚠️ Unaudited |
| Allocator | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 2 | ethereum | n/a | 3 deployments: ethereum `0x791b35be8275891c48a2c6d980d9ec42bec80fa8`; ethereum `0xb575c158399227b6ef4dcfb05aa3bca30e12a7ba`; ethereum `0xd4ee2b5993dfb823d439737831e78774ce3f8952` | ⚠️ Unaudited |
| Bounty | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x9e50e47cc08535ee61ae47acfea20abb1925bd4c`; ethereum `0xa3d36d0c24e90b4ba27eef74e19742ed4b5c7f11` | ⚠️ Unaudited |
| Bounty | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbaa063fd1b0b631e13f9ff2b5aff872fe140087c` | ⚠️ Unaudited |
| BountyV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 8 deployments: ethereum `0x22a4a6cb813c06fbf143595a86d06552e0c8aa58`; ethereum `0x55d53ad96fe2c989ca8ab3eb7110f88ba2f149ea`; ethereum `0x5cc76c2501f0bf1ca2705d0001c76d41a7cb4bca`; ethereum `0x6d43ca433667c0487e31572070c5588fd09ff496`; ethereum `0x7eff71586c6c391ff04fffa043b1f0316c7370e6`; ethereum `0x8040463360fb7aca69866576e1ab2abcc1563018`; ethereum `0xaf408fc5dbf03651ce45e1aa0017660d03d361ae`; ethereum `0xc795e1ccc5e590a54cf512c3c468d7eb97e7d65f` | ⚠️ Unaudited |
| BountyV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x801ba194f775a6cb0b5759fddce6a35e401787bf` | ⚠️ Unaudited |
| CommunityPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 7 deployments: ethereum `0x06fe670e7647a67f95f09ebc292a833d66ebb681`; ethereum `0x3417b0dd0fbcc22c3111a083992db8babab9e88a`; ethereum `0x59501ede4441b566d43330938b01044168a4af0c`; ethereum `0x8375acdca1fecdb89f3c3a440f40884c6b1a7a7d`; ethereum `0x956455d81d5dc0f4fbe666bffb278af292dfa4db`; ethereum `0xac1861ed87595e0aff6c2bb9f8742d3308f48ba0`; ethereum `0xffc647d4cef8fb8b365e6b11a0156972e9343f6a` | ⚠️ Unaudited |
| CommunityPool | core_logic | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x588801ca36558310d91234afc2511502282b1621` | ⚠️ Unaudited |
| CommunityPool | core_logic | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x76f03f55bc3dc0b4bb00b467736111c5d4133b4a`; ethereum `0xf1b9d10472a62ea977089336dc4a65580ebdae60` | ⚠️ Unaudited |
| ConstantsHolder | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 9 deployments: ethereum `0x129555998f5ea79ad08ce8803a2a5b6edacaaeb0`; ethereum `0x2a12a174adec798be38cc1a13dde35475f9debb9`; ethereum `0x33157840b0e44882eb5d1d1183da039d0df1b07e`; ethereum `0x4967fb9bfe9cb044f956638fceef43e2a356a96a`; ethereum `0x6d927b51785116c9dead7c824962028133cfffb3`; ethereum `0xb8634b5b99856b79a79736606c582c7426b213b1`; ethereum `0xbcc1c418cea8f6b56612e3430d7770f814fb6e66`; ethereum `0xbfa73c9ebee2ac8f8ba5be15e093dcef8ac51133`; ethereum `0xf20965bb9cac9390b31d22bed1b7bd750676f0f3` | ⚠️ Unaudited |
| ConstantsHolder | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x3d30a62aceeb6720312c3318d28620194e749e38` | ⚠️ Unaudited |
| ContractManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 12 deployments: ethereum `0x0c76ef80e5387582b05f507dbbb16bd172c6b243`; ethereum `0x4cc16de04264c7865990619013c570d215e6710a`; ethereum `0x538d2b8cc2335c9495a6bfc9a57eb8e9c389d5f1`; ethereum `0x5f14e09736f78ba7acb175c3651a5a6bf2d4ce16`; ethereum `0x644fb3cfebee52c0f3b3d8d3863151b92f3462b3`; ethereum `0x84136278508be069f2573bf7f5db9c23f9163b8d`; ethereum `0xa2dbe0b664764ec9c8699601639263c9f704e769`; ethereum `0xc64369b870c06666bab5730cb7e729b061324831`; ethereum `0xd27aea9a507aa9a0cfcb0a5c066fb342eeddcb69`; ethereum `0xda2918c2fd86a97e09e555de6ca395f9414c1d94`; ethereum `0xe0d76bbeb63c01452324794573877a17ce6807f0`; ethereum `0xed3c2ed137e7a23e615856f858012ecce776abc1` | ⚠️ Unaudited |
| ContractManager | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x686ff0298e5fb7444f5444041f561ef28364245f`; ethereum `0xf420a276ba9d0622245d6e8c98b6e176812b8ca5` | ⚠️ Unaudited |
| ContractManager | governance | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xc04a10fd5e6513242558f47331568abd6185a310` | ⚠️ Unaudited |
| ContractManager | governance | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0xccadd0d5fced2545c266b44485ff8c82d51b6206`; ethereum `0xd4052b550cc98a91a20b10b296ad7d28c6c6e1b2` | ⚠️ Unaudited |
| Decryption | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x45cc87f74c1937886d7b6b71ece594d4252b4f93`; ethereum `0x9257b149889a76c7a86bffa5820f06fabca3a9a1` | ⚠️ Unaudited |
| Decryption | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x91e48fdc7ef9ced2e6ac61f505b8326ff235bb4a`; ethereum `0x9b87133a4b053f265a66d91fab2cdb5a27096d79`; ethereum `0xb2d68c09405ba234d9b092b33a0a5a7008a377b6`; ethereum `0xc817f74724820382df322cffc9edb3b6bf06afdd` | ⚠️ Unaudited |
| DelegationController | governance | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x06dd71dab27c1a3e0b172d53735f00bf1a66eb79` | ⚠️ Unaudited |
| DelegationController | governance | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 11 deployments: ethereum `0x1d085cd2f8b5b64923fbee60ee399d5069b6e735`; ethereum `0x1f5b389e9a505aa1465507c40e1cff67f536ec9d`; ethereum `0x368e41a003249270ac26db71ee1535f679187b42`; ethereum `0x5089d6bb87e87ee34b00a92ddb48d1dcdfd3cb3e`; ethereum `0x6ae0616776c02e944b4a716e80967c7490b438c8`; ethereum `0xa47893f04570c68855de7fe9ee3c28f9c0ce13fc`; ethereum `0xbea3489620bce66a462153e98db07d149e4fc3b3`; ethereum `0xbeb4500715ead32afd032999c4966ffafe3f2a9f`; ethereum `0xd214df04c80569d6207c687f083b3c51dc7dd717`; ethereum `0xe532cb43c9fb379b19df00de4dfb1885580ff0c2`; ethereum `0xfdce6b8f268ac3e76c2e5cac731bca5eeee97c00` | ⚠️ Unaudited |
| DelegationPeriodManager | governance | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 7 deployments: ethereum `0x4c8033481b0fb8d3a83fc0986d02fa3fc2f85400`; ethereum `0x60a5195d6f73d2bd1de4cd1aafc75e789624feb6`; ethereum `0x6569d66761483a47601e3f4a5049920c4ad96291`; ethereum `0xaba0b160060b8df5c420c8f4fe99ed032be9bf2f`; ethereum `0xaeda53544201731426b6e07cfe3b396e0a1d40dd`; ethereum `0xcdb294a93842bd73044c4d57a0061b17cb84ea56`; ethereum `0xceb1133dc251decd13dcbe3c513b07a32a842130` | ⚠️ Unaudited |
| DelegationPeriodManager | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x54a663e39621d2e644f6b9b6966cdf66db973ab3` | ⚠️ Unaudited |
| DepositBoxERC1155 | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 8 deployments: ethereum `0x2fadfcb4ab510463ba8b1ae6f44fb0d55a79a6db`; ethereum `0x825a23b6cbbb1880b3189c2c684b3df53dd8cb83`; ethereum `0x9429952791a01c35e715826f34727e885a2b2f09`; ethereum `0x947cb65494903a53e55f7dfef949e66d43e076b3`; ethereum `0xbc03c79991f6a6486b5187ad91853626c9686bf2`; ethereum `0xd0fc79156e3a60858f24f9b7172cd64ef7cc1dbb`; ethereum `0xdde9fc39471f1d119b9928994c555e7296752b9a`; ethereum `0xe8d18a64e5bd3c3e96e7c163dc67ff97296b6304` | ⚠️ Unaudited |
| DepositBoxERC1155 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x3c02fdee8e05b6dc4d44a6555b3ff5762d03871a` | ⚠️ Unaudited |
| DepositBoxERC20 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 8 deployments: ethereum `0x0209b161d99e121c026697f6c7558905a9bd7089`; ethereum `0x0c02d198dd84582fa319db9d53158c4a21af3d09`; ethereum `0x1419fe9a82741fe6d9ab27fd7e007810a3c1896b`; ethereum `0x4b4192649e9450f329dd36f56a81c08ad0c12c02`; ethereum `0x778b105215e59e4731ccbdcb0a54c367fd3897a1`; ethereum `0xbda6d5ced98156377a9e3f60eadc0424b2934d19`; ethereum `0xc616eaf17c5e3349c1fa493459494bb4dd0fd788`; ethereum `0xd0aec35561751fa11e622532383f5aae4b58f66e` | ⚠️ Unaudited |
| DepositBoxERC20 | token | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x28bb5918c37f8170d12c211ae924bf02a7df8ca4`; ethereum `0xeee0ba72c7341db314e3691c26f632cc346b63f4` | ⚠️ Unaudited |
| DepositBoxERC20 | token | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x8fb1a35bb6fb9c47fb5065be5062cb8dc1687669` | ⚠️ Unaudited |
| DepositBoxERC721 | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 7 deployments: ethereum `0x205fdfa8bb5b035152d9aca24ca32377a98838b8`; ethereum `0x573383db7d9b41e2a9aa180e305d958c0cf9a52e`; ethereum `0x5c6cbec4dbdbb5176bbfbf68aa33abf4b49a116c`; ethereum `0x683325e0b5475222f6521e729dd1f3d566a2fa66`; ethereum `0xa66b813b2e32eeb82d4dafb5e784471cdba452e8`; ethereum `0xa99a7b8fbb46cbeb9bf8174b21964ba11399b272`; ethereum `0xad64712a9f3f7ca4e7064381135082aaa68f56d5` | ⚠️ Unaudited |
| DepositBoxERC721 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x6a7db5a764258c904d9bdfa242f048216c6f24b2`; ethereum `0xb6b164fd2b72a5cf2570bb55b9cd9624ddd23ad7` | ⚠️ Unaudited |
| DepositBoxERC721 | token | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x7343d31eb99fd31424bcca9f0a7eafbc1f515f2d` | ⚠️ Unaudited |
| DepositBoxERC721WithMetadata | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x584cc3a9305867e30594647872cb5257e6769c1a`; ethereum `0x858b1f991f248dc150ce2b839d3d0d71597dbf68`; ethereum `0xce4cef453a2d7071b845e36a2e1bf096fba6eeea`; ethereum `0xf99f446340483c5d9d63697a60232ecb9274e1e7` | ⚠️ Unaudited |
| DepositBoxERC721WithMetadata | token | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x9f8196d864ee9476bf8dbe68ad07cc555d6b7986` | ⚠️ Unaudited |
| DepositBoxEth | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 7 deployments: ethereum `0x02113b595af3bafd390bc4b0a44224c789de3824`; ethereum `0x1d3c18a87df66cc3f8e176f5bef4cde0c40d50e7`; ethereum `0x2f90bed90fa0cc605b86b8623612a2638eb4019a`; ethereum `0x998d6aa8cac99f1557b65e680fc4fdcd94be70ca`; ethereum `0xacb26f2b4018e20ab4f5b729bbf70c56583dfbd9`; ethereum `0xf0551a55e73734751324bf8299f50c9229754c56`; ethereum `0xfe6fafac88150a23d946e53e9e2285aab98a0d90` | ⚠️ Unaudited |
| DepositBoxEth | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x49f583d263e4ef938b9e09772d3394c71605df94` | ⚠️ Unaudited |
| DepositBoxEth | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x7f9116ced12c1c3edcb040a9800dc917fae557a5`; ethereum `0x912b03fa0aa8c848f7b16950870dc0b1b89cb28c` | ⚠️ Unaudited |
| Distributor | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x12a9534dc270120a30c4cc4dc437ce867c7ffe29`; ethereum `0x2a42ccca55fde8a9ca2d7f3c66fcdde99b4bab90` | ⚠️ Unaudited |
| Distributor | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 7 deployments: ethereum `0x3aef8024a9f4ab6650651ab27786e703dd30bd58`; ethereum `0x8f2dbaf9390ff1d9847cc15790904f4594567fa1`; ethereum `0xb0528448093b12a09ed9950cc404e921f38c514d`; ethereum `0xc2b94199d2500d246eaa3c0baef9dab524b25f91`; ethereum `0xce73e22d123574879853c7606fb9a0461f3eaf12`; ethereum `0xe59b261d3ea188c952ff254ffaf270568ae3ef02`; ethereum `0xfe38e8bc76e9067730d19f8c2901d8a84cb8c2e1` | ⚠️ Unaudited |
| ECDH | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x1a77d7617f919e20f8e0fa98a292deaf1072b77e`; ethereum `0x82de13a19d7608857bf80fe22be40f19b243ed0e` | ⚠️ Unaudited |
| ECDH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 5 deployments: ethereum `0x52315e0b2b56909dfa1b1eeaefb228462ee9a2d5`; ethereum `0x527c5025a92d53cfcd49d84a5f6edb7186f996c8`; ethereum `0x5c18cc844082377e18cdf7cc09d17b6254f255f3`; ethereum `0x746b4296d3589ffbb42c8c19b3b927436bb19413`; ethereum `0xe9dd06496c5dd95d333ec749cc15072762b63170` | ⚠️ Unaudited |
| Escrow | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x172b0fb75c281b05db9264dbd9724a54cc5a4f67`; ethereum `0x7a7d709332d10786adcf35fd83608f656a7b4a30` | ⚠️ Unaudited |
| Escrow | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x3a2fb7f087321c159c85b2b02a9cf102b49779fb`; ethereum `0x62653f371e6888b98ad760d1fb17e6f46b13beef` | ⚠️ Unaudited |
| Escrow | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 5 deployments: ethereum `0x408400515b7c1835442d1df99346ba64c5ec4f48`; ethereum `0x79ff052742161395e0cdd50f5a40679a9df9b9d5`; ethereum `0xe61b48d00b9ca02dd9a3764a4d9d263cd7b4d351`; ethereum `0xe6ade8674d17b32d139032992b63a678e98d5113`; ethereum `0xf6e5a4512c501b87f3955c5fa56fe0fec2704475` | ⚠️ Unaudited |
| KeyStorage | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 5 deployments: ethereum `0x002cd12051c3d0212af47fb4393d10c879b60991`; ethereum `0x796523566b1382473c4f9162ab8601303fb75fe6`; ethereum `0x861aed4aacb7904e1ed99e8584e05c0a98b70a07`; ethereum `0xb566ed43e2f34070b41c6fa40de484cfadd2bc8d`; ethereum `0xed8ec7502d9c52b61f5621f9cb09fc08ed05495e` | ⚠️ Unaudited |
| KeyStorage | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x921a97c815e4e7508d1ad639b56a21e942a3a152` | ⚠️ Unaudited |
| Linker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 5 deployments: ethereum `0x4827ece3114796c9c26459b35b6e23e2a952ae09`; ethereum `0x676fafce73f5a304988c519407aac06bd117cdd0`; ethereum `0xc107d8ccc84c391b0e66a6ce2460ece69ef1ad26`; ethereum `0xe8608987fee290114f99cc23c1eabd084c0176e9`; ethereum `0xede996a9899b570de70eade06fa69621ce1470be` | ⚠️ Unaudited |
| Linker | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x6ef406953bac772c2146389ed37846ba3b6086d1` | ⚠️ Unaudited |
| Linker | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x886c47563ca045dd3b41f4e13cdd0122d412738c`; ethereum `0xb71d43dd7fed774b236265fd283d6eda778586d5` | ⚠️ Unaudited |
| MessageProxyForMainnet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 8 deployments: ethereum `0x0ae92a5105111281151b980a0ad680b890bf1944`; ethereum `0x64e4cd4fe42eab98acd15fddac657b1537aa5190`; ethereum `0x7eeb2fb952a11a4675717a34ba803d6e95ff24a5`; ethereum `0x7f388c2282987fd7738d4d56ea047ee05d2dfef7`; ethereum `0x8bac52833c7901182ed972bfa4a56a2432d79170`; ethereum `0xb7512b598d4751b5636573235588e42aac0ece02`; ethereum `0xc261084dc6475d4980548bd8c323ff825b3d0c38`; ethereum `0xc8663c0bd8238a440c0e272c01b64f509ca4e1f5` | ⚠️ Unaudited |
| MessageProxyForMainnet | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x3efcbb41481834c1eb3de0d6e2f4cc99332a1236`; ethereum `0x7b50f0d25a45fa3e121f51e101099d2d5a6980ed` | ⚠️ Unaudited |
| MessageProxyForMainnet | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x8629703a9903515818c2feb45a6f6fa5df8da404` | ⚠️ Unaudited |
| Monitors | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0xa7a9f91991b726cfbf95bbd88bf0dbef9456753d`; ethereum `0xc03fcc2d5c0361408cacf5577f67b8613b28e2f4`; ethereum `0xc7bad8ab2d68e83adc4216021c3557f635750ab0` | ⚠️ Unaudited |
| Monitors | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0xa801f37136a1588075069d9988d4dc2d5167f7b7`; ethereum `0xc775866274c9d5777f136eea6c20fe1c7e115d4b` | ⚠️ Unaudited |
| NodeRotation | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 12 deployments: ethereum `0x14580b2ef91719f7edfb37b5705f0962fe1feb74`; ethereum `0x194dc7459c2028d9b2384b7d9461807f4e21b01d`; ethereum `0x270eaa858b6ce6b9b4d849fe7d3cb3f2fe944fe7`; ethereum `0x29d36449ce1984ca638d4ec8a622db44f867c929`; ethereum `0x2fcdaa63f3eaaa3bbaf09c21a4dc7826661974aa`; ethereum `0x342867ce99d7237d2cc64d14f3d45478c1f03dc0`; ethereum `0x43585f84c84482b3e02b25c38978d518b0f09902`; ethereum `0x89335b025553848f282e8be53060b16782a8813d`; ethereum `0x9c866b384ff11c307d72ec07b7cffb5d720c69a5`; ethereum `0xb3d2bb8d9ee96800f6ce2df4df314148aa823a26`; ethereum `0xcedf5d4f510448a6789e074793ed1cff2b41caff`; ethereum `0xe580311fb341f70a803d967b1b5f52a323d8ca35` | ⚠️ Unaudited |
| NodeRotation | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x348b7fe356abed0b85fdb38d460245557ac6d8e0`; ethereum `0xec4ea4802cb323645b87441aeb5622c800d72ccd` | ⚠️ Unaudited |
| Nodes | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 14 deployments: ethereum `0x450d6644b994f984ddb8eb194015b70ee2626258`; ethereum `0x47afe57f73ccd2d8006fc601d6c92d83caf0931a`; ethereum `0x5be21a82241bdc10fa7ddbf38a49b934ca16bfe8`; ethereum `0x60eb4245e3b960ee9c5145a378c1076c4554bcac`; ethereum `0x628eb9a880e5ab575c638a4410eef963ce159e3b`; ethereum `0x721c488a17f053b0fa1b60c7f1c5e3cb1dfa7be5`; ethereum `0x76bff3ef84ae02030bca1908bba8d0521019121c`; ethereum `0x96a4e7175237661b5a0e138a9ebd0fc848b3f19e`; ethereum `0x97097e8f92a7b8bba51c78c157938b7fa8717886`; ethereum `0xb92754f681716dc3fe6bcb1c5249f8fa6f680889`; ethereum `0xd3ddcbbaeceefb8edbf7f02380f08100f2705eb3`; ethereum `0xdb13eca2b3c8fed6aa605e48f9e25eb5926f1460`; ethereum `0xdd9524d5f0a204ad9868f275baa2a08db00a8c6b`; ethereum `0xfbbeee2346a4afc248387fa1cb8550873722eb13` | ⚠️ Unaudited |
| Nodes | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xd489665414d051336ce2f2c6e4184de0409e40ba` | ⚠️ Unaudited |
| PaymasterController | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x43259707d4192b4c5df363522bc52493ce618307` | ⚠️ Unaudited |
| Pricing | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 5 deployments: ethereum `0x047fe7f72dc0cc05eecdd183d78084b09658e388`; ethereum `0x3fe2404ce36902406720d02e62bb4ceb49661ec8`; ethereum `0xa820c3dc677fe92473eb290880ef47afc86c84f3`; ethereum `0xb999d5c967806a30ba3d12d3f91629598d104a42`; ethereum `0xc05bfac91dfc06b7362af33c12021ef8a6b5b386` | ⚠️ Unaudited |
| Pricing | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x39c289a3ef68127c272de21f3db67b0cdecdfee1`; ethereum `0xf372080428740fea887fe2ab5f8abe365aa956d7` | ⚠️ Unaudited |
| ProxyAdmin | governance | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x762f759a39c1b254f1fb18d082358b766cc8f6c0`; ethereum `0x9b1e4a9fe5142346e1c51907f0583e6ac663b8a0`; ethereum `0xa35d3ffc3812f6cad1ac64fde740a98bfb900627`; ethereum `0xf3f8b7594bf20a0e9502b3191cd4c2b90a1ab4f7` | ⚠️ Unaudited |
| Punisher | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 9 deployments: ethereum `0x018e70ef49ca88c25bcdd0e32adf2dd82056ebe9`; ethereum `0x0fba6b989185a5d0172f6d4d674dc1de5d880678`; ethereum `0x1149d772bce9a636d0d7535ec865f3c6c8ee3b5c`; ethereum `0x144044f20314fe694323e01d6c01aa6dfdd6946d`; ethereum `0x1b5b8ceddd887e5a75f3fdbec47cf59d71a075be`; ethereum `0x4fa8768c1f476c3746c4661d28b5fa41622855b7`; ethereum `0x5a25e105031dd8f66ff36d23c09eaaf004979ef6`; ethereum `0xc5c216d35d2f4b1b87f582240a252b1f8a173bce`; ethereum `0xd62805875c92b3d15af831aebd172fbba1adbc51` | ⚠️ Unaudited |
| Punisher | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xbca0ecdd44203de76af389d5f9931015529b7f1e` | ⚠️ Unaudited |
| Schains | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 7 deployments: ethereum `0x06be9eb0667dce0619c343ed5d41a6fd0f40f1d0`; ethereum `0x15a2715735e0a097cb642e6cce0242055181408c`; ethereum `0x1e6d740e27440d0f334ee67ebbd463b7f1abe01b`; ethereum `0x287c05d274b2dd1ca47f4e3d23dfc75c4ae69f4c`; ethereum `0x2937f715feb3163e3e5957c9a002c07b95d08a5b`; ethereum `0x358af109dbfdfc952a732af231b0e9a3d5f43cde`; ethereum `0x9602ae9d1dd048191f9b6c103a71ce432a209516` | ⚠️ Unaudited |
| Schains | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x0fca003f483313869ee54e86b281348980b4cbf6`; ethereum `0xa4991b178e247cab5578967a259b4bcef85fd14d` | ⚠️ Unaudited |
| SchainsInternal | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x0cf9bdb006bc3911d91b4df86fb069f3fd7d8599`; ethereum `0x836df73065cb143bddf3106e46783d43c12c6012` | ⚠️ Unaudited |
| SchainsInternal | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 10 deployments: ethereum `0x608c24866d1c43c5869fe7bf4a63a26623e96960`; ethereum `0x6671af7c6e31bf2b01f7747b397730bc39347228`; ethereum `0x72bf8eaeb6f46865e093638fe6117cd8ae45121c`; ethereum `0x8f8d59b8baa5edfd00969909aa1347917bbb0a78`; ethereum `0xa06cd5c489c59b463f8fe09ef29fbfc144c74b06`; ethereum `0xcb96d566606aae753d41a12a782abe259e9921af`; ethereum `0xe568212cf305399969fd25a09990c05bdb05e52d`; ethereum `0xec12f3bf30248ba967249dbca877c6b6b6eca1b7`; ethereum `0xeda18e4955ddff639a0c302ddaf451571a64e78d`; ethereum `0xf721aee9e428fda2a6ca85c8d3e79c3b5a5eb697` | ⚠️ Unaudited |
| SkaleDKG | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 12 deployments: ethereum `0x14e2647bd9aaff5de18b771760fae33ff6dc0a3f`; ethereum `0x23f19328aa23afe12d65ee8fe19dda1704244792`; ethereum `0x242073768d8402aa4f47ae80b8a62c9856cdb045`; ethereum `0x46baf37b504e24db0edd92cdd5089f737c759a3c`; ethereum `0x601ebbc7202cec128b7216790f162850febcbc01`; ethereum `0x681192ae9d24643ef2f61dae48325e20f451b862`; ethereum `0x6d794ae701f9e4a290a843f66005233a98f2154b`; ethereum `0x8d45ae232073c8e3b42b4d68dbc650b467e2b398`; ethereum `0xa81507e52599d153806dc025989fa3eae18bd86d`; ethereum `0xd127df3b7565af1b701a5fdc0f3c366076afbb9d`; ethereum `0xed5890f03b6b85976ba5b43485fc1f381e87f41a`; ethereum `0xffa68661ad39210b38b7be110c2419bc9cbab827` | ⚠️ Unaudited |
| SkaleDKG | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xfcc84f7b6d88d671c6a1841549c0b2e70110884f` | ⚠️ Unaudited |
| SkaleManager | governance | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 13 deployments: ethereum `0x2604ae95b752b7b4af412ee7ffb8a0387a68f30c`; ethereum `0x5c38d75aa0f06d851a4deb2e40b0fcc92554fa75`; ethereum `0x6f053d5b907bcea89f4e18d68946cbac6e6de657`; ethereum `0x8730525b1135a7812b51ef7ea4fc4d49f9fd9225`; ethereum `0x8be8802893ee260640e45cac0eeaff4999072caa`; ethereum `0xb743339d669fcd84e4f4957804350492991a3b96`; ethereum `0xb86499d5e646bae203fcafae8f35aa70e91199d7`; ethereum `0xbcce6cc5ca5d47cce0b995f3cd9576123bff47a0`; ethereum `0xcbb527aad92f4abe0792d07715ce9e2b32b98249`; ethereum `0xcf2ae66b5c49a8f954dfb2600016a57c51e24551`; ethereum `0xde72215627f45a8e09b07fccc46966419eac85bf`; ethereum `0xe03022bd954da652846a1f5ad6c42f668d9e7743`; ethereum `0xf675768879afc7a6539a68d3557c5dbe6f6fa37b` | ⚠️ Unaudited |
| SkaleManager | governance | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x8b32f750966273cb6d804c02360f3e2743e2b511` | ⚠️ Unaudited |
| SkaleToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x00c83aecc790e8a4453e5dd3b0b4b3680501a7a7` | ⚠️ Unaudited |
| SkaleVerifier | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 6 deployments: ethereum `0x171cd3edf814959e09037ad2cc3fe642e0775d74`; ethereum `0x45010545fdb460eeb8f82e7ccf97542ae6b15207`; ethereum `0x5c192c7e436fbce1992cc4c46df7b7835dce94cf`; ethereum `0x981c26a389b2eae01a2aba4ef6130ad520e2cc9c`; ethereum `0xa4e100186772263dd40c92568573a6dea4710fc1`; ethereum `0xb6b750ef0ab68cc029db015a25c3117fc9e7d59c` | ⚠️ Unaudited |
| SkaleVerifier | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x32f50e2a898f14687f2a714d8b2d405317eb4641` | ⚠️ Unaudited |
| SlashingTable | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 8 deployments: ethereum `0x18f9aa0f87a0c4298eb1707ee1f4378bcbd96d2c`; ethereum `0x2f31ee93e41d70334155615fae2e6e8b16473622`; ethereum `0x4bc7746f37be8a5e2fe10f8162fcbfce2d912e84`; ethereum `0x4f5cbcb2402664f2f8b7f23b432a38faa3c5e943`; ethereum `0x564d537569768c3d2b4b38c6c6c5da77cb45d743`; ethereum `0x98c4d55002a9f8bf62ba925e1100aa5177fa193a`; ethereum `0xaa47f496eae492bc79fa74aa96516f9fda95e416`; ethereum `0xdb3eeca2cb044db38cc13e5090f8c18db9bc3ca2` | ⚠️ Unaudited |
| SlashingTable | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x1a7bb775611b58375a3177dcf3d8e4f7f6d2ed4b` | ⚠️ Unaudited |
| SyncManager | governance | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x8520ea1073ca4ee28bca21ff3b811a6f2d595329`; ethereum `0xfd641fdd7c07c039f36c6392f2800e41fb9409ef` | ⚠️ Unaudited |
| SyncManager | governance | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xbc896522b1649dc2e43bc093d08665822529d087` | ⚠️ Unaudited |
| TimeHelpers | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x05946b1b80ce4de235350d8955c5c751860d5399` | ⚠️ Unaudited |
| TimeHelpers | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 6 deployments: ethereum `0x1803b11ea498e4074136b0334f845b39dc715aa9`; ethereum `0x61ef751ff74735b12afb815dae8308c609ac4f46`; ethereum `0xa4561707ab5dff46994267fbc40ae4cfeec6144e`; ethereum `0xb9f0b7a4a46d4e052ec0c7846ad71f32f5efaf4b`; ethereum `0xd565218d5380e5cb2c2a2e7d1cf200e3e1ff3099`; ethereum `0xfe2282a3b890d1580950a3ac9c6e772df9955412` | ⚠️ Unaudited |
| TokenLaunchLocker | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 5 deployments: ethereum `0x1c0ab6815b0012e8677b64315fff5d9536f1272a`; ethereum `0x340647745b69ada2d9b49c304d9eea79e36ab72b`; ethereum `0x6c23eb54349e4a999257057269ea78d3e81ec52b`; ethereum `0x71a4b310ffa73aff6abaf20e6b96ac576dc4ab56`; ethereum `0xe2247c7496142facc0bc3072d383c70cd40c1515` | ⚠️ Unaudited |
| TokenLaunchLocker | token | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x86f37bb8245b71b959da5bde3fec57cb2a09545d`; ethereum `0xd132ee322849ba8e27c123b7ed728efabcfde377` | ⚠️ Unaudited |
| TokenLaunchManager | governance | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x96aa945360b76e18ea5a1cff3ebd9b5b8ffa518e`; ethereum `0xaffef88e27e62e3b76f36fb5673c911426dc930c` | ⚠️ Unaudited |
| TokenLaunchManager | governance | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa04b066076b58d49e854dd13f4fe91ea2a123ef0` | ⚠️ Unaudited |
| TokenState | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 9 deployments: ethereum `0x2db9ccb342003421544faba8cdf670ab922de5d3`; ethereum `0x46735ee307f28da36f2b4985c80bb0905ddbe56f`; ethereum `0x6616571841d35219320d142f8ab57d06c3909beb`; ethereum `0x7a23b6531de1ee84163a154953aa020c757cc034`; ethereum `0x83df7f07565d131b0794a4957aa1dd04a4f5d976`; ethereum `0xa53689cbdff2efdb82e1d2484c8c87c0adf182dd`; ethereum `0xc4a895b2c8e0b8cdf9422691feb1d9d0054395eb`; ethereum `0xce996c4a6601d41b9a57c9ebe23b5ba15616ee4e`; ethereum `0xfa67be664d34c7b2e3d360f831219a96185cb8be` | ⚠️ Unaudited |
| TokenState | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x4ee5f270572285776814e32952446e9b7ee15c86` | ⚠️ Unaudited |
| ValidatorService | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 10 deployments: ethereum `0x21e2e81fcfc25ca91fec5ec2466476d167336418`; ethereum `0x2aab2252b3ab6fef1b06de977e02f981400d8ef1`; ethereum `0x5f906a6af3f5d52dc84e0e472e95501f24ebaef0`; ethereum `0x89f11af4b6c3cbcb4c55f9033fb403483b6430b7`; ethereum `0xa3b59bdaec696b227fe04ecbe070a1b1b8ff641b`; ethereum `0xca4545bcf5f7e5e162ec488ecb2ceef72d0f1bb8`; ethereum `0xd9d6de590a9aa4b6a6a9ee2eb106967a9e213683`; ethereum `0xdb03dcbb0c52cc89ac02bd7638e757aeed1b2822`; ethereum `0xe30b36f0527d16fb692a2c4804c50e53f83add1c`; ethereum `0xe84752bd2e367b1e9ddf072dcae9fd78d418d2bb` | ⚠️ Unaudited |
| ValidatorService | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x7eaf3c936c0109364e63a325652eb3568fa6c29d`; ethereum `0x840c8122433a5aa7ad60c1bcdc36ab9dccf761a5` | ⚠️ Unaudited |
| Wallets | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 12 deployments: ethereum `0x22462c8c1b33bb2eb46cfd5ffea95167b465b3df`; ethereum `0x3f2db551ddd3418f7aa083ec98d0d521c776faec`; ethereum `0x474052ba2021249f1a9a055de6cea0aff156c426`; ethereum `0x5e4b968abfd6aaa4939ef425cdcc9ae4505d30fd`; ethereum `0x7dc05751d3a6a6362971e6c996f9a2fd9fe79b72`; ethereum `0x7dcaf12e462f8a5a70ae4d1ca440a1751bf18297`; ethereum `0x7f78854a1906abc2fba3436b527e2e01a33fee19`; ethereum `0x922c70e96d110a55ddbe22986ff29dfbc7546603`; ethereum `0x984693e4ab89d0907665596453523be91d410abe`; ethereum `0xb6b2deab2d77b6edcdd807670c0330cfabed97aa`; ethereum `0xe9c2e3a8c9b2df062f4c2ff23b7f58eb66261003`; ethereum `0xfe8cc976bfd609babcdeef78a66147933d36c336` | ⚠️ Unaudited |
| Wallets | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xbaec960713a6c41d391c93ae42128d72c916965f` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (148)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x005dbf43276b8f681a8f2009e2dec4a4cddc1d65` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x05724e15fba673aaf8be0d33c3d688357746dae8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0663d2e45a3819faea3e04362bb15d8d33efbb4e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0968f64cf12d55a937113dffe296c0031d3828b5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0b3538222f4b267550a075c151a30a79a8f88b6b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0c647f1b163bf90fe921df7bc97e24beb074ef45` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0cb66ad1aa605c6a216e9d715dcca5ccde5a8af0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x103dc53a543d2fef1669fc56df2bad34f8d9113b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1147336f3b50038193f17fa2e0da5bfb9aab805f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x116af736c222a1924506cb53878b755f9f14e69f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x123e411445745c2f953acb4f263a6e865e92fb50` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x14a08f102a2db369a71beef8dfd020b9f6ab9311` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x15726707752841c583cb12f6ab90021d03ea7a64` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x15cd54ee29a71d0c4b58fe1727c5d83233fe2ecd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x161800c4dc1793d53a712bb36274e04593e2bb81` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1624ad3fb6060d3b805d84fe5be141584815f47a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1ab2fdcca5874b8105ceccc862a9c1797ee9fd99` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2011b3df3c77df1e330d568c8cd6c9ae8ccac012` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2085d0276535d3df7dd177f6aa508d22ddfd019c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x20b157f2969b529cb2ecf7865fb5db257aef55ae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x20db4ec90c05507416f4f2b7e97391371f8430f6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x22ba5c387d97c4a9e07e3a4069164f4c1b7f535b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x23a733a2f3556d8481ab2886cdc70fa6ad25386a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x291155e8afa1ea019f6c2482bdb1ddd92fe78f2b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2948f7d0d1b62b71487513e78a4ab5cb895fa26f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x29d8d08caa7b337ef0cb32f0bed2ef70fa01c768` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2f56c05930abdad07c77ed532359d54f246270ff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x331544c06a0c2fb8fd0452b16c1d74101618ff43` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3559d444afb64501c63cdeed8d35c195db534382` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x358a971b939efeaab349c86195e616786de25631` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x378ac83b04c81c33f1078f409a30f622478f1a2c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x382dd989f94506068ff14b47df4f666559f032e7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x396029be2c82cd3ca1cf4edaec6f9f1d528aa938` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x39b76c839104c09964f830bc752516e6139feb68` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x39ed2da1038d2b57d468721a659edf9708c7b44b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3aaf4fadeb395b75e262205fb811b5bca8793ece` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3f99b68ca2be7ddf41f839b95125c9f274d0d827` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4290d82461a94cb4392827cf188c6cbd44f05753` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x470ffb6919193f9149b56b6768d28ce56697f18b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x473253ecee7c89e4532ccba49100ee5dbde13b4b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4893c47e761270a2bbd6bcc96d65d2a426812566` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4a435f6e471f773173774e860ebdcd17b132a2b4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4f1be89d57d0b3553832b1f0a3cef7003418fce8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x501a2f7756a478d5b9ea51dea395df65fa357c3b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x51b0be043dc6e0f7a743ba80ce0d65ef4efb7e8e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x53181e8859d44702d17ecec6e22a36ae6060285a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x548de5ebac0d1ab3f5e8361da074cbb0e9fda12f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x553921bf7bc4ebf83d6087e613c6cec351c116ab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5691e11f81ff1e2c9541d62a4a728a4598f0f307` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x57fb46b175d7990c0c5a691b3f22fdea1be69343` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x58c26f49ff79b5d1cccd60965bb36d0095506bab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5d441ae18bbf14065dddb3bf5b2946fa6d122e7c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x612280023ecff4f83e7ac8b6902efbb6f3998349` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x63a38d694de837ddf765f9b2704814275586d812` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6436919bec434bc6cbd5aae42a24ed8e129c3acb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x64abdc1d085cce51b254ad683216a2639eb51496` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x684324c34b6b757ff1883bd427ed9bd74ef50324` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x693070c7b0875f1f45b4a7a9ba51ecd78063b605` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6a5ec6dd03185e01bb96b3c250cd7f07255d37be` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6c907c11432a149950e56c957124ea43ce4e8dc0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6cccee28e2bcaae3bf26803d0c5314bd2b55f3c9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6e8220868245ee00e4f9ef66ed5775ec70b41423` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6ea5b1b6f66ee40bebba4e5f3616ae3f04f7daa7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6ed96fdf42ab82bf12982f0c10a23a6cd3a5c29d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6fcc424edf2fba4a306478f779cc21d47a805771` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6fda3fb36e8365203b7566c7edd1601839ab0d6d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x72d27b660a0b5a2db8fc7ab3aa25466a22f115a9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x72f311a35e2abf4fbd22715c04312370ba512caf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7477e7c77d1089d6681e5693ee4a674cc52b7ebe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x749a542683ce5402cfd81daf8a75ef085343d844` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x754a43a1c4af2887e0c469608f3066c40f9a7c4d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x77c74fe6b0ded47148a3c3989ff072f33cee6415` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x78fdce407d22eb47f17cbe94fa68e2274935f500` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7a833d4109cc9bf3f5d54d3c9fa2091c8961644d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7a9c80280444120e5dc83c1d26c3bcb441dcebd3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7cc7a3110aba8faa71418d418815988e67059a92` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7e8f3af55a47077580d5fa5aef3b99c958369602` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8147db51f415d25bf2250dd928a6254455b2068c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8472622e80b2755430c94823880ada1c8fb61eec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x874a776722574099169299d9f2d0a24de8b29ecd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8a21b641ea95cff22a36e447cde24a9c014c4c62` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8beab26dbf868d8ed1e52545926c8002f7e53080` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8d2923a7988e3eeb67134b7097e9bf4df470f0a1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8d6e782185efdeed4b0e93dbd16923fa4b0e2c73` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8f7934b06e0c60b4c5b8e7930eef1e4f3961e851` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x914b404fc298af377554c32a897dbbdfa8e04c9d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x91ca13a894d4b2202d1bce08d65cb53c5c2379c2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x951e48277e4a275a654bdc4d4860940732b9a344` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x99091f483f694ca8620d9a5c192d7eb243259557` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x997c04845335eca64b69f3306f40e81916fbade8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9c2f0bf514771d01e4c4c772c3016c520a8ff2a1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9daebe9865c9e56c208224a1f01b363ecb03032b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa478cec72e31130bfbbbc5a64bb74d5105f03fb4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa838aea9130978bcfdf154a1a49109c416fbfd0d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa9bd9897dd75f8a8c75532c7d5c458dcde1ce65e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xae8e7e9aaca9ea5e1868b4ea1d9fe3fb716132cd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb0aa3b36912f8e4e574293ebe8efd22d30ef9dea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb0eed68da548826c3403e390c6866fb787a23e93` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb1ac64dfc71914b9f16930ba6138fb38f497fe6e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb227366403320953145c92ddd13893438b5f5d9e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb337dec5e0690259a30d0c63e898131c0a071107` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb34216b9e78490751e7ae26013a77ddef56c6e2f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb3b62716a8045c7419e7c5dac5e9812c3f9b3c6e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbb5b3abe99c588435e588594ece22bce5a6baad6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbc81979091a5a7a50b80e490024bcbc336216f9b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbe06f944ee5e5434f5d0d6db3b0acfdd1aabb718` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbfc9b15bd67be7f73c8532982b19f74efa2071a0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc5e7ce74968c9efb467979e0f29cae34d673188a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc5ed923c8c2ec8ec8ebcfef3c1a0111179c0ef25` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc6b3fe0f313633ebf8b9d4218ea063f2788b2482` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc8eed99c787f98fc41d87cf41be411a14af350b0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc9e9999b5bc1fad35d6ea732b3c05c8af4c5c49a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc9ee087ae60ea5c53917b3252fcecd761755dea7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcdef2f7223ee9c5cf4302b2180159da88ee77e9b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcdfb8e73283715a4253cbc1291c02425ae3c2739` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xce51fafcdd60eb3b3f714aa52424d9e048f9e4be` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcfb1ea075b6157c4a7917fc88dee7b68de312f12` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd45d149b8b933c3a6097463416bd903d134493fc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd57561631acbda90387d94ab20b2f88e69b8f87d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd6a4d97e61e075f73616756b5785bd5663e4005f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd7eaac53924c2d96b2f7799565e5d94a58689e3c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd834ffabc3321ad1099d5594520a7ff160a87599` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd86a07712a65f580428835762a5a770dac649fef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd940defbc9944ce705fc4226c8688bcd599a2a38` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xda6a9926bcc857e74521d25a3cf783d883da864f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdbb64de23232d678f1f4869db30430bf52b52152` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdedf37a6ab06b091a8c76ec20d48094a3fbb002b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe59d876cb88db534bdec6b12699c32fb8865f3ff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe6547f1143cc09cf0f0d1167b19ca72c4950c4e5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe7a3031e9aa691aa6c7e0263b44bddc3c9427c16` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe82a1de6cbd93d5292d88f1f51b26098a026036e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe9f9928b0b48844be2bca01470b111bb28a5dc1b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xeb38cae810f604ff88002802ebb0dac74313566a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xeb7db8c481dd5e43ec15801e77d1f183abb82c86` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xefa30b3bcc18de49531ab47b0e69467c075ccdff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xefa43b585123f408aedfe0f919314f199a6e7657` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf2846b1f0311d19a89517bceb8cdb70ae66e4640` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf2b47d09d891ee730590dbf8077212de705b23fc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf6c0fed4985c4c385a41a1ecfc835747b0e4c47e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf7725ff74e0579c3a7d815b59e856b33ab871689` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf8a9b485a63f0cdb352222979689462d52fd0de9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf92532bd7367a49a4ed7c3c24febad9f85d8bd64` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf926e4189742f89f3b0117276e1fb138edea7989` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-254913 | `0x0555e30da8f98308edb960aa94c0db47230d2b9c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-254916 | `0x4200000000000000000000000000000000000006` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-254918 | `0x833589fcd6edb6e08f4c7c32d4f71b54bda02913` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-254920 | `0xfde4c96c8593536e31f229ea8f37b2ada2699bb2` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-254903 | `0x036cbd53842c5426634e7929541ec2318f3dcf7e` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [SKALE_Audit_Bramah.pdf](https://github.com/skalenetwork/IMA/blob/develop/audits/SKALE_Audit_Bramah.pdf) | unknown | Audit | 2021-06 | stale | Direct | n/a | no match | 0 | 0 | 0 | 53 | n/a |
| [Audit Report - SKALE Self-Recharging Wallets.pdf](https://github.com/solidified-platform/audits/blob/master/Audit%20Report%20-%20SKALE%20Self-Recharging%20Wallets.pdf) | unknown | Audit | 2023-01 | stale | Direct | n/a | no match | 0 | 0 | 0 | 2 | n/a |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [13847] SKALE_Audit_Bramah.pdf — no match: No reason recorded
- [13848] Audit Report - SKALE Self-Recharging Wallets.pdf — no match: No reason recorded

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| SKALE_Audit_Bramah.pdf | CommunityLocker | unmatched — not counted | — | — | no |
| SKALE_Audit_Bramah.pdf | CommunityPool | unmatched — not counted | — | — | no |
| SKALE_Audit_Bramah.pdf | ConfigReader | unmatched — not counted | — | — | no |
| SKALE_Audit_Bramah.pdf | DepositBox | unmatched — not counted | — | — | no |
| SKALE_Audit_Bramah.pdf | DepositBoxERC1155 | unmatched — not counted | — | — | no |
| SKALE_Audit_Bramah.pdf | DepositBoxERC20 | unmatched — not counted | — | — | no |
| SKALE_Audit_Bramah.pdf | DepositBoxERC721 | unmatched — not counted | — | — | no |
| SKALE_Audit_Bramah.pdf | DepositBoxEth | unmatched — not counted | — | — | no |
| SKALE_Audit_Bramah.pdf | ERC1155OnChain | unmatched — not counted | — | — | no |
| SKALE_Audit_Bramah.pdf | ERC20OnChain | unmatched — not counted | — | — | no |
| SKALE_Audit_Bramah.pdf | ERC721OnChain | unmatched — not counted | — | — | no |
| SKALE_Audit_Bramah.pdf | ERC721ReferenceMintAndMetadataMainnet | unmatched — not counted | — | — | no |
| SKALE_Audit_Bramah.pdf | ERC721ReferenceMintAndMetadataSchain | unmatched — not counted | — | — | no |
| SKALE_Audit_Bramah.pdf | EthErc20 | unmatched — not counted | — | — | no |
| SKALE_Audit_Bramah.pdf | FieldOperations | unmatched — not counted | — | — | no |
| SKALE_Audit_Bramah.pdf | IMainnetContract | unmatched — not counted | — | — | no |
| SKALE_Audit_Bramah.pdf | IMessageProxy | unmatched — not counted | — | — | no |
| SKALE_Audit_Bramah.pdf | IMessageReceiver | unmatched — not counted | — | — | no |
| SKALE_Audit_Bramah.pdf | KeyStorage | unmatched — not counted | — | — | no |
| SKALE_Audit_Bramah.pdf | KeyStorageMock | unmatched — not counted | — | — | no |
| SKALE_Audit_Bramah.pdf | Linker | unmatched — not counted | — | — | no |
| SKALE_Audit_Bramah.pdf | Logger | unmatched — not counted | — | — | no |
| SKALE_Audit_Bramah.pdf | MessageProxyClient | unmatched — not counted | — | — | no |
| SKALE_Audit_Bramah.pdf | MessageProxyForMainnet | unmatched — not counted | — | — | no |
| SKALE_Audit_Bramah.pdf | MessageProxyForMainnetTester | unmatched — not counted | — | — | no |
| SKALE_Audit_Bramah.pdf | MessageProxyForSchain | unmatched — not counted | — | — | no |
| SKALE_Audit_Bramah.pdf | MessageProxyForSchainTester | unmatched — not counted | — | — | no |
| SKALE_Audit_Bramah.pdf | MessageProxyForSchainWithoutSignature | unmatched — not counted | — | — | no |
| SKALE_Audit_Bramah.pdf | MessageReceiver | unmatched — not counted | — | — | no |
| SKALE_Audit_Bramah.pdf | MessageSender | unmatched — not counted | — | — | no |
| SKALE_Audit_Bramah.pdf | Messages | unmatched — not counted | — | — | no |
| SKALE_Audit_Bramah.pdf | MessagesTester | unmatched — not counted | — | — | no |
| SKALE_Audit_Bramah.pdf | Migrations | unmatched — not counted | — | — | no |
| SKALE_Audit_Bramah.pdf | Precompiled | unmatched — not counted | — | — | no |
| SKALE_Audit_Bramah.pdf | PrecompiledMock | unmatched — not counted | — | — | no |
| SKALE_Audit_Bramah.pdf | ReceiverGasLimitMainnetMock | unmatched — not counted | — | — | no |
| SKALE_Audit_Bramah.pdf | ReceiverGasLimitSchainMock | unmatched — not counted | — | — | no |
| SKALE_Audit_Bramah.pdf | ReceiverMock | unmatched — not counted | — | — | no |
| SKALE_Audit_Bramah.pdf | SkaleManagerClient | unmatched — not counted | — | — | no |
| SKALE_Audit_Bramah.pdf | SkaleVerifier | unmatched — not counted | — | — | no |
| SKALE_Audit_Bramah.pdf | SkaleVerifierMock | unmatched — not counted | — | — | no |
| SKALE_Audit_Bramah.pdf | TestContractManager | unmatched — not counted | — | — | no |
| SKALE_Audit_Bramah.pdf | TestNodes | unmatched — not counted | — | — | no |
| SKALE_Audit_Bramah.pdf | TestSchains | unmatched — not counted | — | — | no |
| SKALE_Audit_Bramah.pdf | TestSchainsInternal | unmatched — not counted | — | — | no |
| SKALE_Audit_Bramah.pdf | TestWallets | unmatched — not counted | — | — | no |
| SKALE_Audit_Bramah.pdf | TokenManager | unmatched — not counted | — | — | no |
| SKALE_Audit_Bramah.pdf | TokenManagerERC1155 | unmatched — not counted | — | — | no |
| SKALE_Audit_Bramah.pdf | TokenManagerERC20 | unmatched — not counted | — | — | no |
| SKALE_Audit_Bramah.pdf | TokenManagerERC721 | unmatched — not counted | — | — | no |
| SKALE_Audit_Bramah.pdf | TokenManagerEth | unmatched — not counted | — | — | no |
| SKALE_Audit_Bramah.pdf | TokenManagerLinker | unmatched — not counted | — | — | no |
| SKALE_Audit_Bramah.pdf | Twin | unmatched — not counted | — | — | no |
| Audit Report - SKALE Self-Recharging Wallets.pdf | Wallet | unmatched — not counted | — | — | no |
| Audit Report - SKALE Self-Recharging Wallets.pdf | Wallets | unmatched — not counted | — | — | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 89 |
| upstream | 0 |
| standard_library | 2 |
| needs_review | 148 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 55 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [13847] SKALE_Audit_Bramah.pdf
- [13848] Audit Report - SKALE Self-Recharging Wallets.pdf

Fork inheritance lineage and inherited audits are included when available.
