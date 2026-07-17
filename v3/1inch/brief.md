# Agentic Audit Brief: 1inch

## Export Authority

- Production state: **published scope**
- Raw selected rows: 7 across 7 audit(s)
- Eligible audit results: 145 (7 matched; 138 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

⚠️ Lifecycle status: DECLINING - TVL dropped 22.4% over 90 days

## Project Overview

- Project: 1inch (`1inch`)
- Website: [https://1inch.com](https://1inch.com)
- Lifecycle: declining (Tier 1, declining)
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: bsc, ethereum, zksync-era
- Contract surface: 390 unique implementations (969 raw deployments)
- Coverage basis: 1/1 confirmed own live verified implementations (100.0%); conservative 100.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $2,274,711.87
- On-chain TVL (included contracts): $16,092,203.53
- TVL by chain: Ethereum $16,092,203.53

## Project Description

This brief describes the observed EVM deployment and audit surface for 1inch. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 1 contract row(s) across bsc, ethereum, zksync-era. Structural roles: 1 supporting. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 1
- Structural roles: supporting (1)
- Contract kinds: contract (1)
- Detected standards: ownable (1), pausable (1)
- Frameworks: openzeppelin (1), permit2 (1)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 2 contracts are derived from known codebases. 2 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x6fd4383cb451173d5f9304f041c7bcbf27d561ff`, chain 324)
- AggregationRouterV6 (`0x111111125421ca6dc452d289314280a0f8842a65`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 1; live-surface rows included: 1 (1 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 2/2 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 1/1 (100.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 2 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 388 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 24
- Confirmed-live implementations: 2 of 390 unique; 388 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 1/115
- Verified + Unaudited implementations: 114
- Verified by bytecode match: 0
- Unverified implementations: 275
- Unique implementations: 390
- Raw deployments: 969
- Audits discovered: 145 (145 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 7
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-09 (fresh)
- Audit staleness (calendar age): 8 fresh, 24 aging, 111 stale, 2 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 1 match-unverified
- Tier 1 coverage: 100.0% (ConsenSys Diligence, OpenZeppelin)
- Note: This protocol is classified as [declining]. ASD of n/a represents exposure in a protocol with declining activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Consensys | Tier 1 | 1 | 0.9% | 2024-07 |
| Decurity | Tier 2 | 1 | 0.9% | 2025-08 |
| Hexens | Tier 2 | 1 | 0.9% | 2025-08 |
| OpenZeppelin | Tier 1 | 1 | 0.9% | 2025-08 |
| Pessimistic | Tier 2 | 1 | 0.9% | 2024-08 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AggregationRouterV6 | adapter | project_anchor | own_supporting | 0 | ethereum | unit-378314 | `0x111111125421ca6dc452d289314280a0f8842a65` | ✅ Audited |

### ⚠️ Verified + Unaudited (114)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| MiniMeToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x53f2eab746305b1f500f783abefa5954b2c7a793`; ethereum `0xcd62b1c403fa761baadfc74c525ce2b51780b184`; ethereum `0xf60e55ce9a38beef92bc040fe119fadebdceab44` | ⚠️ Unaudited |
| HolyToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x11777d951cc9be0bafff437d30fbcc759410daab`; ethereum `0x39eae99e685906ff1c11a962a743440d0a1a6e09`; ethereum `0xa59b009cd174710d9c79b5b1fe38d7347717cf4e` | ⚠️ Unaudited |
| HolyPoolV2 | core_logic | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x1e7062f6458d67e74f84c37c189ab3e69eefdb58`; ethereum `0xaf985437dca19deff89e61f83cd526b272523719` | ⚠️ Unaudited |
| MoverToken | token | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x3fa729b4548becbad4eab6ef18413470e6d5324c`; ethereum `0xb05e8de2036ba9eaa4439b3c2243494a162203a5` | ⚠️ Unaudited |
| HolyValorYearnUSDCVaultV2 | core_logic | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xfa9ba210f70987477f4d65639ebd194dc1184e61` | ⚠️ Unaudited |
| AdminUpgradeabilityProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x1fac81af4dde6276e5e3283ff2b0bd9970b8e755`; ethereum `0x6ad299b9bd8312f47b132257a95842ba3c1c48b4`; ethereum `0xbb2390d791850d976c87dbbada1d9992c9b123ad` | ⚠️ Unaudited |
| AggregationRouterV6 | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x111111125421ca6dc452d289314280a0f8842a65` | ⚠️ Unaudited |
| CEOofMoneyNFT | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8c4075ef135aaebb2f0fd445635e305a162e4411` | ⚠️ Unaudited |
| CrosschainWhitelistRegistry | registry | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbe89346fe1ce1367f3d80c8522209a86511b1201` | ⚠️ Unaudited |
| CumulativeMerkleDrop | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0xb686559bb45fcdb1f370836066ef9e9b4c2d9548`; ethereum `0xee262adcd9ecc0476452e302cf3c822f634dafaf` | ⚠️ Unaudited |
| DAPFToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbb9284484cb9a2bc7950a1276edba2f6358ea677` | ⚠️ Unaudited |
| Dice | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0xa60184b67a665ede46774b5fee0acdf115080456`; ethereum `0xb75acece1f77fe7059cfff8ef76f73b7e999edd2` | ⚠️ Unaudited |
| EscrowFactory | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0xa7bcb4eac8964306f9e3764f67db6a7af6ddf99a`; bsc `0xa7bcb4eac8964306f9e3764f67db6a7af6ddf99a` | ⚠️ Unaudited |
| EvmHelpers | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x77340c866ef1da13407d61120010f136fad5f91c`; bsc `0xb97cd69145e5a9357b2acd6af6c5076380f17afb` | ⚠️ Unaudited |
| ExchangeGovernance | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 8 deployments: ethereum `0x32d12a25f539e341089050e2d26794f041fc9df8`; ethereum `0x54431918cec22932fcf97e54769f4e00f646690f`; ethereum `0xb2b418760b438e287b5ef4ad8a7a175956f9c7d9`; ethereum `0xb33839e05ce9fc53236ae325324a27612f4d110d`; ethereum `0xd5c5c41248f949fce678a7f1619bcea7872c93ef`; bsc `0x13927a60c7bf4d3d00e3c1593e0ec713e35d2106`; bsc `0x2a71693a4d88b4f6ae6697a87b3524c04b92ab38`; bsc `0xccf6b19bc2419e776b6ee030044811da846686fb` | ⚠️ Unaudited |
| FarmingRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 44 deployments: ethereum `0x0da1b305d7101359434d71eceaab71e1ff5437e6`; ethereum `0x1055f60bbf27d233c4e34d2e03e35567427415fa`; ethereum `0x13927a60c7bf4d3d00e3c1593e0ec713e35d2106`; ethereum `0x18d410f651289bb978fc32f90d2d7e608f4f4560`; ethereum `0x2cb9e71a5cf989008ba93dad8edb988ec1b4182f`; ethereum `0x2ec255797fef7669fa243509b7a599121148ffba`; ethereum `0x2ede375d73d81dbd19ef58a75ba359dd28d25de8`; ethereum `0x302a6eda4e2b2c563a80cc17bd80a1251b986677`; ethereum `0x322e22cc258cba8b1d40348cb375bedddd3c2d4c`; ethereum `0x3eb586541287e57c4d2661c0d28bcbddfe2b640d`; ethereum `0x48371588e964f1e8939127af68622e32268640fa`; ethereum `0x4dab1ba9609c1546a0a69a76f00ed935b0b9c45e`; ethereum `0x598032ba8e7acb625ea6854b4696e25afa2ec9f0`; ethereum `0x73f5e5260423a2742d9f8ac49dea6cb5eaec465e`; ethereum `0x7cb203834ce6792756541d722d94296f4c1ca356`; ethereum `0x7ded1b278d244f707214759c45c1540834890e95`; ethereum `0x8acdb3bcc5101b1ba8a5070f003a77a2da376fe8`; ethereum `0x8b1af1298f5c0ca8a6b4e66626a4bdae0f7521e5`; ethereum `0x8ba0ef03c26fa2a11bde30db4e87c87408b9761b`; ethereum `0x9070832cf729a5150bb26825c2927e7d343eabd9`; ethereum `0x94bc2a1c732bcad7343b25af48385fe76e08734f`; ethereum `0x950a9414700e8ee8041c1cab5a0c6afddf0e9257`; ethereum `0x98484d4259a70b73af58180521f2eb71a3f00ae6`; ethereum `0xa218543cc21ee9388fa1e509f950fd127ca82155`; ethereum `0xa355b4b904ce09bd1847f4cf133769bc0dfbc51b`; ethereum `0xa83fcea9229c7f1e02acb46abe8d6889259339e8`; ethereum `0xafea5601b0a894451955355e79ad3026515e500d`; ethereum `0xb54fc9c8913f282fca235721095d57d6eded3ce7`; ethereum `0xc1e16013a158d57a60d6aa5bb3108722b0ac6df5`; ethereum `0xc7c42eccac0d4bb790a32bc86519ac362e01d388`; ethereum `0xc84dcdaff87f9b5639db82f434c8ba1c2023f6eb`; ethereum `0xca6e3ebf4ac8c3e84bccdf5cd89aece74d69f2a7`; ethereum `0xd7012cdebf10d5b352c601563aa3a8d1795a3f52`; ethereum `0xd7936052d1e096d48c81ef3918f9fd6384108480`; ethereum `0xe0c70111b6ee26865eadb35311748bfd45a3596e`; ethereum `0xe22f6a5dd9e491dfab49faefdb32d01aaf99703e`; ethereum `0xe49055ac21af33ba5ac59a40d0e10fbfb00d9583`; ethereum `0xe65184b402376703adc27a7d7e0e8d35a264a240`; ethereum `0xeb7dbc5a64d2d083d774595e560b147c5021eacd`; ethereum `0xfbd61b037c325b959c0f6a7e69d8f37770c2c550`; bsc `0x5d0ec1f843c1233d304b96dbde0cab9ec04d71ef`; bsc `0x7731f8df999a9441ae10519617c24568dc82f697`; bsc `0x8b01d28f4fddd89322711d832325f7eb1f122fb2`; bsc `0xcb06df7f0be5b8bb261d294cf87c794eb9da85b1` | ⚠️ Unaudited |
| FarmingVoter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x11a5504d869409d6e43d6ee18b41c6e7f16b09dc` | ⚠️ Unaudited |
| FeeCollector | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2359ab45ac9c5b575152be21a19c33c138e58dda` | ⚠️ Unaudited |
| FeeTaker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1c30a1aeeafab7f5edb1a09a7a4a0b8bed8ee401` | ⚠️ Unaudited |
| FixedFeeSwap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x0115d08f81a7b5f70316e0a85f776c43c5814043`; ethereum `0xc61f21d7e40c5024f6f0d8b711b76802a1300637` | ⚠️ Unaudited |
| FixedRateSwap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 5 deployments: ethereum `0x27fe0f25acabd7b4c8c28561059c8bfceb8e64f3`; ethereum `0x40bbde0ec6f177c4a67360d0f0969cfc464b0bb4`; ethereum `0x92b3842c822810774ac077703a96e194ac9ddcd1`; bsc `0xa83fcea9229c7f1e02acb46abe8d6889259339e8`; bsc `0xd9c69699c099fd64ec5ab7b34aebe970a564ae96` | ⚠️ Unaudited |
| FulcrumWrapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf971ff7838ae0c9316289f0e1aab69218ea9073c` | ⚠️ Unaudited |
| FulcrumWrapperLegacy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5335e083867fa58c70bc43b1498d80575fdef60c` | ⚠️ Unaudited |
| GovernanceFeeReceiver | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4dfa40fdaa7694676899f8887a45603922609af4` | ⚠️ Unaudited |
| GovernanceMothership | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: ethereum `0xa0446d8804611944f1b527ecd37d7dcbe442caba`; bsc `0x73f0a6927a3c04e679074e70dfb9105f453e799d` | ⚠️ Unaudited |
| GovernanceRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x0f85a912448279111694f4ba4f85dc641c54b594`; bsc `0x59a0a6d73e6a5224871f45e6d845ce1574063ade`; bsc `0x735247fb0a604c0adc6cab38ace16d0dba31295f` | ⚠️ Unaudited |
| HHToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x62d4f5ebf2c3fffd5f58183fa7cde61dbeb8d7b5` | ⚠️ Unaudited |
| HHTokenV2 | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xedfd04db73323502d533ef8d0557c2549a3fc6ca` | ⚠️ Unaudited |
| HolderVesting | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x0811ad996cd39cecaedce64a51793cfebb913c12`; ethereum `0xffe68092f1430c3cb0e89dda4c99328ad1dde5a3` | ⚠️ Unaudited |
| HolyHand | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5e609760a190822e86ae1598faf9d82aa7944770` | ⚠️ Unaudited |
| HolyHandV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x038f4f2a032f69e5b2dfdf21623ad14b57f80fc7` | ⚠️ Unaudited |
| HolyHandV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x14dae6a4adb2f0c44756d209404e3495ac01e377` | ⚠️ Unaudited |
| HolyHandV4 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2504b6a3fa927cd7ea0cf713fc6ad9124b80f1b8` | ⚠️ Unaudited |
| HolyHandV5 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe7a55c10c74720fab86f483fea2181ded3f10134` | ⚠️ Unaudited |
| HolyHandV5_1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x52c1e7e4bb6ffd5230c389be5f186403c4be2f2d` | ⚠️ Unaudited |
| HolyHandV6 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd5ba57863ac61602e96f88a934ef388ef08119fc` | ⚠️ Unaudited |
| HolyHandV7 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x1ef7a557cfa8436ee08790e3f2b190b8937fda0e`; ethereum `0xd33d88df1c821b82c09ca950314c14d0c4e1e1f3` | ⚠️ Unaudited |
| HolyPaladin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x26fb67e9eb170aa01ced962a007350725b037fb3`; ethereum `0x4afe6828e15f7c7144d5532eeace2f5838888e3c` | ⚠️ Unaudited |
| HolyPassageV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x29f2a1a7c61fd7ea08bbcca95d53b1462b3ad4af` | ⚠️ Unaudited |
| HolyPassageV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x80179c05b34c733d7cc59763c8f690222bf61e91`; ethereum `0xf70fd03dd7147557731f19e5a356421d0b39f407` | ⚠️ Unaudited |
| HolyPassageV4 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x39ac24fd08991b1d69a9ef7189bc718c988ff5b3`; ethereum `0xc09d9d61aaef986f92058f29ee48136d16bde363` | ⚠️ Unaudited |
| HolyPool | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1058fba8e10c1df675c79ab988c18275f6337051` | ⚠️ Unaudited |
| HolyRedeemer | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x2576c08de9a369491d148f82356c5b1431da361a`; ethereum `0x496599b4de503d5c5c11882501af64d04025c6dd` | ⚠️ Unaudited |
| HolyVisor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x153dd4efb768dbd46d6c4f2d8a25a80f565e8bd9` | ⚠️ Unaudited |
| HolyVisorV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x0c946caa389b7325141c035d71c667d4f9627697`; ethereum `0x636356f857f89af15cb67735b68b9b673b5cda6c` | ⚠️ Unaudited |
| HolyWing | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5ea3e454fe9f099a1ec7f5d14213cbc86a7d1d45` | ⚠️ Unaudited |
| HolyWingV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x9b986b20243b62628f7b47a2dea602c29eb8ace1`; ethereum `0xd5b3230ea9bf7bad9541f8564fa2fa72b350427b` | ⚠️ Unaudited |
| HolyWingV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcbf944ad94e7bd190d6752e28f8c09be1da10198` | ⚠️ Unaudited |
| HumanitarianAidNFT | token | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0xdb33de0ee7b1410d653ada5d05aef9cf37ef0911`; ethereum `0xebfb3b9f34307de7a72edda8696c1e14e0f41d8b` | ⚠️ Unaudited |
| KyberDmmOracle | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: ethereum `0xf74d3a34655954f0264b068250009aee1f06f101`; bsc `0x2eea44e40930b1984f42078e836c659a12301e40` | ⚠️ Unaudited |
| LeftoverExchanger | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 8 deployments: ethereum `0x18763f195f35078cc662b2c26b97bb1a015fc778`; ethereum `0x285e33580d5a1ee935f0ae166f81cb19054105e3`; ethereum `0x89125b1d64648ac3c77e42dd2d30572859f8af3f`; ethereum `0xe9f1420bf4ff6a1db45baf974c84d81bea781b58`; bsc `0x080ab73787a8b13ec7f40bd7d00d6cc07f9b24d0`; bsc `0x4749b35ae40897b40585633261c5f743730fe8bc`; bsc `0x5500f441d1dd4298d49279f3f78d17a6a255dc39`; bsc `0x8b1af1298f5c0ca8a6b4e66626a4bdae0f7521e5` | ⚠️ Unaudited |
| LimitOrderProtocol | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 6 deployments: ethereum `0x119c71d3bbac22029622cbaec24854d3d32d2828`; ethereum `0x3ef51736315f52d568d6d2cf289419b9cfffe782`; ethereum `0xf667e1626a463a80e45647977d6fdc88923221a2`; bsc `0x0da1b305d7101359434d71eceaab71e1ff5437e6`; bsc `0x1e38eff998df9d3669e32f4ff400031385bf6362`; bsc `0xe3456f4ee65e745a44ec3bcb83d0f2529d1b84eb` | ⚠️ Unaudited |
| LimitOrderProtocolPro | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5349df28f8353dc8049edf11faae2d3f3b3346de` | ⚠️ Unaudited |
| Maverick2TickHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x1666ef2e729dab497a6798a4221d0e041111dcd4`; bsc `0x9fd3cc33bf4f28459da6383ada34dc048cd304d4` | ⚠️ Unaudited |
| MerkleDistributor | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x4ee7c0f5480eb1edd8902a5e8b991ed52992d5f5`; ethereum `0x97e40d2a33a5797bd00c4b643b39795f21b8ab62`; ethereum `0xb5256c6876cbfd4e2d2511f415691235305448c3`; ethereum `0xe295ad71242373c37c5fda7b57f26f9ea1088afe` | ⚠️ Unaudited |
| MerkleDrop128 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x518ddbc6cabe97053b69199185c88754b654c043`; ethereum `0x9ce614c00427dc9c53ddf6e877fd2ff71be1b35d` | ⚠️ Unaudited |
| Migrations | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x0f9abb87a091190eec58c0a7cc18c842c3ac90cd`; ethereum `0x7e166ba6bff0e6391a6c9fd6f2ad9f847bf070ee` | ⚠️ Unaudited |
| Mooniswap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x59a0a6d73e6a5224871f45e6d845ce1574063ade` | ⚠️ Unaudited |
| MooniswapDeployer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 3 deployments: ethereum `0xa31bb36c5164b165f9c36955ea4ccbab42b3b28e`; ethereum `0xcb06df7f0be5b8bb261d294cf87c794eb9da85b1`; bsc `0x11431a89893025d2a48dca4eddc396f8c8117187` | ⚠️ Unaudited |
| MooniswapFactory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0xbaf9a5d4b0052359326a6cdab54babaa3a3a9643`; ethereum `0xc4a8b7e29e3c8ec560cd4945c1cf3461a85a148d`; ethereum `0xe1b8ff58432916ccfbf65a467b66fa4313dc04d3`; bsc `0xd41b24bba51fac0e4827b6f94c0d6ddeb183cd64` | ⚠️ Unaudited |
| MooniswapOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x1488a117641ed5d2d29ab3ed2397963fdefec25e`; ethereum `0x1ad5ed95b8197fcc75e38fb0bc2c51dcc9b94097`; ethereum `0x30829f90270eb4270d8cadfafcf13f1df841be1d` | ⚠️ Unaudited |
| MoverCEOCapNFT | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x4703738dec2bbbddb5ec06c4ca5c76d325f31bc6`; ethereum `0x802630d770df0296ef4ae17d146172e5eb69ef70`; ethereum `0xf2bfa8f74f6b5f8ea92c92d03021bfc1ba806267` | ⚠️ Unaudited |
| MoverNFT1 | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa00942e25dfad2473b529642e39bbdf38d23df5a` | ⚠️ Unaudited |
| MoverNFT1v2 | token | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x0769747d4cac06bc2320e0bb1efb31d53fa0aaa1`; ethereum `0xcf55b32955abece275cd67406e1da6815b33da71` | ⚠️ Unaudited |
| MoverNFTSWS | token | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x129b9083a9f02aed65e31644a8103d5aa2c73701`; ethereum `0xc649a0442073d993a1b629449d18c57cd6827534` | ⚠️ Unaudited |
| MoverOlympusNFT | token | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x2733a766d2d79d26b2d23343db5bf38290f67f22`; ethereum `0x76dc7e3e883017741d8dc050debe5fe6deaaa409` | ⚠️ Unaudited |
| MoverUBTStakeNode | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x00834e2763b108b01218638dc2cec27ce6d43753`; ethereum `0x8c1e98a0bba4e5200e950e74cd62ccdaf6274768` | ⚠️ Unaudited |
| MoverUBTStakeNodeV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 6 | ethereum | n/a | 7 deployments: ethereum `0x3f1256afbfae473f17f07c17b1ec0c9f0326fb49`; ethereum `0x4690d1d12b3f2c60987c6fe4b1b525a0204dad73`; ethereum `0x67686e74e5256652e0ab0a9f5c1e61d11a66cace`; ethereum `0x88e7e1b3ec590512dcd8c8dbc1b8bd4cb15f1ee8`; ethereum `0xb494c12dee7bd77f27ad476f9709e54f1b410450`; ethereum `0xd39f523ee00aef6b75b76fecce36a8c09ee77b88`; ethereum `0xd5f911a64156e5b79239d8ef76baa1c2f1991526` | ⚠️ Unaudited |
| MoverUBTStakePool | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x81cbc2e0a9d8bd3b1976e1292cc08762433f1f9e` | ⚠️ Unaudited |
| MoverUBTStakePoolV2 | core_logic | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x1f15f293c1cd3d05d58d3edeaf0c72c5a2dfeaff`; ethereum `0x61b3bb68bbd8e6550aa13bee806e7a63d24f183f` | ⚠️ Unaudited |
| MoverValorYearnUSDCv2VaultV2 | core_logic | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x541d78076352a884c8358a2ac3f36408b99a18db` | ⚠️ Unaudited |
| MultiWrapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x931e32b6d112f7be74b16f7fbc77d491b30fe18c` | ⚠️ Unaudited |
| OffchainOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 7 deployments: ethereum `0x07d91f5fb9bf7798734c3f606db065549f6893bb`; ethereum `0x080ab73787a8b13ec7f40bd7d00d6cc07f9b24d0`; ethereum `0x6d68d90de84066e1f663b2e93726c10da1b831f1`; ethereum `0xcfd674f8731e801a4a15c1ae31770960e1afded1`; ethereum `0xe3c6b9c13739087c89dcb83d3ec15a767d829aa8`; bsc `0xe26a18b00e4827ed86bc136b2c1e95d5ae115edd`; bsc `0xfbd61b037c325b959c0f6a7e69d8f37770c2c550` | ⚠️ Unaudited |
| OGShirtNFT | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6e0c982c05b6fb0d7465476ddef7b1b7cbe26fcb` | ⚠️ Unaudited |
| OneInch | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x111111111117dc0aa78b770fa6a738034120c302`; bsc `0x111111111117dc0aa78b770fa6a738034120c302` | ⚠️ Unaudited |
| p1MToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1590c8af474ad2c06ff3eadd1e8fb8adf60223af` | ⚠️ Unaudited |
| PowerPod | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 6 deployments: ethereum `0x806d9073136c8a4a3fd21e0e708a9e17c87129e8`; ethereum `0x8dd297f5e487f2a6243bf7962303cdd4563d1b9c`; ethereum `0xaccfac2339e16dc80c50d2fa81b5c2b049b4f947`; ethereum `0xad9aebfd9875e27b569c0125c35ee8e4227792e3`; ethereum `0xdaf782667d98d5069ee7ba139932945c4d08fde9`; ethereum `0xeee4b3a0de82e3dbceb0a0060ebcb4c7be448741` | ⚠️ Unaudited |
| PriorityFeeLimiter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5e92d4021e49f9a2967b4ea1d20213b3a1c7c912` | ⚠️ Unaudited |
| ProxyAdmin | governance | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x0f7615375e3671de18ca653a5a7f332c50360fff`; ethereum `0x9d2efa062ab5b3cef05ec569fa5f6d8044c03466`; ethereum `0x9fc17aa5dc312633094fca8bb55638750b87e532`; ethereum `0xca33913c9c553e5c165e0413e0278bf03afa5cce` | ⚠️ Unaudited |
| ReferralFeeReceiver | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 5 deployments: ethereum `0x1cc61726b11613b37854a1c9ebc9a2092ed91b9d`; ethereum `0x2eea44e40930b1984f42078e836c659a12301e40`; ethereum `0x735247fb0a604c0adc6cab38ace16d0dba31295f`; ethereum `0xf5ab9bf279284fb8e3de1c3bf0b0b4a6fb0bb538`; bsc `0x29bc86ad68bb3bd3d54841a8522e0020c1882c22` | ⚠️ Unaudited |
| ResolverMetadata | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 6 deployments: ethereum `0x2031a8f571ac808da3117462fc32cd933f2792fd`; ethereum `0x755585cc36e95971ed232faf33dfc3796c85610e`; ethereum `0x9c688394ea32deda9400a204cc7a4a683249e15d`; ethereum `0xa18d49160072f769740263214d0f03d3fdbf2097`; ethereum `0xbf4543819ecede56220bcb1e8c1bba9ef290a58a`; ethereum `0xf182936f7a8b03ca1f21a7afedbe520aa5a1434f` | ⚠️ Unaudited |
| SeriesNonceManager | governance | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 4 deployments: ethereum `0x2dadf9264db7eb9e24470a2e6c73efbc4bdf01aa`; ethereum `0x303389f541ff2d620e42832f180a08e767b28e10`; bsc `0x1488a117641ed5d2d29ab3ed2397963fdefec25e`; bsc `0x58ce0e6ef670c9a05622f4188faa03a9e12ee2e4` | ⚠️ Unaudited |
| Settlement | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 11 deployments: ethereum `0x0634db834043922d8907edbf588aa57e42eb01a3`; ethereum `0x2ad5004c60e16e54d5007c80ce329adde5b51ef5`; ethereum `0x5e918e6e950f7286ef4b7a87fe14d20fd8a2e335`; ethereum `0x62c1420bfa76eb47a18fc4dc004df90fa696e69c`; ethereum `0x8273f37417da37c4a6c3995e82cf442f87a25d9c`; ethereum `0xa515e173279dfeea375c5e24e2da0521b2f4cc0f`; ethereum `0xa88800cd213da5ae406ce248380802bd53b47647`; ethereum `0xac322546fea4b6858ffc5ea51771cdcd7f715fdb`; ethereum `0xf4f4d19c3ae690c412460a5948757180642364bf`; bsc `0x1d0ae300eec4093cee4367c00b228d10a5c7ac63`; bsc `0xadc1eb0fb29d2a3bc9aaafbcdec115e03fbe3648` | ⚠️ Unaudited |
| SignatureMerkleDrop128 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 14 deployments: ethereum `0x153818040e114e0775e14c9029619d765aaaf79e`; ethereum `0x25ac81d5223e6b901100d09dd5e26cf45f4c2c77`; ethereum `0x64c6717de060a026e2f5ee1db82c791262df2680`; ethereum `0x6b7c8ebe6c4c8727c1fc5672582310fc16cdb261`; ethereum `0x7749eb2dd57fb59fb70942e6f2e71c02c221cbe1`; ethereum `0x9bd9e0573301064a345a858f8d034952d15bdb69`; ethereum `0xa1df961a2b26f27fb4fff20395c8ca8562f91107`; ethereum `0xa2286c5d866cefaa6a61a0c93aba0a32afecfec6`; ethereum `0xc5a11307558ff59f391e5a019306c12283e42311`; ethereum `0xc890d5740eec023ca1fb3dbf17c80c62c971555a`; ethereum `0xe02469781a4620c078492e3ef694cc24d026638f`; ethereum `0xe45007175249c645f28a8fff3eaeeceaada550cf`; ethereum `0xecd2f91e2aa27646681efc1c3c1c359518b212f9`; bsc `0x8dc76c16e90351c1574a3eea5c5797c475ea7292` | ⚠️ Unaudited |
| SmartTreasury | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xedb2f430b951cfaa48cce0ce5be9621f52ec6554` | ⚠️ Unaudited |
| SmartTreasuryFragmentPWC | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0xa8afb8272434f76f9cd0fd483f15c69aaf9a2e68`; ethereum `0xf5d7bd43597ecfe1a3cf812d6589b2b89bde157d` | ⚠️ Unaudited |
| SmartTreasuryV2 | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb63aeee274c5b3e17e3070f00eeafc916b7f3452` | ⚠️ Unaudited |
| SmartTreasuryV3 | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfcd791c74f16061f341fe2a1f5d8fdd3d32601ef` | ⚠️ Unaudited |
| SmartTreasuryV3_1 | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3c16bb476315ce0c66c659e0c2fd1657e62813fa` | ⚠️ Unaudited |
| SmartTreasuryV4 | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x47795ab886f53719e38780cedf40083aaec28315`; ethereum `0x94f748bfd1483750a7df01acd993213ab64c960f` | ⚠️ Unaudited |
| St1inch | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x03e93bea40b2f7e25a1b3709822744a932342241`; ethereum `0x0fd0c5b70e913f73f0434658394a4804e062bcf1`; ethereum `0x9a0c8ff858d273f57072d714bca7411d717501d7` | ⚠️ Unaudited |
| St1inchPreview | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x069f63ecf6ad9b14d3cdb479b97989501b5a7f83`; ethereum `0x45c2a2f06a6b40c13750ab2b75f9d74e628d09a4`; ethereum `0x722e140f1222d404916b8d0a8fd2f6233d446905` | ⚠️ Unaudited |
| StakingFarmingPod | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x1a87c0f9cca2f0926a155640e8958a8a6b0260be`; ethereum `0x83c156e4546c02ee0207c6db97d3f976212ef27a` | ⚠️ Unaudited |
| StepVesting | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 376 deployments: ethereum `0x003ea55ef6fb46de28fe05ae695042f103b05f30`; ethereum `0x009f54c67e5e814d50ffe199a36f222af01fe49a`; ethereum `0x0127d6eb88efacdd890a41d513b7cc1a41b09548`; ethereum `0x01e4b335eb8a04061eed2cb78af4f5b920486846`; ethereum `0x035a2bda82de90a6af5d1eeff01d725259cdef14`; ethereum `0x06af183d531f15d09490e35ed0b952846f718da7`; ethereum `0x06c49c1a557ead903fdf84c955ee7069d8b3f391`; ethereum `0x07eb0d3f42024b5608a9048c5b51b2903e1320b4`; ethereum `0x0820e5e3963f7f636f3a59b0cb4c3b48585acd42`; ethereum `0x0880a0e2d46589502a3770af27fa925026b3ea1a`; ethereum `0x0887631967593568e3e6d072286e1dae529df908`; ethereum `0x091ab63df8378a3080eb7ca25090f6f02d268f72`; ethereum `0x09a8e85901b48cfe26792847bafa50a1f4a697a1`; ethereum `0x0a074727833e0e1a25bf6f2e7580481b133fbc45`; ethereum `0x0a47c9f261b3071d196c8435ae8eea8ddaa1b52e`; ethereum `0x0a5fa426a802d8f6d1ff4d15e6d1d9eca93e2f6a`; ethereum `0x0a678d071bf7b3edfb808a913e838c33215ff4b0`; ethereum `0x0ac6ff4dbde9ceedc6d4c08b14ced9ff19a013ab`; ethereum `0x0c0538ca9b163d74c7c47ff95f21fa2a3c86e55d`; ethereum `0x0da1fc783c5db27d325ff9991362ff49e1d139c0`; ethereum `0x0ec26f8ccb980c07bc8aaf659afd235873c08dae`; ethereum `0x0f66df40a7e2313bd19c5435960f6752923b366e`; ethereum `0x103bf8e87ddd2774ced59c6c45efad18943a31d6`; ethereum `0x116f044f186e3438b79fbd0f543f71230c578ef5`; ethereum `0x1217f22c1ad0e6bbec742a2e7b5207ea251d4cc8`; ethereum `0x12a02bd87c79070ee244bb0d92a05a6f73f3acc8`; ethereum `0x135c8c0393fbbb6942294192064eed5e63a24a93`; ethereum `0x13a2834856669b505e0a5966342b95a3f550f8b2`; ethereum `0x13bed79ee1e48515d90150abbc3494a76913165d`; ethereum `0x13f25fa3f847d35bc78ea845d7923a23b7b75714`; ethereum `0x13fb4f2d0e85eeff8b4a2c00f3b33c82db005cdb`; ethereum `0x15daa6778501893f7f8b835dff8432fd282ec8d2`; ethereum `0x1632af69ea3acc750d4478db576b9ba25415d3c1`; ethereum `0x16be52719884a1b85f06f9044512912a27f0574d`; ethereum `0x1707e0d730176e0639c71a65e0fbae52206ed297`; ethereum `0x177f865fb68593d654e29c8bbbc4d3271b3720ef`; ethereum `0x17d11213b11cce3cd88fd5324040baf13bbb4146`; ethereum `0x1816cd259c57932edb7dd8e5a2838cc067a17cb4`; ethereum `0x1969375a83d740df393541fe2c3cf836415b2551`; ethereum `0x1b548b8fd1b0fac3ed45ee478f95782862c34bec`; ethereum `0x1c29477a03b891d65410834da0ed787f9fbf9468`; ethereum `0x1c30bc98984af21b4b8ea6cc1109e2fac3987905`; ethereum `0x1d4805e57243447c8d3dd993638cf86dd87edd9a`; ethereum `0x1dd6cbe14bff6255e6e360d8e88b1b2fd4b433e9`; ethereum `0x1e00e63e1f223ba3f66fe3076c50b15b9ea36753`; ethereum `0x1e20643cce065d937119e444fc64ad465d696b8a`; ethereum `0x1f83c3dce29b936ecee1da9bcd33753e06477354`; ethereum `0x1fb2f271665aebfe646a6ac00c733f528b57a4b4`; ethereum `0x2013e63b4d96dd1976e157b6a17a58b07be9e4a8`; ethereum `0x204165f03974ef4a0389d4a50d8eb2c8a69cbea9`; ethereum `0x2046aba1440c084a1a3dca3178e8c99441fc274c`; ethereum `0x20fd6f5bedeb3949bbf4c855e073595dcf3495d9`; ethereum `0x211ba5e2f961cb658e3c396f3349d9494e277837`; ethereum `0x215603b5f29941af5305bc524c4f73fd3fa7b0e8`; ethereum `0x218d066ca78e6ccf7165e4624a7863ba1c60c31e`; ethereum `0x21c69f7d1edd4a8a2ad241c2a96f62636acc0493`; ethereum `0x24029d808938460ac0c36e1aae56dbd024d5f796`; ethereum `0x24a2626dcb538ae217f6ca0c419feb4779475b27`; ethereum `0x24cb49ce80c65c35c5d07ea76e8b45477957ca5f`; ethereum `0x24e9de3d6ecd49e94f129b6eb8a62e35c76ad3b0`; ethereum `0x25149f5d133479107557b4aef9b4b9a665fc3f8e`; ethereum `0x25ea4ba2e0011b201d06662170d5115fa57f5787`; ethereum `0x261ec1295135b0e6ced82aa5c3081a14ca118a75`; ethereum `0x26a34f65b76374084c0283358c9755a99bfcc2c5`; ethereum `0x271136502bed531f14da1ec9121c72932248e329`; ethereum `0x27669f1fc44acf5efa3b04ffa20c2a14f1d6125d`; ethereum `0x27e99951398bbd9f9a6d3bf3aaa618b21c71eac5`; ethereum `0x2872aa65334cba084419ac4408756227ea57829d`; ethereum `0x293c2245ef742ed4e480232f08363d926101b086`; ethereum `0x29c679d560caa76091c390cdcb6ea7db3cf9b1ea`; ethereum `0x2a202832c5f97b4a81fb73451b11ed31bc1cb1d1`; ethereum `0x2ad08a30c01e0bfb2a42de4209a7fa8a74d922ee`; ethereum `0x2be171963835b6d21202b62eee54c67910680129`; ethereum `0x2c63587685e5cd21cd382af203ae1798cc70df71`; ethereum `0x2da3ad62dba32d87abd9beaddcc95a258ce75cb9`; ethereum `0x2e03e4516ded05fae6a2edb29b556292f95c7b34`; ethereum `0x2e25beef5d04df244983fe7024faf21c37cd3d1d`; ethereum `0x2ea4b89d7b6860eadb40f9013d79561b57cfcb21`; ethereum `0x2ef84862e29f3da6add3dc5c845548389ba1a2fb`; ethereum `0x2f273d787880d54f38a6478df9e99eba1f572111`; ethereum `0x2f5cb4898c115a9c96283c2d17dc869d0c09b757`; ethereum `0x2fae475eb6a46be4452a1159f94aaf3c9148de1b`; ethereum `0x2fb07f62ff8a23e40a22212aa053f15853c8baf4`; ethereum `0x2fde74e4a6cd1cc28b8d275703d4cc606ce3ffc9`; ethereum `0x2ff2444b7369f166e8886c4407aac69bfdf72bc7`; ethereum `0x3053c07c5d91947c1e180efd8b53a57e40027b19`; ethereum `0x30d7a5ea6ed1400c768d22d08264d45feb637797`; ethereum `0x31d2bc56a009b4635137503f5990c62b1d00607d`; ethereum `0x321c039cda90a337558b4c59b04a0feabfefc386`; ethereum `0x32757da4bd73a35f05806ee91cdb4b1746e63a45`; ethereum `0x330410fb4275ebecb889fe57d5421653c7826d24`; ethereum `0x33a2d5d07068bed7ff6f39525cd52a93976ffbe1`; ethereum `0x34dd2bc7486d18f8c5fa6028c53266691e5a4d14`; ethereum `0x35a88e3c82a3df9c48148ebb16406277c2744c7b`; ethereum `0x35d668a35d60034004bcb62945fd26db9d391a6b`; ethereum `0x36179c7a4409825988b6e0cc054a3b07e3247780`; ethereum `0x3755f2036785b00b677c99003db944987586356d`; ethereum `0x37564055ef2676bf3df3cfdc5b23e9caeaa4ddb1`; ethereum `0x38240b0cba5a3c25ea1b47a9080de9621b0ccb7a`; ethereum `0x38ff58f33a76e16ab804d9326c82384bd42e0823`; ethereum `0x3a3f0cdcbec4fbdcec2c257d1d1c9664a63c1063`; ethereum `0x3c081d91c12dfa2acbc72e2eeb9e1140c173bf1f`; ethereum `0x3c98cd654f631665456a957062f7d753e34d8b1b`; ethereum `0x3eea61ed7320469053cfdeaa37e4642c2eccff19`; ethereum `0x401d20933567ed1fc4cd527cc3d763c0bffe76b6`; ethereum `0x40bfc32ac604e69e731d3cb1fbd5092c3ad5742b`; ethereum `0x42324a37a15cbde9b6436fd0ed3b4c0df96bfd75`; ethereum `0x4314db4f60c9fe246c9a241b9748f5cf16c68045`; ethereum `0x434f5ac26bd617deb2369c7c4e9798711d0a00fa`; ethereum `0x445b5f7e7bedca0b8f7250125a50a7ada5ff27f4`; ethereum `0x449f039bdddfc5888be8539519ae1dc3f3ceeb96`; ethereum `0x451ab165ff40bf746f3d8b9e15b8fe7cd9ea4775`; ethereum `0x4555259616c40002939021ea29ed31692662b457`; ethereum `0x46f6bb6b370b41102d495cc562f596cf3ae38714`; ethereum `0x4826e07ae9110004762ed032258d17e9c5768469`; ethereum `0x482897e4b8c101bac00b146fb08dcc438f58255c`; ethereum `0x494e56ad8b4ccc6bec2954152bb728065c1b9e6b`; ethereum `0x49ddd212c97ec92b51f31dd91185c58449091659`; ethereum `0x4a2d44e3bcae267cb5ea7d8ba24ac2c3513da304`; ethereum `0x4a35e568c6e1a6f9823dfeef0608169577bc9b6b`; ethereum `0x4cd383f6ae8d25b148212824bc51cb45924cd502`; ethereum `0x4d6692427e3951f501ed73eb97604e2d16c62194`; ethereum `0x4d8c1ef71d9c809b86a888f4056a6fbaf50c3845`; ethereum `0x4eea9f893bfa0ce2705be48fd6baf483b57bd7b1`; ethereum `0x4fd984ac0a49da3ae5c4f918325afebe2328c411`; ethereum `0x500ee30420d86d957fb73ad4ee52f80001479860`; ethereum `0x5012a449c79dae5b3174834313170e6f87fb3326`; ethereum `0x502fd7d6685b6fb0ef987167088bb9fcb598a0fd`; ethereum `0x50980ee96cd26b68bcd327999695fe4c7d88e958`; ethereum `0x51e0539a0fea76e103e6c1ee66bf4bb87d4f9040`; ethereum `0x51f9a155ca95705f1e315565e6fee25f92bf1a65`; ethereum `0x532f1b191ebccdbf6e1b0cfa06b52e6709a706f9`; ethereum `0x5393a1f733b3b918d9d1d38f828ea48ac4d6de9d`; ethereum `0x53aca56cf781bf106ba6df714615f7ab3496eedd`; ethereum `0x54534c237b2bc082043d54ab17b6f18a8a110475`; ethereum `0x54620d0c85d26fbaa5d75944c3fbd4c338259ea0`; ethereum `0x55d3118f471aec1611cfabc57f66fcdc32ad2b50`; ethereum `0x56217d2f2beffa8a48a04606f97fee78750598d7`; ethereum `0x572a534d434b5a8ee8ad03fc042871b0d7987980`; ethereum `0x57618123368345e23b156170c735d3cd737cbc4f`; ethereum `0x57881353f1524e3bd92026fc146273828383f9bb`; ethereum `0x5816a3e4bd83fc6e48078a95e6687ede9888fc2c`; ethereum `0x58f8580df488d3b75b72d2ddeb59a6d82132d39a`; ethereum `0x5928b7d495421f6205fb0d6ab38c43aefb11c61c`; ethereum `0x59d8e269f148e29fea8764d347266583620296d5`; ethereum `0x5a214a9ff655d293ad6a913d330600693d4867f3`; ethereum `0x5a8fa008f36782395d9c5a1838d53c1859ede4c6`; ethereum `0x5ce16e2835f638ba32e1d2d918d1b73fd68cb91d`; ethereum `0x5ce550953f2512001478085702781ddf25dbd96f`; ethereum `0x5dadbd7e577eaf893ec21f1edafa10d7c61e46dd`; ethereum `0x5f08b291edc5498285298d892e95adc4e7133236`; ethereum `0x5f30daa9a3e2c4df7ffc2fb3e0cbca2ea9d814d2`; ethereum `0x5fcfcb3609455efcd2afcc449537e5894aa414f6`; ethereum `0x6140aecfa2ede6585fe1827d11088f75a8f73358`; ethereum `0x63b7c404aa710aab8c0f52f55778a0d2698f6214`; ethereum `0x6505892e5312c895e3279180fa83767ebeb75e6a`; ethereum `0x651cdc112097369cac06aa4f1a9e9e109c921c93`; ethereum `0x6717f20006e96518ef2deafc38618dc1fb2e4fc5`; ethereum `0x67624c931f4e264c2bcd234d2f88637e667cb3c5`; ethereum `0x694d505afa244106a260cc1435ddc8d6eb5a52f8`; ethereum `0x69804ff1451f95bcab1ec071e2d85df7c6f33c13`; ethereum `0x698d3db7b09cd35cc2043f312b77250f25a8f994`; ethereum `0x6b3c647d46ee4001c813393eda8bb43030419e5d`; ethereum `0x6b4a1d061a2e641a3df57451025276fa486f9920`; ethereum `0x6c8caf6196975231dbfb00036c0a43b08cebd816`; ethereum `0x6cb472b65b84fc197a8837f339a9e7b081d1116d`; ethereum `0x6da358ab599778d646d4b2af83605dc3912d910d`; ethereum `0x6dc428232e530536ca3ffe6b33f9e31adc3800ba`; ethereum `0x6e8d01a5f7f8087bf0ce0b3fb604d9616777442f`; ethereum `0x70888b97bc86a7f2b486a2bfbb05089b0de096b9`; ethereum `0x70b341fedcf293d70e51ba2974b6172d95fb5dc9`; ethereum `0x72d0a770df5e859a8a461082f5ab79775a3ac230`; ethereum `0x732c8d714cb676ff3864744d267d3dc228a90e61`; ethereum `0x73a30f94c2bcfe7ad19949d1ace936bf45e19ab7`; ethereum `0x73a81b446578985d34cfdb8a22707390cbf052bf`; ethereum `0x76b8b5ff6e94fcbe3c44984d4e1bdce795665312`; ethereum `0x783082e30976b7c8f73fba8b845a0b5c4c095e18`; ethereum `0x785cf01f74d953b71640e4c0f47386f85afa317f`; ethereum `0x78c4259db974f4219e16390bc3ebe50a2ba6933a`; ethereum `0x794bd4ef6d1d1f6600bf4b857ba72dab6d81079b`; ethereum `0x794c479615bcae649fe3f274e47ba4c0b3c9ab7e`; ethereum `0x798da01cc732a8891471e9d4aa6ccac0f2cf320d`; ethereum `0x79febdf1c02746a2ab944bdb5612cfc916460f81`; ethereum `0x7af3c6c76d87a5fa20e856a1ef984c89a4276562`; ethereum `0x7c9662a9615ba762823e9206fcf67a00f7b8926a`; ethereum `0x7cf86c193d2b04aee371dccc9c418012a52efbe6`; ethereum `0x7df42864f30d9a2f4576b20f3772c0ce91ab18b8`; ethereum `0x7dfdbb08f3027ef171c9815b9a3e235a76e5793b`; ethereum `0x7e7300ebc346fb91228b50aad1397ab873a3b02f`; ethereum `0x7e979e417637c37aeb6d10829b4a1e1438d4e40b`; ethereum `0x7ebe87964bb7c1a8b698d4434a47cd3e8f8f1a6a`; ethereum `0x7f07720e5d26b8656f4ba62775fb8263f433c02f`; ethereum `0x811e1f5d63dd45537e6fbefec0389cb1178c9349`; ethereum `0x819071f48a347ce915f9109f7e9b280e0b787ab4`; ethereum `0x8598f51d45dce8459d9a75f72b1d4e6a03ebaebc`; ethereum `0x873ef5fd5f344c94afe067a1965dfe8fca1f7263`; ethereum `0x873ff4769d38c8d6bfb38be9152ee947b98c3162`; ethereum `0x8a410aa0dddf874ebf6099766550abc241d9c0c8`; ethereum `0x8a7f32c71ad63fbbef5e5e7add8809a70d07fa7e`; ethereum `0x8a8fb14c37c18938886ca63eaf5959b6b0734a38`; ethereum `0x8aebe3af4d5e8fd35c8fdb8c28289c3056765412`; ethereum `0x8b5995b65edef00eeda0eb38488536cb8bebff61`; ethereum `0x8b90f6484707930a345783f32d9c91fe18e56ee3`; ethereum `0x8bf0b1bfa59823b57a6134bf9c1d9030a1b9246a`; ethereum `0x8d877f2ea4c7f3293edb4ed699ae8b245995a07d`; ethereum `0x8de9299da31be3a113b94cbdc6df1654ed731b95`; ethereum `0x8e0c26c22c39bf415fe8f927778ce05d1c952ad5`; ethereum `0x8e12c2415c61b866701b8b06868bac0e2b43ea79`; ethereum `0x8ee1314e3dc91819abeaeaa81468ca18f4b49e43`; ethereum `0x8f1b1daf02f936b7e7f7fea9e1a2d04ec6055462`; ethereum `0x92a77c2c77f678d10db11af2faf943ff6957d1e8`; ethereum `0x92fb71bcd46dfbf17079352a029aafb27a09e6f7`; ethereum `0x942488905931f23964a935461ec4cd42d44b0f07`; ethereum `0x9439886c76346d77454bc81308bd9b92c3864047`; ethereum `0x94b14cd4f3647c768d648d2b6643ef6591509409`; ethereum `0x956258ec1299dc45c02f3c54613278cf6c3d0df4`; ethereum `0x95b12eb6c02590d240221fdc685f4e0d363a0006`; ethereum `0x95e4eac8a95f44944243630f225983a86e0d670b`; ethereum `0x960bbe122aec5e597789eb9eeb75c37c53dee8fd`; ethereum `0x97cdd31abfd51b8d405aed7ee7955d9cc92730a6`; ethereum `0x980f3655966a9858fff3673dd07f545348d29170`; ethereum `0x9851bf7cb75c9e06f6a6e7e328930f5151f59844`; ethereum `0x99398c24c76f45b67c6133fe21a0f9d5711809d1`; ethereum `0x99c32ec3bea676fc1b016a8bc0c6b50e10f24beb`; ethereum `0x99ffa8bb8695cfb5bc16153715f1a23b642df71b`; ethereum `0x9a24b6bae2fdea014a9827be821b74f1398963a8`; ethereum `0x9af2f98471fda404524376c0f6a868d1a2e2f46d`; ethereum `0x9b8fc293e59977201e9d4b7b160e082f2e52ccd6`; ethereum `0x9c5972c3332039f5b2b5924c2168c0adc0277213`; ethereum `0x9cbe105f269ed6367199e62f82690e61d3b2f36b`; ethereum `0x9e0caaaea7b85f4ea11042340e5bfbdaa9eb5037`; ethereum `0x9f3c7bce4af4ca2d60b7c4d44df12fc7e64d10de`; ethereum `0x9fc80ee47e7ac23a9c7c066eddc5d2cd31a3990e`; ethereum `0xa0daabcfbaa7a16a2b498769722babf4a5b3ef98`; ethereum `0xa1ac928de83bc6ff6728d8f1a851e4f492f69b36`; ethereum `0xa26175bbb4826ef61ddc671ae8b3496f26d89cf6`; ethereum `0xa2ffae1fcd7993a62388d441a129eaba8005ad60`; ethereum `0xa349c7da1ed4214c4411c0f944e8f522ace3d633`; ethereum `0xa3ca7c54cfb130fdaf92bddc8549f3055bb10f48`; ethereum `0xa52e8df3bee614f976b2b4b25e42ff5117bff921`; ethereum `0xa65b82dffa2ced2052fdf698ce60bb9c244d45f8`; ethereum `0xa76a1a25fa7ba4b2d00a63efd5303649e95ef276`; ethereum `0xa77996fc97526c9c85b81538bb1822cc22ec8ee2`; ethereum `0xa8864303060795212fbc3064eef422aa805052eb`; ethereum `0xa8ccf2b22a4fd872e533afbbc21664ee6dc1c262`; ethereum `0xa8e7fccdf6fbc2059bc85d8fecadde997d293d10`; ethereum `0xa9d3060e53d61da7e8229571aeb807584e37795f`; ethereum `0xadf94f3aeb7bc08f0bbd56c04e8551b7b9e9afcc`; ethereum `0xae31b22752c3154651cab18ebcf24fe65d907dd5`; ethereum `0xaec4ab831b21adfb7ac9b141948dbd7dfd3f94ac`; ethereum `0xaf0647156bc918098e113a303564243b8db3e65e`; ethereum `0xb0cdb9d1e0ddb5c645abe80d8e09719cdc9504d4`; ethereum `0xb0fde6fcbb716e6ae2fa08de78a17825b5a99992`; ethereum `0xb1a2e850803a09b9fcd1dc9647f63ef432b50874`; ethereum `0xb1b8b6b7f0db4cb7d68959df4e9a55086a92e65d`; ethereum `0xb35ce55a9632dd217bb88c677777a111daf271d9`; ethereum `0xb39f50672dcedc60cf17b1f678f7642335e1589d`; ethereum `0xb4e4d73ba7084dba24da1eb163cd5dc52727c005`; ethereum `0xb5ecaf57eaa8668adec412589a54bbaf305f1dc9`; ethereum `0xb7286a2bf8dc7614f513cb063e30fc4cb237536e`; ethereum `0xb8315956838cf744a396c6cab852333429f52911`; ethereum `0xb93217c3caed2e1ca7fe73dd334e5f9666fb5faf`; ethereum `0xba7d794c5cc2f9aede2c9d9d0154be9a96588801`; ethereum `0xbc15e3ff547f7e594a485eda7d92ef56fcb31e09`; ethereum `0xbd3170b17378aef784eab3a177db1f998474016a`; ethereum `0xbda870fb208140bd39ef5bb7f58fa47fe67ec74d`; ethereum `0xbddf91ea1f456b1b5fa7276524482e70d44522d7`; ethereum `0xbecf1d017d094b28a0594300ff326ec6094ab955`; ethereum `0xbfa13edcbb4257c9caf1f1096b02886580edd787`; ethereum `0xbffb778d2f72d046f348c538f7885d5bbd4b7a02`; ethereum `0xc01cf0da6b6da7cfb856aa46979a39897140ff8a`; ethereum `0xc061dff68e575fab0a597f3d38a620950f87513f`; ethereum `0xc0dfbef020e932cd144fae195de605076f2bdf1e`; ethereum `0xc1cb968cd8e716ab8bc986b508b85b3e461322f3`; ethereum `0xc2175a178e647990fc3a81c95994271966e415c4`; ethereum `0xc25b560cbd7d2303d5caae8c14aca5d5c7ccf120`; ethereum `0xc3016cd3baf31ff5ba6cfbf595ad5923d04bc6fc`; ethereum `0xc306858521fd60a36dbcbd971ddbd73c378108f1`; ethereum `0xc41494c732ba3186401d01c3b27596212ca56908`; ethereum `0xc425fdabb6aa49f419caceb49566bcbb6b41a209`; ethereum `0xc50fa56aeb59e1f70aea2c53a6ee72495a2f628b`; ethereum `0xc554d48662e25b301ce23b7d56b21472e89d2f6d`; ethereum `0xc5ea79ce9db7bb9a1d55db273b10d1911b9c9f8d`; ethereum `0xc6b0fcf6c39befa089abe9a223113a205d2628f3`; ethereum `0xc7650a8bf3160525ea76291b021f1f723f5674dc`; ethereum `0xc7818ab5ac84d5d9ccdd42f56fd493aa40cabfa3`; ethereum `0xc7dfab5d24bff133a839d3055694a7b01b4dae12`; ethereum `0xc870650ffcbdec708ce8cb49f5704f0f574ca442`; ethereum `0xc8b514e99ed998771cce2a34f3cc60c0f574d389`; ethereum `0xc8e0bb4556f4f7ed52d6245fe21bb34ca85b8cea`; ethereum `0xc98f4fc27da28590e2d7449111fe081405143abc`; ethereum `0xca64b6889b888d35edb7fede35fcfa24a9fe894d`; ethereum `0xca98a0bc48a0951ac4b170661d1751e0de80a77f`; ethereum `0xcaac7330eb99e8e4fd0cfb06e1cb3b08f9c2b618`; ethereum `0xcad8f8ca69d8039f576f7b2d6494e455b75755a6`; ethereum `0xcb945a5e02edc1ce937baf0f58663f8e2f2348f7`; ethereum `0xcbc7af0de01391b96fe881119a997932de20aa86`; ethereum `0xcc412291d139860e81ae687170b85fef4ff172ce`; ethereum `0xcc6a49fb83ce10a62291b1d6e03454b6a88d1b16`; ethereum `0xcca41c625fcb98808c4c8637bacd9fe946bc94ef`; ethereum `0xcd43849b5643397798925934ea78416cd4a99ad4`; ethereum `0xcdb8841d6b6bd02e2c1fb419f4532583a4d5aeb1`; ethereum `0xce08f8b93d446f08ba72f1274bbf41d48c030f59`; ethereum `0xce283dcbc7e6cdd5d957be177856f52194badfcd`; ethereum `0xce4259be054bb2c0403a6993b8d3c73973b7316c`; ethereum `0xce5f7ecc0a1291c95d5b2645d72c74b186fd7ce5`; ethereum `0xcfe117739ddf124e7443da0c236e5383350f875b`; ethereum `0xd1823121c07c628bd39c74558863f7436a65c256`; ethereum `0xd218161a7a50f3ea1d0ee92868cfe29cb9096985`; ethereum `0xd239ab6d558cc87b1e35cae5b04aafd3905ab0a0`; ethereum `0xd24536a0b2523bb2a51bb8557b853150e42d5388`; ethereum `0xd2f29d33a06d494ab035e94843b9eea6588c9d65`; ethereum `0xd37fe32dc9b1a111bb0a88a48f616c3caf4aa416`; ethereum `0xd442932f19fc8a91aceb1b5fa77a07000f2bf202`; ethereum `0xd47c246be37da9924df2ba83b557d6521a866c9a`; ethereum `0xd4a6c7d083c1a1e7974594cb1395336f1575b7dd`; ethereum `0xd54706cabdaece7586b2e3baf4441c3784356f60`; ethereum `0xd5c9b6978f51998cd8a4d56ce425529a21ed8b65`; ethereum `0xd619ec638d15d001fd235fe3a14d428764e9f061`; ethereum `0xd631b1e3493adc2c86cd70bfcf1fcd776dfca5e0`; ethereum `0xd6783229f336aabacc6490371e2b8fcb59e27075`; ethereum `0xd7fa3b621b6600e173ed441103113d7aeed6152e`; ethereum `0xd9b311d6678edb14ada24829cd9ae09fcc0f0704`; ethereum `0xda5cc71f189ececafd52e096bdc5ccdaa42559a4`; ethereum `0xdb662a1e0bb767e0d442ac03259280e6109801d2`; ethereum `0xdc4fa1b5d7ee46dcff5c4e08b5f184440993e592`; ethereum `0xdcdd9132a5006399c1e86d0414e203d6a2f11988`; ethereum `0xdd1a6c1f9b1d565eb61a5686f15025c4b36b15a9`; ethereum `0xddad32fa00d364dfb399ed54a152129cc25df122`; ethereum `0xdde836ec76050f634f1de96178337346e6c3a3b5`; ethereum `0xddf6b65312d72d9f889f8f041b8b54a87b97ad0b`; ethereum `0xde65b080fa5a5e88c06347c3e89ea43e6bbc6b37`; ethereum `0xdeff4cab6319951504071596c19f212c46f734cf`; ethereum `0xe09634015f73e0b5f236d6a418b231d2142dd2b7`; ethereum `0xe15e24df76c56e1807d8f5b449fb406c3570bf94`; ethereum `0xe17440f0ca3ac4962e67728ebc59be28c8ff7607`; ethereum `0xe2bb28ebec7592fb516f4680a4ea38f5f439044c`; ethereum `0xe44c9a72bba9cabc5434b5b4665acf7e2e13071c`; ethereum `0xe4cc3511e704246d0cfada64d502568ae2164dd1`; ethereum `0xe523d087f9912afa910b97f24034f45647f7f1f6`; ethereum `0xe75825f23ff834e8f66c5bb99f44d97d11a87e45`; ethereum `0xe88b886f0e9f37bd50e37b676bac3d12f04495f2`; ethereum `0xeab3fa4dce518bde959bbd26bd57648502855ed1`; ethereum `0xeb39e15b9bf4ab61f34ae1160cd8e84e773580b6`; ethereum `0xec0043e39ec5ab43ad47722ce2724ace78f2108e`; ethereum `0xededb539c22e83a2a9a8804fadfd39d3a0dc52f3`; ethereum `0xeeb100b4a582ec292af7d376195b818f3a111f71`; ethereum `0xeeef4f3b559b550abaef0f3633c75c1427a05413`; ethereum `0xef1c0d89db20754e259f5b6d135f7f83650cd49e`; ethereum `0xf06e8301d8a9ffe43e43d4de382165940cb939f4`; ethereum `0xf11741f2c68e520e8c8a827554ab2f278fb5545f`; ethereum `0xf24cba281fe53061c0a23e1c0dea8792f9a9e691`; ethereum `0xf3f04de6f590dc11e6e5faeee00be978063635c0`; ethereum `0xf493cdc6a24e3d9844bbfa7008608f6e97cf4c45`; ethereum `0xf51e645d735903bb30ad006ab3f920f057ad4fa5`; ethereum `0xf55f2eb72fa1ca4df999ef7592fb21bc2401bd68`; ethereum `0xf56af2cc501e9529a8eaf926a97eed43dc496c78`; ethereum `0xf7884aa790ff2ee55970eef08d43cbc16950498e`; ethereum `0xf808a9e05b0643f3356490c6220506e2a1073f7e`; ethereum `0xf8b4a0c4f01ca1afd3b92b8e27b4fe33d15f457d`; ethereum `0xf8d4ab4b2d5ae54a0fd2eb3b4eab782fdff5d859`; ethereum `0xf90e15e90f5ac3dc7920402aabb1d38ca2ed5325`; ethereum `0xf96aae0d074fa6bea173be1a349cbdd08d38845b`; ethereum `0xf9bc6b3a002869992457d767b43a0669d772b03a`; ethereum `0xfa2175ac285f640fff62cd2277e9f878cddea27b`; ethereum `0xfa80f791b47796f4d847e4685baeaaa1f354cad7`; ethereum `0xfaa029d9cf009eebb99d46940048e9ab7ea78647`; ethereum `0xfbe5e62221e338281d2758174d7107fc9da29e99`; ethereum `0xfca5cc20a00d8acf04d0c1793c94d01d3ab07d48`; ethereum `0xfcd6fcd46bf6c766cb6f1b7dba73a531f87cc870`; ethereum `0xfe149f2053a614a0ed4f46f35534dc07fa40a2fc`; ethereum `0xfe15bec874e2e99e005c00c8768b2cc2bff99da2`; ethereum `0xfed072ce192a95426c83791ed3fcedbdc68b775c`; ethereum `0xff55aa90948543b1326679e8b7c8f255fca30896`; ethereum `0xffb603417b36ae0d213983449d36db608f2e1e43`; ethereum `0xffd6831a7aa161c2d7e8aca86e4d0b2113006b71` | ⚠️ Unaudited |
| SynthetixOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x19c23a427d382769040e402ff6d3a48240153a8a`; ethereum `0x4d4872339def367b1ba1d53955d8586b9f0be63d` | ⚠️ Unaudited |
| TimestampGetter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x739d98fafdb9fd769b39f41856a0811ba894c46d` | ⚠️ Unaudited |
| TokenMock | token | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf5ab9bf279284fb8e3de1c3bf0b0b4a6fb0bb538` | ⚠️ Unaudited |
| TORN | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x77777feddddffc19ff86db637967013e6c6a116c` | ⚠️ Unaudited |
| TraderJoeHelper_v2_1 | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf3970201ed42c9c579ab146b573457c5629b78cf` | ⚠️ Unaudited |
| USD1Token | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x199921335fa1cab3454042e8e839fdb0581e2e7f` | ⚠️ Unaudited |
| Vault | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd0a95cce85719f3fa699f5971d4378c22890631c` | ⚠️ Unaudited |
| VaultV2 | core_logic | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x0b7438606a13f4e91305b36b7596dda4679689e3`; ethereum `0x96aa3bd52181b4a540834c63b32b80fd8c3e815a` | ⚠️ Unaudited |
| VestedToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x03d1b1a56708fa298198dd5e23651a29b76a16d2` | ⚠️ Unaudited |
| VestedVotingPower | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x19bcba90d1160b99b8c11eb44f276505bfa041e3`; ethereum `0xba978b136a3f32e28747d0c1df2bddbb6eae02b3`; ethereum `0xfb7246c98b6e6c8529c06359b237566e5bc4677c` | ⚠️ Unaudited |
| VestingValidator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x0df9a5fe824d1d52caadd2b7edb2859e24a6f942`; ethereum `0x4275ca95bd025a46ae4a943c56be343807229986`; ethereum `0x439130e59b40e0c726a5e18b238dc620f88c86a1`; ethereum `0xfe9dcc20fe85bd2968ea86fdabbed24fea295b17` | ⚠️ Unaudited |
| Vyper_contract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf81c77c2d5d7ef6a5e4637f228efea89f7ceee88` | ⚠️ Unaudited |
| WethUnwrapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 8 deployments: ethereum `0x08b067ad41e45babe5bbb52fc2fe7f692f628b06`; ethereum `0x1282d0c06368c40c8d4a4d818d78f258d982437b`; ethereum `0x21f818cfb8f32a87a29244194933b9d10de9418f`; ethereum `0x8290dbccb15b5a516deee2805c58e56075d6605e`; ethereum `0xa18651c2125b96e36220a7821b05f9c5431866dc`; bsc `0x0eee00137d807a461702e9e0640c599de663e7e4`; bsc `0x787944afcbc3e205dfb51a31c0425f44dc93678c`; bsc `0xdb4056c63a4db686ecfcc0cc0be492179772078f` | ⚠️ Unaudited |
| WhitelistChecker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x32921cc86e9768a946c79b3879c2d6aec016e4ef`; ethereum `0x40a04ce49d9ca7440726395c68da990a3bb19367`; ethereum `0x9a1cb30ccc4fed0797d46e16559a05fc163c93d6` | ⚠️ Unaudited |
| WhitelistHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 6 deployments: ethereum `0x1ad2aef39a9036147aee2a8edd5c5092466d3963`; ethereum `0x441619f9325c893623c981578133d00d944a5c54`; ethereum `0x8c3e4353a8860461f948035a2f57c74b9a26a2fa`; ethereum `0xb61c79ab7730860cd89bcd45dfe25c5e4979c96d`; ethereum `0xf6b00079d22dd7fada360d7317625458aaae4a93`; ethereum `0xf779bdde38c39138dcaf1514b8a6b8a6c165642d` | ⚠️ Unaudited |
| WhitelistRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 7 deployments: ethereum `0x105bc5c5cdd224f48be9d279dd114f0a3fe53aa7`; ethereum `0x8797c24656bc45954c5c8e46df591812c89efad5`; ethereum `0xa49ecb28cc8ab39659be2bfb6f7b86f0c4461a0b`; ethereum `0xbcf2e529996a436ebaab962740628cfe1e21fbcb`; ethereum `0xcb8308fcb7bc2f84ed1bea2c016991d34de5cc77`; ethereum `0xd6413452198f9c416374084dd40b89a86a5093b0`; ethereum `0xf55684bc536487394b423e70567413fab8e45e26` | ⚠️ Unaudited |
| WhitelistRegistrySimple | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x52096d540719a8577fe634624f50badea050eebd`; ethereum `0xac8d32a117799d58c5c10c7c23a9cd05f8ce4f35`; ethereum `0xfc0e24f6fe4765c8996591f5d3e43b7060aba83b` | ⚠️ Unaudited |
| Yobitcoin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9dcae4a9e65bf7925eb7809142f848d3cf8e96ac` | ⚠️ Unaudited |
| YVaultWrapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9ff110f132d988bfa9bc6a21851da1af3ac6eaf8` | ⚠️ Unaudited |
| Zedxion | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfbc4f3f645c4003a2e4f4e9b51077d2daa9a9341` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (275)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x02f56bf179e0af6fdb5de68b6692cd195930d265` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x03d0ab4333329aa9f63c9c1d859b7360bb863151` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0478910ac0bed350984220ea84f4ba29807b40ec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x063a5d5676f7b26d04a917596d0de1a8999cc087` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x075c42cd233a1c723c0f18f6dd575c8d679fea85` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x081d5b92280ebf7deacdffecec6f2d356f47266c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x09483fa83804d5618e2fe8a86164a88073c29990` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0b3f6d4a5d6835137ccb2c1248f5a7d882c0dbda` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0bf16c34b38648bb08deacf4dd4b239c44bb33c1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0f4d9951cc5eaf7ee36df4b8226733189fe29e99` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1040adc0e34b63ea837eb0b4ff20ecab3115e936` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1136b25047e142fa3018184793aec68fbb173ce4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x11cb4a28289d8104d70c14d08c5ea6f199c42cd9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x129925f72641a84053c148d7efab590cb9d217ad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x12e427aafe3bd8dd8543cdd944970d0ae453b678` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x153eff6f64ca509ff051ca6d448eddafa8dd445f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x15a3c296eae49734bc467f95815f6dea9a3de233` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x15a57db50085be07ce161fd8d9167f06392a63bc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x168d49d9b69f18bffb5dc1e70dd98073d0656d41` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x18acf236eb40c0d4824fb8f2582ebbecd325ef6a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x18bcfc93e30db323befa50788cdcb7cb0ab50b1f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x19ea2e6f21bdfc894abf09fa179d59f6c0e0797b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1d68da0290df4b77a7aafbda6729351dbe4d6fa7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1ecd10d6e91b8eefa46bf8f131ec4467a42ada97` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2057cfb9fd11837d61b294d514c5bd03e5e7189a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2086cc1bc6cfe9e4da52c37845294db631b739f9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x20d83a454f3e3b0ccda7c173dbb517b23316db4f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x21c83be47d0e95cee9643c300a8311114119f6ad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2207f04c5c3cbed83cac44c53dc0019a8d7ddbf6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x220bda5c8994804ac96ebe4df184d25e5c2196d4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x228fb0747338f95ef7ec47d21de3d9104c20f112` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x22c7e7454fa9519810bda46da4c1e96f1425c344` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x25af9244ef693050a6ceb652ab0dadd776690756` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x27239549dd40e1d60f5b80b0c4196923745b1fd2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x288931fa76d7b0482f0fd0bca9a50bf0d22b9fef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x29142e644343067a98a1c6c25d08df9928df6f81` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x298a51689ad25338d5d3639f19e0eefb10b807b4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2a037bd83d4cccafd4e28f8b16dbbfcd22bded55` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2b6e7fbdf8739ad39f73909fa4af7dd7abde076e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2c26ccdb0f3528ad6dcac4d911aab1030d8f3b74` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2d96fde7319f28732d042201da15dc4023a59a39` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2e574811f6b437e9e4be8ef5785040d7494d5f11` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x30dcf96a8a0c742aa1f534fac79e99d320c97901` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3208684f96458c540eb08f6f01b9e9afb2b7d4f0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3451b6b219478037a1ac572706627fc2bda1e812` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x35ea3885bf9cfdd04dd9c6071e7660acd028ab15` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x39f2bc191252adbe4f27fefb8a8b2be3f69f76bb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3a78de40ecf0da9b00e921b9a29fa316da564c72` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3b17056cc4439c61cea41fe1c9f517af75a978f7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3c3f3cd07c290ec3a4da12633dff415f868c7c19` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3c96960adbbfc027672589274a025f5ff459fe60` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3d75b34ea2b6354f824515aed5470519a0b4909b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3e430c50ee6296df6ae05c4c72bb97dc1e158e37` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3e7751aedbd6c2b6c69cc3e3c0a887994759f092` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4487cc7516cb34ef3e63db371e9aa50f3ba47caf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x449c9d2f1de1f182777bd7102730b4426ae27c48` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4aaffca65f5f9cbf51abf0f03d11d5f446bdf8e7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4c5f47cd8f4b2147d32a6f3314f854f9655e8e6a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4cbb5f562e3dc7c35b54fc2c2719b489b84dc884` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4d8f74decbc4b16b7455c7ab5cc978968191533c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4da45fd706fc5e18bf1baa8468833890cee32365` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4e5622102130f5d64b352e1b59bd0711de6f6881` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x521abad8e91e2126e66b018170184da26aeabfc4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x53222470cdcfb8081c0e3a50fd106f0d69e63f20` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x54fc51d32bbb9f224ef62e36af71aa003ca3dbe1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x57eaec4e8ff5991be999d4f5ab1bf1d670c87ba2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x58730ae0faa10d73b0cddb5e7b87c3594f7a20cb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x58e1566053b7d3e2d0da64d615614d765f913f1a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5acc37f1003f8dba4cfcd5ea7873fefb412c3e77` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5deb3f3a56441454ee063018d1e2e08ffab0982f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x609262f06dc1967ee0c475991b2030cca4233741` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x61120753a1fb2a62cc1cb394056f8d1bf232538c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x62c9c2ace3e86eee3016c7e73df70edd8a45ace9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x673e8e3c4042ed70eed45a142fdc484a6dd3c4a3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6aa7a8539543210563af6cf575cc5079b194d0c8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6e97464cc8e6c5dcde21f4b1afe7fbc241d4f127` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x702fb610447570f55dbf2e9c9126405611e68d7d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7122db0ebe4eb9b434a9f2ffe6760bc03bfbd0e0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x720b9bb3ba15dd2c5ed53e3f7a10a2746f5b670e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x74f33228ced53754d0e3fe7ba92e46abd5b15763` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x76d2999ab762d3d5f27f2f1edab2ce282d9927c4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x772418e26ab32833f4b889855b09e31abcb14775` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x777c7f705fef3cb159a2231f858bda7b399d2fb9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x78ff2e079f3cb3f903eef225da8edf88e1c51045` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x794e56201852e976dd37f127019752c424ef3103` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7b539639fd6470ad6b2e0311f86286e55998a7a7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7c327e1ee66d4cf7f4053387241351fdc95a0c04` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7c6ce24d013cd4ddf4c193ce318e3d5533a33f42` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7d8e61e59b68c787e358404998941cbbef272331` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7f22fc5dd4e763332c17ef0f8db90c640f20422b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x80833e36474c9949e48f7b4943c0408df12e5e70` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x84ab1dcc1dca3baeac593ad5b81c38b0172c9f4e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x84d99aa569d93a9ca187d83734c8c4a519c4e9b1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8607bcb7bc99159ec3900cd4720d264ff573e186` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x88d674c4d7beae85496aaa4bf69526529a0f0b17` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x88e4174a997dce828a0efa2fd35ea06bd087f6eb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8b1ac2aae1d313a246cb2b741577cfcac8906a51` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8b4f625bae312cd775d5373f21cd30824b8f7027` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x910b9ba6a775e060a6f8dbee86f536a1e8f26021` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x92f3f71cef740ed5784874b8c70ff87ecdf33588` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x94a68df7e81b90a9007db9db7ffb3e6a2f1e6c1b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x94dadd1dc3935bc2d6c24bf17fa8ac1205b5e36c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x989c41f84cbda8c677d9b83565596787a522a00d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9942e9b206184786cbe84812702d6350edac061d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9943806d7a21a775e44f7557d1b425b1bdf55ced` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x99edd1dadf3c960bd26e0d87e0649940b346f33d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9ad44ae076e99ea39b892ef280b8bc941762723d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9b934b33fef7a899f502bc191e820ae655797ed3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9cea1722a029d4bd73257c6f801e868ca0b8f756` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa2e9556885df5ed2b6eea6f7ad43076ba8b00261` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa77c88abcaa770c54a6cfbfd0c586a475537bbc1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa7cd9837513236493e7dcdbbddf45887963aa308` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa8418d0d3330659772895bd27dab3f570c698a65` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaa5ad0433efe8f4355a242433a1fcaf11f3cc222` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaffdd36e419e5663c321e823c52c212b62999d95` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb712e4c7c75302972c0179804b8496caa072ddf6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb71cce7e61a98863fea4c5b8cc882be63745bdba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb7b2a71f1020906519de942dda52d7308132393a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb8a3352ecf932100393dcfec1ec4a045b48aae22` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbae79cabd1f03ebbc94bb348bbfacccc8c87c8e7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbd74ecbf489ab700577e669f8eccabbd0dd36e53` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbf683b7aaf9accea6bff8e926e03f6ceb98b525a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc176761d388caf2f56cf03329d82e1e7c48ae09c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc1cbfc6871b67c128505601242149a7f45a10c76` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc2c3f838f26aebf12054735f2283ced022c5dd17` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc6f9b19e2e91a8cd3b7ff62aa68e4de8f7cdddbc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcb13e91f957de7fb5f77a7e933fe04bc464f895d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcc0333574bac61e0d891053083465ef68f544d2e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcccf7daae841e5a372c2387fa7cebe42c8142c2c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcd9797e66c41f80b9d91b201d2f10e1bd7a268fd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd01ecc7c8fe397d34c7b9a92b2d4fb8611e8516b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd0bae9b165467f105fe073054dc2b310a78e2866` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd1821b0d6dbed74b4f0e916be4f5addb672dc76c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd6a5cadeb1627195cbcce41e926ad48f79132ac5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd6eedcbfd0808452b5640846efaf06e3dd489495` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd7304bf8c422d9b0fda6141f51ccca3e271c187e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd7e1c884d82f4cc5fe804297015f347f5f9155e1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd8f177ecd1bdc958cbd8c9fb5a96f4dc8113c7dd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd9ac77bcb240961b5e5a8b016ddce022adff162b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xda63a326d2c3c09586676a036e79af2e3c524090` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xda90ab57fff622ab3398ad753ce2a10c36f548c5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdab676631ed9fd84443cce917c7dd6e2054f6c00` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdb38ae75c5f44276803345f7f02e95a0aeef5944` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdbe8fdf8b10d24d02459bcc616c2670a44cfb727` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdc939842eb670efbfafe0fb395d1778cdd7b8be7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdd39714d15d6242919fd8f75717b1a8a87ab0536` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdebf8987a15e0000c16940f1469813dde31289cc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdecf04ca46d287b3cb99692ad512e568ba276140` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdf660ad74919ce2f294b4c183453f958fa28d1bb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe0e294ba477c9a08e8fdf4062a232dc90b0054a9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe408d8fb81176fb620ef616c3fa5f5f076fd4269` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe5c375ae041f39ce9301aff84fa6a83ec0b124b7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe7879476b32f8244889c133e63269d8f22c9507b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe872e6e4db953285d7cfcb2625380f691e510fea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe93f1a57aedb6b1b63a155eb9fa684d1ea9786a4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xea2a75cf4ab697371cbf3a64e2b5558925180fb4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xec193b3d86657ab0dcce9f33641cb7da6acefb0c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xee0ea80525bcec175bb4df71c7424ace92910931` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xef3cff1bc1bb041616ab56dd36e6fbdbe4673394` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xef6fa3307af6ab6ddcc4826c4945041dd5c18d4b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf021f084477242fe6835c67234b4345de4db19e1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf2445e7f77f334c536ce984820f5db5efec38e37` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf28b44c48c572a512bfa7d2d79f09c30d0cb38be` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf2f400c138f9fb900576263af0bc7fcde2b1b8a8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf313b370d28760b98a2e935e56be92feb2c4ec04` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf37b9a4314a04af86ea59aee358f176c37ae24e4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf4c0b8d97254e1a0682a6700d06d7d389b5e6049` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf4fce3137d8d167fc633cdcaa53d1a44ab60a4b7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf5903b583a2159c7e5169add5a2d439a822a91b2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf62678a4efe16d80c1a3201bcdf3921658f6884f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf62bb7aaa74903f9488add955d8cef3c510a5681` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf6784ffe84a774ece91767018d8f9a925b7cbc8e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf67b40329aa289856f9cd279aa7e2f3b771e8a59` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf8439e85df95751e0ef141e6c84d08d8108595a8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf8a1527325bb62d6d0320eb2312748d590f1ce27` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf9088dbf7dea22f0219afbbedfd49328a73fdbe1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfc79e93958bd1c25a0ee7d3818fe72d33d529e35` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfd3dfb524b2da40c8a6d703c62be36b5d8540626` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfd4875a2cb805ea98c0fae086eb739233f38fcb6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xff0822c78af03a9e6f8e2cd5dfb4e622369baf5b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x05ad60d9a2f1aa30ba0cdbaf1e0a0a145fbea16f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x06cc74503b6d1eb6d4d6bc402f48fc07b804105f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0c10ead1244c490e15fc34e38613eb15aa0d84c0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0dd29a6472b4e92e138535e1b9c75ad62711168f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0e6b8845f6a316f92efbaf30af21ff9e78f0008f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0f85a912448279111694f4ba4f85dc641c54b594` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x11523c87494d517a001c2ee620e7a0a00d9e61cd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x11dee30e710b8d4a8630392781cc3c0046365d4c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x14831f12fccc86c4f3dae41c769593df766e4353` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x170d2ed0b2a5d9f450652be814784f964749ffa4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x18101ac1d35230f1a3c005e2abaaeb25cae79e7f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1b40183efb4dd766f11bda7a7c3ad8982e998421` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1e8ae092651e7b14e4d0f93611267c5be19b8b9f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1f667d066b72589e0419d3057dde7008f25cfdea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x220b71671b649c03714da9c621285943f3cbcdc6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2307979f43c59581682f7e4abc7b09ef51a38378` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2403f84f99a2fb353a36867ad4b0b7909436bbb7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x25b230b5b39270f79522335fee992719fe086521` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x26bbe81e5080403e65234a8765c37e7a052e1279` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2dfe49b3bb7ad1fc1fea12eb421bfa60d040329f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2ede375d73d81dbd19ef58a75ba359dd28d25de8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3169de0e661d684e0d235f19cf72327173e0be11` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x322e22cc258cba8b1d40348cb375bedddd3c2d4c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3436fd3d499f353efde05ed748d250263f2b96b2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x35df9901e79aca6b920abbb53758ffb3de725af8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x36d91208a97b89a9807e420d5e9b0c4d833b5251` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3790c9b5a9b9d9aa1c69140a5f01a57c9b868e1e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3eb586541287e57c4d2661c0d28bcbddfe2b640d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x403a9472a80b5d94a0b458e3aec5203dcaa5cbd0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x54431918cec22932fcf97e54769f4e00f646690f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x56f9c3982925f3867b1636d4aeb9ca63c9f7b2e3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5d4e6621cf662cf2dc9e3851df6c52ddc8b83dcd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5fdb07873d4e5e04b6886fd54edf7fdc43cbd3e9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x64768a3a2453f1e8de9e43e92d65fc36e4c9872d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x67227938ca5ef479ccd849460dc879789294a9ee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6df58bcf86039c78792629d5765966230b52fb9e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6ecacdf8856454fd71b29871ad86eb25e3964331` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x78ff2e079f3cb3f903eef225da8edf88e1c51045` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7f9e3430880580713b03670046c7e89a0a91403b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x826802a868fc07356b502951b5b3c1cd7cf6b5e6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x84ab1dcc1dca3baeac593ad5b81c38b0172c9f4e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x851de4ae771483bff6790f79ee78a92daf400e76` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x864a6a3671ccdc5a98ed3a9ac92d9e7a63e1a453` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x875773784af8135ea0ef43b5a374aad105c5d39e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8789f0caa761a967473908c8829e596a34dc86db` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x878fd00f2fbc204048713be5da34cb816ccb438b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x888888888889c00c67689029d7856aac1065ec11` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8a75e9a979c24580c71552bbcfd1905bda9dca9e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9070832cf729a5150bb26825c2927e7d343eabd9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x950a9414700e8ee8041c1cab5a0c6afddf0e9257` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x98484d4259a70b73af58180521f2eb71a3f00ae6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9c4350f527ff7f96b650ee894ae9103bdfec0432` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa0446d8804611944f1b527ecd37d7dcbe442caba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa0f3b13fbd36df6dbeb6e4865dfc2ad3a4b5a12d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa31bb36c5164b165f9c36955ea4ccbab42b3b28e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa3c7c40c185306468870185a74c8d59a331f019d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xaa7a9ca87d3694b5755f213b5d04094b8d0f0a6f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xab4c212e7f4d51372ec314ff59dfcd946126f591` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xab6391d02c7410302f5d1db1c22b0c06714c041a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xab8bdf37ddca9173b433054e65d12dd9539adbb8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xac383ebd7305d8d27191a192ce025a9c973de751` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xaea46a60368a7bd060eec7df8cba43b7ef41ad85` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xaec4a3cdfb800e1240a9f3d2ea378ae09b7ac68b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xafc12b728079690e8e9a7b4d80bd496978320baf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb13c194eb6285865949a795792b3c31cb08c4c27` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb2b418760b438e287b5ef4ad8a7a175956f9c7d9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb37689e1c3f10c85fa5bdfc4719361123d72fc52` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb482ce1985df33a0d16a2630df896c8ca6521553` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb63aae6c353636d66df13b89ba4425cfe13d10ba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xbaf9a5d4b0052359326a6cdab54babaa3a3a9643` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc0702e554149cc857299e6b0eb324eef306457b2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc0e6263ae62d514a70de747a7c08a168db60628b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc1e16013a158d57a60d6aa5bb3108722b0ac6df5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc4368c06629b6227c5ea48446733081c557ec6f0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc603a00595d5f8ea8d93c5c338c00ff29dba6258` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc66a8b74da6a2ef73abb1942a2d302babc9f32ea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc7c42eccac0d4bb790a32bc86519ac362e01d388` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc9245224b83c4389b103b4110d8b79f11b180d71` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xcd143c8163e7adcce79d0829615b7ff01fbc28fa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xcd9797e66c41f80b9d91b201d2f10e1bd7a268fd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xcfd674f8731e801a4a15c1ae31770960e1afded1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd0937e7b3905a96dd69df5cf468954f9eed1491a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd7936052d1e096d48c81ef3918f9fd6384108480` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd8121433a2b8653b8eb62bd76273eaf104f9be09` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe2942bf5973ce8746a6dae222e11b5a56bc84202` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe295ad71242373c37c5fda7b57f26f9ea1088afe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe3c6b9c13739087c89dcb83d3ec15a767d829aa8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe5c375ae041f39ce9301aff84fa6a83ec0b124b7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe680189951a3f78a0663a342b84446fa67200872` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe796d6ca1ceb1b022ece5296226bf784110031cd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xea7caf0764411d9467eddfe71767150deff9d15c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xed60f3344a9af88332dd3c8bec692455315595df` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf8a1527325bb62d6d0320eb2312748d590f1ce27` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf94feba0441edb73044ba58e80f245868d314ef3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-378315 | `0x6fd4383cb451173d5f9304f041c7bcbf27d561ff` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [1inch Aggregation Router V5_ABDK Consulting.pdf](https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Pr.%20V5%20and%20Limit%20Order%20Pr.V3/1inch%20Aggregation%20Router%20V5_ABDK%20Consulting.pdf) | ABDK | Audit | 2022-09 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 29 | high |
| [1inch Aggregation Router V5_CoinFabrik.pdf](https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Pr.%20V5%20and%20Limit%20Order%20Pr.V3/1inch%20Aggregation%20Router%20V5_CoinFabrik.pdf) | CoinFabrik | Audit | 2022-08 | stale | Direct | n/a | no match | 0 | 0 | 0 | 11 | n/a |
| [1inch Aggregation Router V5_Consensys.pdf](https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Pr.%20V5%20and%20Limit%20Order%20Pr.V3/1inch%20Aggregation%20Router%20V5_Consensys.pdf) | Consensys | Audit | 2022-08 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 29 | high |
| [1inch Aggregation Router V5_IgorGulamov.pdf](https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Pr.%20V5%20and%20Limit%20Order%20Pr.V3/1inch%20Aggregation%20Router%20V5_IgorGulamov.pdf) | Igor Gulamov | Audit | 2022-09 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 29 | high |
| [1inch Aggregation Router V5_MixBytes.pdf](https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Pr.%20V5%20and%20Limit%20Order%20Pr.V3/1inch%20Aggregation%20Router%20V5_MixBytes.pdf) | MixBytes | Audit | 2022-11 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 29 | high |
| [1inch Aggregation Router V5_OpenZepplin.pdf](https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Pr.%20V5%20and%20Limit%20Order%20Pr.V3/1inch%20Aggregation%20Router%20V5_OpenZepplin.pdf) | OpenZeppelin | Audit | 2022-09 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 20 | high |
| [1inch Aggregation Router V5_PeckShield.pdf](https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Pr.%20V5%20and%20Limit%20Order%20Pr.V3/1inch%20Aggregation%20Router%20V5_PeckShield.pdf) | PeckShield | Audit | 2022-07 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |
| [1inch Aggregation Router V5_Pessimistic.pdf](https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Pr.%20V5%20and%20Limit%20Order%20Pr.V3/1inch%20Aggregation%20Router%20V5_Pessimistic.pdf) | Pessimistic | Audit | 2022-10 | stale | Direct | n/a | no match | 0 | 0 | 0 | 15 | n/a |
| [1inch Aggregation Router V5_Statemind.pdf](https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Pr.%20V5%20and%20Limit%20Order%20Pr.V3/1inch%20Aggregation%20Router%20V5_Statemind.pdf) | Statemind | Audit | 2022-07 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 21 | high |
| [1inch Aggregation Router V5_Zokyo.pdf](https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Pr.%20V5%20and%20Limit%20Order%20Pr.V3/1inch%20Aggregation%20Router%20V5_Zokyo.pdf) | Zokyo | Audit | 2022-08 | stale | Direct | n/a | no match | 0 | 0 | 0 | 22 | n/a |
| [1inch Aggregation Router V6.1_Decurity.pdf](https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Pr.%20V6%20and%20Limit%20Order%20Pr.V4/1inch%20Aggregation%20Router%20V6.1_Decurity.pdf) | Decurity | Audit | 2023-10 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |
| [1inch Aggregation Router V6.1_Hexens.pdf](https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Pr.%20V6%20and%20Limit%20Order%20Pr.V4/1inch%20Aggregation%20Router%20V6.1_Hexens.pdf) | Hexens | Audit | 2023-11 | stale | Direct | n/a | matched | 1 | 0 | 0 | 5 | n/a |
| [1inch Aggregation Router V6.1_OpenZeppelin.pdf](https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Pr.%20V6%20and%20Limit%20Order%20Pr.V4/1inch%20Aggregation%20Router%20V6.1_OpenZeppelin.pdf) | OpenZeppelin | Audit | 2023-12 | stale | Direct | n/a | matched | 1 | 0 | 0 | 3 | n/a |
| [1inch Aggregation Router V6.1_PeckShield.pdf](https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Pr.%20V6%20and%20Limit%20Order%20Pr.V4/1inch%20Aggregation%20Router%20V6.1_PeckShield.pdf) | PeckShield | Audit | 2023-10 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | medium |
| [1inch Aggregation Router V6.2_Decurity.pdf](https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Pr.%20V6%20and%20Limit%20Order%20Pr.V4/1inch%20Aggregation%20Router%20V6.2_Decurity.pdf) | Decurity | Audit | 2024-02 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | medium |
| [1inch Aggregation Router V6.2_Hexens.pdf](https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Pr.%20V6%20and%20Limit%20Order%20Pr.V4/1inch%20Aggregation%20Router%20V6.2_Hexens.pdf) | Hexens | Audit | 2024-02 | stale | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [1inch Aggregation Router V6.2_Pessimistic.pdf](https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Pr.%20V6%20and%20Limit%20Order%20Pr.V4/1inch%20Aggregation%20Router%20V6.2_Pessimistic.pdf) | Pessimistic | Audit | 2024-02 | stale | Direct | n/a | matched | 1 | 0 | 0 | 18 | n/a |
| [1inch Aggregation Router V6_Consensys.pdf](https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Pr.%20V6%20and%20Limit%20Order%20Pr.V4/1inch%20Aggregation%20Router%20V6_Consensys.pdf) | Consensys | Audit | 2023-04 | stale | Direct | n/a | matched | 1 | 0 | 0 | 19 | n/a |
| [1inch Aggregation Router V6_Decurity.pdf](https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Pr.%20V6%20and%20Limit%20Order%20Pr.V4/1inch%20Aggregation%20Router%20V6_Decurity.pdf) | Decurity | Audit | 2023-04 | stale | Direct | n/a | matched | 1 | 0 | 0 | 18 | n/a |
| [1inch Aggregation Router V6_Hexens.pdf](https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Pr.%20V6%20and%20Limit%20Order%20Pr.V4/1inch%20Aggregation%20Router%20V6_Hexens.pdf) | Hexens | Audit | 2023-04 | stale | Direct | n/a | no match | 0 | 0 | 0 | 13 | n/a |
| [1inch Aggregation Router V6_OpenZeppelin.pdf](https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Pr.%20V6%20and%20Limit%20Order%20Pr.V4/1inch%20Aggregation%20Router%20V6_OpenZeppelin.pdf) | OpenZeppelin | Audit | 2023-04 | stale | Direct | n/a | matched | 1 | 0 | 0 | 5 | n/a |
| [1inch Aggregation Router V6_PeckShield.pdf](https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Pr.%20V6%20and%20Limit%20Order%20Pr.V4/1inch%20Aggregation%20Router%20V6_PeckShield.pdf) | PeckShield | Audit | 2023-04 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | low |
| [1inch Aggregation Router V6_Pessimistic.pdf](https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Pr.%20V6%20and%20Limit%20Order%20Pr.V4/1inch%20Aggregation%20Router%20V6_Pessimistic.pdf) | Pessimistic | Audit | 2023-10 | stale | Direct | n/a | matched | 1 | 0 | 0 | 18 | n/a |
| [1inch Limit Order Protocol v4.1_OpenZeppelin.pdf](https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Pr.%20V6%20and%20Limit%20Order%20Pr.V4/1inch%20Limit%20Order%20Protocol%20v4.1_OpenZeppelin.pdf) | OpenZeppelin | Audit | 2023-11 | stale | Direct | n/a | no match | 0 | 0 | 0 | 7 | n/a |
| [1inch Limit Order Protocol v4_OpenZeppelin.pdf](https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Pr.%20V6%20and%20Limit%20Order%20Pr.V4/1inch%20Limit%20Order%20Protocol%20v4_OpenZeppelin.pdf) | OpenZeppelin | Audit | 2023-04 | stale | Direct | n/a | no match | 0 | 0 | 0 | 14 | n/a |
| [Certik - 1inch v2 Audit Report.pdf](https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Protocol%20V2/Certik%20-%201inch%20v2%20Audit%20Report.pdf) | CertiK | Audit | 2020-11 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |
| [Chainsulting - 1inch v2 Audit Report.pdf](https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Protocol%20V2/Chainsulting%20-%201inch%20v2%20Audit%20Report.pdf) | Chainsulting | Audit | 2020-11 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 7 | high |
| [Coinfabrik - 1inch v2 Audit Report.pdf](https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Protocol%20V2/Coinfabrik%20-%201inch%20v2%20Audit%20Report.pdf) | CoinFabrik | Audit | 2020-11 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |
| [Hacken - 1inch v2 Audit Report.pdf](https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Protocol%20V2/Hacken%20-%201inch%20v2%20Audit%20Report.pdf) | Hacken | Audit | 2020-11 | stale | Direct | address | no match | 0 | 0 | 0 | 6 | high |
| [Haechi - 1inch v2 Audit Report.pdf](https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Protocol%20V2/Haechi%20-%201inch%20v2%20Audit%20Report.pdf) | HAECHI | Audit | 2020-11 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |
| [MixBytes - 1inch v2 Audit Report.pdf](https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Protocol%20V2/MixBytes%20-%201inch%20v2%20Audit%20Report.pdf) | MixBytes | Audit | 2020-11 | stale | Direct | address | no match | 0 | 0 | 0 | 5 | high |
| [Scott Bigelow - 1inch v2 Audit Report.pdf](https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Protocol%20V2/Scott%20Bigelow%20-%201inch%20v2%20Audit%20Report.pdf) | Scott Bigelow | Audit | 2020-11 | stale | Direct | address | no match | 0 | 0 | 0 | 6 | high |
| [Slowmist - 1inch v2 Audit Report.pdf](https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Protocol%20V2/Slowmist%20-%201inch%20v2%20Audit%20Report.pdf) | SlowMist | Audit | 2020-11 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [Certik - 1inch v3 Audit Report.pdf](https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Protocol%20V3/Certik%20-%201inch%20v3%20Audit%20Report.pdf) | CertiK | Audit | 2021-03 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |
| [Gulamov - 1inch v3 Audit Report.pdf](https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Protocol%20V3/Gulamov%20-%201inch%20v3%20Audit%20Report.pdf) | Igor Gulamov | Audit | 2021-02 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |
| [MixBytes - 1inch v3 Audit Report.pdf](https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Protocol%20V3/MixBytes%20-%201inch%20v3%20Audit%20Report.pdf) | MixBytes | Audit | 2021-03 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |
| [1Inch Aggregation Router v4 Audit_MixBites.pdf](https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Protocol%20V4/1Inch%20Aggregation%20Router%20v4%20Audit_MixBites.pdf) | MixBytes | Audit | 2021-10 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 17 | high |
| [1inch Aggregation Router v4 Audit_ABDK.pdf](https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Protocol%20V4/1inch%20Aggregation%20Router%20v4%20Audit_ABDK.pdf) | ABDK | Audit | 2021-10 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 7 | high |
| [1inch Aggregation Router v4 Audit_Chainsulting.pdf](https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Protocol%20V4/1inch%20Aggregation%20Router%20v4%20Audit_Chainsulting.pdf) | Chainsulting | Audit | 2021-09 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |
| [1inch Aggregation Router v4 Audit_Coinfabrik.pdf](https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Protocol%20V4/1inch%20Aggregation%20Router%20v4%20Audit_Coinfabrik.pdf) | CoinFabrik | Audit | 2021-09 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |
| [1inch Aggregation Router v4 Audit_Consensys.pdf](https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Protocol%20V4/1inch%20Aggregation%20Router%20v4%20Audit_Consensys.pdf) | Consensys | Audit | 2021-09 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 10 | high |
| [1inch Aggregation Router v4 Audit_Igor Gulamov.pdf](https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Protocol%20V4/1inch%20Aggregation%20Router%20v4%20Audit_Igor%20Gulamov.pdf) | Igor Gulamov | Audit | 2021-09 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |
| [1inch Aggregation Router v4 Audit_Pessimistic.pdf](https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Protocol%20V4/1inch%20Aggregation%20Router%20v4%20Audit_Pessimistic.pdf) | Pessimistic | Audit | 2021-10 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |
| [1inch-cross-chain-swap-v1-AstraSec.pdf](https://github.com/1inch/1inch-audits/blob/master/Cross-chain%20Protocol/1inch-cross-chain-swap-v1-AstraSec.pdf) | AstraSec | Audit | 2024-03 | stale | Direct | n/a | no match | 0 | 0 | 0 | 3 | n/a |
| [1inch-cross-chain-swap-v1-Consensys.pdf](https://github.com/1inch/1inch-audits/blob/master/Cross-chain%20Protocol/1inch-cross-chain-swap-v1-Consensys.pdf) | Consensys | Audit | 2024-03 | stale | Direct | n/a | no match | 0 | 0 | 0 | 11 | n/a |
| [1inch-cross-chain-swap-v1-Decurity.pdf](https://github.com/1inch/1inch-audits/blob/master/Cross-chain%20Protocol/1inch-cross-chain-swap-v1-Decurity.pdf) | Decurity | Audit | 2024-03 | stale | Direct | n/a | no match | 0 | 0 | 0 | 5 | n/a |
| [1inch-cross-chain-swap-v1-Igor Gulamov.pdf](https://github.com/1inch/1inch-audits/blob/master/Cross-chain%20Protocol/1inch-cross-chain-swap-v1-Igor%20Gulamov.pdf) | Igor Gulamov | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 10 | n/a |
| [1inch-cross-chain-swap-v1-Open Zeppelin.pdf](https://github.com/1inch/1inch-audits/blob/master/Cross-chain%20Protocol/1inch-cross-chain-swap-v1-Open%20Zeppelin.pdf) | OpenZeppelin | Audit | 2024-04 | stale | Direct | n/a | no match | 0 | 0 | 0 | 10 | n/a |
| [1inch-cross-chain-swap-v1-Pessimistic.pdf](https://github.com/1inch/1inch-audits/blob/master/Cross-chain%20Protocol/1inch-cross-chain-swap-v1-Pessimistic.pdf) | Pessimistic | Audit | 2024-03 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | medium |
| [1inch-cross-chain-v2-Astrasec.pdf](https://github.com/1inch/1inch-audits/blob/master/Cross-chain%20Protocol/1inch-cross-chain-v2-Astrasec.pdf) | AstraSec | Audit | 2024-08 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 10 | high |
| [1inch-cross-chain-v2-Consensys.pdf](https://github.com/1inch/1inch-audits/blob/master/Cross-chain%20Protocol/1inch-cross-chain-v2-Consensys.pdf) | Consensys | Audit | 2024-07 | stale | Direct | n/a | no match | 0 | 0 | 0 | 22 | n/a |
| [1inch-cross-chain-v2-Decurity.pdf](https://github.com/1inch/1inch-audits/blob/master/Cross-chain%20Protocol/1inch-cross-chain-v2-Decurity.pdf) | Decurity | Audit | 2024-07 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |
| [1inch-cross-chain-v2-Igor Gulamov.pdf](https://github.com/1inch/1inch-audits/blob/master/Cross-chain%20Protocol/1inch-cross-chain-v2-Igor%20Gulamov.pdf) | Igor Gulamov | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 23 | n/a |
| [1inch-cross-chain-v2-Open Zeppelin.pdf](https://github.com/1inch/1inch-audits/blob/master/Cross-chain%20Protocol/1inch-cross-chain-v2-Open%20Zeppelin.pdf) | OpenZeppelin | Audit | 2024-09 | aging | Direct | n/a | no match | 0 | 0 | 0 | 22 | n/a |
| [1inch-cross-chain-v2-Pessimistic.pdf](https://github.com/1inch/1inch-audits/blob/master/Cross-chain%20Protocol/1inch-cross-chain-v2-Pessimistic.pdf) | Pessimistic | Audit | 2024-08 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 2 | medium |
| [1inch Crosschain Fee v1.1_Certora.pdf](https://github.com/1inch/1inch-audits/blob/master/Crosschain%20fees%20v1.1/1inch%20Crosschain%20Fee%20v1.1_Certora.pdf) | Certora | Audit | 2025-09 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [1inch Crosschain Fee v1.1_Decurity.pdf](https://github.com/1inch/1inch-audits/blob/master/Crosschain%20fees%20v1.1/1inch%20Crosschain%20Fee%20v1.1_Decurity.pdf) | Decurity | Audit | 2025-08 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [1inch Crosschain Fee v1.1_Hexens.pdf](https://github.com/1inch/1inch-audits/blob/master/Crosschain%20fees%20v1.1/1inch%20Crosschain%20Fee%20v1.1_Hexens.pdf) | Hexens | Audit | 2025-08 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 14 | high |
| [1inch Crosschain Fee v1.1_Open Zeppelin.pdf](https://github.com/1inch/1inch-audits/blob/master/Crosschain%20fees%20v1.1/1inch%20Crosschain%20Fee%20v1.1_Open%20Zeppelin.pdf) | OpenZeppelin | Audit | 2025-08 | fresh | Direct | n/a | no match | 0 | 0 | 0 | 13 | n/a |
| [1inch Crosschain Fee v1.1_Sherlock.pdf](https://github.com/1inch/1inch-audits/blob/master/Crosschain%20fees%20v1.1/1inch%20Crosschain%20Fee%20v1.1_Sherlock.pdf) | Sherlock | Contest | 2025-08 | fresh | Direct | n/a | no match | 0 | 0 | 0 | 24 | n/a |
| [Fee flow v1-AstraSec.pdf](https://github.com/1inch/1inch-audits/blob/master/Fees%20for%20LO%20and%20Fusion%20V1/Fee%20flow%20v1-AstraSec.pdf) | AstraSec | Audit | 2025-04 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |
| [Fee flow v1-Bailsec.pdf](https://github.com/1inch/1inch-audits/blob/master/Fees%20for%20LO%20and%20Fusion%20V1/Fee%20flow%20v1-Bailsec.pdf) | Bailsec | Audit | 2025-04 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |
| [Fee flow v1-ChainLight.pdf](https://github.com/1inch/1inch-audits/blob/master/Fees%20for%20LO%20and%20Fusion%20V1/Fee%20flow%20v1-ChainLight.pdf) | ChainLight | Audit | 2025-05 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |
| [Fee flow v1-Decurity.pdf](https://github.com/1inch/1inch-audits/blob/master/Fees%20for%20LO%20and%20Fusion%20V1/Fee%20flow%20v1-Decurity.pdf) | Decurity | Audit | 2025-04 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |
| [Fee flow v1-Open Zepplin.pdf](https://github.com/1inch/1inch-audits/blob/master/Fees%20for%20LO%20and%20Fusion%20V1/Fee%20flow%20v1-Open%20Zepplin.pdf) | OpenZeppelin | Audit | 2025-05 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |
| [Fee flow v1-Sherlock.pdf](https://github.com/1inch/1inch-audits/blob/master/Fees%20for%20LO%20and%20Fusion%20V1/Fee%20flow%20v1-Sherlock.pdf) | Sherlock | Contest | 2025-04 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |
| [1inch FixedRateSwap_Ackee Blockchain.pdf](https://github.com/1inch/1inch-audits/blob/master/Fixed%20Rate%20Swap%20V1/1inch%20FixedRateSwap_Ackee%20Blockchain.pdf) | Ackee Blockchain | Audit | 2021-08 | stale | Direct | n/a | no match | 0 | 0 | 0 | 1 | n/a |
| [1inch FixedRateSwap_Chainsulting.pdf](https://github.com/1inch/1inch-audits/blob/master/Fixed%20Rate%20Swap%20V1/1inch%20FixedRateSwap_Chainsulting.pdf) | Chainsulting | Audit | 2021-08 | stale | Direct | n/a | no match | 0 | 0 | 0 | 1 | n/a |
| [1inch FixedRateSwap_CoinFabrik.pdf](https://github.com/1inch/1inch-audits/blob/master/Fixed%20Rate%20Swap%20V1/1inch%20FixedRateSwap_CoinFabrik.pdf) | CoinFabrik | Audit | 2021-08 | stale | Direct | n/a | no match | 0 | 0 | 0 | 1 | n/a |
| [1inch FixedRateSwap_MixedBytes.pdf](https://github.com/1inch/1inch-audits/blob/master/Fixed%20Rate%20Swap%20V1/1inch%20FixedRateSwap_MixedBytes.pdf) | MixBytes | Audit | 2021-07 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [1inch FixedRateSwap_Pessimistic.pdf](https://github.com/1inch/1inch-audits/blob/master/Fixed%20Rate%20Swap%20V1/1inch%20FixedRateSwap_Pessimistic.pdf) | Pessimistic | Audit | 2021-08 | stale | Direct | n/a | no match | 0 | 0 | 0 | 1 | n/a |
| [1inch Settlement v2.1_AstraSec.pdf](https://github.com/1inch/1inch-audits/blob/master/Fusion%20Settlement%20V2/1inch%20Settlement%20v2.1_AstraSec.pdf) | AstraSec | Audit | 2024-04 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 8 | high |
| [1inch Settlement v2.1_Decurity.pdf](https://github.com/1inch/1inch-audits/blob/master/Fusion%20Settlement%20V2/1inch%20Settlement%20v2.1_Decurity.pdf) | Decurity | Audit | 2024-03 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [1inch Settlement v2.1_Hexens.pdf](https://github.com/1inch/1inch-audits/blob/master/Fusion%20Settlement%20V2/1inch%20Settlement%20v2.1_Hexens.pdf) | Hexens | Audit | 2024-04 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [1inch Settlement v2.1_Open Zepplin.pdf](https://github.com/1inch/1inch-audits/blob/master/Fusion%20Settlement%20V2/1inch%20Settlement%20v2.1_Open%20Zepplin.pdf) | OpenZeppelin | Audit | 2024-04 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 8 | high |
| [1inch Settlement v2.1_Pashov.pdf](https://github.com/1inch/1inch-audits/blob/master/Fusion%20Settlement%20V2/1inch%20Settlement%20v2.1_Pashov.pdf) | Pashov Audit Group | Audit | 2024-03 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 8 | high |
| [1inch Settlement v2.1_Pessemistic.pdf](https://github.com/1inch/1inch-audits/blob/master/Fusion%20Settlement%20V2/1inch%20Settlement%20v2.1_Pessemistic.pdf) | Pessimistic | Audit | 2024-03 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 10 | high |
| [1inch Settlement v2_Decurity.pdf](https://github.com/1inch/1inch-audits/blob/master/Fusion%20Settlement%20V2/1inch%20Settlement%20v2_Decurity.pdf) | Decurity | Audit | 2023-11 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [1inch Settlement v2_Hexens.pdf](https://github.com/1inch/1inch-audits/blob/master/Fusion%20Settlement%20V2/1inch%20Settlement%20v2_Hexens.pdf) | Hexens | Audit | 2023-11 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [1inch Settlement v2_Open Zeppelin.pdf](https://github.com/1inch/1inch-audits/blob/master/Fusion%20Settlement%20V2/1inch%20Settlement%20v2_Open%20Zeppelin.pdf) | OpenZeppelin | Audit | 2023-12 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [1inch Settlement v2_Peckshield.pdf](https://github.com/1inch/1inch-audits/blob/master/Fusion%20Settlement%20V2/1inch%20Settlement%20v2_Peckshield.pdf) | PeckShield | Audit | 2023-12 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [1inch Settlement v2_Pessimistic.pdf](https://github.com/1inch/1inch-audits/blob/master/Fusion%20Settlement%20V2/1inch%20Settlement%20v2_Pessimistic.pdf) | Pessimistic | Audit | 2023-12 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [1inch_FusionMode_ABDK.pdf](https://github.com/1inch/1inch-audits/blob/master/Fusion%20mode%20and%20Token-plugins/1inch_FusionMode_ABDK.pdf) | ABDK | Audit | 2023-02 | stale | Direct | n/a | no match | 0 | 0 | 0 | 25 | n/a |
| [1inch_FusionMode_ChainSecurity1.pdf](https://github.com/1inch/1inch-audits/blob/master/Fusion%20mode%20and%20Token-plugins/1inch_FusionMode_ChainSecurity1.pdf) | ChainSecurity | Audit | 2023-01 | stale | Direct | n/a | no match | 0 | 0 | 0 | 20 | n/a |
| [1inch_FusionMode_ChainSecurity2.pdf](https://github.com/1inch/1inch-audits/blob/master/Fusion%20mode%20and%20Token-plugins/1inch_FusionMode_ChainSecurity2.pdf) | ChainSecurity | Audit | 2022-12 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 6 | high |
| [1inch_FusionMode_ChainSecurity3.pdf](https://github.com/1inch/1inch-audits/blob/master/Fusion%20mode%20and%20Token-plugins/1inch_FusionMode_ChainSecurity3.pdf) | ChainSecurity | Audit | 2022-12 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 7 | high |
| [1inch_FusionMode_Decurity.pdf](https://github.com/1inch/1inch-audits/blob/master/Fusion%20mode%20and%20Token-plugins/1inch_FusionMode_Decurity.pdf) | Decurity | Audit | 2022-12 | stale | Direct | n/a | no match | 0 | 0 | 0 | 13 | n/a |
| [1inch_FusionMode_Hexens.1.pdf](https://github.com/1inch/1inch-audits/blob/master/Fusion%20mode%20and%20Token-plugins/1inch_FusionMode_Hexens.1.pdf) | Hexens | Audit | 2022-11 | stale | Direct | n/a | no match | 0 | 0 | 0 | 4 | n/a |
| [1inch_FusionMode_Hexens.2.pdf](https://github.com/1inch/1inch-audits/blob/master/Fusion%20mode%20and%20Token-plugins/1inch_FusionMode_Hexens.2.pdf) | Hexens | Audit | 2022-12 | stale | Direct | n/a | no match | 0 | 0 | 0 | 14 | n/a |
| [1inch_FusionMode_OpenZepplin.1.pdf](https://github.com/1inch/1inch-audits/blob/master/Fusion%20mode%20and%20Token-plugins/1inch_FusionMode_OpenZepplin.1.pdf) | OpenZeppelin | Audit | 2023-03 | stale | Direct | n/a | no match | 0 | 0 | 0 | 22 | n/a |
| [1inch_FusionMode_OpenZepplin.2.pdf](https://github.com/1inch/1inch-audits/blob/master/Fusion%20mode%20and%20Token-plugins/1inch_FusionMode_OpenZepplin.2.pdf) | OpenZeppelin | Audit | 2023-03 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 13 | high |
| [1inch_FusionMode_Oxorio.pdf](https://github.com/1inch/1inch-audits/blob/master/Fusion%20mode%20and%20Token-plugins/1inch_FusionMode_Oxorio.pdf) | Oxorio | Audit | 2022-12 | stale | Direct | n/a | no match | 0 | 0 | 0 | 8 | n/a |
| [1inch_FusionMode_Peckshield.pdf](https://github.com/1inch/1inch-audits/blob/master/Fusion%20mode%20and%20Token-plugins/1inch_FusionMode_Peckshield.pdf) | PeckShield | Audit | 2022-12 | stale | Direct | n/a | no match | 0 | 0 | 0 | 10 | n/a |
| [1inch_FusionMode_Pessimistic.pdf](https://github.com/1inch/1inch-audits/blob/master/Fusion%20mode%20and%20Token-plugins/1inch_FusionMode_Pessimistic.pdf) | Pessimistic | Audit | 2023-01 | stale | Direct | n/a | no match | 0 | 0 | 0 | 17 | n/a |
| [1inch_FusionMode_iosiro.pdf](https://github.com/1inch/1inch-audits/blob/master/Fusion%20mode%20and%20Token-plugins/1inch_FusionMode_iosiro.pdf) | Iosiro | Audit | 2022-12 | stale | Direct | n/a | no match | 0 | 0 | 0 | 14 | n/a |
| [1inch_TokenPlugins-Pashov.pdf](https://github.com/1inch/1inch-audits/blob/master/Fusion%20mode%20and%20Token-plugins/1inch_TokenPlugins-Pashov.pdf) | Pashov Audit Group | Audit | 2023-09 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [1Inch Limit Order Protocol_ABDK.pdf](https://github.com/1inch/1inch-audits/blob/master/Limit%20Order%20Protocol%20V2/1Inch%20Limit%20Order%20Protocol_ABDK.pdf) | ABDK | Audit | 2021-11 | stale | Direct | n/a | no match | 0 | 0 | 0 | 10 | n/a |
| [1Inch Limit Order Protocol_Chainsulting.pdf](https://github.com/1inch/1inch-audits/blob/master/Limit%20Order%20Protocol%20V2/1Inch%20Limit%20Order%20Protocol_Chainsulting.pdf) | Chainsulting | Audit | 2021-10 | stale | Direct | n/a | no match | 0 | 0 | 0 | 17 | n/a |
| [1Inch Limit Order Protocol_CoinFabrik.pdf](https://github.com/1inch/1inch-audits/blob/master/Limit%20Order%20Protocol%20V2/1Inch%20Limit%20Order%20Protocol_CoinFabrik.pdf) | CoinFabrik | Audit | 2021-09 | stale | Direct | n/a | no match | 0 | 0 | 0 | 13 | n/a |
| [1Inch Limit Order Protocol_IgorGulamov.pdf](https://github.com/1inch/1inch-audits/blob/master/Limit%20Order%20Protocol%20V2/1Inch%20Limit%20Order%20Protocol_IgorGulamov.pdf) | Igor Gulamov | Audit | 2021-10 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |
| [1Inch Limit Order Protocol_MixBytes.pdf](https://github.com/1inch/1inch-audits/blob/master/Limit%20Order%20Protocol%20V2/1Inch%20Limit%20Order%20Protocol_MixBytes.pdf) | MixBytes | Audit | 2021-11 | stale | Direct | n/a | no match | 0 | 0 | 0 | 13 | n/a |
| [1inch Limit Order Portocol_Certik.pdf](https://github.com/1inch/1inch-audits/blob/master/Limit%20Order%20Protocol%20V2/1inch%20Limit%20Order%20Portocol_Certik.pdf) | CertiK | Audit | 2021-11 | stale | Direct | n/a | no match | 0 | 0 | 0 | 14 | n/a |
| [ABDK - 1inch Limit Order Protocol audit.pdf](https://github.com/1inch/1inch-audits/blob/master/Limit%20Order%20Protocol/ABDK%20-%201inch%20Limit%20Order%20Protocol%20audit.pdf) | ABDK | Audit | 2021-06 | stale | Direct | n/a | no match | 0 | 0 | 0 | 11 | n/a |
| [Chainsulting - 1inch Limit Order Protocol audit.pdf](https://github.com/1inch/1inch-audits/blob/master/Limit%20Order%20Protocol/Chainsulting%20-%201inch%20Limit%20Order%20Protocol%20audit.pdf) | Chainsulting | Audit | 2021-06 | stale | Direct | n/a | no match | 0 | 0 | 0 | 1 | n/a |
| [Coinfabrik - 1inch Limit Order Protocol audit.pdf](https://github.com/1inch/1inch-audits/blob/master/Limit%20Order%20Protocol/Coinfabrik%20-%201inch%20Limit%20Order%20Protocol%20audit.pdf) | CoinFabrik | Audit | 2021-04 | stale | Direct | n/a | no match | 0 | 0 | 0 | 12 | n/a |
| [Coinspect - 1inch Limit Order Protocol audit.pdf](https://github.com/1inch/1inch-audits/blob/master/Limit%20Order%20Protocol/Coinspect%20-%201inch%20Limit%20Order%20Protocol%20audit.pdf) | Coinspect | Audit | 2021-04 | stale | Direct | n/a | no match | 0 | 0 | 0 | 13 | n/a |
| [LimitSwap audit.pdf](https://github.com/1inch/1inch-audits/blob/master/Limit%20Order%20Protocol/LimitSwap%20audit.pdf) | unknown | Audit | 2021-03 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 6 | high |
| [Pessimistic - 1inch Limit Order Protocol audit.pdf](https://github.com/1inch/1inch-audits/blob/master/Limit%20Order%20Protocol/Pessimistic%20-%201inch%20Limit%20Order%20Protocol%20audit.pdf) | Pessimistic | Audit | 2021-06 | stale | Direct | n/a | no match | 0 | 0 | 0 | 3 | n/a |
| [Certik - 1inch Liquidity Protocol audit.pdf](https://github.com/1inch/1inch-audits/blob/master/Liquidity%20Protocol/Certik%20-%201inch%20Liquidity%20Protocol%20audit.pdf) | CertiK | Audit | 2020-12 | stale | Direct | n/a | no match | 0 | 0 | 0 | 24 | n/a |
| [Chainsulting - 1inch Liquidity Protocol Audit.pdf](https://github.com/1inch/1inch-audits/blob/master/Liquidity%20Protocol/Chainsulting%20-%201inch%20Liquidity%20Protocol%20Audit.pdf) | Chainsulting | Audit | 2020-12 | stale | Direct | n/a | no match | 0 | 0 | 0 | 24 | n/a |
| [Coinfabrik - 1inch Liquidity Protocol Audit.pdf](https://github.com/1inch/1inch-audits/blob/master/Liquidity%20Protocol/Coinfabrik%20-%201inch%20Liquidity%20Protocol%20Audit.pdf) | CoinFabrik | Audit | 2020-12 | stale | Direct | n/a | no match | 0 | 0 | 0 | 23 | n/a |
| [Cure53 - 1inch Liquidity Protocol audit.pdf](https://github.com/1inch/1inch-audits/blob/master/Liquidity%20Protocol/Cure53%20-%201inch%20Liquidity%20Protocol%20audit.pdf) | Cure53 | Audit | 2020-12 | stale | Direct | n/a | no match | 0 | 0 | 0 | 32 | n/a |
| [Gulamov - 1inch Farming audit.pdf](https://github.com/1inch/1inch-audits/blob/master/Liquidity%20Protocol/Farming/Gulamov%20-%201inch%20Farming%20audit.pdf) | Igor Gulamov | Audit | 2021-02 | stale | Direct | n/a | no match | 0 | 0 | 0 | 2 | n/a |
| [Gulamov - 1inch Liquidity Protocol audit.pdf](https://github.com/1inch/1inch-audits/blob/master/Liquidity%20Protocol/Gulamov%20-%201inch%20Liquidity%20Protocol%20audit.pdf) | Igor Gulamov | Audit | 2021-01 | stale | Direct | n/a | no match | 0 | 0 | 0 | 10 | n/a |
| [MixBytes - 1inch Liquidity Protocol Report.pdf](https://github.com/1inch/1inch-audits/blob/master/Liquidity%20Protocol/MixBytes%20-%201inch%20Liquidity%20Protocol%20Report.pdf) | MixBytes | Audit | 2021-01 | stale | Direct | n/a | no match | 0 | 0 | 0 | 23 | n/a |
| [1inch Multi-Farming Contracts V3_Chainsafe.pdf](https://github.com/1inch/1inch-audits/blob/master/Multi-Farming%20Contracts%20V3/1inch%20Multi-Farming%20Contracts%20V3_Chainsafe.pdf) | ChainSafe | Audit | 2022-11 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | medium |
| [1inch Multi-Farming Contracts V3_CoinFabrik.pdf](https://github.com/1inch/1inch-audits/blob/master/Multi-Farming%20Contracts%20V3/1inch%20Multi-Farming%20Contracts%20V3_CoinFabrik.pdf) | CoinFabrik | Audit | 2022-12 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 9 | high |
| [1inch Multi-Farming Contracts V3_Decurity.pdf](https://github.com/1inch/1inch-audits/blob/master/Multi-Farming%20Contracts%20V3/1inch%20Multi-Farming%20Contracts%20V3_Decurity.pdf) | Decurity | Audit | 2022-12 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |
| [1inch Multi-Farming Contracts V3_Gulamov.pdf](https://github.com/1inch/1inch-audits/blob/master/Multi-Farming%20Contracts%20V3/1inch%20Multi-Farming%20Contracts%20V3_Gulamov.pdf) | Igor Gulamov | Audit | 2022-01 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | medium |
| [1inch Multi-Farming Contracts V3_Peckshield.pdf](https://github.com/1inch/1inch-audits/blob/master/Multi-Farming%20Contracts%20V3/1inch%20Multi-Farming%20Contracts%20V3_Peckshield.pdf) | PeckShield | Audit | 2023-02 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 3 | medium |
| [1inch Multi-Farming Contracts V3_Pessimistic.pdf](https://github.com/1inch/1inch-audits/blob/master/Multi-Farming%20Contracts%20V3/1inch%20Multi-Farming%20Contracts%20V3_Pessimistic.pdf) | Pessimistic | Audit | 2023-01 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 6 | high |
| [1inch Multi-Farming Contracts V3_Smartstate.pdf](https://github.com/1inch/1inch-audits/blob/master/Multi-Farming%20Contracts%20V3/1inch%20Multi-Farming%20Contracts%20V3_Smartstate.pdf) | SmartState | Audit | 2022-12 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |
| [Solana Fusion - Decurity v1.pdf](https://github.com/1inch/1inch-audits/blob/master/Solana%20Fusion%20v1/Solana%20Fusion%20-%20Decurity%20v1.pdf) | Decurity | Audit | 2025-02 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [Solana Fusion - Hexens v1.pdf](https://github.com/1inch/1inch-audits/blob/master/Solana%20Fusion%20v1/Solana%20Fusion%20-%20Hexens%20v1.pdf) | Hexens | Audit | 2025-02 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [Solana Fusion - Open Zepplin v1.pdf](https://github.com/1inch/1inch-audits/blob/master/Solana%20Fusion%20v1/Solana%20Fusion%20-%20Open%20Zepplin%20v1.pdf) | OpenZeppelin | Audit | 2025-04 | aging | Direct | address | no match | 0 | 0 | 0 | 2 | high |
| [Solana Fusion - Ottersec v1.pdf](https://github.com/1inch/1inch-audits/blob/master/Solana%20Fusion%20v1/Solana%20Fusion%20-%20Ottersec%20v1.pdf) | OtterSec | Audit | 2025-06 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [Solana Fusion - Quantstamp v1.pdf](https://github.com/1inch/1inch-audits/blob/master/Solana%20Fusion%20v1/Solana%20Fusion%20-%20Quantstamp%20v1.pdf) | Quantstamp | Audit | 2025-03 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [Solana Fusion - Zenith v1.01.pdf](https://github.com/1inch/1inch-audits/blob/master/Solana%20Fusion%20v1/Solana%20Fusion%20-%20Zenith%20v1.01.pdf) | Zenith | Audit | 2025-04 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [Solana Fusion v1_Kudelski.pdf](https://github.com/1inch/1inch-audits/blob/master/Solana%20Fusion%20v1/Solana%20Fusion%20v1_Kudelski.pdf) | Kudelski Security | Audit | 2025-05 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [Solana Fusion v1_OffsideLabs.pdf](https://github.com/1inch/1inch-audits/blob/master/Solana%20Fusion%20v1/Solana%20Fusion%20v1_OffsideLabs.pdf) | Offside Labs | Audit | 2025-04 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [Solana cross-chain v1.0-Hexens.pdf](https://github.com/1inch/1inch-audits/blob/master/Solana%20cross-chain%20v1/Solana%20cross-chain%20v1.0-Hexens.pdf) | Hexens | Audit | 2025-07 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 9 | high |
| [Solana cross-chain v1.0-Zenith.pdf](https://github.com/1inch/1inch-audits/blob/master/Solana%20cross-chain%20v1/Solana%20cross-chain%20v1.0-Zenith.pdf) | Zenith | Audit | 2025-07 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [Solana cross-chain v1.0_Decurity.pdf](https://github.com/1inch/1inch-audits/blob/master/Solana%20cross-chain%20v1/Solana%20cross-chain%20v1.0_Decurity.pdf) | Decurity | Audit | 2025-06 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [Solana cross-chain v1.0_OffsideLabs.pdf](https://github.com/1inch/1inch-audits/blob/master/Solana%20cross-chain%20v1/Solana%20cross-chain%20v1.0_OffsideLabs.pdf) | Offside Labs | Audit | 2025-07 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [Solana cross-chain v1.0_Sherlock.pdf](https://github.com/1inch/1inch-audits/blob/master/Solana%20cross-chain%20v1/Solana%20cross-chain%20v1.0_Sherlock.pdf) | Sherlock | Contest | 2025-06 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [Solana cross-chain v1.1_Decurity.pdf](https://github.com/1inch/1inch-audits/blob/master/Solana%20cross-chain%20v1/Solana%20cross-chain%20v1.1_Decurity.pdf) | Decurity | Audit | 2025-07 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [Solana cross-chain v1.1_Hexens.pdf](https://github.com/1inch/1inch-audits/blob/master/Solana%20cross-chain%20v1/Solana%20cross-chain%20v1.1_Hexens.pdf) | Hexens | Audit | 2025-08 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [Solana cross-chain v1.1_OffsideLabs.pdf](https://github.com/1inch/1inch-audits/blob/master/Solana%20cross-chain%20v1/Solana%20cross-chain%20v1.1_OffsideLabs.pdf) | Offside Labs | Audit | 2025-09 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [Solana cross-chain v1.1_Sherlock.pdf](https://github.com/1inch/1inch-audits/blob/master/Solana%20cross-chain%20v1/Solana%20cross-chain%20v1.1_Sherlock.pdf) | Sherlock | Contest | 2025-07 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [Solana cross-chain v1.1_Zenith.pdf](https://github.com/1inch/1inch-audits/blob/master/Solana%20cross-chain%20v1/Solana%20cross-chain%20v1.1_Zenith.pdf) | Zenith | Audit | 2025-08 | fresh | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [Chainsulting - 1inch Vesting Contract audit.pdf](https://github.com/1inch/1inch-audits/blob/master/Vesting%20Contract/Chainsulting%20-%201inch%20Vesting%20Contract%20audit.pdf) | Chainsulting | Audit | 2021-05 | stale | Direct | n/a | no match | 0 | 0 | 0 | 1 | n/a |
| [Coinfabrik - 1inch Vesting Contract audit.pdf](https://github.com/1inch/1inch-audits/blob/master/Vesting%20Contract/Coinfabrik%20-%201inch%20Vesting%20Contract%20audit.pdf) | CoinFabrik | Audit | 2021-05 | stale | Direct | n/a | no match | 0 | 0 | 0 | 1 | n/a |
| [Gulamov - 1inch Vesting Contract audit.pdf](https://github.com/1inch/1inch-audits/blob/master/Vesting%20Contract/Gulamov%20-%201inch%20Vesting%20Contract%20audit.pdf) | Igor Gulamov | Audit | 2021-05 | stale | Direct | n/a | no match | 0 | 0 | 0 | 1 | n/a |
| [Pessimistic - 1inch Vesting Contract audit.pdf](https://github.com/1inch/1inch-audits/blob/master/Vesting%20Contract/Pessimistic%20-%201inch%20Vesting%20Contract%20audit.pdf) | Pessimistic | Audit | 2021-05 | stale | Direct | n/a | no match | 0 | 0 | 0 | 1 | n/a |
| [MixBytes.pdf](https://github.com/1inch/1inch-token/blob/master/audits/MixBytes.pdf) | MixBytes | Audit | 2020-12 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [8160] 1inch Aggregation Router V5_ABDK Consulting.pdf — no match: Extracted 30 contract names from the scope section listing files in the repository. Audit date found on cover page: 16th September 2022.
- [8161] 1inch Aggregation Router V5_CoinFabrik.pdf — no match: No reason recorded
- [8162] 1inch Aggregation Router V5_Consensys.pdf — no match: All files listed in Appendix 1 - Files in Scope were extracted. The audit date is the end date of the review period (September 16, 2022).
- [8163] 1inch Aggregation Router V5_IgorGulamov.pdf — no match: Extracted all contracts from the scope section of the audit report. The date is from the title line.
- [8164] 1inch Aggregation Router V5_MixBytes.pdf — no match: All contracts listed in the Project Scope section of the report.
- [8165] 1inch Aggregation Router V5_OpenZepplin.pdf — no match: Extracted 21 contract names from the scope section listing files in 1inch-contract and limit-order-protocol repositories. Audit date from title: 'September 22, 2022'.
- [8166] 1inch Aggregation Router V5_PeckShield.pdf — no match: Extracted contract names from findings targets and report description. Audit date from cover page and table.
- [8167] 1inch Aggregation Router V5_Pessimistic.pdf — no match: No reason recorded
- [8168] 1inch Aggregation Router V5_Statemind.pdf — no match: Extracted 21 contract names from the Project Scope section listing files. Audit date from timeline: 18-07-2022 - 29-07-2022, using end date.
- [8169] 1inch Aggregation Router V5_Zokyo.pdf — no match: No reason recorded
- [8170] 1inch Aggregation Router V6.1_Decurity.pdf — no match: Extracted contract names from findings table and file paths. Audit date from report header and status date.
- [8171] 1inch Aggregation Router V6.1_Hexens.pdf — matched: No reason recorded
- [8172] 1inch Aggregation Router V6.1_OpenZeppelin.pdf — matched: No reason recorded
- [8173] 1inch Aggregation Router V6.1_PeckShield.pdf — no match: No explicit scope table; contracts extracted from findings targets. Audit date from cover page and latest audit report date.
- [8174] 1inch Aggregation Router V6.2_Decurity.pdf — no match: Scope section only lists pull requests, not specific contracts. Only one contract name extracted from findings.
- [8175] 1inch Aggregation Router V6.2_Hexens.pdf — no match: The scope section only mentions pull requests (PRs) on GitHub repositories, not specific contract names or file paths. No contract names could be extracted.
- [8176] 1inch Aggregation Router V6.2_Pessimistic.pdf — matched: No reason recorded
- [8177] 1inch Aggregation Router V6_Consensys.pdf — matched: No reason recorded
- [8178] 1inch Aggregation Router V6_Decurity.pdf — matched: No reason recorded
- [8179] 1inch Aggregation Router V6_Hexens.pdf — no match: No reason recorded
- [8180] 1inch Aggregation Router V6_OpenZeppelin.pdf — matched: No reason recorded
- [8181] 1inch Aggregation Router V6_PeckShield.pdf — no match: Only one contract name (UnoswapRouter) found in findings. No explicit scope section listing contracts. Audit date from cover page.
- [8182] 1inch Aggregation Router V6_Pessimistic.pdf — matched: No reason recorded
- [8183] 1inch Limit Order Protocol v4.1_OpenZeppelin.pdf — no match: No reason recorded
- [8184] 1inch Limit Order Protocol v4_OpenZeppelin.pdf — no match: No reason recorded
- [8185] Certik - 1inch v2 Audit Report.pdf — no match: Scope table lists 5 contracts with file paths. Audit date from delivery date.
- [8186] Chainsulting - 1inch v2 Audit Report.pdf — no match: Scope explicitly lists OneInchExchange.sol, OneInchFlags.sol, helpers/RevertReasonParser.sol, helpers/UniERC20.sol, and indirect imports IOneInchCaller.sol, IERC20Permit.sol, IChi.sol. Audit date from cover page: 04.11.2020.
- [8187] Coinfabrik - 1inch v2 Audit Report.pdf — no match: Scope table lists 5 files with SHA256 hashes. Audit date is November 2020, approximated to last day of month.
- [8188] Hacken - 1inch v2 Audit Report.pdf — no match: All contracts listed in scope section of the audit report.
- [8189] Haechi - 1inch v2 Audit Report.pdf — no match: Scope section lists 5 contracts: OneInchExchange.sol, RevertReasonParser.sol, UniERC20.sol, GasDiscountCalculator.sol, OneInchFlags.sol. Audit date from cover page: 16th November 2020.
- [8190] MixBytes - 1inch v2 Audit Report.pdf — no match: Scope section lists 5 contracts with file paths and one address.
- [8191] Scott Bigelow - 1inch v2 Audit Report.pdf — no match: Scope explicitly lists OneInchExchange.sol, OneInchCaller.sol, OneInchFlags.sol. ChiSpender, BytesPatcher, and PatcherExtension are mentioned in findings as audited contracts. Audit date is clearly stated at the top.
- [8192] Slowmist - 1inch v2 Audit Report.pdf — no match: Audit report explicitly lists three contracts in scope: OneInchExchange, RevertReasonParser, and UniERC20. Audit date is Nov.12,2020.
- [8193] Certik - 1inch v3 Audit Report.pdf — no match: Scope table lists 5 contracts with file paths. Audit date from delivery date.
- [8194] Gulamov - 1inch v3 Audit Report.pdf — no match: Scope section explicitly lists five contracts: OneInchExchange.sol, OneInchUnoswap.sol, helpers/Permitable.sol, helpers/UniERC20.sol, helpers/RevertReasonParser.sol. Audit date is '26 Feb 2021' in the title.
- [8195] MixBytes - 1inch v3 Audit Report.pdf — no match: All contracts listed in FILES LISTING section are in scope.
- [8196] 1Inch Aggregation Router v4 Audit_MixBites.pdf — no match: All contracts listed in the FILES LISTING table are in scope. Audit date is October 01, 2021 from the title.
- [8197] 1inch Aggregation Router v4 Audit_ABDK.pdf — no match: Scope explicitly lists 7 Solidity files at commit 93868c. Date from cover page: 4th October 2021.
- [8198] 1inch Aggregation Router v4 Audit_Chainsulting.pdf — no match: Scope section lists 4 contracts in scope. Audit date from executive summary: final debriefs on September 23, 2021.
- [8199] 1inch Aggregation Router v4 Audit_Coinfabrik.pdf — no match: Audit report for 1inch Aggregation Router v4, dated September 2021. Contracts explicitly listed in scope section. Permitable is a helper contract mentioned in findings.
- [8200] 1inch Aggregation Router v4 Audit_Consensys.pdf — no match: Scope section explicitly lists files in scope. Audit date is end date of engagement period (September 13-24, 2021).
- [8201] 1inch Aggregation Router v4 Audit_Igor Gulamov.pdf — no match: Scope section lists four Solidity files; contract names extracted from filenames.
- [8202] 1inch Aggregation Router v4 Audit_Pessimistic.pdf — no match: Scope explicitly lists four files: AggregationRouterV4.sol, UnoswapV3Router.sol, ClipperRouter.sol, LimitOrderProtocolRFQ.sol. Date found in header and footer.
- [8203] 1inch-cross-chain-swap-v1-AstraSec.pdf — no match: No reason recorded
- [8204] 1inch-cross-chain-swap-v1-Consensys.pdf — no match: No reason recorded
- [8205] 1inch-cross-chain-swap-v1-Decurity.pdf — no match: No reason recorded
- [8206] 1inch-cross-chain-swap-v1-Igor Gulamov.pdf — no match: No reason recorded
- [8207] 1inch-cross-chain-swap-v1-Open Zeppelin.pdf — no match: No reason recorded
- [8208] 1inch-cross-chain-swap-v1-Pessimistic.pdf — no match: Only one contract name explicitly mentioned in the report. The scope says 'entire repository excluding mock contracts' but no other contract names are given.
- [8209] 1inch-cross-chain-v2-Astrasec.pdf — no match: Extracted contract names from vulnerability targets and compiler version table. No explicit scope section found, but contracts are clearly in scope.
- [8210] 1inch-cross-chain-v2-Consensys.pdf — no match: No reason recorded
- [8211] 1inch-cross-chain-v2-Decurity.pdf — no match: Audit scope includes the cross-chain-swap repository; contracts explicitly listed in findings table and sections.
- [8212] 1inch-cross-chain-v2-Igor Gulamov.pdf — no match: No reason recorded
- [8213] 1inch-cross-chain-v2-Open Zeppelin.pdf — no match: No reason recorded
- [8214] 1inch-cross-chain-v2-Pessimistic.pdf — no match: Scope stated 'everything' but only two contract names explicitly mentioned in findings. No file paths provided.
- [8215] 1inch Crosschain Fee v1.1_Certora.pdf — no match: Scope defined as contracts/* (excluding mocks). Three contracts identified from findings: BaseEscrowFactory, EscrowDst, EscrowSrc.
- [8216] 1inch Crosschain Fee v1.1_Decurity.pdf — no match: Audit scope includes contracts in the 1inch cross-chain-swap repository. Only two contracts are explicitly mentioned in findings: EscrowSrc and EscrowDst. No other contract names are provided in the scope section.
- [8217] 1inch Crosschain Fee v1.1_Hexens.pdf — no match: All contracts listed in the Scope section of the report. Audit date is the final report date (21 August 2025).
- [8218] 1inch Crosschain Fee v1.1_Open Zeppelin.pdf — no match: No reason recorded
- [8219] 1inch Crosschain Fee v1.1_Sherlock.pdf — no match: No reason recorded
- [8220] Fee flow v1-AstraSec.pdf — no match: Contracts explicitly listed in source code section of the audit report.
- [8221] Fee flow v1-Bailsec.pdf — no match: The report covers four contracts: AmountGetterBase, AmountGetterWithFee, FeeTaker, and SimpleSettlement. The audit date is inferred from 'April ‘2025' in the header, using the last day of the month.
- [8222] Fee flow v1-ChainLight.pdf — no match: Scope table lists four contracts with file paths. Audit date from revision history (May 14, 2025).
- [8223] Fee flow v1-Decurity.pdf — no match: Audit period from 8/4/2025 to 10/4/2025, so end date is 2025-04-10.
- [8224] Fee flow v1-Open Zepplin.pdf — no match: Scope section explicitly lists four contracts: SimpleSettlement.sol, AmountGetterBase.sol, AmountGetterWithFee.sol, FeeTaker.sol. Audit date is May 16, 2025 from the header.
- [8225] Fee flow v1-Sherlock.pdf — no match: Extracted 4 contracts from scope section. Audit date range April 14-17, 2025, used end date.
- [8226] 1inch FixedRateSwap_Ackee Blockchain.pdf — no match: No reason recorded
- [8227] 1inch FixedRateSwap_Chainsulting.pdf — no match: No reason recorded
- [8228] 1inch FixedRateSwap_CoinFabrik.pdf — no match: No reason recorded
- [8229] 1inch FixedRateSwap_MixedBytes.pdf — no match: Only one contract FixedFeeSwap.sol is in scope.
- [8230] 1inch FixedRateSwap_Pessimistic.pdf — no match: No reason recorded
- [8231] 1inch Settlement v2.1_AstraSec.pdf — no match: All contracts listed in the Source Code section (1.2) are in scope. The audit date is from the cover page.
- [8232] 1inch Settlement v2.1_Decurity.pdf — no match: Audit scope includes two repositories; contracts explicitly mentioned in findings: FeeTaker and ExtensionLib.
- [8233] 1inch Settlement v2.1_Hexens.pdf — no match: Only one contract (FeeTaker) is explicitly mentioned in the scope and findings. The scope references two GitHub repos but no specific contract files other than FeeTaker.sol.
- [8234] 1inch Settlement v2.1_Open Zepplin.pdf — no match: All contracts listed in the Scope section of the audit report.
- [8235] 1inch Settlement v2.1_Pashov.pdf — no match: Scope section lists FeeTaker, Settlement, SimpleSettlement, and extensions. Audit date is March 29th 2024 from executive summary.
- [8236] 1inch Settlement v2.1_Pessemistic.pdf — no match: Initial scope included SettlementExtension.sol, FeeBankCharger.sol, interfaces/IFeeBankCharger.sol. After codebase update, scope expanded to Settlement.sol, SimpleSettlement.sol, and five extension files.
- [8237] 1inch Settlement v2_Decurity.pdf — no match: Only one contract in scope: SettlementExtension.sol. Audit period start date 11/30/2023 used as audit date since end date not explicitly given.
- [8238] 1inch Settlement v2_Hexens.pdf — no match: Only SettlementExtension.sol is explicitly in scope; other contracts (OrderMixin, OrderLib) are referenced but not listed as audited targets.
- [8239] 1inch Settlement v2_Open Zeppelin.pdf — no match: Two contracts in scope: SettlementExtension and WhitelistRegistry. Audit date from cover page.
- [8240] 1inch Settlement v2_Peckshield.pdf — no match: Only one contract in scope: SettlementExtension.sol. Audit date from cover page and latest audit report date.
- [8241] 1inch Settlement v2_Pessimistic.pdf — no match: Scope explicitly listed three contracts: SettlementExtension.sol, FeeBankCharger.sol, interfaces/IFeeBankCharger.sol. Audit date from cover page.
- [8242] 1inch_FusionMode_ABDK.pdf — no match: No reason recorded
- [8243] 1inch_FusionMode_ChainSecurity1.pdf — no match: No reason recorded
- [8244] 1inch_FusionMode_ChainSecurity2.pdf — no match: Scope section explicitly lists 6 files from the contracts folder. Audit date is December 19, 2022 from the cover page.
- [8245] 1inch_FusionMode_ChainSecurity3.pdf — no match: Scope explicitly lists interfaces/IERC20Pods.sol, interfaces/IPod.sol, ERC20Pods.sol, Pod.sol, ReentrancyGuard.sol, and notes that AddressArray and AddressSet libraries are reviewed in context of their use in ERC20Pods.
- [8246] 1inch_FusionMode_Decurity.pdf — no match: No reason recorded
- [8247] 1inch_FusionMode_Hexens.1.pdf — no match: No reason recorded
- [8248] 1inch_FusionMode_Hexens.2.pdf — no match: No reason recorded
- [8249] 1inch_FusionMode_OpenZepplin.1.pdf — no match: No reason recorded
- [8250] 1inch_FusionMode_OpenZepplin.2.pdf — no match: All contracts listed in the Scope section of the audit report.
- [8251] 1inch_FusionMode_Oxorio.pdf — no match: No reason recorded
- [8252] 1inch_FusionMode_Peckshield.pdf — no match: No reason recorded
- [8253] 1inch_FusionMode_Pessimistic.pdf — no match: No reason recorded
- [8254] 1inch_FusionMode_iosiro.pdf — no match: No reason recorded
- [8255] 1inch_TokenPlugins-Pashov.pdf — no match: Scope section lists Plugin and ERC20Plugins contracts. Audit date from filename and header.
- [8257] 1Inch Limit Order Protocol_ABDK.pdf — no match: No reason recorded
- [8258] 1Inch Limit Order Protocol_Chainsulting.pdf — no match: No reason recorded
- [8259] 1Inch Limit Order Protocol_CoinFabrik.pdf — no match: No reason recorded
- [8260] 1Inch Limit Order Protocol_IgorGulamov.pdf — no match: Scope section mentions 'Smart contracts from 1inch/limit-order-protocol' and specific files are referenced in warnings.
- [8261] 1Inch Limit Order Protocol_MixBytes.pdf — no match: No reason recorded
- [8262] 1inch Limit Order Portocol_Certik.pdf — no match: No reason recorded
- [8263] ABDK - 1inch Limit Order Protocol audit.pdf — no match: No reason recorded
- [8264] Chainsulting - 1inch Limit Order Protocol audit.pdf — no match: No reason recorded
- [8265] Coinfabrik - 1inch Limit Order Protocol audit.pdf — no match: No reason recorded
- [8266] Coinspect - 1inch Limit Order Protocol audit.pdf — no match: No reason recorded
- [8267] LimitSwap audit.pdf — no match: Scope explicitly mentions 'Flatten version of LimitSwap.sol'. All contracts defined in the report are part of that file.
- [8268] Pessimistic - 1inch Limit Order Protocol audit.pdf — no match: No reason recorded
- [8269] Certik - 1inch Liquidity Protocol audit.pdf — no match: No reason recorded
- [8270] Chainsulting - 1inch Liquidity Protocol Audit.pdf — no match: No reason recorded
- [8271] Coinfabrik - 1inch Liquidity Protocol Audit.pdf — no match: No reason recorded
- [8272] Cure53 - 1inch Liquidity Protocol audit.pdf — no match: No reason recorded
- [8273] Gulamov - 1inch Farming audit.pdf — no match: No reason recorded
- [8274] Gulamov - 1inch Liquidity Protocol audit.pdf — no match: No reason recorded
- [8275] MixBytes - 1inch Liquidity Protocol Report.pdf — no match: No reason recorded
- [8276] 1inch Multi-Farming Contracts V3_Chainsafe.pdf — no match: Report states 6 contracts in scope but only FarmAccounting is explicitly named. Other contracts not identified.
- [8277] 1inch Multi-Farming Contracts V3_CoinFabrik.pdf — no match: Audit report for 1inch Farming project, scope includes 9 contracts/interfaces listed in the Scope section. Date inferred from 'December 2022' in title and changelog dates.
- [8278] 1inch Multi-Farming Contracts V3_Decurity.pdf — no match: Scope section lists contracts in the repository https://github.com/1inch/farming. The audit period is 11/22/2022 to 12/02/2022, and the report status date is Dec 2, 2022.
- [8279] 1inch Multi-Farming Contracts V3_Gulamov.pdf — no match: Only UserAccounting.sol is explicitly referenced in the findings; scope mentions 'Solidity contracts from 1inch/farming' but no other contract names are given.
- [8280] 1inch Multi-Farming Contracts V3_Peckshield.pdf — no match: No explicit scope section; contracts extracted from findings targets. Audit date from cover page and version history.
- [8281] 1inch Multi-Farming Contracts V3_Pessimistic.pdf — no match: Scope includes whole repository; contracts explicitly mentioned in audit process and findings.
- [8282] 1inch Multi-Farming Contracts V3_Smartstate.pdf — no match: Scope explicitly lists four contracts: FarmingLib.sol, FarmingPod.sol, FarmingPool.sol, MultiFarmingPod.sol. Audit date found in header: Dec 09 2022.
- [8284] Solana Fusion - Decurity v1.pdf — no match: Scope section mentions 'programs/**/*.*' and findings reference specific contracts: fusion-swap and whitelist.
- [8285] Solana Fusion - Hexens v1.pdf — no match: Extracted two programs: fusion-swap and whitelist from the scope section and findings.
- [8286] Solana Fusion - Open Zepplin v1.pdf — no match: Two Solana programs in scope: fusion_swap and whitelist, with their respective source files listed.
- [8287] Solana Fusion - Ottersec v1.pdf — no match: Only one program 'solana-fusion' is in scope. No individual contract names extracted from file paths; the program is a single Solana program.
- [8288] Solana Fusion - Quantstamp v1.pdf — no match: The scope includes the fusion-swap program from the 1inch/solana-fusion repository. No individual contract names are provided; the scope is the entire program directory.
- [8289] Solana Fusion - Zenith v1.01.pdf — no match: The scope section lists the repository and files (programs/*) but does not name individual contracts. The only contract referenced in findings is fusion-swap (from file paths).
- [8290] Solana Fusion v1_Kudelski.pdf — no match: Scope section lists two programs: fusion-swap and whitelist, each with lib.rs, error.rs, and auction.rs (fusion-swap only). Audit date is 22 May 2025 from cover page and document properties.
- [8291] Solana Fusion v1_OffsideLabs.pdf — no match: Audit scope includes programs/fusion-swap/src/*.rs and programs/whitelist/src/*.rs. Audit concluded on April 16, 2025.
- [8292] Solana cross-chain v1.0-Hexens.pdf — no match: Extracted contracts from scope and findings sections. Audit date from final report date (11 July 2025).
- [8293] Solana cross-chain v1.0-Zenith.pdf — no match: Scope table lists three targets: cross-chain-escrow-dst, cross-chain-escrow-src, and whitelist. Findings reference specific files within these targets. Audit end date is June 26, 2025.
- [8294] Solana cross-chain v1.0_Decurity.pdf — no match: Scope includes programs/**/src/*.rs and common/src/*.rs. Contracts identified from file paths and findings.
- [8295] Solana cross-chain v1.0_OffsideLabs.pdf — no match: Audit scope includes three programs: cross-chain-escrow-src, cross-chain-escrow-dst, and whitelist. Audit concluded on July 10, 2025.
- [8296] Solana cross-chain v1.0_Sherlock.pdf — no match: Extracted contract names from scope file paths. Audit date from 'Date Audited: June 16 - June 20, 2025'.
- [8297] Solana cross-chain v1.1_Decurity.pdf — no match: Audit scope includes contracts in repository solana-crosschain-protocol. Two main contract files identified: cross-chain-escrow-src/src/lib.rs and cross-chain-escrow-dst/src/lib.rs. Audit period: 2025-07-18 to 2025-07-24.
- [8298] Solana cross-chain v1.1_Hexens.pdf — no match: The audit report covers two Solana programs: cross-chain-escrow-dst and cross-chain-escrow-src. The final report date is August 5, 2025.
- [8299] Solana cross-chain v1.1_OffsideLabs.pdf — no match: Audit scope includes three Solana programs: cross-chain-escrow-src, cross-chain-escrow-dst, and whitelist. The audit date is the conclusion date (August 29, 2025).
- [8300] Solana cross-chain v1.1_Sherlock.pdf — no match: Extracted 3 programs from scope section. Audit date is July 21-24, 2025, using end date.
- [8301] Solana cross-chain v1.1_Zenith.pdf — no match: Scope section mentions repository and commit hash but no specific contract or file names. The audit appears to be for a Solana cross-chain protocol, but no Solidity or Rust contract names are listed.
- [8302] Chainsulting - 1inch Vesting Contract audit.pdf — no match: No reason recorded
- [8303] Coinfabrik - 1inch Vesting Contract audit.pdf — no match: No reason recorded
- [8304] Gulamov - 1inch Vesting Contract audit.pdf — no match: No reason recorded
- [8305] Pessimistic - 1inch Vesting Contract audit.pdf — no match: No reason recorded
- [8416] MixBytes.pdf — no match: All files listed in FILES LISTING section are in scope. Audit date is December 23, 2020.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| 1inch Aggregation Router V5_ABDK Consulting.pdf | AggregationRouterV5 | unmatched — not counted | — | listed in scope | no |
| 1inch Aggregation Router V5_ABDK Consulting.pdf | Errors | unmatched — not counted | — | listed in scope | no |
| 1inch Aggregation Router V5_ABDK Consulting.pdf | IAggregationExecutor | unmatched — not counted | — | listed in scope | no |
| 1inch Aggregation Router V5_ABDK Consulting.pdf | IClipperExchangeInterface | unmatched — not counted | — | listed in scope | no |
| 1inch Aggregation Router V5_ABDK Consulting.pdf | IUniswapV3Pool | unmatched — not counted | — | listed in scope | no |
| 1inch Aggregation Router V5_ABDK Consulting.pdf | IUniswapV3SwapCallback | unmatched — not counted | — | listed in scope | no |
| 1inch Aggregation Router V5_ABDK Consulting.pdf | ClipperRouter | unmatched — not counted | — | listed in scope | no |
| 1inch Aggregation Router V5_ABDK Consulting.pdf | GenericRouter | unmatched — not counted | — | listed in scope | no |
| 1inch Aggregation Router V5_ABDK Consulting.pdf | UnoswapRouter | unmatched — not counted | — | listed in scope | no |
| 1inch Aggregation Router V5_ABDK Consulting.pdf | UnoswapV3Router | unmatched — not counted | — | listed in scope | no |
| 1inch Aggregation Router V5_ABDK Consulting.pdf | AmountCalculator | unmatched — not counted | — | listed in scope | no |
| 1inch Aggregation Router V5_ABDK Consulting.pdf | NonceManager | unmatched — not counted | — | listed in scope | no |
| 1inch Aggregation Router V5_ABDK Consulting.pdf | PredicateHelper | unmatched — not counted | — | listed in scope | no |
| 1inch Aggregation Router V5_ABDK Consulting.pdf | IOrderMixin | unmatched — not counted | — | listed in scope | no |
| 1inch Aggregation Router V5_ABDK Consulting.pdf | NotificationReceiver | unmatched — not counted | — | listed in scope | no |
| 1inch Aggregation Router V5_ABDK Consulting.pdf | ArgumentsDecoder | unmatched — not counted | — | listed in scope | no |
| 1inch Aggregation Router V5_ABDK Consulting.pdf | Callib | unmatched — not counted | — | listed in scope | no |
| 1inch Aggregation Router V5_ABDK Consulting.pdf | OrderLib | unmatched — not counted | — | listed in scope | no |
| 1inch Aggregation Router V5_ABDK Consulting.pdf | OrderMixin | unmatched — not counted | — | listed in scope | no |
| 1inch Aggregation Router V5_ABDK Consulting.pdf | OrderRFQLib | unmatched — not counted | — | listed in scope | no |
| 1inch Aggregation Router V5_ABDK Consulting.pdf | OrderRFQMixin | unmatched — not counted | — | listed in scope | no |
| 1inch Aggregation Router V5_ABDK Consulting.pdf | EthReceiver | unmatched — not counted | — | listed in scope | no |
| 1inch Aggregation Router V5_ABDK Consulting.pdf | IDaiLikePermit | unmatched — not counted | — | listed in scope | no |
| 1inch Aggregation Router V5_ABDK Consulting.pdf | IWETH | unmatched — not counted | — | listed in scope | no |
| 1inch Aggregation Router V5_ABDK Consulting.pdf | ECDSA | unmatched — not counted | — | listed in scope | no |
| 1inch Aggregation Router V5_ABDK Consulting.pdf | RevertReasonForwarder | unmatched — not counted | — | listed in scope | no |
| 1inch Aggregation Router V5_ABDK Consulting.pdf | SafeERC20 | unmatched — not counted | — | listed in scope | no |
| 1inch Aggregation Router V5_ABDK Consulting.pdf | StringUtil | unmatched — not counted | — | listed in scope | no |
| 1inch Aggregation Router V5_ABDK Consulting.pdf | UniERC20 | unmatched — not counted | — | listed in scope | no |
| 1inch Aggregation Router V5_CoinFabrik.pdf | AmountCalculator | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V5_CoinFabrik.pdf | ArgumentsDecoder | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V5_CoinFabrik.pdf | Callib | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V5_CoinFabrik.pdf | Errors | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V5_CoinFabrik.pdf | LimitOrderProtocol | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V5_CoinFabrik.pdf | NonceManager | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V5_CoinFabrik.pdf | OrderLib | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V5_CoinFabrik.pdf | OrderMixin | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V5_CoinFabrik.pdf | OrderRFQLib | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V5_CoinFabrik.pdf | OrderRFQMixin | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V5_CoinFabrik.pdf | PredicateHelper | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V5_Consensys.pdf | AggregationRouterV5 | unmatched — not counted | — | listed in scope table | no |
| 1inch Aggregation Router V5_Consensys.pdf | ClipperRouter | unmatched — not counted | — | listed in scope table | no |
| 1inch Aggregation Router V5_Consensys.pdf | GenericRouter | unmatched — not counted | — | listed in scope table | no |
| 1inch Aggregation Router V5_Consensys.pdf | UnoswapRouter | unmatched — not counted | — | listed in scope table | no |
| 1inch Aggregation Router V5_Consensys.pdf | UnoswapV3Router | unmatched — not counted | — | listed in scope table | no |
| 1inch Aggregation Router V5_Consensys.pdf | IAggregationExecutor | unmatched — not counted | — | listed in scope table | no |
| 1inch Aggregation Router V5_Consensys.pdf | IClipperExchangeInterface | unmatched — not counted | — | listed in scope table | no |
| 1inch Aggregation Router V5_Consensys.pdf | IUniswapV3Pool | unmatched — not counted | — | listed in scope table | no |
| 1inch Aggregation Router V5_Consensys.pdf | IUniswapV3SwapCallback | unmatched — not counted | — | listed in scope table | no |
| 1inch Aggregation Router V5_Consensys.pdf | Errors | unmatched — not counted | — | listed in scope table | no |
| 1inch Aggregation Router V5_Consensys.pdf | OrderLib | unmatched — not counted | — | listed in scope table | no |
| 1inch Aggregation Router V5_Consensys.pdf | OrderMixin | unmatched — not counted | — | listed in scope table | no |
| 1inch Aggregation Router V5_Consensys.pdf | OrderRFQLib | unmatched — not counted | — | listed in scope table | no |
| 1inch Aggregation Router V5_Consensys.pdf | OrderRFQMixin | unmatched — not counted | — | listed in scope table | no |
| 1inch Aggregation Router V5_Consensys.pdf | AmountCalculator | unmatched — not counted | — | listed in scope table | no |
| 1inch Aggregation Router V5_Consensys.pdf | NonceManager | unmatched — not counted | — | listed in scope table | no |
| 1inch Aggregation Router V5_Consensys.pdf | PredicateHelper | unmatched — not counted | — | listed in scope table | no |
| 1inch Aggregation Router V5_Consensys.pdf | IOrderMixin | unmatched — not counted | — | listed in scope table | no |
| 1inch Aggregation Router V5_Consensys.pdf | NotificationReceiver | unmatched — not counted | — | listed in scope table | no |
| 1inch Aggregation Router V5_Consensys.pdf | ArgumentsDecoder | unmatched — not counted | — | listed in scope table | no |
| 1inch Aggregation Router V5_Consensys.pdf | EthReceiver | unmatched — not counted | — | listed in scope table | no |
| 1inch Aggregation Router V5_Consensys.pdf | OnlyWethReceiver | unmatched — not counted | — | listed in scope table | no |
| 1inch Aggregation Router V5_Consensys.pdf | StringUtil | unmatched — not counted | — | listed in scope table | no |
| 1inch Aggregation Router V5_Consensys.pdf | SafeERC20 | unmatched — not counted | — | listed in scope table | no |
| 1inch Aggregation Router V5_Consensys.pdf | UniERC20 | unmatched — not counted | — | listed in scope table | no |
| 1inch Aggregation Router V5_Consensys.pdf | RevertReasonForwarder | unmatched — not counted | — | listed in scope table | no |
| 1inch Aggregation Router V5_Consensys.pdf | ECDSA | unmatched — not counted | — | listed in scope table | no |
| 1inch Aggregation Router V5_Consensys.pdf | IDaiLikePermit | unmatched — not counted | — | listed in scope table | no |
| 1inch Aggregation Router V5_Consensys.pdf | IWETH | unmatched — not counted | — | listed in scope table | no |
| 1inch Aggregation Router V5_IgorGulamov.pdf | AggregationRouterV5 | unmatched — not counted | — | listed in scope | no |
| 1inch Aggregation Router V5_IgorGulamov.pdf | ClipperRouter | unmatched — not counted | — | listed in scope | no |
| 1inch Aggregation Router V5_IgorGulamov.pdf | GenericRouter | unmatched — not counted | — | listed in scope | no |
| 1inch Aggregation Router V5_IgorGulamov.pdf | UnoswapRouter | unmatched — not counted | — | listed in scope | no |
| 1inch Aggregation Router V5_IgorGulamov.pdf | UnoswapV3Router | unmatched — not counted | — | listed in scope | no |
| 1inch Aggregation Router V5_IgorGulamov.pdf | IClipperExchangeInterface | unmatched — not counted | — | listed in scope | no |
| 1inch Aggregation Router V5_IgorGulamov.pdf | IAggregationExecutor | unmatched — not counted | — | listed in scope | no |
| 1inch Aggregation Router V5_IgorGulamov.pdf | IUniswapV3Pool | unmatched — not counted | — | listed in scope | no |
| 1inch Aggregation Router V5_IgorGulamov.pdf | IUniswapV3SwapCallback | unmatched — not counted | — | listed in scope | no |
| 1inch Aggregation Router V5_IgorGulamov.pdf | Errors | unmatched — not counted | — | listed in scope | no |
| 1inch Aggregation Router V5_IgorGulamov.pdf | OrderMixin | unmatched — not counted | — | listed in scope | no |
| 1inch Aggregation Router V5_IgorGulamov.pdf | OrderRFQMixin | unmatched — not counted | — | listed in scope | no |
| 1inch Aggregation Router V5_IgorGulamov.pdf | OrderLib | unmatched — not counted | — | listed in scope | no |
| 1inch Aggregation Router V5_IgorGulamov.pdf | OrderRFQLib | unmatched — not counted | — | listed in scope | no |
| 1inch Aggregation Router V5_IgorGulamov.pdf | AmountCalculator | unmatched — not counted | — | listed in scope | no |
| 1inch Aggregation Router V5_IgorGulamov.pdf | NonceManager | unmatched — not counted | — | listed in scope | no |
| 1inch Aggregation Router V5_IgorGulamov.pdf | PredicateHelper | unmatched — not counted | — | listed in scope | no |
| 1inch Aggregation Router V5_IgorGulamov.pdf | IOrderMixin | unmatched — not counted | — | listed in scope | no |
| 1inch Aggregation Router V5_IgorGulamov.pdf | NotificationReceiver | unmatched — not counted | — | listed in scope | no |
| 1inch Aggregation Router V5_IgorGulamov.pdf | ArgumentsDecoder | unmatched — not counted | — | listed in scope | no |
| 1inch Aggregation Router V5_IgorGulamov.pdf | Callib | unmatched — not counted | — | listed in scope | no |
| 1inch Aggregation Router V5_IgorGulamov.pdf | EthReceiver | unmatched — not counted | — | listed in scope | no |
| 1inch Aggregation Router V5_IgorGulamov.pdf | StringUtil | unmatched — not counted | — | listed in scope | no |
| 1inch Aggregation Router V5_IgorGulamov.pdf | UniERC20 | unmatched — not counted | — | listed in scope | no |
| 1inch Aggregation Router V5_IgorGulamov.pdf | SafeERC20 | unmatched — not counted | — | listed in scope | no |
| 1inch Aggregation Router V5_IgorGulamov.pdf | ECDSA | unmatched — not counted | — | listed in scope | no |
| 1inch Aggregation Router V5_IgorGulamov.pdf | RevertReasonForwarder | unmatched — not counted | — | listed in scope | no |
| 1inch Aggregation Router V5_IgorGulamov.pdf | IWETH | unmatched — not counted | — | listed in scope | no |
| 1inch Aggregation Router V5_IgorGulamov.pdf | IDaiLikePermit | unmatched — not counted | — | listed in scope | no |
| 1inch Aggregation Router V5_MixBytes.pdf | AggregationRouterV5 | unmatched — not counted | — | listed in scope table | no |
| 1inch Aggregation Router V5_MixBytes.pdf | ClipperRouter | unmatched — not counted | — | listed in scope table | no |
| 1inch Aggregation Router V5_MixBytes.pdf | GenericRouter | unmatched — not counted | — | listed in scope table | no |
| 1inch Aggregation Router V5_MixBytes.pdf | UnoswapRouter | unmatched — not counted | — | listed in scope table | no |
| 1inch Aggregation Router V5_MixBytes.pdf | UnoswapV3Router | unmatched — not counted | — | listed in scope table | no |
| 1inch Aggregation Router V5_MixBytes.pdf | IClipperExchangeInterface | unmatched — not counted | — | listed in scope table | no |
| 1inch Aggregation Router V5_MixBytes.pdf | IAggregationExecutor | unmatched — not counted | — | listed in scope table | no |
| 1inch Aggregation Router V5_MixBytes.pdf | IUniswapV3Pool | unmatched — not counted | — | listed in scope table | no |
| 1inch Aggregation Router V5_MixBytes.pdf | IUniswapV3SwapCallback | unmatched — not counted | — | listed in scope table | no |
| 1inch Aggregation Router V5_MixBytes.pdf | Errors | unmatched — not counted | — | listed in scope table | no |
| 1inch Aggregation Router V5_MixBytes.pdf | OrderMixin | unmatched — not counted | — | listed in scope table | no |
| 1inch Aggregation Router V5_MixBytes.pdf | OrderRFQMixin | unmatched — not counted | — | listed in scope table | no |
| 1inch Aggregation Router V5_MixBytes.pdf | OrderLib | unmatched — not counted | — | listed in scope table | no |
| 1inch Aggregation Router V5_MixBytes.pdf | OrderRFQLib | unmatched — not counted | — | listed in scope table | no |
| 1inch Aggregation Router V5_MixBytes.pdf | AmountCalculator | unmatched — not counted | — | listed in scope table | no |
| 1inch Aggregation Router V5_MixBytes.pdf | NonceManager | unmatched — not counted | — | listed in scope table | no |
| 1inch Aggregation Router V5_MixBytes.pdf | PredicateHelper | unmatched — not counted | — | listed in scope table | no |
| 1inch Aggregation Router V5_MixBytes.pdf | IOrderMixin | unmatched — not counted | — | listed in scope table | no |
| 1inch Aggregation Router V5_MixBytes.pdf | NotificationReceiver | unmatched — not counted | — | listed in scope table | no |
| 1inch Aggregation Router V5_MixBytes.pdf | ArgumentsDecoder | unmatched — not counted | — | listed in scope table | no |
| 1inch Aggregation Router V5_MixBytes.pdf | Callib | unmatched — not counted | — | listed in scope table | no |
| 1inch Aggregation Router V5_MixBytes.pdf | EthReceiver | unmatched — not counted | — | listed in scope table | no |
| 1inch Aggregation Router V5_MixBytes.pdf | StringUtil | unmatched — not counted | — | listed in scope table | no |
| 1inch Aggregation Router V5_MixBytes.pdf | UniERC20 | unmatched — not counted | — | listed in scope table | no |
| 1inch Aggregation Router V5_MixBytes.pdf | SafeERC20 | unmatched — not counted | — | listed in scope table | no |
| 1inch Aggregation Router V5_MixBytes.pdf | ECDSA | unmatched — not counted | — | listed in scope table | no |
| 1inch Aggregation Router V5_MixBytes.pdf | RevertReasonForwarder | unmatched — not counted | — | listed in scope table | no |
| 1inch Aggregation Router V5_MixBytes.pdf | IWETH | unmatched — not counted | — | listed in scope table | no |
| 1inch Aggregation Router V5_MixBytes.pdf | IDaiLikePermit | unmatched — not counted | — | listed in scope table | no |
| 1inch Aggregation Router V5_OpenZepplin.pdf | Errors | unmatched — not counted | — | listed in scope | no |
| 1inch Aggregation Router V5_OpenZepplin.pdf | IAggregationExecutor | unmatched — not counted | — | listed in scope | no |
| 1inch Aggregation Router V5_OpenZepplin.pdf | IClipperExchangeInterface | unmatched — not counted | — | listed in scope | no |
| 1inch Aggregation Router V5_OpenZepplin.pdf | IUniswapV3Pool | unmatched — not counted | — | listed in scope | no |
| 1inch Aggregation Router V5_OpenZepplin.pdf | IUniswapV3SwapCallback | unmatched — not counted | — | listed in scope | no |
| 1inch Aggregation Router V5_OpenZepplin.pdf | ClipperRouter | unmatched — not counted | — | listed in scope | no |
| 1inch Aggregation Router V5_OpenZepplin.pdf | GenericRouter | unmatched — not counted | — | listed in scope | no |
| 1inch Aggregation Router V5_OpenZepplin.pdf | UnoswapRouter | unmatched — not counted | — | listed in scope | no |
| 1inch Aggregation Router V5_OpenZepplin.pdf | UnoswapV3Router | unmatched — not counted | — | listed in scope | no |
| 1inch Aggregation Router V5_OpenZepplin.pdf | AggregationRouterV5 | unmatched — not counted | — | listed in scope | no |
| 1inch Aggregation Router V5_OpenZepplin.pdf | AmountCalculator | unmatched — not counted | — | listed in scope | no |
| 1inch Aggregation Router V5_OpenZepplin.pdf | NonceManager | unmatched — not counted | — | listed in scope | no |
| 1inch Aggregation Router V5_OpenZepplin.pdf | PredicateHelper | unmatched — not counted | — | listed in scope | no |
| 1inch Aggregation Router V5_OpenZepplin.pdf | IOrderMixin | unmatched — not counted | — | listed in scope | no |
| 1inch Aggregation Router V5_OpenZepplin.pdf | NotificationReceiver | unmatched — not counted | — | listed in scope | no |
| 1inch Aggregation Router V5_OpenZepplin.pdf | ArgumentsDecoder | unmatched — not counted | — | listed in scope | no |
| 1inch Aggregation Router V5_OpenZepplin.pdf | OrderLib | unmatched — not counted | — | listed in scope | no |
| 1inch Aggregation Router V5_OpenZepplin.pdf | OrderMixin | unmatched — not counted | — | listed in scope | no |
| 1inch Aggregation Router V5_OpenZepplin.pdf | OrderRFQLib | unmatched — not counted | — | listed in scope | no |
| 1inch Aggregation Router V5_OpenZepplin.pdf | OrderRFQMixin | unmatched — not counted | — | listed in scope | no |
| 1inch Aggregation Router V5_PeckShield.pdf | LimitedAmountExtension | unmatched — not counted | — | Target in finding PVE-001 | no |
| 1inch Aggregation Router V5_PeckShield.pdf | LeftoversExtension | unmatched — not counted | — | Target in finding PVE-002 | no |
| 1inch Aggregation Router V5_PeckShield.pdf | UniswapV2Extension | unmatched — not counted | — | Target in finding PVE-003 | no |
| 1inch Aggregation Router V5_PeckShield.pdf | AggregationRouterV5 | unmatched — not counted | — | Target in finding PVE-004 and mentioned as main contract | no |
| 1inch Aggregation Router V5_Pessimistic.pdf | AggregationRouterV5 | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V5_Pessimistic.pdf | ClipperRouter | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V5_Pessimistic.pdf | ECDSA | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V5_Pessimistic.pdf | GenericRouter | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V5_Pessimistic.pdf | LimitOrderProtocol | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V5_Pessimistic.pdf | NonceManager | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V5_Pessimistic.pdf | OrderLib | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V5_Pessimistic.pdf | OrderMixin | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V5_Pessimistic.pdf | OrderRFQLib | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V5_Pessimistic.pdf | OrderRFQMixin | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V5_Pessimistic.pdf | RevertReasonForwarder | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V5_Pessimistic.pdf | SafeERC20 | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V5_Pessimistic.pdf | UniERC20 | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V5_Pessimistic.pdf | UnoswapRouter | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V5_Pessimistic.pdf | UnoswapV3Router | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V5_Statemind.pdf | AggregationRouterV5 | unmatched — not counted | — | listed in scope | no |
| 1inch Aggregation Router V5_Statemind.pdf | ClipperRouter | unmatched — not counted | — | listed in scope | no |
| 1inch Aggregation Router V5_Statemind.pdf | GenericRouter | unmatched — not counted | — | listed in scope | no |
| 1inch Aggregation Router V5_Statemind.pdf | UnoswapRouter | unmatched — not counted | — | listed in scope | no |
| 1inch Aggregation Router V5_Statemind.pdf | UnoswapV3Router | unmatched — not counted | — | listed in scope | no |
| 1inch Aggregation Router V5_Statemind.pdf | Errors | unmatched — not counted | — | listed in scope | no |
| 1inch Aggregation Router V5_Statemind.pdf | OrderMixin | unmatched — not counted | — | listed in scope | no |
| 1inch Aggregation Router V5_Statemind.pdf | OrderRFQMixin | unmatched — not counted | — | listed in scope | no |
| 1inch Aggregation Router V5_Statemind.pdf | OrderLib | unmatched — not counted | — | listed in scope | no |
| 1inch Aggregation Router V5_Statemind.pdf | OrderRFQLib | unmatched — not counted | — | listed in scope | no |
| 1inch Aggregation Router V5_Statemind.pdf | AmountCalculator | unmatched — not counted | — | listed in scope | no |
| 1inch Aggregation Router V5_Statemind.pdf | NonceManager | unmatched — not counted | — | listed in scope | no |
| 1inch Aggregation Router V5_Statemind.pdf | PredicateHelper | unmatched — not counted | — | listed in scope | no |
| 1inch Aggregation Router V5_Statemind.pdf | ArgumentsDecoder | unmatched — not counted | — | listed in scope | no |
| 1inch Aggregation Router V5_Statemind.pdf | Callib | unmatched — not counted | — | listed in scope | no |
| 1inch Aggregation Router V5_Statemind.pdf | EthReceiver | unmatched — not counted | — | listed in scope | no |
| 1inch Aggregation Router V5_Statemind.pdf | StringUtil | unmatched — not counted | — | listed in scope | no |
| 1inch Aggregation Router V5_Statemind.pdf | UniERC20 | unmatched — not counted | — | listed in scope | no |
| 1inch Aggregation Router V5_Statemind.pdf | SafeERC20 | unmatched — not counted | — | listed in scope | no |
| 1inch Aggregation Router V5_Statemind.pdf | ECDSA | unmatched — not counted | — | listed in scope | no |
| 1inch Aggregation Router V5_Statemind.pdf | RevertReasonForwarder | unmatched — not counted | — | listed in scope | no |
| 1inch Aggregation Router V5_Zokyo.pdf | AggregationRouterV5 | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V5_Zokyo.pdf | AmountCalculator | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V5_Zokyo.pdf | ArgumentsDecoder | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V5_Zokyo.pdf | Callib | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V5_Zokyo.pdf | ClipperRouter | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V5_Zokyo.pdf | ECDSA | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V5_Zokyo.pdf | Errors | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V5_Zokyo.pdf | EthReceiver | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V5_Zokyo.pdf | GenericRouter | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V5_Zokyo.pdf | LimitOrderProtocol | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V5_Zokyo.pdf | NonceManager | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V5_Zokyo.pdf | OrderLib | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V5_Zokyo.pdf | OrderMixin | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V5_Zokyo.pdf | OrderRFQLib | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V5_Zokyo.pdf | OrderRFQMixin | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V5_Zokyo.pdf | PredicateHelper | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V5_Zokyo.pdf | RevertReasonForwarder | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V5_Zokyo.pdf | SafeERC20 | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V5_Zokyo.pdf | StringUtil | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V5_Zokyo.pdf | UniERC20 | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V5_Zokyo.pdf | UnoswapRouter | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V5_Zokyo.pdf | UnoswapV3Router | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V6.1_Decurity.pdf | OrderLib | unmatched — not counted | — | listed in findings table | no |
| 1inch Aggregation Router V6.1_Decurity.pdf | UnoswapRouter | unmatched — not counted | — | listed in findings table | no |
| 1inch Aggregation Router V6.1_Decurity.pdf | ChainlinkCalculator | unmatched — not counted | — | listed in findings table | no |
| 1inch Aggregation Router V6.1_Decurity.pdf | OrderMixin | unmatched — not counted | — | listed in findings table | no |
| 1inch Aggregation Router V6.1_Decurity.pdf | ETHOrders | unmatched — not counted | — | listed in findings table | no |
| 1inch Aggregation Router V6.1_Hexens.pdf | AggregationRouterV6 | own contract | AggregationRouterV6 (selected) `0x111111125421ca6dc452d289314280a0f8842a65` — deployed 2024-02-12 18:44:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 1inch Aggregation Router V6.1_Hexens.pdf | ClipperRouter | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V6.1_Hexens.pdf | GenericRouter | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V6.1_Hexens.pdf | OrderMixin | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V6.1_Hexens.pdf | TakerTraitsLib | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V6.1_Hexens.pdf | UnoswapRouter | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V6.1_OpenZeppelin.pdf | AggregationRouterV6 | own contract | AggregationRouterV6 (selected) `0x111111125421ca6dc452d289314280a0f8842a65` — deployed 2024-02-12 18:44:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 1inch Aggregation Router V6.1_OpenZeppelin.pdf | ClipperRouter | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V6.1_OpenZeppelin.pdf | GenericRouter | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V6.1_OpenZeppelin.pdf | UnoswapRouter | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V6.1_PeckShield.pdf | UnoswapRouter | unmatched — not counted | — | Target in findings PVE-001 and PVE-002 | no |
| 1inch Aggregation Router V6.1_PeckShield.pdf | OrderMixin | unmatched — not counted | — | Target in finding PVE-003 | no |
| 1inch Aggregation Router V6.2_Decurity.pdf | AggregationExecutorBase | unmatched — not counted | — | mentioned in findings section as the contract containing the SELFDESTRUCT issue | no |
| 1inch Aggregation Router V6.2_Pessimistic.pdf | AggregationRouterV6 | own contract | AggregationRouterV6 (selected) `0x111111125421ca6dc452d289314280a0f8842a65` — deployed 2024-02-12 18:44:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 1inch Aggregation Router V6.2_Pessimistic.pdf | AmountCalculator | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V6.2_Pessimistic.pdf | BitInvalidatorLib | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V6.2_Pessimistic.pdf | ClipperRouter | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V6.2_Pessimistic.pdf | ConstraintsLib | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V6.2_Pessimistic.pdf | Errors | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V6.2_Pessimistic.pdf | ExtensionLib | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V6.2_Pessimistic.pdf | GenericRouter | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V6.2_Pessimistic.pdf | LimitsLib | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V6.2_Pessimistic.pdf | OffsetsLib | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V6.2_Pessimistic.pdf | OrderLib | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V6.2_Pessimistic.pdf | OrderMixin | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V6.2_Pessimistic.pdf | PredicateHelper | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V6.2_Pessimistic.pdf | ProtocolLib | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V6.2_Pessimistic.pdf | RemainingInvalidatorLib | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V6.2_Pessimistic.pdf | RouterErrors | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V6.2_Pessimistic.pdf | SafeERC20 | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V6.2_Pessimistic.pdf | SeriesEpochManager | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V6.2_Pessimistic.pdf | UnoswapRouter | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V6_Consensys.pdf | AggregationRouterV6 | own contract | AggregationRouterV6 (selected) `0x111111125421ca6dc452d289314280a0f8842a65` — deployed 2024-02-12 18:44:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 1inch Aggregation Router V6_Consensys.pdf | AmountCalculator | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V6_Consensys.pdf | BitInvalidatorLib | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V6_Consensys.pdf | ClipperRouter | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V6_Consensys.pdf | Errors | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V6_Consensys.pdf | ExtensionLib | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V6_Consensys.pdf | GenericRouter | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V6_Consensys.pdf | LimitOrderProtocol | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V6_Consensys.pdf | MakerTraitsLib | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V6_Consensys.pdf | OffsetsLib | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V6_Consensys.pdf | OrderLib | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V6_Consensys.pdf | OrderMixin | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V6_Consensys.pdf | PredicateHelper | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V6_Consensys.pdf | ProtocolLib | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V6_Consensys.pdf | RemainingInvalidatorLib | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V6_Consensys.pdf | RouterErrors | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V6_Consensys.pdf | SafeERC20 | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V6_Consensys.pdf | SeriesEpochManager | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V6_Consensys.pdf | TakerTraitsLib | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V6_Consensys.pdf | UnoswapRouter | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V6_Decurity.pdf | AggregationRouterV6 | own contract | AggregationRouterV6 (selected) `0x111111125421ca6dc452d289314280a0f8842a65` — deployed 2024-02-12 18:44:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 1inch Aggregation Router V6_Decurity.pdf | AmountCalculator | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V6_Decurity.pdf | BitInvalidatorLib | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V6_Decurity.pdf | ClipperRouter | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V6_Decurity.pdf | ConstraintsLib | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V6_Decurity.pdf | Errors | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V6_Decurity.pdf | ExtensionLib | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V6_Decurity.pdf | GenericRouter | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V6_Decurity.pdf | LimitsLib | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V6_Decurity.pdf | OffsetsLib | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V6_Decurity.pdf | OrderLib | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V6_Decurity.pdf | OrderMixin | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V6_Decurity.pdf | PredicateHelper | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V6_Decurity.pdf | ProtocolLib | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V6_Decurity.pdf | RemainingInvalidatorLib | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V6_Decurity.pdf | RouterErrors | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V6_Decurity.pdf | SafeERC20 | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V6_Decurity.pdf | SeriesEpochManager | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V6_Decurity.pdf | UnoswapRouter | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V6_Hexens.pdf | ECDSA | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V6_Hexens.pdf | ERC20Pods | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V6_Hexens.pdf | ETHOrders | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V6_Hexens.pdf | IOrderMixin | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V6_Hexens.pdf | LimitOrderProtocol | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V6_Hexens.pdf | MakerTraitsLib | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V6_Hexens.pdf | OnlyWethReceiver | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V6_Hexens.pdf | OrderLib | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V6_Hexens.pdf | OrderMixin | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V6_Hexens.pdf | SafeERC20 | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V6_Hexens.pdf | St1inch | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V6_Hexens.pdf | UnoswapRouter | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V6_Hexens.pdf | WethUnwrapper | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V6_OpenZeppelin.pdf | AggregationRouterV6 | own contract | AggregationRouterV6 (selected) `0x111111125421ca6dc452d289314280a0f8842a65` — deployed 2024-02-12 18:44:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 1inch Aggregation Router V6_OpenZeppelin.pdf | ClipperRouter | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V6_OpenZeppelin.pdf | GenericRouter | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V6_OpenZeppelin.pdf | ProtocolLib | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V6_OpenZeppelin.pdf | RouterErrors | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V6_OpenZeppelin.pdf | UnoswapRouter | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V6_PeckShield.pdf | UnoswapRouter | unmatched — not counted | — | Target in finding PVE-002: UnoswapRouter | no |
| 1inch Aggregation Router V6_Pessimistic.pdf | AggregationRouterV6 | own contract | AggregationRouterV6 (selected) `0x111111125421ca6dc452d289314280a0f8842a65` — deployed 2024-02-12 18:44:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 1inch Aggregation Router V6_Pessimistic.pdf | AmountCalculator | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V6_Pessimistic.pdf | BitInvalidatorLib | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V6_Pessimistic.pdf | ClipperRouter | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V6_Pessimistic.pdf | ConstraintsLib | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V6_Pessimistic.pdf | Errors | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V6_Pessimistic.pdf | ExtensionLib | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V6_Pessimistic.pdf | GenericRouter | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V6_Pessimistic.pdf | LimitsLib | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V6_Pessimistic.pdf | OffsetsLib | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V6_Pessimistic.pdf | OrderLib | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V6_Pessimistic.pdf | OrderMixin | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V6_Pessimistic.pdf | PredicateHelper | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V6_Pessimistic.pdf | ProtocolLib | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V6_Pessimistic.pdf | RemainingInvalidatorLib | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V6_Pessimistic.pdf | RouterErrors | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V6_Pessimistic.pdf | SafeERC20 | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V6_Pessimistic.pdf | SeriesEpochManager | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V6_Pessimistic.pdf | UnoswapRouter | unmatched — not counted | — | — | no |
| 1inch Limit Order Protocol v4.1_OpenZeppelin.pdf | ExtensionLib | unmatched — not counted | — | — | no |
| 1inch Limit Order Protocol v4.1_OpenZeppelin.pdf | LimitOrderProtocol | unmatched — not counted | — | — | no |
| 1inch Limit Order Protocol v4.1_OpenZeppelin.pdf | MakerTraitsLib | unmatched — not counted | — | — | no |
| 1inch Limit Order Protocol v4.1_OpenZeppelin.pdf | OrderLib | unmatched — not counted | — | — | no |
| 1inch Limit Order Protocol v4.1_OpenZeppelin.pdf | OrderMixin | unmatched — not counted | — | — | no |
| 1inch Limit Order Protocol v4.1_OpenZeppelin.pdf | RemainingInvalidatorLib | unmatched — not counted | — | — | no |
| 1inch Limit Order Protocol v4.1_OpenZeppelin.pdf | TakerTraitsLib | unmatched — not counted | — | — | no |
| 1inch Limit Order Protocol v4_OpenZeppelin.pdf | AmountCalculator | unmatched — not counted | — | — | no |
| 1inch Limit Order Protocol v4_OpenZeppelin.pdf | BitInvalidatorLib | unmatched — not counted | — | — | no |
| 1inch Limit Order Protocol v4_OpenZeppelin.pdf | Errors | unmatched — not counted | — | — | no |
| 1inch Limit Order Protocol v4_OpenZeppelin.pdf | ExtensionLib | unmatched — not counted | — | — | no |
| 1inch Limit Order Protocol v4_OpenZeppelin.pdf | LimitOrderProtocol | unmatched — not counted | — | — | no |
| 1inch Limit Order Protocol v4_OpenZeppelin.pdf | MakerTraitsLib | unmatched — not counted | — | — | no |
| 1inch Limit Order Protocol v4_OpenZeppelin.pdf | OffsetsLib | unmatched — not counted | — | — | no |
| 1inch Limit Order Protocol v4_OpenZeppelin.pdf | OrderIdInvalidator | unmatched — not counted | — | — | no |
| 1inch Limit Order Protocol v4_OpenZeppelin.pdf | OrderLib | unmatched — not counted | — | — | no |
| 1inch Limit Order Protocol v4_OpenZeppelin.pdf | OrderMixin | unmatched — not counted | — | — | no |
| 1inch Limit Order Protocol v4_OpenZeppelin.pdf | PredicateHelper | unmatched — not counted | — | — | no |
| 1inch Limit Order Protocol v4_OpenZeppelin.pdf | RemainingInvalidatorLib | unmatched — not counted | — | — | no |
| 1inch Limit Order Protocol v4_OpenZeppelin.pdf | SeriesEpochManager | unmatched — not counted | — | — | no |
| 1inch Limit Order Protocol v4_OpenZeppelin.pdf | TakerTraitsLib | unmatched — not counted | — | — | no |
| Certik - 1inch v2 Audit Report.pdf | GasDiscountCalculator | unmatched — not counted | — | listed in scope table | no |
| Certik - 1inch v2 Audit Report.pdf | OneInchExchange | unmatched — not counted | — | listed in scope table | no |
| Certik - 1inch v2 Audit Report.pdf | OneInchFlags | unmatched — not counted | — | listed in scope table | no |
| Certik - 1inch v2 Audit Report.pdf | RevertReasonParser | unmatched — not counted | — | listed in scope table | no |
| Certik - 1inch v2 Audit Report.pdf | UniERC20 | unmatched — not counted | — | listed in scope table | no |
| Chainsulting - 1inch v2 Audit Report.pdf | OneInchExchange | unmatched — not counted | — | listed in scope section | no |
| Chainsulting - 1inch v2 Audit Report.pdf | OneInchFlags | unmatched — not counted | — | listed in scope section | no |
| Chainsulting - 1inch v2 Audit Report.pdf | RevertReasonParser | unmatched — not counted | — | listed in scope section | no |
| Chainsulting - 1inch v2 Audit Report.pdf | UniERC20 | unmatched — not counted | — | listed in scope section | no |
| Chainsulting - 1inch v2 Audit Report.pdf | IOneInchCaller | unmatched — not counted | — | listed as indirect import in scope | no |
| Chainsulting - 1inch v2 Audit Report.pdf | IERC20Permit | unmatched — not counted | — | listed as indirect import in scope | no |
| Chainsulting - 1inch v2 Audit Report.pdf | IChi | unmatched — not counted | — | listed as indirect import in scope | no |
| Coinfabrik - 1inch v2 Audit Report.pdf | OneInchExchange | unmatched — not counted | — | listed in scope table | no |
| Coinfabrik - 1inch v2 Audit Report.pdf | GasDiscountCalculator | unmatched — not counted | — | listed in scope table | no |
| Coinfabrik - 1inch v2 Audit Report.pdf | OneInchFlags | unmatched — not counted | — | listed in scope table | no |
| Coinfabrik - 1inch v2 Audit Report.pdf | RevertReasonParser | unmatched — not counted | — | listed in scope table | no |
| Coinfabrik - 1inch v2 Audit Report.pdf | UniERC20 | unmatched — not counted | — | listed in scope table | no |
| Hacken - 1inch v2 Audit Report.pdf | OneInchExchange | unmatched — not counted | — | listed in scope | no |
| Hacken - 1inch v2 Audit Report.pdf | OneInchFlags | unmatched — not counted | — | listed in scope | no |
| Hacken - 1inch v2 Audit Report.pdf | RevertReasonParser | unmatched — not counted | — | listed in scope | no |
| Hacken - 1inch v2 Audit Report.pdf | UniERC20 | unmatched — not counted | — | listed in scope | no |
| Hacken - 1inch v2 Audit Report.pdf | OneInchCaller | unmatched — not counted | — | listed in scope | no |
| Hacken - 1inch v2 Audit Report.pdf | GasDiscountCalculator | unmatched — not counted | — | listed in scope | no |
| Haechi - 1inch v2 Audit Report.pdf | OneInchExchange | unmatched — not counted | — | listed in scope | no |
| Haechi - 1inch v2 Audit Report.pdf | RevertReasonParser | unmatched — not counted | — | listed in scope | no |
| Haechi - 1inch v2 Audit Report.pdf | UniERC20 | unmatched — not counted | — | listed in scope | no |
| Haechi - 1inch v2 Audit Report.pdf | GasDiscountCalculator | unmatched — not counted | — | listed in scope | no |
| Haechi - 1inch v2 Audit Report.pdf | OneInchFlags | unmatched — not counted | — | listed in scope | no |
| MixBytes - 1inch v2 Audit Report.pdf | OneInchExchange | unmatched — not counted | — | listed in scope | no |
| MixBytes - 1inch v2 Audit Report.pdf | OneInchFlags | unmatched — not counted | — | listed in scope | no |
| MixBytes - 1inch v2 Audit Report.pdf | RevertReasonParser | unmatched — not counted | — | listed in scope | no |
| MixBytes - 1inch v2 Audit Report.pdf | UniERC20 | unmatched — not counted | — | listed in scope | no |
| MixBytes - 1inch v2 Audit Report.pdf | GasDiscountCalculator | unmatched — not counted | — | listed in scope | no |
| Scott Bigelow - 1inch v2 Audit Report.pdf | OneInchExchange | unmatched — not counted | — | listed in scope and deployed address provided | no |
| Scott Bigelow - 1inch v2 Audit Report.pdf | OneInchCaller | unmatched — not counted | — | listed in scope | no |
| Scott Bigelow - 1inch v2 Audit Report.pdf | OneInchFlags | unmatched — not counted | — | listed in scope | no |
| Scott Bigelow - 1inch v2 Audit Report.pdf | ChiSpender | unmatched — not counted | — | mentioned in findings as audited contract | no |
| Scott Bigelow - 1inch v2 Audit Report.pdf | BytesPatcher | unmatched — not counted | — | mentioned in findings as audited contract | no |
| Scott Bigelow - 1inch v2 Audit Report.pdf | PatcherExtension | unmatched — not counted | — | mentioned in findings as audited contract | no |
| Slowmist - 1inch v2 Audit Report.pdf | OneInchExchange | unmatched — not counted | — | listed in scope | no |
| Slowmist - 1inch v2 Audit Report.pdf | RevertReasonParser | unmatched — not counted | — | listed in scope | no |
| Slowmist - 1inch v2 Audit Report.pdf | UniERC20 | unmatched — not counted | — | listed in scope | no |
| Certik - 1inch v3 Audit Report.pdf | OneInchExchange | unmatched — not counted | — | listed in scope table | no |
| Certik - 1inch v3 Audit Report.pdf | OneInchUnoswap | unmatched — not counted | — | listed in scope table | no |
| Certik - 1inch v3 Audit Report.pdf | Permitable | unmatched — not counted | — | listed in scope table | no |
| Certik - 1inch v3 Audit Report.pdf | RevertReasonParser | unmatched — not counted | — | listed in scope table | no |
| Certik - 1inch v3 Audit Report.pdf | UniERC20 | unmatched — not counted | — | listed in scope table | no |
| Gulamov - 1inch v3 Audit Report.pdf | OneInchExchange | unmatched — not counted | — | listed in scope | no |
| Gulamov - 1inch v3 Audit Report.pdf | OneInchUnoswap | unmatched — not counted | — | listed in scope | no |
| Gulamov - 1inch v3 Audit Report.pdf | Permitable | unmatched — not counted | — | listed in scope | no |
| Gulamov - 1inch v3 Audit Report.pdf | UniERC20 | unmatched — not counted | — | listed in scope | no |
| Gulamov - 1inch v3 Audit Report.pdf | RevertReasonParser | unmatched — not counted | — | listed in scope | no |
| MixBytes - 1inch v3 Audit Report.pdf | OneInchExchange | unmatched — not counted | — | listed in FILES LISTING | no |
| MixBytes - 1inch v3 Audit Report.pdf | OneInchUnoswap | unmatched — not counted | — | listed in FILES LISTING | no |
| MixBytes - 1inch v3 Audit Report.pdf | Permitable | unmatched — not counted | — | listed in FILES LISTING | no |
| MixBytes - 1inch v3 Audit Report.pdf | UniERC20 | unmatched — not counted | — | listed in FILES LISTING | no |
| MixBytes - 1inch v3 Audit Report.pdf | RevertReasonParser | unmatched — not counted | — | listed in FILES LISTING | no |
| 1Inch Aggregation Router v4 Audit_MixBites.pdf | AggregationRouterV4 | unmatched — not counted | — | listed in scope table | no |
| 1Inch Aggregation Router v4 Audit_MixBites.pdf | ClipperRouter | unmatched — not counted | — | listed in scope table | no |
| 1Inch Aggregation Router v4 Audit_MixBites.pdf | LimitOrderProtocolRFQ | unmatched — not counted | — | listed in scope table | no |
| 1Inch Aggregation Router v4 Audit_MixBites.pdf | UnoswapRouter | unmatched — not counted | — | listed in scope table | no |
| 1Inch Aggregation Router v4 Audit_MixBites.pdf | UnoswapV3Router | unmatched — not counted | — | listed in scope table | no |
| 1Inch Aggregation Router v4 Audit_MixBites.pdf | ArgumentsDecoder | unmatched — not counted | — | listed in scope table | no |
| 1Inch Aggregation Router v4 Audit_MixBites.pdf | EthReceiver | unmatched — not counted | — | listed in scope table | no |
| 1Inch Aggregation Router v4 Audit_MixBites.pdf | Permitable | unmatched — not counted | — | listed in scope table | no |
| 1Inch Aggregation Router v4 Audit_MixBites.pdf | UniERC20 | unmatched — not counted | — | listed in scope table | no |
| 1Inch Aggregation Router v4 Audit_MixBites.pdf | IAggregationExecutorExtended | unmatched — not counted | — | listed in scope table | no |
| 1Inch Aggregation Router v4 Audit_MixBites.pdf | IChi | unmatched — not counted | — | listed in scope table | no |
| 1Inch Aggregation Router v4 Audit_MixBites.pdf | IClipperExchangeInterface | unmatched — not counted | — | listed in scope table | no |
| 1Inch Aggregation Router v4 Audit_MixBites.pdf | IDaiLikePermit | unmatched — not counted | — | listed in scope table | no |
| 1Inch Aggregation Router v4 Audit_MixBites.pdf | IERC1271 | unmatched — not counted | — | listed in scope table | no |
| 1Inch Aggregation Router v4 Audit_MixBites.pdf | IUniswapV3Pool | unmatched — not counted | — | listed in scope table | no |
| 1Inch Aggregation Router v4 Audit_MixBites.pdf | IUniswapV3SwapCallback | unmatched — not counted | — | listed in scope table | no |
| 1Inch Aggregation Router v4 Audit_MixBites.pdf | IWETH | unmatched — not counted | — | listed in scope table | no |
| 1inch Aggregation Router v4 Audit_ABDK.pdf | UnoswapV3Router | unmatched — not counted | — | listed in scope | no |
| 1inch Aggregation Router v4 Audit_ABDK.pdf | AggregationRouterV4 | unmatched — not counted | — | listed in scope | no |
| 1inch Aggregation Router v4 Audit_ABDK.pdf | XLimitOrderProtocolRFQ | unmatched — not counted | — | listed in scope | no |
| 1inch Aggregation Router v4 Audit_ABDK.pdf | ClipperRouter | unmatched — not counted | — | listed in scope | no |
| 1inch Aggregation Router v4 Audit_ABDK.pdf | ArgumentsDecoder | unmatched — not counted | — | listed in scope | no |
| 1inch Aggregation Router v4 Audit_ABDK.pdf | Permitable | unmatched — not counted | — | listed in scope | no |
| 1inch Aggregation Router v4 Audit_ABDK.pdf | RevertReasonParser | unmatched — not counted | — | listed in scope | no |
| 1inch Aggregation Router v4 Audit_Chainsulting.pdf | AggregationRouterV4 | unmatched — not counted | — | listed in scope table | no |
| 1inch Aggregation Router v4 Audit_Chainsulting.pdf | ClipperRouter | unmatched — not counted | — | listed in scope table | no |
| 1inch Aggregation Router v4 Audit_Chainsulting.pdf | LimitOrderProtocolRFQ | unmatched — not counted | — | listed in scope table | no |
| 1inch Aggregation Router v4 Audit_Chainsulting.pdf | UnoswapV3Router | unmatched — not counted | — | listed in scope table | no |
| 1inch Aggregation Router v4 Audit_Coinfabrik.pdf | AggregationRouterV4 | unmatched — not counted | — | listed in scope | no |
| 1inch Aggregation Router v4 Audit_Coinfabrik.pdf | UnoswapV3Router | unmatched — not counted | — | listed in scope | no |
| 1inch Aggregation Router v4 Audit_Coinfabrik.pdf | ClipperRouter | unmatched — not counted | — | listed in scope | no |
| 1inch Aggregation Router v4 Audit_Coinfabrik.pdf | LimitOrderProtocolRFQ | unmatched — not counted | — | listed in scope | no |
| 1inch Aggregation Router v4 Audit_Coinfabrik.pdf | Permitable | unmatched — not counted | — | mentioned in findings as an audited contract | no |
| 1inch Aggregation Router v4 Audit_Consensys.pdf | AggregationRouterV4 | unmatched — not counted | — | listed in scope table | no |
| 1inch Aggregation Router v4 Audit_Consensys.pdf | ClipperRouter | unmatched — not counted | — | listed in scope table | no |
| 1inch Aggregation Router v4 Audit_Consensys.pdf | ArgumentsDecoder | unmatched — not counted | — | listed in scope table | no |
| 1inch Aggregation Router v4 Audit_Consensys.pdf | EthReceiver | unmatched — not counted | — | listed in scope table | no |
| 1inch Aggregation Router v4 Audit_Consensys.pdf | Permitable | unmatched — not counted | — | listed in scope table | no |
| 1inch Aggregation Router v4 Audit_Consensys.pdf | RevertReasonParser | unmatched — not counted | — | listed in scope table | no |
| 1inch Aggregation Router v4 Audit_Consensys.pdf | UniERC20 | unmatched — not counted | — | listed in scope table | no |
| 1inch Aggregation Router v4 Audit_Consensys.pdf | LimitOrderProtocolRFQ | unmatched — not counted | — | listed in scope table | no |
| 1inch Aggregation Router v4 Audit_Consensys.pdf | UnoswapRouter | unmatched — not counted | — | listed in scope table | no |
| 1inch Aggregation Router v4 Audit_Consensys.pdf | UnoswapV3Router | unmatched — not counted | — | listed in scope table | no |
| 1inch Aggregation Router v4 Audit_Igor Gulamov.pdf | AggregationRouterV4 | unmatched — not counted | — | listed in scope | no |
| 1inch Aggregation Router v4 Audit_Igor Gulamov.pdf | UnoswapV3Router | unmatched — not counted | — | listed in scope | no |
| 1inch Aggregation Router v4 Audit_Igor Gulamov.pdf | ClipperRouter | unmatched — not counted | — | listed in scope | no |
| 1inch Aggregation Router v4 Audit_Igor Gulamov.pdf | LimitOrderProtocolRFQ | unmatched — not counted | — | listed in scope | no |
| 1inch Aggregation Router v4 Audit_Pessimistic.pdf | AggregationRouterV4 | unmatched — not counted | — | listed in scope | no |
| 1inch Aggregation Router v4 Audit_Pessimistic.pdf | UnoswapV3Router | unmatched — not counted | — | listed in scope | no |
| 1inch Aggregation Router v4 Audit_Pessimistic.pdf | ClipperRouter | unmatched — not counted | — | listed in scope | no |
| 1inch Aggregation Router v4 Audit_Pessimistic.pdf | LimitOrderProtocolRFQ | unmatched — not counted | — | listed in scope | no |
| 1inch-cross-chain-swap-v1-AstraSec.pdf | EscrowDst | unmatched — not counted | — | — | no |
| 1inch-cross-chain-swap-v1-AstraSec.pdf | EscrowFactory | unmatched — not counted | — | — | no |
| 1inch-cross-chain-swap-v1-AstraSec.pdf | TimelocksLib | unmatched — not counted | — | — | no |
| 1inch-cross-chain-swap-v1-Consensys.pdf | Clones | unmatched — not counted | — | — | no |
| 1inch-cross-chain-swap-v1-Consensys.pdf | Escrow | unmatched — not counted | — | — | no |
| 1inch-cross-chain-swap-v1-Consensys.pdf | EscrowDst | unmatched — not counted | — | — | no |
| 1inch-cross-chain-swap-v1-Consensys.pdf | EscrowFactory | unmatched — not counted | — | — | no |
| 1inch-cross-chain-swap-v1-Consensys.pdf | EscrowSrc | unmatched — not counted | — | — | no |
| 1inch-cross-chain-swap-v1-Consensys.pdf | IEscrow | unmatched — not counted | — | — | no |
| 1inch-cross-chain-swap-v1-Consensys.pdf | IEscrowDst | unmatched — not counted | — | — | no |
| 1inch-cross-chain-swap-v1-Consensys.pdf | IEscrowFactory | unmatched — not counted | — | — | no |
| 1inch-cross-chain-swap-v1-Consensys.pdf | IEscrowSrc | unmatched — not counted | — | — | no |
| 1inch-cross-chain-swap-v1-Consensys.pdf | ImmutablesLib | unmatched — not counted | — | — | no |
| 1inch-cross-chain-swap-v1-Consensys.pdf | TimelocksLib | unmatched — not counted | — | — | no |
| 1inch-cross-chain-swap-v1-Decurity.pdf | Escrow | unmatched — not counted | — | — | no |
| 1inch-cross-chain-swap-v1-Decurity.pdf | EscrowDst | unmatched — not counted | — | — | no |
| 1inch-cross-chain-swap-v1-Decurity.pdf | EscrowFactory | unmatched — not counted | — | — | no |
| 1inch-cross-chain-swap-v1-Decurity.pdf | EscrowSrc | unmatched — not counted | — | — | no |
| 1inch-cross-chain-swap-v1-Decurity.pdf | TimelocksLib | unmatched — not counted | — | — | no |
| 1inch-cross-chain-swap-v1-Igor Gulamov.pdf | Clones | unmatched — not counted | — | — | no |
| 1inch-cross-chain-swap-v1-Igor Gulamov.pdf | Escrow | unmatched — not counted | — | — | no |
| 1inch-cross-chain-swap-v1-Igor Gulamov.pdf | EscrowDst | unmatched — not counted | — | — | no |
| 1inch-cross-chain-swap-v1-Igor Gulamov.pdf | EscrowFactory | unmatched — not counted | — | — | no |
| 1inch-cross-chain-swap-v1-Igor Gulamov.pdf | EscrowSrc | unmatched — not counted | — | — | no |
| 1inch-cross-chain-swap-v1-Igor Gulamov.pdf | IEscrow | unmatched — not counted | — | — | no |
| 1inch-cross-chain-swap-v1-Igor Gulamov.pdf | IEscrowFactory | unmatched — not counted | — | — | no |
| 1inch-cross-chain-swap-v1-Igor Gulamov.pdf | IEscrowSrc | unmatched — not counted | — | — | no |
| 1inch-cross-chain-swap-v1-Igor Gulamov.pdf | ImmutablesLib | unmatched — not counted | — | — | no |
| 1inch-cross-chain-swap-v1-Igor Gulamov.pdf | TimelocksLib | unmatched — not counted | — | — | no |
| 1inch-cross-chain-swap-v1-Open Zeppelin.pdf | Clones | unmatched — not counted | — | — | no |
| 1inch-cross-chain-swap-v1-Open Zeppelin.pdf | Escrow | unmatched — not counted | — | — | no |
| 1inch-cross-chain-swap-v1-Open Zeppelin.pdf | EscrowDst | unmatched — not counted | — | — | no |
| 1inch-cross-chain-swap-v1-Open Zeppelin.pdf | EscrowFactory | unmatched — not counted | — | — | no |
| 1inch-cross-chain-swap-v1-Open Zeppelin.pdf | EscrowSrc | unmatched — not counted | — | — | no |
| 1inch-cross-chain-swap-v1-Open Zeppelin.pdf | IEscrow | unmatched — not counted | — | — | no |
| 1inch-cross-chain-swap-v1-Open Zeppelin.pdf | IEscrowFactory | unmatched — not counted | — | — | no |
| 1inch-cross-chain-swap-v1-Open Zeppelin.pdf | IEscrowSrc | unmatched — not counted | — | — | no |
| 1inch-cross-chain-swap-v1-Open Zeppelin.pdf | ImmutablesLib | unmatched — not counted | — | — | no |
| 1inch-cross-chain-swap-v1-Open Zeppelin.pdf | TimelocksLib | unmatched — not counted | — | — | no |
| 1inch-cross-chain-swap-v1-Pessimistic.pdf | EscrowSrc | unmatched — not counted | — | mentioned in M01 finding: 'According to EscrowSrc.sol' | no |
| 1inch-cross-chain-v2-Astrasec.pdf | BaseEscrowFactory | unmatched — not counted | — | mentioned in vulnerability M-1 target | no |
| 1inch-cross-chain-v2-Astrasec.pdf | MerkleStorageInvalidator | unmatched — not counted | — | mentioned in vulnerability M-1 target | no |
| 1inch-cross-chain-v2-Astrasec.pdf | IBaseEscrow | unmatched — not counted | — | listed in I-1 table | no |
| 1inch-cross-chain-v2-Astrasec.pdf | IEscrow | unmatched — not counted | — | listed in I-1 table | no |
| 1inch-cross-chain-v2-Astrasec.pdf | IEscrowDst | unmatched — not counted | — | listed in I-1 table | no |
| 1inch-cross-chain-v2-Astrasec.pdf | IEscrowFactory | unmatched — not counted | — | listed in I-1 table | no |
| 1inch-cross-chain-v2-Astrasec.pdf | IEscrowSrc | unmatched — not counted | — | listed in I-1 table | no |
| 1inch-cross-chain-v2-Astrasec.pdf | ImmutablesLib | unmatched — not counted | — | listed in I-1 table | no |
| 1inch-cross-chain-v2-Astrasec.pdf | ProxyHashLib | unmatched — not counted | — | listed in I-1 table | no |
| 1inch-cross-chain-v2-Astrasec.pdf | TimelocksLib | unmatched — not counted | — | listed in I-1 table | no |
| 1inch-cross-chain-v2-Consensys.pdf | BaseEscrow | unmatched — not counted | — | — | no |
| 1inch-cross-chain-v2-Consensys.pdf | BaseEscrowFactory | unmatched — not counted | — | — | no |
| 1inch-cross-chain-v2-Consensys.pdf | Escrow | unmatched — not counted | — | — | no |
| 1inch-cross-chain-v2-Consensys.pdf | EscrowDst | unmatched — not counted | — | — | no |
| 1inch-cross-chain-v2-Consensys.pdf | EscrowDstZkSync | unmatched — not counted | — | — | no |
| 1inch-cross-chain-v2-Consensys.pdf | EscrowFactory | unmatched — not counted | — | — | no |
| 1inch-cross-chain-v2-Consensys.pdf | EscrowFactoryZkSync | unmatched — not counted | — | — | no |
| 1inch-cross-chain-v2-Consensys.pdf | EscrowSrc | unmatched — not counted | — | — | no |
| 1inch-cross-chain-v2-Consensys.pdf | EscrowSrcZkSync | unmatched — not counted | — | — | no |
| 1inch-cross-chain-v2-Consensys.pdf | EscrowZkSync | unmatched — not counted | — | — | no |
| 1inch-cross-chain-v2-Consensys.pdf | IBaseEscrow | unmatched — not counted | — | — | no |
| 1inch-cross-chain-v2-Consensys.pdf | IEscrow | unmatched — not counted | — | — | no |
| 1inch-cross-chain-v2-Consensys.pdf | IEscrowDst | unmatched — not counted | — | — | no |
| 1inch-cross-chain-v2-Consensys.pdf | IEscrowFactory | unmatched — not counted | — | — | no |
| 1inch-cross-chain-v2-Consensys.pdf | IEscrowSrc | unmatched — not counted | — | — | no |
| 1inch-cross-chain-v2-Consensys.pdf | IMerkleStorageInvalidator | unmatched — not counted | — | — | no |
| 1inch-cross-chain-v2-Consensys.pdf | ImmutablesLib | unmatched — not counted | — | — | no |
| 1inch-cross-chain-v2-Consensys.pdf | MerkleStorageInvalidator | unmatched — not counted | — | — | no |
| 1inch-cross-chain-v2-Consensys.pdf | MinimalProxyZkSync | unmatched — not counted | — | — | no |
| 1inch-cross-chain-v2-Consensys.pdf | ProxyHashLib | unmatched — not counted | — | — | no |
| 1inch-cross-chain-v2-Consensys.pdf | TimelocksLib | unmatched — not counted | — | — | no |
| 1inch-cross-chain-v2-Consensys.pdf | ZkSyncLib | unmatched — not counted | — | — | no |
| 1inch-cross-chain-v2-Decurity.pdf | BaseEscrowFactory | unmatched — not counted | — | listed in findings table and section 5.1 | no |
| 1inch-cross-chain-v2-Decurity.pdf | MerkleStorageInvalidator | unmatched — not counted | — | listed in findings table and section 5.2 | no |
| 1inch-cross-chain-v2-Decurity.pdf | TimelocksLib | unmatched — not counted | — | listed in findings table and section 5.3 | no |
| 1inch-cross-chain-v2-Decurity.pdf | IBaseEscrow | unmatched — not counted | — | listed in findings table and section 5.4 | no |
| 1inch-cross-chain-v2-Igor Gulamov.pdf | BaseEscrow | unmatched — not counted | — | — | no |
| 1inch-cross-chain-v2-Igor Gulamov.pdf | BaseEscrowFactory | unmatched — not counted | — | — | no |
| 1inch-cross-chain-v2-Igor Gulamov.pdf | Escrow | unmatched — not counted | — | — | no |
| 1inch-cross-chain-v2-Igor Gulamov.pdf | EscrowDst | unmatched — not counted | — | — | no |
| 1inch-cross-chain-v2-Igor Gulamov.pdf | EscrowDstZkSync | unmatched — not counted | — | — | no |
| 1inch-cross-chain-v2-Igor Gulamov.pdf | EscrowFactory | unmatched — not counted | — | — | no |
| 1inch-cross-chain-v2-Igor Gulamov.pdf | EscrowFactoryZkSync | unmatched — not counted | — | — | no |
| 1inch-cross-chain-v2-Igor Gulamov.pdf | EscrowSrc | unmatched — not counted | — | — | no |
| 1inch-cross-chain-v2-Igor Gulamov.pdf | EscrowSrcZkSync | unmatched — not counted | — | — | no |
| 1inch-cross-chain-v2-Igor Gulamov.pdf | EscrowZkSync | unmatched — not counted | — | — | no |
| 1inch-cross-chain-v2-Igor Gulamov.pdf | IBaseEscrow | unmatched — not counted | — | — | no |
| 1inch-cross-chain-v2-Igor Gulamov.pdf | IEscrow | unmatched — not counted | — | — | no |
| 1inch-cross-chain-v2-Igor Gulamov.pdf | IEscrowDst | unmatched — not counted | — | — | no |
| 1inch-cross-chain-v2-Igor Gulamov.pdf | IEscrowFactory | unmatched — not counted | — | — | no |
| 1inch-cross-chain-v2-Igor Gulamov.pdf | IEscrowSrc | unmatched — not counted | — | — | no |
| 1inch-cross-chain-v2-Igor Gulamov.pdf | IMerkleStorageInvalidator | unmatched — not counted | — | — | no |
| 1inch-cross-chain-v2-Igor Gulamov.pdf | IResolverMock | unmatched — not counted | — | — | no |
| 1inch-cross-chain-v2-Igor Gulamov.pdf | ImmutablesLib | unmatched — not counted | — | — | no |
| 1inch-cross-chain-v2-Igor Gulamov.pdf | MerkleStorageInvalidator | unmatched — not counted | — | — | no |
| 1inch-cross-chain-v2-Igor Gulamov.pdf | MinimalProxyZkSync | unmatched — not counted | — | — | no |
| 1inch-cross-chain-v2-Igor Gulamov.pdf | ProxyHashLib | unmatched — not counted | — | — | no |
| 1inch-cross-chain-v2-Igor Gulamov.pdf | TimelocksLib | unmatched — not counted | — | — | no |
| 1inch-cross-chain-v2-Igor Gulamov.pdf | ZkSyncLib | unmatched — not counted | — | — | no |
| 1inch-cross-chain-v2-Open Zeppelin.pdf | BaseEscrow | unmatched — not counted | — | — | no |
| 1inch-cross-chain-v2-Open Zeppelin.pdf | BaseEscrowFactory | unmatched — not counted | — | — | no |
| 1inch-cross-chain-v2-Open Zeppelin.pdf | Escrow | unmatched — not counted | — | — | no |
| 1inch-cross-chain-v2-Open Zeppelin.pdf | EscrowDst | unmatched — not counted | — | — | no |
| 1inch-cross-chain-v2-Open Zeppelin.pdf | EscrowDstZkSync | unmatched — not counted | — | — | no |
| 1inch-cross-chain-v2-Open Zeppelin.pdf | EscrowFactory | unmatched — not counted | — | — | no |
| 1inch-cross-chain-v2-Open Zeppelin.pdf | EscrowFactoryZkSync | unmatched — not counted | — | — | no |
| 1inch-cross-chain-v2-Open Zeppelin.pdf | EscrowSrc | unmatched — not counted | — | — | no |
| 1inch-cross-chain-v2-Open Zeppelin.pdf | EscrowSrcZkSync | unmatched — not counted | — | — | no |
| 1inch-cross-chain-v2-Open Zeppelin.pdf | EscrowZkSync | unmatched — not counted | — | — | no |
| 1inch-cross-chain-v2-Open Zeppelin.pdf | IBaseEscrow | unmatched — not counted | — | — | no |
| 1inch-cross-chain-v2-Open Zeppelin.pdf | IEscrow | unmatched — not counted | — | — | no |
| 1inch-cross-chain-v2-Open Zeppelin.pdf | IEscrowDst | unmatched — not counted | — | — | no |
| 1inch-cross-chain-v2-Open Zeppelin.pdf | IEscrowFactory | unmatched — not counted | — | — | no |
| 1inch-cross-chain-v2-Open Zeppelin.pdf | IEscrowSrc | unmatched — not counted | — | — | no |
| 1inch-cross-chain-v2-Open Zeppelin.pdf | IMerkleStorageInvalidator | unmatched — not counted | — | — | no |
| 1inch-cross-chain-v2-Open Zeppelin.pdf | ImmutablesLib | unmatched — not counted | — | — | no |
| 1inch-cross-chain-v2-Open Zeppelin.pdf | MerkleStorageInvalidator | unmatched — not counted | — | — | no |
| 1inch-cross-chain-v2-Open Zeppelin.pdf | MinimalProxyZkSync | unmatched — not counted | — | — | no |
| 1inch-cross-chain-v2-Open Zeppelin.pdf | ProxyHashLib | unmatched — not counted | — | — | no |
| 1inch-cross-chain-v2-Open Zeppelin.pdf | TimelocksLib | unmatched — not counted | — | — | no |
| 1inch-cross-chain-v2-Open Zeppelin.pdf | ZkSyncLib | unmatched — not counted | — | — | no |
| 1inch-cross-chain-v2-Pessimistic.pdf | MerkleStorageInvalidator | unmatched — not counted | — | mentioned in M01 finding | no |
| 1inch-cross-chain-v2-Pessimistic.pdf | BaseEscrowFactory | unmatched — not counted | — | mentioned in L01 and N01 findings | no |
| 1inch Crosschain Fee v1.1_Certora.pdf | BaseEscrowFactory | unmatched — not counted | — | mentioned in L-01 finding | no |
| 1inch Crosschain Fee v1.1_Certora.pdf | EscrowDst | unmatched — not counted | — | mentioned in L-02 and L-03 findings | no |
| 1inch Crosschain Fee v1.1_Certora.pdf | EscrowSrc | unmatched — not counted | — | mentioned in L-01 finding | no |
| 1inch Crosschain Fee v1.1_Decurity.pdf | EscrowSrc | unmatched — not counted | — | listed in scope and findings | no |
| 1inch Crosschain Fee v1.1_Decurity.pdf | EscrowDst | unmatched — not counted | — | listed in scope and findings | no |
| 1inch Crosschain Fee v1.1_Hexens.pdf | BaseEscrow | unmatched — not counted | — | listed in scope | no |
| 1inch Crosschain Fee v1.1_Hexens.pdf | BaseEscrowFactory | unmatched — not counted | — | listed in scope | no |
| 1inch Crosschain Fee v1.1_Hexens.pdf | Escrow | unmatched — not counted | — | listed in scope | no |
| 1inch Crosschain Fee v1.1_Hexens.pdf | EscrowDst | unmatched — not counted | — | listed in scope | no |
| 1inch Crosschain Fee v1.1_Hexens.pdf | EscrowFactory | unmatched — not counted | — | listed in scope | no |
| 1inch Crosschain Fee v1.1_Hexens.pdf | EscrowSrc | unmatched — not counted | — | listed in scope | no |
| 1inch Crosschain Fee v1.1_Hexens.pdf | IBaseEscrow | unmatched — not counted | — | listed in scope | no |
| 1inch Crosschain Fee v1.1_Hexens.pdf | IEscrowFactory | unmatched — not counted | — | listed in scope | no |
| 1inch Crosschain Fee v1.1_Hexens.pdf | ImmutablesLib | unmatched — not counted | — | listed in scope | no |
| 1inch Crosschain Fee v1.1_Hexens.pdf | ResolverExample | unmatched — not counted | — | listed in scope | no |
| 1inch Crosschain Fee v1.1_Hexens.pdf | EscrowDstZkSync | unmatched — not counted | — | listed in scope | no |
| 1inch Crosschain Fee v1.1_Hexens.pdf | EscrowFactoryZkSync | unmatched — not counted | — | listed in scope | no |
| 1inch Crosschain Fee v1.1_Hexens.pdf | EscrowSrcZkSync | unmatched — not counted | — | listed in scope | no |
| 1inch Crosschain Fee v1.1_Hexens.pdf | EscrowZkSync | unmatched — not counted | — | listed in scope | no |
| 1inch Crosschain Fee v1.1_Open Zeppelin.pdf | BaseEscrow | unmatched — not counted | — | — | no |
| 1inch Crosschain Fee v1.1_Open Zeppelin.pdf | BaseEscrowFactory | unmatched — not counted | — | — | no |
| 1inch Crosschain Fee v1.1_Open Zeppelin.pdf | Escrow | unmatched — not counted | — | — | no |
| 1inch Crosschain Fee v1.1_Open Zeppelin.pdf | EscrowDst | unmatched — not counted | — | — | no |
| 1inch Crosschain Fee v1.1_Open Zeppelin.pdf | EscrowDstZkSync | unmatched — not counted | — | — | no |
| 1inch Crosschain Fee v1.1_Open Zeppelin.pdf | EscrowFactory | unmatched — not counted | — | — | no |
| 1inch Crosschain Fee v1.1_Open Zeppelin.pdf | EscrowFactoryZkSync | unmatched — not counted | — | — | no |
| 1inch Crosschain Fee v1.1_Open Zeppelin.pdf | EscrowSrc | unmatched — not counted | — | — | no |
| 1inch Crosschain Fee v1.1_Open Zeppelin.pdf | EscrowSrcZkSync | unmatched — not counted | — | — | no |
| 1inch Crosschain Fee v1.1_Open Zeppelin.pdf | EscrowZkSync | unmatched — not counted | — | — | no |
| 1inch Crosschain Fee v1.1_Open Zeppelin.pdf | IBaseEscrow | unmatched — not counted | — | — | no |
| 1inch Crosschain Fee v1.1_Open Zeppelin.pdf | IEscrowFactory | unmatched — not counted | — | — | no |
| 1inch Crosschain Fee v1.1_Open Zeppelin.pdf | ImmutablesLib | unmatched — not counted | — | — | no |
| 1inch Crosschain Fee v1.1_Sherlock.pdf | BaseEscrow | unmatched — not counted | — | — | no |
| 1inch Crosschain Fee v1.1_Sherlock.pdf | BaseEscrowFactory | unmatched — not counted | — | — | no |
| 1inch Crosschain Fee v1.1_Sherlock.pdf | Escrow | unmatched — not counted | — | — | no |
| 1inch Crosschain Fee v1.1_Sherlock.pdf | EscrowDst | unmatched — not counted | — | — | no |
| 1inch Crosschain Fee v1.1_Sherlock.pdf | EscrowDstZkSync | unmatched — not counted | — | — | no |
| 1inch Crosschain Fee v1.1_Sherlock.pdf | EscrowFactory | unmatched — not counted | — | — | no |
| 1inch Crosschain Fee v1.1_Sherlock.pdf | EscrowFactoryContext | unmatched — not counted | — | — | no |
| 1inch Crosschain Fee v1.1_Sherlock.pdf | EscrowFactoryZkSync | unmatched — not counted | — | — | no |
| 1inch Crosschain Fee v1.1_Sherlock.pdf | EscrowSrc | unmatched — not counted | — | — | no |
| 1inch Crosschain Fee v1.1_Sherlock.pdf | EscrowSrcZkSync | unmatched — not counted | — | — | no |
| 1inch Crosschain Fee v1.1_Sherlock.pdf | EscrowZkSync | unmatched — not counted | — | — | no |
| 1inch Crosschain Fee v1.1_Sherlock.pdf | IBaseEscrow | unmatched — not counted | — | — | no |
| 1inch Crosschain Fee v1.1_Sherlock.pdf | IEscrow | unmatched — not counted | — | — | no |
| 1inch Crosschain Fee v1.1_Sherlock.pdf | IEscrowDst | unmatched — not counted | — | — | no |
| 1inch Crosschain Fee v1.1_Sherlock.pdf | IEscrowFactory | unmatched — not counted | — | — | no |
| 1inch Crosschain Fee v1.1_Sherlock.pdf | IEscrowSrc | unmatched — not counted | — | — | no |
| 1inch Crosschain Fee v1.1_Sherlock.pdf | IMerkleStorageInvalidator | unmatched — not counted | — | — | no |
| 1inch Crosschain Fee v1.1_Sherlock.pdf | IResolverExample | unmatched — not counted | — | — | no |
| 1inch Crosschain Fee v1.1_Sherlock.pdf | ImmutablesLib | unmatched — not counted | — | — | no |
| 1inch Crosschain Fee v1.1_Sherlock.pdf | MerkleStorageInvalidator | unmatched — not counted | — | — | no |
| 1inch Crosschain Fee v1.1_Sherlock.pdf | MinimalProxyZkSync | unmatched — not counted | — | — | no |
| 1inch Crosschain Fee v1.1_Sherlock.pdf | ProxyHashLib | unmatched — not counted | — | — | no |
| 1inch Crosschain Fee v1.1_Sherlock.pdf | TimelocksLib | unmatched — not counted | — | — | no |
| 1inch Crosschain Fee v1.1_Sherlock.pdf | ZkSyncLib | unmatched — not counted | — | — | no |
| Fee flow v1-AstraSec.pdf | SimpleSettlement | unmatched — not counted | — | listed in source code section | no |
| Fee flow v1-AstraSec.pdf | FeeTaker | unmatched — not counted | — | listed in source code section | no |
| Fee flow v1-AstraSec.pdf | AmountGetterWithFee | unmatched — not counted | — | listed in source code section | no |
| Fee flow v1-AstraSec.pdf | AmountGetterBase | unmatched — not counted | — | listed in source code section | no |
| Fee flow v1-Bailsec.pdf | AmountGetterBase | unmatched — not counted | — | listed in scope | no |
| Fee flow v1-Bailsec.pdf | AmountGetterWithFee | unmatched — not counted | — | listed in scope | no |
| Fee flow v1-Bailsec.pdf | FeeTaker | unmatched — not counted | — | listed in scope | no |
| Fee flow v1-Bailsec.pdf | SimpleSettlement | unmatched — not counted | — | listed in scope | no |
| Fee flow v1-ChainLight.pdf | SimpleSettlement | unmatched — not counted | — | listed in scope table | no |
| Fee flow v1-ChainLight.pdf | FeeTaker | unmatched — not counted | — | listed in scope table | no |
| Fee flow v1-ChainLight.pdf | AmountGetterWithFee | unmatched — not counted | — | listed in scope table | no |
| Fee flow v1-ChainLight.pdf | AmountGetterBase | unmatched — not counted | — | listed in scope table | no |
| Fee flow v1-Decurity.pdf | SimpleSettlement | unmatched — not counted | — | listed in scope | no |
| Fee flow v1-Decurity.pdf | FeeTaker | unmatched — not counted | — | listed in scope | no |
| Fee flow v1-Decurity.pdf | AmountGetterWithFee | unmatched — not counted | — | listed in scope | no |
| Fee flow v1-Decurity.pdf | AmountGetterBase | unmatched — not counted | — | listed in scope | no |
| Fee flow v1-Open Zepplin.pdf | SimpleSettlement | unmatched — not counted | — | listed in scope | no |
| Fee flow v1-Open Zepplin.pdf | AmountGetterBase | unmatched — not counted | — | listed in scope | no |
| Fee flow v1-Open Zepplin.pdf | AmountGetterWithFee | unmatched — not counted | — | listed in scope | no |
| Fee flow v1-Open Zepplin.pdf | FeeTaker | unmatched — not counted | — | listed in scope | no |
| Fee flow v1-Sherlock.pdf | SimpleSettlement | unmatched — not counted | — | listed in scope | no |
| Fee flow v1-Sherlock.pdf | AmountGetterBase | unmatched — not counted | — | listed in scope | no |
| Fee flow v1-Sherlock.pdf | AmountGetterWithFee | unmatched — not counted | — | listed in scope | no |
| Fee flow v1-Sherlock.pdf | FeeTaker | unmatched — not counted | — | listed in scope | no |
| 1inch FixedRateSwap_Ackee Blockchain.pdf | FixedRateSwap | unmatched — not counted | — | — | no |
| 1inch FixedRateSwap_Chainsulting.pdf | FixedRateSwap | unmatched — not counted | — | — | no |
| 1inch FixedRateSwap_CoinFabrik.pdf | FixedRateSwap | unmatched — not counted | — | — | no |
| 1inch FixedRateSwap_MixedBytes.pdf | FixedFeeSwap | unmatched — not counted | — | listed in scope and findings | no |
| 1inch FixedRateSwap_Pessimistic.pdf | FixedRateSwap | unmatched — not counted | — | — | no |
| 1inch Settlement v2.1_AstraSec.pdf | FeeTaker | unmatched — not counted | — | listed in source code section | no |
| 1inch Settlement v2.1_AstraSec.pdf | Settlement | unmatched — not counted | — | listed in source code section | no |
| 1inch Settlement v2.1_AstraSec.pdf | SimpleSettlement | unmatched — not counted | — | listed in source code section | no |
| 1inch Settlement v2.1_AstraSec.pdf | BaseExtension | unmatched — not counted | — | listed in source code section | no |
| 1inch Settlement v2.1_AstraSec.pdf | ExtensionLib | unmatched — not counted | — | listed in source code section | no |
| 1inch Settlement v2.1_AstraSec.pdf | IntegratorFeeExtension | unmatched — not counted | — | listed in source code section | no |
| 1inch Settlement v2.1_AstraSec.pdf | ResolverFeeExtension | unmatched — not counted | — | listed in source code section | no |
| 1inch Settlement v2.1_AstraSec.pdf | WhitelistExtension | unmatched — not counted | — | listed in source code section | no |
| 1inch Settlement v2.1_Decurity.pdf | FeeTaker | unmatched — not counted | — | Listed in scope and findings section | no |
| 1inch Settlement v2.1_Decurity.pdf | ExtensionLib | unmatched — not counted | — | Listed in scope and findings section | no |
| 1inch Settlement v2.1_Hexens.pdf | FeeTaker | unmatched — not counted | — | listed in scope and findings | no |
| 1inch Settlement v2.1_Open Zepplin.pdf | FeeTaker | unmatched — not counted | — | listed in scope | no |
| 1inch Settlement v2.1_Open Zepplin.pdf | Settlement | unmatched — not counted | — | listed in scope | no |
| 1inch Settlement v2.1_Open Zepplin.pdf | SimpleSettlement | unmatched — not counted | — | listed in scope | no |
| 1inch Settlement v2.1_Open Zepplin.pdf | BaseExtension | unmatched — not counted | — | listed in scope | no |
| 1inch Settlement v2.1_Open Zepplin.pdf | ExtensionLib | unmatched — not counted | — | listed in scope | no |
| 1inch Settlement v2.1_Open Zepplin.pdf | IntegratorFeeExtension | unmatched — not counted | — | listed in scope | no |
| 1inch Settlement v2.1_Open Zepplin.pdf | ResolverFeeExtension | unmatched — not counted | — | listed in scope | no |
| 1inch Settlement v2.1_Open Zepplin.pdf | WhitelistExtension | unmatched — not counted | — | listed in scope | no |
| 1inch Settlement v2.1_Pashov.pdf | FeeTaker | unmatched — not counted | — | listed in scope | no |
| 1inch Settlement v2.1_Pashov.pdf | Settlement | unmatched — not counted | — | listed in scope | no |
| 1inch Settlement v2.1_Pashov.pdf | SimpleSettlement | unmatched — not counted | — | listed in scope | no |
| 1inch Settlement v2.1_Pashov.pdf | BaseExtension | unmatched — not counted | — | listed in scope | no |
| 1inch Settlement v2.1_Pashov.pdf | ExtensionLib | unmatched — not counted | — | listed in scope | no |
| 1inch Settlement v2.1_Pashov.pdf | ResolverFeeExtension | unmatched — not counted | — | listed in scope | no |
| 1inch Settlement v2.1_Pashov.pdf | WhitelistExtension | unmatched — not counted | — | listed in scope | no |
| 1inch Settlement v2.1_Pashov.pdf | IntegratorFeeExtension | unmatched — not counted | — | listed in scope | no |
| 1inch Settlement v2.1_Pessemistic.pdf | SettlementExtension | unmatched — not counted | — | listed in scope | no |
| 1inch Settlement v2.1_Pessemistic.pdf | FeeBankCharger | unmatched — not counted | — | listed in scope | no |
| 1inch Settlement v2.1_Pessemistic.pdf | IFeeBankCharger | unmatched — not counted | — | listed in scope | no |
| 1inch Settlement v2.1_Pessemistic.pdf | Settlement | unmatched — not counted | — | listed in scope after update | no |
| 1inch Settlement v2.1_Pessemistic.pdf | SimpleSettlement | unmatched — not counted | — | listed in scope after update | no |
| 1inch Settlement v2.1_Pessemistic.pdf | BaseExtension | unmatched — not counted | — | listed in scope after update | no |
| 1inch Settlement v2.1_Pessemistic.pdf | ExtensionLib | unmatched — not counted | — | listed in scope after update | no |
| 1inch Settlement v2.1_Pessemistic.pdf | IntegratorFeeExtension | unmatched — not counted | — | listed in scope after update | no |
| 1inch Settlement v2.1_Pessemistic.pdf | ResolverFeeExtension | unmatched — not counted | — | listed in scope after update | no |
| 1inch Settlement v2.1_Pessemistic.pdf | WhitelistExtension | unmatched — not counted | — | listed in scope after update | no |
| 1inch Settlement v2_Decurity.pdf | SettlementExtension | unmatched — not counted | — | listed in scope section 2.2 | no |
| 1inch Settlement v2_Hexens.pdf | SettlementExtension | unmatched — not counted | — | listed in scope and finding path | no |
| 1inch Settlement v2_Open Zeppelin.pdf | SettlementExtension | unmatched — not counted | — | listed in scope | no |
| 1inch Settlement v2_Open Zeppelin.pdf | WhitelistRegistry | unmatched — not counted | — | listed in scope | no |
| 1inch Settlement v2_Peckshield.pdf | SettlementExtension | unmatched — not counted | — | listed in scope: 'this audit only covers the following contract – SettlementExtension.sol' | no |
| 1inch Settlement v2_Pessimistic.pdf | SettlementExtension | unmatched — not counted | — | listed in scope | no |
| 1inch Settlement v2_Pessimistic.pdf | FeeBankCharger | unmatched — not counted | — | listed in scope | no |
| 1inch Settlement v2_Pessimistic.pdf | IFeeBankCharger | unmatched — not counted | — | listed in scope | no |
| 1inch_FusionMode_ABDK.pdf | BasicDelegationPod | unmatched — not counted | — | — | no |
| 1inch_FusionMode_ABDK.pdf | BasicDelegationPodWithVotingPower | unmatched — not counted | — | — | no |
| 1inch_FusionMode_ABDK.pdf | DelegatedShare | unmatched — not counted | — | — | no |
| 1inch_FusionMode_ABDK.pdf | DynamicSuffix | unmatched — not counted | — | — | no |
| 1inch_FusionMode_ABDK.pdf | ERC20Pods | unmatched — not counted | — | — | no |
| 1inch_FusionMode_ABDK.pdf | FeeBank | unmatched — not counted | — | — | no |
| 1inch_FusionMode_ABDK.pdf | FeeBankCharger | unmatched — not counted | — | — | no |
| 1inch_FusionMode_ABDK.pdf | IDelegatedShare | unmatched — not counted | — | — | no |
| 1inch_FusionMode_ABDK.pdf | IDelegationPod | unmatched — not counted | — | — | no |
| 1inch_FusionMode_ABDK.pdf | IERC20Pods | unmatched — not counted | — | — | no |
| 1inch_FusionMode_ABDK.pdf | IFeeBank | unmatched — not counted | — | — | no |
| 1inch_FusionMode_ABDK.pdf | IFeeBankCharger | unmatched — not counted | — | — | no |
| 1inch_FusionMode_ABDK.pdf | IPod | unmatched — not counted | — | — | no |
| 1inch_FusionMode_ABDK.pdf | IResolver | unmatched — not counted | — | — | no |
| 1inch_FusionMode_ABDK.pdf | ISettlement | unmatched — not counted | — | — | no |
| 1inch_FusionMode_ABDK.pdf | IVotable | unmatched — not counted | — | — | no |
| 1inch_FusionMode_ABDK.pdf | IWhitelistRegistry | unmatched — not counted | — | — | no |
| 1inch_FusionMode_ABDK.pdf | OrderSaltParser | unmatched — not counted | — | — | no |
| 1inch_FusionMode_ABDK.pdf | Pod | unmatched — not counted | — | — | no |
| 1inch_FusionMode_ABDK.pdf | RewardableDelegationPod | unmatched — not counted | — | — | no |
| 1inch_FusionMode_ABDK.pdf | RewardableDelegationPodWithVotingPower | unmatched — not counted | — | — | no |
| 1inch_FusionMode_ABDK.pdf | Settlement | unmatched — not counted | — | — | no |
| 1inch_FusionMode_ABDK.pdf | St1inch | unmatched — not counted | — | — | no |
| 1inch_FusionMode_ABDK.pdf | VotingPowerCalculator | unmatched — not counted | — | — | no |
| 1inch_FusionMode_ABDK.pdf | WhitelistRegistry | unmatched — not counted | — | — | no |
| 1inch_FusionMode_ChainSecurity1.pdf | Address | unmatched — not counted | — | — | no |
| 1inch_FusionMode_ChainSecurity1.pdf | BasicDelegationPodWithVotingPower | unmatched — not counted | — | — | no |
| 1inch_FusionMode_ChainSecurity1.pdf | DynamicSuffix | unmatched — not counted | — | — | no |
| 1inch_FusionMode_ChainSecurity1.pdf | FeeBank | unmatched — not counted | — | — | no |
| 1inch_FusionMode_ChainSecurity1.pdf | FeeBankCharger | unmatched — not counted | — | — | no |
| 1inch_FusionMode_ChainSecurity1.pdf | IFeeBank | unmatched — not counted | — | — | no |
| 1inch_FusionMode_ChainSecurity1.pdf | IFeeBankCharger | unmatched — not counted | — | — | no |
| 1inch_FusionMode_ChainSecurity1.pdf | IResolver | unmatched — not counted | — | — | no |
| 1inch_FusionMode_ChainSecurity1.pdf | ISettlement | unmatched — not counted | — | — | no |
| 1inch_FusionMode_ChainSecurity1.pdf | IVotable | unmatched — not counted | — | — | no |
| 1inch_FusionMode_ChainSecurity1.pdf | IWhitelistRegistry | unmatched — not counted | — | — | no |
| 1inch_FusionMode_ChainSecurity1.pdf | OrderSaltParser | unmatched — not counted | — | — | no |
| 1inch_FusionMode_ChainSecurity1.pdf | ResolverMetadata | unmatched — not counted | — | — | no |
| 1inch_FusionMode_ChainSecurity1.pdf | RewardableDelegationPodWithVotingPower | unmatched — not counted | — | — | no |
| 1inch_FusionMode_ChainSecurity1.pdf | Settlement | unmatched — not counted | — | — | no |
| 1inch_FusionMode_ChainSecurity1.pdf | St1inch | unmatched — not counted | — | — | no |
| 1inch_FusionMode_ChainSecurity1.pdf | St1inchPreview | unmatched — not counted | — | — | no |
| 1inch_FusionMode_ChainSecurity1.pdf | VotingPowerCalculator | unmatched — not counted | — | — | no |
| 1inch_FusionMode_ChainSecurity1.pdf | WhitelistHelper | unmatched — not counted | — | — | no |
| 1inch_FusionMode_ChainSecurity1.pdf | WhitelistRegistry | unmatched — not counted | — | — | no |
| 1inch_FusionMode_ChainSecurity2.pdf | IDelegatedShare | unmatched — not counted | — | listed in scope table | no |
| 1inch_FusionMode_ChainSecurity2.pdf | IDelegationPod | unmatched — not counted | — | listed in scope table | no |
| 1inch_FusionMode_ChainSecurity2.pdf | IRewardableDelegationPod | unmatched — not counted | — | listed in scope table | no |
| 1inch_FusionMode_ChainSecurity2.pdf | BasicDelegationPod | unmatched — not counted | — | listed in scope table | no |
| 1inch_FusionMode_ChainSecurity2.pdf | DelegatedShare | unmatched — not counted | — | listed in scope table | no |
| 1inch_FusionMode_ChainSecurity2.pdf | RewardableDelegationPod | unmatched — not counted | — | listed in scope table | no |
| 1inch_FusionMode_ChainSecurity3.pdf | IERC20Pods | unmatched — not counted | — | listed in scope | no |
| 1inch_FusionMode_ChainSecurity3.pdf | IPod | unmatched — not counted | — | listed in scope | no |
| 1inch_FusionMode_ChainSecurity3.pdf | ERC20Pods | unmatched — not counted | — | listed in scope | no |
| 1inch_FusionMode_ChainSecurity3.pdf | Pod | unmatched — not counted | — | listed in scope | no |
| 1inch_FusionMode_ChainSecurity3.pdf | ReentrancyGuard | unmatched — not counted | — | listed in scope | no |
| 1inch_FusionMode_ChainSecurity3.pdf | AddressArray | unmatched — not counted | — | reviewed as part of scope | no |
| 1inch_FusionMode_ChainSecurity3.pdf | AddressSet | unmatched — not counted | — | reviewed as part of scope | no |
| 1inch_FusionMode_Decurity.pdf | Address | unmatched — not counted | — | — | no |
| 1inch_FusionMode_Decurity.pdf | DelegatedShare | unmatched — not counted | — | — | no |
| 1inch_FusionMode_Decurity.pdf | ERC20Pods | unmatched — not counted | — | — | no |
| 1inch_FusionMode_Decurity.pdf | FarmingDelegationPod | unmatched — not counted | — | — | no |
| 1inch_FusionMode_Decurity.pdf | FarmingPod | unmatched — not counted | — | — | no |
| 1inch_FusionMode_Decurity.pdf | FeeBank | unmatched — not counted | — | — | no |
| 1inch_FusionMode_Decurity.pdf | MultiFarmingPod | unmatched — not counted | — | — | no |
| 1inch_FusionMode_Decurity.pdf | OrderSaltParser | unmatched — not counted | — | — | no |
| 1inch_FusionMode_Decurity.pdf | St1inch | unmatched — not counted | — | — | no |
| 1inch_FusionMode_Decurity.pdf | StakingFarmingPod | unmatched — not counted | — | — | no |
| 1inch_FusionMode_Decurity.pdf | TokenizedDelegationPod | unmatched — not counted | — | — | no |
| 1inch_FusionMode_Decurity.pdf | VotingPowerCalculator | unmatched — not counted | — | — | no |
| 1inch_FusionMode_Decurity.pdf | WhitelistRegistry | unmatched — not counted | — | — | no |
| 1inch_FusionMode_Hexens.1.pdf | ERC20Pods | unmatched — not counted | — | — | no |
| 1inch_FusionMode_Hexens.1.pdf | Settlement | unmatched — not counted | — | — | no |
| 1inch_FusionMode_Hexens.1.pdf | St1inch | unmatched — not counted | — | — | no |
| 1inch_FusionMode_Hexens.1.pdf | WhitelistRegistry | unmatched — not counted | — | — | no |
| 1inch_FusionMode_Hexens.2.pdf | DelegatedShare | unmatched — not counted | — | — | no |
| 1inch_FusionMode_Hexens.2.pdf | ERC20Pods | unmatched — not counted | — | — | no |
| 1inch_FusionMode_Hexens.2.pdf | FeeBank | unmatched — not counted | — | — | no |
| 1inch_FusionMode_Hexens.2.pdf | IDelegatedShare | unmatched — not counted | — | — | no |
| 1inch_FusionMode_Hexens.2.pdf | IERC20Pods | unmatched — not counted | — | — | no |
| 1inch_FusionMode_Hexens.2.pdf | IFeeBank | unmatched — not counted | — | — | no |
| 1inch_FusionMode_Hexens.2.pdf | IFeeBankCharger | unmatched — not counted | — | — | no |
| 1inch_FusionMode_Hexens.2.pdf | IPod | unmatched — not counted | — | — | no |
| 1inch_FusionMode_Hexens.2.pdf | IVotable | unmatched — not counted | — | — | no |
| 1inch_FusionMode_Hexens.2.pdf | PowerPod | unmatched — not counted | — | — | no |
| 1inch_FusionMode_Hexens.2.pdf | RewardableDelegationPod | unmatched — not counted | — | — | no |
| 1inch_FusionMode_Hexens.2.pdf | RewardableDelegationPodWithVotingPower | unmatched — not counted | — | — | no |
| 1inch_FusionMode_Hexens.2.pdf | St1inch | unmatched — not counted | — | — | no |
| 1inch_FusionMode_Hexens.2.pdf | VotingPowerCalculator | unmatched — not counted | — | — | no |
| 1inch_FusionMode_OpenZepplin.1.pdf | DynamicSuffix | unmatched — not counted | — | — | no |
| 1inch_FusionMode_OpenZepplin.1.pdf | FeeBank | unmatched — not counted | — | — | no |
| 1inch_FusionMode_OpenZepplin.1.pdf | FeeBankCharger | unmatched — not counted | — | — | no |
| 1inch_FusionMode_OpenZepplin.1.pdf | IFeeBank | unmatched — not counted | — | — | no |
| 1inch_FusionMode_OpenZepplin.1.pdf | IFeeBankCharger | unmatched — not counted | — | — | no |
| 1inch_FusionMode_OpenZepplin.1.pdf | IResolver | unmatched — not counted | — | — | no |
| 1inch_FusionMode_OpenZepplin.1.pdf | ISettlement | unmatched — not counted | — | — | no |
| 1inch_FusionMode_OpenZepplin.1.pdf | ISt1inch | unmatched — not counted | — | — | no |
| 1inch_FusionMode_OpenZepplin.1.pdf | IVotable | unmatched — not counted | — | — | no |
| 1inch_FusionMode_OpenZepplin.1.pdf | OrderSaltParser | unmatched — not counted | — | — | no |
| 1inch_FusionMode_OpenZepplin.1.pdf | OrderSuffix | unmatched — not counted | — | — | no |
| 1inch_FusionMode_OpenZepplin.1.pdf | PowerPod | unmatched — not counted | — | — | no |
| 1inch_FusionMode_OpenZepplin.1.pdf | ResolverMetadata | unmatched — not counted | — | — | no |
| 1inch_FusionMode_OpenZepplin.1.pdf | Settlement | unmatched — not counted | — | — | no |
| 1inch_FusionMode_OpenZepplin.1.pdf | St1inch | unmatched — not counted | — | — | no |
| 1inch_FusionMode_OpenZepplin.1.pdf | St1inchPreview | unmatched — not counted | — | — | no |
| 1inch_FusionMode_OpenZepplin.1.pdf | StakingFarmingPod | unmatched — not counted | — | — | no |
| 1inch_FusionMode_OpenZepplin.1.pdf | TakingFee | unmatched — not counted | — | — | no |
| 1inch_FusionMode_OpenZepplin.1.pdf | TokensAndAmounts | unmatched — not counted | — | — | no |
| 1inch_FusionMode_OpenZepplin.1.pdf | VotingPowerCalculator | unmatched — not counted | — | — | no |
| 1inch_FusionMode_OpenZepplin.1.pdf | WhitelistHelper | unmatched — not counted | — | — | no |
| 1inch_FusionMode_OpenZepplin.1.pdf | WhitelistRegistry | unmatched — not counted | — | — | no |
| 1inch_FusionMode_OpenZepplin.2.pdf | ERC20Pods | unmatched — not counted | — | listed in scope | no |
| 1inch_FusionMode_OpenZepplin.2.pdf | Pod | unmatched — not counted | — | listed in scope | no |
| 1inch_FusionMode_OpenZepplin.2.pdf | IERC20Pods | unmatched — not counted | — | listed in scope | no |
| 1inch_FusionMode_OpenZepplin.2.pdf | IPod | unmatched — not counted | — | listed in scope | no |
| 1inch_FusionMode_OpenZepplin.2.pdf | ReentrancyGuard | unmatched — not counted | — | listed in scope | no |
| 1inch_FusionMode_OpenZepplin.2.pdf | DelegatedShare | unmatched — not counted | — | listed in scope | no |
| 1inch_FusionMode_OpenZepplin.2.pdf | DelegationPod | unmatched — not counted | — | listed in scope | no |
| 1inch_FusionMode_OpenZepplin.2.pdf | FarmingDelegationPod | unmatched — not counted | — | listed in scope | no |
| 1inch_FusionMode_OpenZepplin.2.pdf | TokenizedDelegationPod | unmatched — not counted | — | listed in scope | no |
| 1inch_FusionMode_OpenZepplin.2.pdf | IDelegatedShare | unmatched — not counted | — | listed in scope | no |
| 1inch_FusionMode_OpenZepplin.2.pdf | IDelegationPod | unmatched — not counted | — | listed in scope | no |
| 1inch_FusionMode_OpenZepplin.2.pdf | IFarmingDelegationPod | unmatched — not counted | — | listed in scope | no |
| 1inch_FusionMode_OpenZepplin.2.pdf | ITokenizedDelegationPod | unmatched — not counted | — | listed in scope | no |
| 1inch_FusionMode_Oxorio.pdf | BasicDelegationPod | unmatched — not counted | — | — | no |
| 1inch_FusionMode_Oxorio.pdf | DelegatedShare | unmatched — not counted | — | — | no |
| 1inch_FusionMode_Oxorio.pdf | ERC20Pods | unmatched — not counted | — | — | no |
| 1inch_FusionMode_Oxorio.pdf | FeeBank | unmatched — not counted | — | — | no |
| 1inch_FusionMode_Oxorio.pdf | RewardableDelegationPod | unmatched — not counted | — | — | no |
| 1inch_FusionMode_Oxorio.pdf | Settlement | unmatched — not counted | — | — | no |
| 1inch_FusionMode_Oxorio.pdf | St1Inch | unmatched — not counted | — | — | no |
| 1inch_FusionMode_Oxorio.pdf | WhitelistRegistry | unmatched — not counted | — | — | no |
| 1inch_FusionMode_Peckshield.pdf | BasicDelegationPod | unmatched — not counted | — | — | no |
| 1inch_FusionMode_Peckshield.pdf | DelegatedShare | unmatched — not counted | — | — | no |
| 1inch_FusionMode_Peckshield.pdf | ERC20Pods | unmatched — not counted | — | — | no |
| 1inch_FusionMode_Peckshield.pdf | IVotable | unmatched — not counted | — | — | no |
| 1inch_FusionMode_Peckshield.pdf | Ownable | unmatched — not counted | — | — | no |
| 1inch_FusionMode_Peckshield.pdf | RewardableDelegationPod | unmatched — not counted | — | — | no |
| 1inch_FusionMode_Peckshield.pdf | Settlement | unmatched — not counted | — | — | no |
| 1inch_FusionMode_Peckshield.pdf | St1inch | unmatched — not counted | — | — | no |
| 1inch_FusionMode_Peckshield.pdf | VotingPowerCalculator | unmatched — not counted | — | — | no |
| 1inch_FusionMode_Peckshield.pdf | WhitelistRegistry | unmatched — not counted | — | — | no |
| 1inch_FusionMode_Pessimistic.pdf | AddressLib | unmatched — not counted | — | — | no |
| 1inch_FusionMode_Pessimistic.pdf | BasicDelegationPod | unmatched — not counted | — | — | no |
| 1inch_FusionMode_Pessimistic.pdf | DelegatedShare | unmatched — not counted | — | — | no |
| 1inch_FusionMode_Pessimistic.pdf | ERC20Pods | unmatched — not counted | — | — | no |
| 1inch_FusionMode_Pessimistic.pdf | FarmingDelegationPod | unmatched — not counted | — | — | no |
| 1inch_FusionMode_Pessimistic.pdf | IERC20Pods | unmatched — not counted | — | — | no |
| 1inch_FusionMode_Pessimistic.pdf | ITokenizedDelegationPod | unmatched — not counted | — | — | no |
| 1inch_FusionMode_Pessimistic.pdf | OrderSuffix | unmatched — not counted | — | — | no |
| 1inch_FusionMode_Pessimistic.pdf | Pod | unmatched — not counted | — | — | no |
| 1inch_FusionMode_Pessimistic.pdf | RewardableDelegationPod | unmatched — not counted | — | — | no |
| 1inch_FusionMode_Pessimistic.pdf | Settlement | unmatched — not counted | — | — | no |
| 1inch_FusionMode_Pessimistic.pdf | St1inch | unmatched — not counted | — | — | no |
| 1inch_FusionMode_Pessimistic.pdf | TakingFee | unmatched — not counted | — | — | no |
| 1inch_FusionMode_Pessimistic.pdf | TokenizedDelegationPod | unmatched — not counted | — | — | no |
| 1inch_FusionMode_Pessimistic.pdf | VotingPowerCalculator | unmatched — not counted | — | — | no |
| 1inch_FusionMode_Pessimistic.pdf | WhitelistChecker | unmatched — not counted | — | — | no |
| 1inch_FusionMode_Pessimistic.pdf | WhitelistRegistry | unmatched — not counted | — | — | no |
| 1inch_FusionMode_iosiro.pdf | BasicDelegationPod | unmatched — not counted | — | — | no |
| 1inch_FusionMode_iosiro.pdf | BasicDelegationTopicWithVotingPower | unmatched — not counted | — | — | no |
| 1inch_FusionMode_iosiro.pdf | DelegatedShare | unmatched — not counted | — | — | no |
| 1inch_FusionMode_iosiro.pdf | ERC20Pods | unmatched — not counted | — | — | no |
| 1inch_FusionMode_iosiro.pdf | FeeBank | unmatched — not counted | — | — | no |
| 1inch_FusionMode_iosiro.pdf | OrderSaltParser | unmatched — not counted | — | — | no |
| 1inch_FusionMode_iosiro.pdf | Pod | unmatched — not counted | — | — | no |
| 1inch_FusionMode_iosiro.pdf | RewardableDelegationPod | unmatched — not counted | — | — | no |
| 1inch_FusionMode_iosiro.pdf | RewardableDelegationTopicWithVotingPower | unmatched — not counted | — | — | no |
| 1inch_FusionMode_iosiro.pdf | Settlement | unmatched — not counted | — | — | no |
| 1inch_FusionMode_iosiro.pdf | St1inch | unmatched — not counted | — | — | no |
| 1inch_FusionMode_iosiro.pdf | VotingPowerCalculator | unmatched — not counted | — | — | no |
| 1inch_FusionMode_iosiro.pdf | WhitelistChecker | unmatched — not counted | — | — | no |
| 1inch_FusionMode_iosiro.pdf | WhitelistRegistry | unmatched — not counted | — | — | no |
| 1inch_TokenPlugins-Pashov.pdf | Plugin | unmatched — not counted | — | listed in scope section | no |
| 1inch_TokenPlugins-Pashov.pdf | ERC20Plugins | unmatched — not counted | — | listed in scope section | no |
| 1Inch Limit Order Protocol_ABDK.pdf | AmountCalculator | unmatched — not counted | — | — | no |
| 1Inch Limit Order Protocol_ABDK.pdf | ArgumentDecoder | unmatched — not counted | — | — | no |
| 1Inch Limit Order Protocol_ABDK.pdf | ChainlinkCalculator | unmatched — not counted | — | — | no |
| 1Inch Limit Order Protocol_ABDK.pdf | LimitOrderProtocol | unmatched — not counted | — | — | no |
| 1Inch Limit Order Protocol_ABDK.pdf | NonceManager | unmatched — not counted | — | — | no |
| 1Inch Limit Order Protocol_ABDK.pdf | OrderMixin | unmatched — not counted | — | — | no |
| 1Inch Limit Order Protocol_ABDK.pdf | OrderRFQMixin | unmatched — not counted | — | — | no |
| 1Inch Limit Order Protocol_ABDK.pdf | Permitable | unmatched — not counted | — | — | no |
| 1Inch Limit Order Protocol_ABDK.pdf | PredicateHelper | unmatched — not counted | — | — | no |
| 1Inch Limit Order Protocol_ABDK.pdf | RevertReasonParser | unmatched — not counted | — | — | no |
| 1Inch Limit Order Protocol_Chainsulting.pdf | AggregatorInterface | unmatched — not counted | — | — | no |
| 1Inch Limit Order Protocol_Chainsulting.pdf | AmountCalculator | unmatched — not counted | — | — | no |
| 1Inch Limit Order Protocol_Chainsulting.pdf | ArgumentsDecoder | unmatched — not counted | — | — | no |
| 1Inch Limit Order Protocol_Chainsulting.pdf | ChainlinkCalculator | unmatched — not counted | — | — | no |
| 1Inch Limit Order Protocol_Chainsulting.pdf | ERC1155Proxy | unmatched — not counted | — | — | no |
| 1Inch Limit Order Protocol_Chainsulting.pdf | ERC721Proxy | unmatched — not counted | — | — | no |
| 1Inch Limit Order Protocol_Chainsulting.pdf | ERC721ProxySafe | unmatched — not counted | — | — | no |
| 1Inch Limit Order Protocol_Chainsulting.pdf | IDaiLikePermit | unmatched — not counted | — | — | no |
| 1Inch Limit Order Protocol_Chainsulting.pdf | ImmutableOwner | unmatched — not counted | — | — | no |
| 1Inch Limit Order Protocol_Chainsulting.pdf | InteractiveNotificationReceiver | unmatched — not counted | — | — | no |
| 1Inch Limit Order Protocol_Chainsulting.pdf | LimitOrderProtocol | unmatched — not counted | — | — | no |
| 1Inch Limit Order Protocol_Chainsulting.pdf | NonceManager | unmatched — not counted | — | — | no |
| 1Inch Limit Order Protocol_Chainsulting.pdf | OrderMixin | unmatched — not counted | — | — | no |
| 1Inch Limit Order Protocol_Chainsulting.pdf | OrderRFQMixin | unmatched — not counted | — | — | no |
| 1Inch Limit Order Protocol_Chainsulting.pdf | Permitable | unmatched — not counted | — | — | no |
| 1Inch Limit Order Protocol_Chainsulting.pdf | PredicateHelper | unmatched — not counted | — | — | no |
| 1Inch Limit Order Protocol_Chainsulting.pdf | RevertReasonParser | unmatched — not counted | — | — | no |
| 1Inch Limit Order Protocol_CoinFabrik.pdf | AmountCalculator | unmatched — not counted | — | — | no |
| 1Inch Limit Order Protocol_CoinFabrik.pdf | ArgumentsDecoder | unmatched — not counted | — | — | no |
| 1Inch Limit Order Protocol_CoinFabrik.pdf | ERC1155Proxy | unmatched — not counted | — | — | no |
| 1Inch Limit Order Protocol_CoinFabrik.pdf | ERC20Proxy | unmatched — not counted | — | — | no |
| 1Inch Limit Order Protocol_CoinFabrik.pdf | ERC721Proxy | unmatched — not counted | — | — | no |
| 1Inch Limit Order Protocol_CoinFabrik.pdf | IEIP1271 | unmatched — not counted | — | — | no |
| 1Inch Limit Order Protocol_CoinFabrik.pdf | ImmutableOwner | unmatched — not counted | — | — | no |
| 1Inch Limit Order Protocol_CoinFabrik.pdf | InteractiveMaker | unmatched — not counted | — | — | no |
| 1Inch Limit Order Protocol_CoinFabrik.pdf | LimitOrderProtocol | unmatched — not counted | — | — | no |
| 1Inch Limit Order Protocol_CoinFabrik.pdf | NonceManager | unmatched — not counted | — | — | no |
| 1Inch Limit Order Protocol_CoinFabrik.pdf | PredicateHelper | unmatched — not counted | — | — | no |
| 1Inch Limit Order Protocol_CoinFabrik.pdf | SilentECDSA | unmatched — not counted | — | — | no |
| 1Inch Limit Order Protocol_CoinFabrik.pdf | UncheckedAddress | unmatched — not counted | — | — | no |
| 1Inch Limit Order Protocol_IgorGulamov.pdf | ChainlinkCalculator | unmatched — not counted | — | mentioned in warnings | no |
| 1Inch Limit Order Protocol_IgorGulamov.pdf | ERC721Proxy | unmatched — not counted | — | mentioned in warnings | no |
| 1Inch Limit Order Protocol_IgorGulamov.pdf | ERC721ProxySafe | unmatched — not counted | — | mentioned in warnings | no |
| 1Inch Limit Order Protocol_IgorGulamov.pdf | ERC1155Proxy | unmatched — not counted | — | mentioned in warnings | no |
| 1Inch Limit Order Protocol_IgorGulamov.pdf | PredicateHelper | unmatched — not counted | — | mentioned in warnings | no |
| 1Inch Limit Order Protocol_MixBytes.pdf | AggregatorInterface | unmatched — not counted | — | — | no |
| 1Inch Limit Order Protocol_MixBytes.pdf | AmountCalculator | unmatched — not counted | — | — | no |
| 1Inch Limit Order Protocol_MixBytes.pdf | ArgumentsDecoder | unmatched — not counted | — | — | no |
| 1Inch Limit Order Protocol_MixBytes.pdf | ChainlinkCalculator | unmatched — not counted | — | — | no |
| 1Inch Limit Order Protocol_MixBytes.pdf | IDaiLikePermit | unmatched — not counted | — | — | no |
| 1Inch Limit Order Protocol_MixBytes.pdf | InteractiveNotificationReceiver | unmatched — not counted | — | — | no |
| 1Inch Limit Order Protocol_MixBytes.pdf | LimitOrderProtocol | unmatched — not counted | — | — | no |
| 1Inch Limit Order Protocol_MixBytes.pdf | NonceManager | unmatched — not counted | — | — | no |
| 1Inch Limit Order Protocol_MixBytes.pdf | OrderMixin | unmatched — not counted | — | — | no |
| 1Inch Limit Order Protocol_MixBytes.pdf | OrderRFQMixin | unmatched — not counted | — | — | no |
| 1Inch Limit Order Protocol_MixBytes.pdf | Permitable | unmatched — not counted | — | — | no |
| 1Inch Limit Order Protocol_MixBytes.pdf | PredicateHelper | unmatched — not counted | — | — | no |
| 1Inch Limit Order Protocol_MixBytes.pdf | RevertReasonParser | unmatched — not counted | — | — | no |
| 1inch Limit Order Portocol_Certik.pdf | AmountCalculator | unmatched — not counted | — | — | no |
| 1inch Limit Order Portocol_Certik.pdf | ArgumentsDecoder | unmatched — not counted | — | — | no |
| 1inch Limit Order Portocol_Certik.pdf | ChainlinkCalculator | unmatched — not counted | — | — | no |
| 1inch Limit Order Portocol_Certik.pdf | ERC1155Proxy | unmatched — not counted | — | — | no |
| 1inch Limit Order Portocol_Certik.pdf | ERC721Proxy | unmatched — not counted | — | — | no |
| 1inch Limit Order Portocol_Certik.pdf | ERC721ProxySafe | unmatched — not counted | — | — | no |
| 1inch Limit Order Portocol_Certik.pdf | ImmutableOwner | unmatched — not counted | — | — | no |
| 1inch Limit Order Portocol_Certik.pdf | LimitOrderProtocol | unmatched — not counted | — | — | no |
| 1inch Limit Order Portocol_Certik.pdf | NonceManager | unmatched — not counted | — | — | no |
| 1inch Limit Order Portocol_Certik.pdf | OrderMixin | unmatched — not counted | — | — | no |
| 1inch Limit Order Portocol_Certik.pdf | OrderRFQMixin | unmatched — not counted | — | — | no |
| 1inch Limit Order Portocol_Certik.pdf | Permitable | unmatched — not counted | — | — | no |
| 1inch Limit Order Portocol_Certik.pdf | PredicateHelper | unmatched — not counted | — | — | no |
| 1inch Limit Order Portocol_Certik.pdf | RevertReasonParser | unmatched — not counted | — | — | no |
| ABDK - 1inch Limit Order Protocol audit.pdf | AmountCalculator | unmatched — not counted | — | — | no |
| ABDK - 1inch Limit Order Protocol audit.pdf | ArgumentsDecoder | unmatched — not counted | — | — | no |
| ABDK - 1inch Limit Order Protocol audit.pdf | ERC1155Proxy | unmatched — not counted | — | — | no |
| ABDK - 1inch Limit Order Protocol audit.pdf | ERC20Proxy | unmatched — not counted | — | — | no |
| ABDK - 1inch Limit Order Protocol audit.pdf | ERC721Proxy | unmatched — not counted | — | — | no |
| ABDK - 1inch Limit Order Protocol audit.pdf | ImmutableOwner | unmatched — not counted | — | — | no |
| ABDK - 1inch Limit Order Protocol audit.pdf | InteractiveMaker | unmatched — not counted | — | — | no |
| ABDK - 1inch Limit Order Protocol audit.pdf | LimitOrderProtocol | unmatched — not counted | — | — | no |
| ABDK - 1inch Limit Order Protocol audit.pdf | NonceManager | unmatched — not counted | — | — | no |
| ABDK - 1inch Limit Order Protocol audit.pdf | PredicateHelper | unmatched — not counted | — | — | no |
| ABDK - 1inch Limit Order Protocol audit.pdf | UncheckedAddress | unmatched — not counted | — | — | no |
| Chainsulting - 1inch Limit Order Protocol audit.pdf | LimitOrderProtocol | unmatched — not counted | — | — | no |
| Coinfabrik - 1inch Limit Order Protocol audit.pdf | AmountCalculator | unmatched — not counted | — | — | no |
| Coinfabrik - 1inch Limit Order Protocol audit.pdf | ArgumentsDecoder | unmatched — not counted | — | — | no |
| Coinfabrik - 1inch Limit Order Protocol audit.pdf | ERC1155Proxy | unmatched — not counted | — | — | no |
| Coinfabrik - 1inch Limit Order Protocol audit.pdf | ERC20Proxy | unmatched — not counted | — | — | no |
| Coinfabrik - 1inch Limit Order Protocol audit.pdf | ERC721Proxy | unmatched — not counted | — | — | no |
| Coinfabrik - 1inch Limit Order Protocol audit.pdf | IEIP1271 | unmatched — not counted | — | — | no |
| Coinfabrik - 1inch Limit Order Protocol audit.pdf | ImmutableOwner | unmatched — not counted | — | — | no |
| Coinfabrik - 1inch Limit Order Protocol audit.pdf | InteractiveMaker | unmatched — not counted | — | — | no |
| Coinfabrik - 1inch Limit Order Protocol audit.pdf | LimitOrderProtocol | unmatched — not counted | — | — | no |
| Coinfabrik - 1inch Limit Order Protocol audit.pdf | NonceManager | unmatched — not counted | — | — | no |
| Coinfabrik - 1inch Limit Order Protocol audit.pdf | PredicateHelper | unmatched — not counted | — | — | no |
| Coinfabrik - 1inch Limit Order Protocol audit.pdf | UncheckedAddress | unmatched — not counted | — | — | no |
| Coinspect - 1inch Limit Order Protocol audit.pdf | AmountCalculator | unmatched — not counted | — | — | no |
| Coinspect - 1inch Limit Order Protocol audit.pdf | ArgumentsDecoder | unmatched — not counted | — | — | no |
| Coinspect - 1inch Limit Order Protocol audit.pdf | ERC1155Proxy | unmatched — not counted | — | — | no |
| Coinspect - 1inch Limit Order Protocol audit.pdf | ERC20Proxy | unmatched — not counted | — | — | no |
| Coinspect - 1inch Limit Order Protocol audit.pdf | ERC721Proxy | unmatched — not counted | — | — | no |
| Coinspect - 1inch Limit Order Protocol audit.pdf | IEIP1271 | unmatched — not counted | — | — | no |
| Coinspect - 1inch Limit Order Protocol audit.pdf | ImmutableOwner | unmatched — not counted | — | — | no |
| Coinspect - 1inch Limit Order Protocol audit.pdf | InteractiveMaker | unmatched — not counted | — | — | no |
| Coinspect - 1inch Limit Order Protocol audit.pdf | LimitOrderProtocol | unmatched — not counted | — | — | no |
| Coinspect - 1inch Limit Order Protocol audit.pdf | NonceManager | unmatched — not counted | — | — | no |
| Coinspect - 1inch Limit Order Protocol audit.pdf | PredicateHelper | unmatched — not counted | — | — | no |
| Coinspect - 1inch Limit Order Protocol audit.pdf | TokenMock | unmatched — not counted | — | — | no |
| Coinspect - 1inch Limit Order Protocol audit.pdf | UncheckedAddress | unmatched — not counted | — | — | no |
| LimitSwap audit.pdf | LimitSwap | unmatched — not counted | — | Scope section: 'Flatten version of LimitSwap.sol' | no |
| LimitSwap audit.pdf | ERC20Proxy | unmatched — not counted | — | Contract defined in report text | no |
| LimitSwap audit.pdf | ERC721Proxy | unmatched — not counted | — | Contract defined in report text | no |
| LimitSwap audit.pdf | ERC1155Proxy | unmatched — not counted | — | Contract defined in report text | no |
| LimitSwap audit.pdf | ArrayParser | unmatched — not counted | — | Library defined in report text | no |
| LimitSwap audit.pdf | GetMakerAmountHelper | unmatched — not counted | — | Contract defined in report text | no |
| Pessimistic - 1inch Limit Order Protocol audit.pdf | AmountCalculator | unmatched — not counted | — | — | no |
| Pessimistic - 1inch Limit Order Protocol audit.pdf | LimitOrderProtocol | unmatched — not counted | — | — | no |
| Pessimistic - 1inch Limit Order Protocol audit.pdf | PredicateHelper | unmatched — not counted | — | — | no |
| Certik - 1inch Liquidity Protocol audit.pdf | BalanceAccounting | unmatched — not counted | — | — | no |
| Certik - 1inch Liquidity Protocol audit.pdf | BaseGovernanceModule | unmatched — not counted | — | — | no |
| Certik - 1inch Liquidity Protocol audit.pdf | Converter | unmatched — not counted | — | — | no |
| Certik - 1inch Liquidity Protocol audit.pdf | GovernanceFeeReceiver | unmatched — not counted | — | — | no |
| Certik - 1inch Liquidity Protocol audit.pdf | GovernanceMothership | unmatched — not counted | — | — | no |
| Certik - 1inch Liquidity Protocol audit.pdf | IGovernanceModule | unmatched — not counted | — | — | no |
| Certik - 1inch Liquidity Protocol audit.pdf | IMooniswapDeployer | unmatched — not counted | — | — | no |
| Certik - 1inch Liquidity Protocol audit.pdf | IMooniswapFactory | unmatched — not counted | — | — | no |
| Certik - 1inch Liquidity Protocol audit.pdf | IMooniswapFactoryGovernance | unmatched — not counted | — | — | no |
| Certik - 1inch Liquidity Protocol audit.pdf | IReferralFeeReceiver | unmatched — not counted | — | — | no |
| Certik - 1inch Liquidity Protocol audit.pdf | LiquidVoting | unmatched — not counted | — | — | no |
| Certik - 1inch Liquidity Protocol audit.pdf | Mooniswap | unmatched — not counted | — | — | no |
| Certik - 1inch Liquidity Protocol audit.pdf | MooniswapConstants | unmatched — not counted | — | — | no |
| Certik - 1inch Liquidity Protocol audit.pdf | MooniswapDeployer | unmatched — not counted | — | — | no |
| Certik - 1inch Liquidity Protocol audit.pdf | MooniswapFactory | unmatched — not counted | — | — | no |
| Certik - 1inch Liquidity Protocol audit.pdf | MooniswapFactoryGovernance | unmatched — not counted | — | — | no |
| Certik - 1inch Liquidity Protocol audit.pdf | MooniswapGovernance | unmatched — not counted | — | — | no |
| Certik - 1inch Liquidity Protocol audit.pdf | ReferralFeeReceiver | unmatched — not counted | — | — | no |
| Certik - 1inch Liquidity Protocol audit.pdf | RewardDistributionRecipient | unmatched — not counted | — | — | no |
| Certik - 1inch Liquidity Protocol audit.pdf | Rewards | unmatched — not counted | — | — | no |
| Certik - 1inch Liquidity Protocol audit.pdf | Sqrt | unmatched — not counted | — | — | no |
| Certik - 1inch Liquidity Protocol audit.pdf | UniERC20 | unmatched — not counted | — | — | no |
| Certik - 1inch Liquidity Protocol audit.pdf | VirtualBalance | unmatched — not counted | — | — | no |
| Certik - 1inch Liquidity Protocol audit.pdf | Vote | unmatched — not counted | — | — | no |
| Chainsulting - 1inch Liquidity Protocol Audit.pdf | BalanceAccounting | unmatched — not counted | — | — | no |
| Chainsulting - 1inch Liquidity Protocol Audit.pdf | BaseGovernanceModule | unmatched — not counted | — | — | no |
| Chainsulting - 1inch Liquidity Protocol Audit.pdf | Converter | unmatched — not counted | — | — | no |
| Chainsulting - 1inch Liquidity Protocol Audit.pdf | ERC20Permit | unmatched — not counted | — | — | no |
| Chainsulting - 1inch Liquidity Protocol Audit.pdf | GovernanceFeeReceiver | unmatched — not counted | — | — | no |
| Chainsulting - 1inch Liquidity Protocol Audit.pdf | GovernanceMothership | unmatched — not counted | — | — | no |
| Chainsulting - 1inch Liquidity Protocol Audit.pdf | IGovernanceModule | unmatched — not counted | — | — | no |
| Chainsulting - 1inch Liquidity Protocol Audit.pdf | IMooniswapDeployer | unmatched — not counted | — | — | no |
| Chainsulting - 1inch Liquidity Protocol Audit.pdf | IMooniswapFactoryGovernance | unmatched — not counted | — | — | no |
| Chainsulting - 1inch Liquidity Protocol Audit.pdf | IReferralFeeReceiver | unmatched — not counted | — | — | no |
| Chainsulting - 1inch Liquidity Protocol Audit.pdf | IRewardDistributionRecipient | unmatched — not counted | — | — | no |
| Chainsulting - 1inch Liquidity Protocol Audit.pdf | LiquidVoting | unmatched — not counted | — | — | no |
| Chainsulting - 1inch Liquidity Protocol Audit.pdf | Mooniswap | unmatched — not counted | — | — | no |
| Chainsulting - 1inch Liquidity Protocol Audit.pdf | MooniswapConstants | unmatched — not counted | — | — | no |
| Chainsulting - 1inch Liquidity Protocol Audit.pdf | MooniswapDeployer | unmatched — not counted | — | — | no |
| Chainsulting - 1inch Liquidity Protocol Audit.pdf | MooniswapFactory | unmatched — not counted | — | — | no |
| Chainsulting - 1inch Liquidity Protocol Audit.pdf | MooniswapFactoryGovernance | unmatched — not counted | — | — | no |
| Chainsulting - 1inch Liquidity Protocol Audit.pdf | MooniswapGovernance | unmatched — not counted | — | — | no |
| Chainsulting - 1inch Liquidity Protocol Audit.pdf | ReferralFeeReceiver | unmatched — not counted | — | — | no |
| Chainsulting - 1inch Liquidity Protocol Audit.pdf | Rewards | unmatched — not counted | — | — | no |
| Chainsulting - 1inch Liquidity Protocol Audit.pdf | Sqrt | unmatched — not counted | — | — | no |
| Chainsulting - 1inch Liquidity Protocol Audit.pdf | UniERC20 | unmatched — not counted | — | — | no |
| Chainsulting - 1inch Liquidity Protocol Audit.pdf | VirtualBalance | unmatched — not counted | — | — | no |
| Chainsulting - 1inch Liquidity Protocol Audit.pdf | Vote | unmatched — not counted | — | — | no |
| Coinfabrik - 1inch Liquidity Protocol Audit.pdf | BalanceAccounting | unmatched — not counted | — | — | no |
| Coinfabrik - 1inch Liquidity Protocol Audit.pdf | BaseGovernanceModule | unmatched — not counted | — | — | no |
| Coinfabrik - 1inch Liquidity Protocol Audit.pdf | Converter | unmatched — not counted | — | — | no |
| Coinfabrik - 1inch Liquidity Protocol Audit.pdf | GovernanceFeeReceiver | unmatched — not counted | — | — | no |
| Coinfabrik - 1inch Liquidity Protocol Audit.pdf | GovernanceMothership | unmatched — not counted | — | — | no |
| Coinfabrik - 1inch Liquidity Protocol Audit.pdf | IGovernanceModule | unmatched — not counted | — | — | no |
| Coinfabrik - 1inch Liquidity Protocol Audit.pdf | IMooniswapDeployer | unmatched — not counted | — | — | no |
| Coinfabrik - 1inch Liquidity Protocol Audit.pdf | IMooniswapFactoryGovernance | unmatched — not counted | — | — | no |
| Coinfabrik - 1inch Liquidity Protocol Audit.pdf | IReferralFeeReceiver | unmatched — not counted | — | — | no |
| Coinfabrik - 1inch Liquidity Protocol Audit.pdf | IRewardDistributionRecipient | unmatched — not counted | — | — | no |
| Coinfabrik - 1inch Liquidity Protocol Audit.pdf | LiquidVoting | unmatched — not counted | — | — | no |
| Coinfabrik - 1inch Liquidity Protocol Audit.pdf | Mooniswap | unmatched — not counted | — | — | no |
| Coinfabrik - 1inch Liquidity Protocol Audit.pdf | MooniswapConstants | unmatched — not counted | — | — | no |
| Coinfabrik - 1inch Liquidity Protocol Audit.pdf | MooniswapDeployer | unmatched — not counted | — | — | no |
| Coinfabrik - 1inch Liquidity Protocol Audit.pdf | MooniswapFactory | unmatched — not counted | — | — | no |
| Coinfabrik - 1inch Liquidity Protocol Audit.pdf | MooniswapFactoryGovernance | unmatched — not counted | — | — | no |
| Coinfabrik - 1inch Liquidity Protocol Audit.pdf | MooniswapGovernance | unmatched — not counted | — | — | no |
| Coinfabrik - 1inch Liquidity Protocol Audit.pdf | ReferralFeeReceiver | unmatched — not counted | — | — | no |
| Coinfabrik - 1inch Liquidity Protocol Audit.pdf | Rewards | unmatched — not counted | — | — | no |
| Coinfabrik - 1inch Liquidity Protocol Audit.pdf | Sqrt | unmatched — not counted | — | — | no |
| Coinfabrik - 1inch Liquidity Protocol Audit.pdf | UniERC20 | unmatched — not counted | — | — | no |
| Coinfabrik - 1inch Liquidity Protocol Audit.pdf | VirtualBalance | unmatched — not counted | — | — | no |
| Coinfabrik - 1inch Liquidity Protocol Audit.pdf | Vote | unmatched — not counted | — | — | no |
| Cure53 - 1inch Liquidity Protocol audit.pdf | BalanceAccounting | unmatched — not counted | — | — | no |
| Cure53 - 1inch Liquidity Protocol audit.pdf | BaseGovernanceModule | unmatched — not counted | — | — | no |
| Cure53 - 1inch Liquidity Protocol audit.pdf | BaseRewards | unmatched — not counted | — | — | no |
| Cure53 - 1inch Liquidity Protocol audit.pdf | Converter | unmatched — not counted | — | — | no |
| Cure53 - 1inch Liquidity Protocol audit.pdf | ExchangeConstants | unmatched — not counted | — | — | no |
| Cure53 - 1inch Liquidity Protocol audit.pdf | ExchangeGovernance | unmatched — not counted | — | — | no |
| Cure53 - 1inch Liquidity Protocol audit.pdf | ExplicitLiquidVoting | unmatched — not counted | — | — | no |
| Cure53 - 1inch Liquidity Protocol audit.pdf | FarmingRewards | unmatched — not counted | — | — | no |
| Cure53 - 1inch Liquidity Protocol audit.pdf | GovernanceFeeReceiver | unmatched — not counted | — | — | no |
| Cure53 - 1inch Liquidity Protocol audit.pdf | GovernanceMothership | unmatched — not counted | — | — | no |
| Cure53 - 1inch Liquidity Protocol audit.pdf | GovernanceRewards | unmatched — not counted | — | — | no |
| Cure53 - 1inch Liquidity Protocol audit.pdf | IGovernanceModule | unmatched — not counted | — | — | no |
| Cure53 - 1inch Liquidity Protocol audit.pdf | IMooniswapDeployer | unmatched — not counted | — | — | no |
| Cure53 - 1inch Liquidity Protocol audit.pdf | IMooniswapFactoryGovernance | unmatched — not counted | — | — | no |
| Cure53 - 1inch Liquidity Protocol audit.pdf | IReferralFeeReceiver | unmatched — not counted | — | — | no |
| Cure53 - 1inch Liquidity Protocol audit.pdf | IRewardDistributionRecipient | unmatched — not counted | — | — | no |
| Cure53 - 1inch Liquidity Protocol audit.pdf | LiquidVoting | unmatched — not counted | — | — | no |
| Cure53 - 1inch Liquidity Protocol audit.pdf | Mooniswap | unmatched — not counted | — | — | no |
| Cure53 - 1inch Liquidity Protocol audit.pdf | MooniswapConstants | unmatched — not counted | — | — | no |
| Cure53 - 1inch Liquidity Protocol audit.pdf | MooniswapDeployer | unmatched — not counted | — | — | no |
| Cure53 - 1inch Liquidity Protocol audit.pdf | MooniswapFactory | unmatched — not counted | — | — | no |
| Cure53 - 1inch Liquidity Protocol audit.pdf | MooniswapFactoryGovernance | unmatched — not counted | — | — | no |
| Cure53 - 1inch Liquidity Protocol audit.pdf | MooniswapGovernance | unmatched — not counted | — | — | no |
| Cure53 - 1inch Liquidity Protocol audit.pdf | ReferralFeeReceiver | unmatched — not counted | — | — | no |
| Cure53 - 1inch Liquidity Protocol audit.pdf | Rewards | unmatched — not counted | — | — | no |
| Cure53 - 1inch Liquidity Protocol audit.pdf | SafeCast | unmatched — not counted | — | — | no |
| Cure53 - 1inch Liquidity Protocol audit.pdf | Sqrt | unmatched — not counted | — | — | no |
| Cure53 - 1inch Liquidity Protocol audit.pdf | UniERC20 | unmatched — not counted | — | — | no |
| Cure53 - 1inch Liquidity Protocol audit.pdf | VirtualBalance | unmatched — not counted | — | — | no |
| Cure53 - 1inch Liquidity Protocol audit.pdf | VirtualVote | unmatched — not counted | — | — | no |
| Cure53 - 1inch Liquidity Protocol audit.pdf | Vote | unmatched — not counted | — | — | no |
| Cure53 - 1inch Liquidity Protocol audit.pdf | Voting | unmatched — not counted | — | — | no |
| Gulamov - 1inch Farming audit.pdf | BaseRewards | unmatched — not counted | — | — | no |
| Gulamov - 1inch Farming audit.pdf | FarmingRewards | unmatched — not counted | — | — | no |
| Gulamov - 1inch Liquidity Protocol audit.pdf | Converter | unmatched — not counted | — | — | no |
| Gulamov - 1inch Liquidity Protocol audit.pdf | ExplicitLiquidVoting | unmatched — not counted | — | — | no |
| Gulamov - 1inch Liquidity Protocol audit.pdf | FarmingRewards | unmatched — not counted | — | — | no |
| Gulamov - 1inch Liquidity Protocol audit.pdf | GovernanceFeeReceiver | unmatched — not counted | — | — | no |
| Gulamov - 1inch Liquidity Protocol audit.pdf | GovernanceMothership | unmatched — not counted | — | — | no |
| Gulamov - 1inch Liquidity Protocol audit.pdf | LiquidVoting | unmatched — not counted | — | — | no |
| Gulamov - 1inch Liquidity Protocol audit.pdf | Mooniswap | unmatched — not counted | — | — | no |
| Gulamov - 1inch Liquidity Protocol audit.pdf | ReferralFeeReceiver | unmatched — not counted | — | — | no |
| Gulamov - 1inch Liquidity Protocol audit.pdf | Rewards | unmatched — not counted | — | — | no |
| Gulamov - 1inch Liquidity Protocol audit.pdf | UniERC20 | unmatched — not counted | — | — | no |
| MixBytes - 1inch Liquidity Protocol Report.pdf | BalanceAccounting | unmatched — not counted | — | — | no |
| MixBytes - 1inch Liquidity Protocol Report.pdf | BaseGovernanceModule | unmatched — not counted | — | — | no |
| MixBytes - 1inch Liquidity Protocol Report.pdf | Converter | unmatched — not counted | — | — | no |
| MixBytes - 1inch Liquidity Protocol Report.pdf | GovernanceFeeReceiver | unmatched — not counted | — | — | no |
| MixBytes - 1inch Liquidity Protocol Report.pdf | GovernanceMothership | unmatched — not counted | — | — | no |
| MixBytes - 1inch Liquidity Protocol Report.pdf | IGovernanceModule | unmatched — not counted | — | — | no |
| MixBytes - 1inch Liquidity Protocol Report.pdf | IMooniswapDeployer | unmatched — not counted | — | — | no |
| MixBytes - 1inch Liquidity Protocol Report.pdf | IMooniswapFactoryGovernance | unmatched — not counted | — | — | no |
| MixBytes - 1inch Liquidity Protocol Report.pdf | IReferralFeeReceiver | unmatched — not counted | — | — | no |
| MixBytes - 1inch Liquidity Protocol Report.pdf | IRewardDistributionRecipient | unmatched — not counted | — | — | no |
| MixBytes - 1inch Liquidity Protocol Report.pdf | LiquidVoting | unmatched — not counted | — | — | no |
| MixBytes - 1inch Liquidity Protocol Report.pdf | Mooniswap | unmatched — not counted | — | — | no |
| MixBytes - 1inch Liquidity Protocol Report.pdf | MooniswapConstants | unmatched — not counted | — | — | no |
| MixBytes - 1inch Liquidity Protocol Report.pdf | MooniswapDeployer | unmatched — not counted | — | — | no |
| MixBytes - 1inch Liquidity Protocol Report.pdf | MooniswapFactory | unmatched — not counted | — | — | no |
| MixBytes - 1inch Liquidity Protocol Report.pdf | MooniswapFactoryGovernance | unmatched — not counted | — | — | no |
| MixBytes - 1inch Liquidity Protocol Report.pdf | MooniswapGovernance | unmatched — not counted | — | — | no |
| MixBytes - 1inch Liquidity Protocol Report.pdf | ReferralFeeReceiver | unmatched — not counted | — | — | no |
| MixBytes - 1inch Liquidity Protocol Report.pdf | Rewards | unmatched — not counted | — | — | no |
| MixBytes - 1inch Liquidity Protocol Report.pdf | Sqrt | unmatched — not counted | — | — | no |
| MixBytes - 1inch Liquidity Protocol Report.pdf | UniERC20 | unmatched — not counted | — | — | no |
| MixBytes - 1inch Liquidity Protocol Report.pdf | VirtualBalance | unmatched — not counted | — | — | no |
| MixBytes - 1inch Liquidity Protocol Report.pdf | Vote | unmatched — not counted | — | — | no |
| 1inch Multi-Farming Contracts V3_Chainsafe.pdf | FarmAccounting | unmatched — not counted | — | mentioned in findings as 'FarmAccounting, line 38' and 'FarmAccounting, line 39' | no |
| 1inch Multi-Farming Contracts V3_CoinFabrik.pdf | FarmingLib | unmatched — not counted | — | listed in scope | no |
| 1inch Multi-Farming Contracts V3_CoinFabrik.pdf | FarmingPod | unmatched — not counted | — | listed in scope | no |
| 1inch Multi-Farming Contracts V3_CoinFabrik.pdf | FarmingPool | unmatched — not counted | — | listed in scope | no |
| 1inch Multi-Farming Contracts V3_CoinFabrik.pdf | MultiFarmingPool | unmatched — not counted | — | listed in scope | no |
| 1inch Multi-Farming Contracts V3_CoinFabrik.pdf | FarmAccounting | unmatched — not counted | — | listed in scope | no |
| 1inch Multi-Farming Contracts V3_CoinFabrik.pdf | UserAccounting | unmatched — not counted | — | listed in scope | no |
| 1inch Multi-Farming Contracts V3_CoinFabrik.pdf | IFarmingPod | unmatched — not counted | — | listed in scope | no |
| 1inch Multi-Farming Contracts V3_CoinFabrik.pdf | IFarmingPool | unmatched — not counted | — | listed in scope | no |
| 1inch Multi-Farming Contracts V3_CoinFabrik.pdf | IMultiFarmingPod | unmatched — not counted | — | listed in scope | no |
| 1inch Multi-Farming Contracts V3_Decurity.pdf | FarmingPool | unmatched — not counted | — | Listed in scope table and findings | no |
| 1inch Multi-Farming Contracts V3_Decurity.pdf | FarmingPod | unmatched — not counted | — | Listed in scope table and findings | no |
| 1inch Multi-Farming Contracts V3_Decurity.pdf | MultiFarmingPod | unmatched — not counted | — | Listed in scope table and findings | no |
| 1inch Multi-Farming Contracts V3_Decurity.pdf | FarmAccounting | unmatched — not counted | — | Listed in scope table and findings | no |
| 1inch Multi-Farming Contracts V3_Decurity.pdf | UserAccounting | unmatched — not counted | — | Listed in scope table and findings | no |
| 1inch Multi-Farming Contracts V3_Gulamov.pdf | UserAccounting | unmatched — not counted | — | mentioned in findings and scope | no |
| 1inch Multi-Farming Contracts V3_Peckshield.pdf | FarmingPool | unmatched — not counted | — | Target in finding PVE-001 | no |
| 1inch Multi-Farming Contracts V3_Peckshield.pdf | ERC20Farmable | unmatched — not counted | — | Target in finding PVE-002 | no |
| 1inch Multi-Farming Contracts V3_Peckshield.pdf | BaseFarm | unmatched — not counted | — | Target in finding PVE-003 | no |
| 1inch Multi-Farming Contracts V3_Pessimistic.pdf | FarmingPool | unmatched — not counted | — | mentioned in audit process and findings | no |
| 1inch Multi-Farming Contracts V3_Pessimistic.pdf | FarmingPod | unmatched — not counted | — | mentioned in findings L01, N01, N02 | no |
| 1inch Multi-Farming Contracts V3_Pessimistic.pdf | MultiFarmingPod | unmatched — not counted | — | mentioned in project description and findings M01, L01, N01, N02 | no |
| 1inch Multi-Farming Contracts V3_Pessimistic.pdf | Pod | unmatched — not counted | — | mentioned in inheritance order L01 | no |
| 1inch Multi-Farming Contracts V3_Pessimistic.pdf | Ownable | unmatched — not counted | — | mentioned in inheritance order L01 | no |
| 1inch Multi-Farming Contracts V3_Pessimistic.pdf | FarmAccounting | unmatched — not counted | — | mentioned in finding L03 | no |
| 1inch Multi-Farming Contracts V3_Smartstate.pdf | FarmingLib | unmatched — not counted | — | listed in scope table and verification checksums | no |
| 1inch Multi-Farming Contracts V3_Smartstate.pdf | FarmingPod | unmatched — not counted | — | listed in scope table and verification checksums | no |
| 1inch Multi-Farming Contracts V3_Smartstate.pdf | FarmingPool | unmatched — not counted | — | listed in scope table and verification checksums | no |
| 1inch Multi-Farming Contracts V3_Smartstate.pdf | MultiFarmingPod | unmatched — not counted | — | listed in scope table and verification checksums | no |
| Solana Fusion - Decurity v1.pdf | fusion-swap | unmatched — not counted | — | listed in scope and findings | no |
| Solana Fusion - Decurity v1.pdf | whitelist | unmatched — not counted | — | listed in scope and findings | no |
| Solana Fusion - Hexens v1.pdf | FusionSwap | unmatched — not counted | — | listed in scope and findings | no |
| Solana Fusion - Hexens v1.pdf | Whitelist | unmatched — not counted | — | listed in scope and findings | no |
| Solana Fusion - Open Zepplin v1.pdf | fusion_swap | unmatched — not counted | — | listed in scope | no |
| Solana Fusion - Open Zepplin v1.pdf | whitelist | unmatched — not counted | — | listed in scope | no |
| Solana Fusion - Ottersec v1.pdf | solana-fusion | unmatched — not counted | — | Scope section: 'solana-fusion' program assessed | no |
| Solana Fusion - Quantstamp v1.pdf | fusion-swap | unmatched — not counted | — | listed in scope files | no |
| Solana Fusion - Zenith v1.01.pdf | fusion-swap | unmatched — not counted | — | Listed in scope as files programs/* under repository solana-fusion-protocol | no |
| Solana Fusion v1_Kudelski.pdf | fusion-swap | unmatched — not counted | — | listed in scope | no |
| Solana Fusion v1_Kudelski.pdf | whitelist | unmatched — not counted | — | listed in scope | no |
| Solana Fusion v1_OffsideLabs.pdf | fusion-swap | unmatched — not counted | — | listed in scope | no |
| Solana Fusion v1_OffsideLabs.pdf | whitelist | unmatched — not counted | — | listed in scope | no |
| Solana cross-chain v1.0-Hexens.pdf | Order | unmatched — not counted | — | mentioned in scope and findings | no |
| Solana cross-chain v1.0-Hexens.pdf | EscrowSrc | unmatched — not counted | — | mentioned in scope and findings | no |
| Solana cross-chain v1.0-Hexens.pdf | CreateEscrow | unmatched — not counted | — | mentioned in findings | no |
| Solana cross-chain v1.0-Hexens.pdf | Withdraw | unmatched — not counted | — | mentioned in findings | no |
| Solana cross-chain v1.0-Hexens.pdf | PublicWithdraw | unmatched — not counted | — | mentioned in findings | no |
| Solana cross-chain v1.0-Hexens.pdf | PublicCancelEscrow | unmatched — not counted | — | mentioned in findings | no |
| Solana cross-chain v1.0-Hexens.pdf | CancelEscrow | unmatched — not counted | — | mentioned in findings | no |
| Solana cross-chain v1.0-Hexens.pdf | CancelOrderbyResolver | unmatched — not counted | — | mentioned in findings | no |
| Solana cross-chain v1.0-Hexens.pdf | RescueFundsForOrder | unmatched — not counted | — | mentioned in findings | no |
| Solana cross-chain v1.0-Zenith.pdf | cross-chain-escrow-src | unmatched — not counted | — | listed in scope table and findings target | no |
| Solana cross-chain v1.0-Zenith.pdf | cross-chain-escrow-dst | unmatched — not counted | — | listed in scope table and findings target | no |
| Solana cross-chain v1.0-Zenith.pdf | whitelist | unmatched — not counted | — | listed in scope table | no |
| Solana cross-chain v1.0_Decurity.pdf | cross-chain-escrow-src | unmatched — not counted | — | listed in scope and findings | no |
| Solana cross-chain v1.0_Decurity.pdf | cross-chain-escrow-dst | unmatched — not counted | — | listed in scope and findings | no |
| Solana cross-chain v1.0_Decurity.pdf | escrow | unmatched — not counted | — | listed in scope and findings | no |
| Solana cross-chain v1.0_OffsideLabs.pdf | cross-chain-escrow-src | unmatched — not counted | — | listed in scope | no |
| Solana cross-chain v1.0_OffsideLabs.pdf | cross-chain-escrow-dst | unmatched — not counted | — | listed in scope | no |
| Solana cross-chain v1.0_OffsideLabs.pdf | whitelist | unmatched — not counted | — | listed in scope | no |
| Solana cross-chain v1.0_Sherlock.pdf | cross-chain-escrow-dst | unmatched — not counted | — | listed in scope | no |
| Solana cross-chain v1.0_Sherlock.pdf | cross-chain-escrow-src | unmatched — not counted | — | listed in scope | no |
| Solana cross-chain v1.0_Sherlock.pdf | whitelist | unmatched — not counted | — | listed in scope | no |
| Solana cross-chain v1.1_Decurity.pdf | cross-chain-escrow-src | unmatched — not counted | — | listed in scope and findings | no |
| Solana cross-chain v1.1_Decurity.pdf | cross-chain-escrow-dst | unmatched — not counted | — | listed in scope and findings | no |
| Solana cross-chain v1.1_Hexens.pdf | cross-chain-escrow-dst | unmatched — not counted | — | listed in scope and findings | no |
| Solana cross-chain v1.1_Hexens.pdf | cross-chain-escrow-src | unmatched — not counted | — | listed in scope and findings | no |
| Solana cross-chain v1.1_OffsideLabs.pdf | cross-chain-escrow-src | unmatched — not counted | — | listed in scope file listing | no |
| Solana cross-chain v1.1_OffsideLabs.pdf | cross-chain-escrow-dst | unmatched — not counted | — | listed in scope file listing | no |
| Solana cross-chain v1.1_OffsideLabs.pdf | whitelist | unmatched — not counted | — | listed in scope file listing | no |
| Solana cross-chain v1.1_Sherlock.pdf | cross-chain-escrow-dst | unmatched — not counted | — | listed in scope | no |
| Solana cross-chain v1.1_Sherlock.pdf | cross-chain-escrow-src | unmatched — not counted | — | listed in scope | no |
| Solana cross-chain v1.1_Sherlock.pdf | whitelist | unmatched — not counted | — | listed in scope | no |
| Chainsulting - 1inch Vesting Contract audit.pdf | StepVesting | unmatched — not counted | — | — | no |
| Coinfabrik - 1inch Vesting Contract audit.pdf | StepVesting | unmatched — not counted | — | — | no |
| Gulamov - 1inch Vesting Contract audit.pdf | StepVesting | unmatched — not counted | — | — | no |
| Pessimistic - 1inch Vesting Contract audit.pdf | StepVesting | unmatched — not counted | — | — | no |
| MixBytes.pdf | ERC20Permit | unmatched — not counted | — | listed in FILES LISTING | no |
| MixBytes.pdf | OneInch | unmatched — not counted | — | listed in FILES LISTING | no |
| MixBytes.pdf | ECDSA | unmatched — not counted | — | listed in FILES LISTING | no |
| MixBytes.pdf | EIP712 | unmatched — not counted | — | listed in FILES LISTING | no |
| MixBytes.pdf | IERC20Permit | unmatched — not counted | — | listed in FILES LISTING | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 128 |
| upstream | 4 |
| standard_library | 11 |
| needs_review | 247 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 138
- Inherited remapped matches: 0
- Address-book scope dispositions: 7 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 1212 unmatched
- Matched-own operational status: 7 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=77, low=3, medium=7
- Match method counts: unique_name=7

Zero-match audit list:

- [8160] 1inch Aggregation Router V5_ABDK Consulting.pdf
- [8161] 1inch Aggregation Router V5_CoinFabrik.pdf
- [8162] 1inch Aggregation Router V5_Consensys.pdf
- [8163] 1inch Aggregation Router V5_IgorGulamov.pdf
- [8164] 1inch Aggregation Router V5_MixBytes.pdf
- [8165] 1inch Aggregation Router V5_OpenZepplin.pdf
- [8166] 1inch Aggregation Router V5_PeckShield.pdf
- [8167] 1inch Aggregation Router V5_Pessimistic.pdf
- [8168] 1inch Aggregation Router V5_Statemind.pdf
- [8169] 1inch Aggregation Router V5_Zokyo.pdf
- [8170] 1inch Aggregation Router V6.1_Decurity.pdf
- [8173] 1inch Aggregation Router V6.1_PeckShield.pdf
- [8174] 1inch Aggregation Router V6.2_Decurity.pdf
- [8175] 1inch Aggregation Router V6.2_Hexens.pdf
- [8179] 1inch Aggregation Router V6_Hexens.pdf
- [8181] 1inch Aggregation Router V6_PeckShield.pdf
- [8183] 1inch Limit Order Protocol v4.1_OpenZeppelin.pdf
- [8184] 1inch Limit Order Protocol v4_OpenZeppelin.pdf
- [8185] Certik - 1inch v2 Audit Report.pdf
- [8186] Chainsulting - 1inch v2 Audit Report.pdf
- [8187] Coinfabrik - 1inch v2 Audit Report.pdf
- [8188] Hacken - 1inch v2 Audit Report.pdf
- [8189] Haechi - 1inch v2 Audit Report.pdf
- [8190] MixBytes - 1inch v2 Audit Report.pdf
- [8191] Scott Bigelow - 1inch v2 Audit Report.pdf
- [8192] Slowmist - 1inch v2 Audit Report.pdf
- [8193] Certik - 1inch v3 Audit Report.pdf
- [8194] Gulamov - 1inch v3 Audit Report.pdf
- [8195] MixBytes - 1inch v3 Audit Report.pdf
- [8196] 1Inch Aggregation Router v4 Audit_MixBites.pdf
- [8197] 1inch Aggregation Router v4 Audit_ABDK.pdf
- [8198] 1inch Aggregation Router v4 Audit_Chainsulting.pdf
- [8199] 1inch Aggregation Router v4 Audit_Coinfabrik.pdf
- [8200] 1inch Aggregation Router v4 Audit_Consensys.pdf
- [8201] 1inch Aggregation Router v4 Audit_Igor Gulamov.pdf
- [8202] 1inch Aggregation Router v4 Audit_Pessimistic.pdf
- [8203] 1inch-cross-chain-swap-v1-AstraSec.pdf
- [8204] 1inch-cross-chain-swap-v1-Consensys.pdf
- [8205] 1inch-cross-chain-swap-v1-Decurity.pdf
- [8206] 1inch-cross-chain-swap-v1-Igor Gulamov.pdf
- [8207] 1inch-cross-chain-swap-v1-Open Zeppelin.pdf
- [8208] 1inch-cross-chain-swap-v1-Pessimistic.pdf
- [8209] 1inch-cross-chain-v2-Astrasec.pdf
- [8210] 1inch-cross-chain-v2-Consensys.pdf
- [8211] 1inch-cross-chain-v2-Decurity.pdf
- [8212] 1inch-cross-chain-v2-Igor Gulamov.pdf
- [8213] 1inch-cross-chain-v2-Open Zeppelin.pdf
- [8214] 1inch-cross-chain-v2-Pessimistic.pdf
- [8215] 1inch Crosschain Fee v1.1_Certora.pdf
- [8216] 1inch Crosschain Fee v1.1_Decurity.pdf
- [8217] 1inch Crosschain Fee v1.1_Hexens.pdf
- [8218] 1inch Crosschain Fee v1.1_Open Zeppelin.pdf
- [8219] 1inch Crosschain Fee v1.1_Sherlock.pdf
- [8220] Fee flow v1-AstraSec.pdf
- [8221] Fee flow v1-Bailsec.pdf
- [8222] Fee flow v1-ChainLight.pdf
- [8223] Fee flow v1-Decurity.pdf
- [8224] Fee flow v1-Open Zepplin.pdf
- [8225] Fee flow v1-Sherlock.pdf
- [8226] 1inch FixedRateSwap_Ackee Blockchain.pdf
- [8227] 1inch FixedRateSwap_Chainsulting.pdf
- [8228] 1inch FixedRateSwap_CoinFabrik.pdf
- [8229] 1inch FixedRateSwap_MixedBytes.pdf
- [8230] 1inch FixedRateSwap_Pessimistic.pdf
- [8231] 1inch Settlement v2.1_AstraSec.pdf
- [8232] 1inch Settlement v2.1_Decurity.pdf
- [8233] 1inch Settlement v2.1_Hexens.pdf
- [8234] 1inch Settlement v2.1_Open Zepplin.pdf
- [8235] 1inch Settlement v2.1_Pashov.pdf
- [8236] 1inch Settlement v2.1_Pessemistic.pdf
- [8237] 1inch Settlement v2_Decurity.pdf
- [8238] 1inch Settlement v2_Hexens.pdf
- [8239] 1inch Settlement v2_Open Zeppelin.pdf
- [8240] 1inch Settlement v2_Peckshield.pdf
- [8241] 1inch Settlement v2_Pessimistic.pdf
- [8242] 1inch_FusionMode_ABDK.pdf
- [8243] 1inch_FusionMode_ChainSecurity1.pdf
- [8244] 1inch_FusionMode_ChainSecurity2.pdf
- [8245] 1inch_FusionMode_ChainSecurity3.pdf
- [8246] 1inch_FusionMode_Decurity.pdf
- [8247] 1inch_FusionMode_Hexens.1.pdf
- [8248] 1inch_FusionMode_Hexens.2.pdf
- [8249] 1inch_FusionMode_OpenZepplin.1.pdf
- [8250] 1inch_FusionMode_OpenZepplin.2.pdf
- [8251] 1inch_FusionMode_Oxorio.pdf
- [8252] 1inch_FusionMode_Peckshield.pdf
- [8253] 1inch_FusionMode_Pessimistic.pdf
- [8254] 1inch_FusionMode_iosiro.pdf
- [8255] 1inch_TokenPlugins-Pashov.pdf
- [8257] 1Inch Limit Order Protocol_ABDK.pdf
- [8258] 1Inch Limit Order Protocol_Chainsulting.pdf
- [8259] 1Inch Limit Order Protocol_CoinFabrik.pdf
- [8260] 1Inch Limit Order Protocol_IgorGulamov.pdf
- [8261] 1Inch Limit Order Protocol_MixBytes.pdf
- [8262] 1inch Limit Order Portocol_Certik.pdf
- [8263] ABDK - 1inch Limit Order Protocol audit.pdf
- [8264] Chainsulting - 1inch Limit Order Protocol audit.pdf
- [8265] Coinfabrik - 1inch Limit Order Protocol audit.pdf
- [8266] Coinspect - 1inch Limit Order Protocol audit.pdf
- [8267] LimitSwap audit.pdf
- [8268] Pessimistic - 1inch Limit Order Protocol audit.pdf
- [8269] Certik - 1inch Liquidity Protocol audit.pdf
- [8270] Chainsulting - 1inch Liquidity Protocol Audit.pdf
- [8271] Coinfabrik - 1inch Liquidity Protocol Audit.pdf
- [8272] Cure53 - 1inch Liquidity Protocol audit.pdf
- [8273] Gulamov - 1inch Farming audit.pdf
- [8274] Gulamov - 1inch Liquidity Protocol audit.pdf
- [8275] MixBytes - 1inch Liquidity Protocol Report.pdf
- [8276] 1inch Multi-Farming Contracts V3_Chainsafe.pdf
- [8277] 1inch Multi-Farming Contracts V3_CoinFabrik.pdf
- [8278] 1inch Multi-Farming Contracts V3_Decurity.pdf
- [8279] 1inch Multi-Farming Contracts V3_Gulamov.pdf
- [8280] 1inch Multi-Farming Contracts V3_Peckshield.pdf
- [8281] 1inch Multi-Farming Contracts V3_Pessimistic.pdf
- [8282] 1inch Multi-Farming Contracts V3_Smartstate.pdf
- [8284] Solana Fusion - Decurity v1.pdf
- [8285] Solana Fusion - Hexens v1.pdf
- [8286] Solana Fusion - Open Zepplin v1.pdf
- [8287] Solana Fusion - Ottersec v1.pdf
- [8288] Solana Fusion - Quantstamp v1.pdf
- [8289] Solana Fusion - Zenith v1.01.pdf
- [8290] Solana Fusion v1_Kudelski.pdf
- [8291] Solana Fusion v1_OffsideLabs.pdf
- [8292] Solana cross-chain v1.0-Hexens.pdf
- [8293] Solana cross-chain v1.0-Zenith.pdf
- [8294] Solana cross-chain v1.0_Decurity.pdf
- [8295] Solana cross-chain v1.0_OffsideLabs.pdf
- [8296] Solana cross-chain v1.0_Sherlock.pdf
- [8297] Solana cross-chain v1.1_Decurity.pdf
- [8298] Solana cross-chain v1.1_Hexens.pdf
- [8299] Solana cross-chain v1.1_OffsideLabs.pdf
- [8300] Solana cross-chain v1.1_Sherlock.pdf
- [8301] Solana cross-chain v1.1_Zenith.pdf
- [8302] Chainsulting - 1inch Vesting Contract audit.pdf
- [8303] Coinfabrik - 1inch Vesting Contract audit.pdf
- [8304] Gulamov - 1inch Vesting Contract audit.pdf
- [8305] Pessimistic - 1inch Vesting Contract audit.pdf
- [8416] MixBytes.pdf

Fork inheritance lineage and inherited audits are included when available.
