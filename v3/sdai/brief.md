# Agentic Audit Brief: sDAI

## Export Authority

- Production state: **blocked no audit authority**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 0 (0 matched; 0 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e40c73181a386361babecc6895e0f6c5587548f92814db09f88491f8b4a38d92`

## Project Overview

- Project: sDAI (`sdai`)
- Website: [https://docs.spark.fi/dev/savings/sdai-token](https://docs.spark.fi/dev/savings/sdai-token)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: ethereum, gnosis
- Contract surface: 144 unique implementations (234 raw deployments)
- Coverage basis: 0/1 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $66,118,976.31
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 1 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

This brief describes the observed EVM deployment and audit surface for sDAI. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 1 contract row(s) across ethereum, gnosis. Structural roles: 1 core. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 1
- Structural roles: core (1)
- Contract kinds: contract (1)
- Detected standards: erc20permit (1), erc4626 (1)
- Frameworks: none
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 1 contracts are derived from known codebases. 1 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- SavingsDai (`0x83f20f44975d03b1b09e64809b757c47f942beea`, chain 1)

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
- Outside the address book: 143 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 2 standard proxy/library)
- Proxy deployments represented within implementation groups: 17
- Confirmed-live implementations: 1 of 144 unique; 143 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/72
- Verified + Unaudited implementations: 72
- Verified by bytecode match: 0
- Unverified implementations: 72
- Unique implementations: 144
- Raw deployments: 234
- Audits discovered: 0 (0 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Audit staleness (calendar age): 0 fresh, 0 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (72)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AgaveBuybackOrder | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x5d1e9fa09ed123660775c395beac281f405befb4` | ⚠️ Unaudited |
| AgaveHoldingsOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | 2 deployments: gnosis `0xa671d7d0c571e5b92510de6c5d0b5c1635ec8791`; gnosis `0xbe76f35bd6676c233bd8b6493fecd3d8e6f615ef` | ⚠️ Unaudited |
| AgaveIncentivesBulkClaimer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xc777eb53b224ab27dd348d2a678bfd20ce913277` | ⚠️ Unaudited |
| AgaveOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x062b9d1d3f5357ef399948067e93b81f4b85db7a` | ⚠️ Unaudited |
| AgaveProtocolDataProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | 3 deployments: gnosis `0x57cba82270fd0eeb3fc76b7c97480a8720bdb2cb`; gnosis `0x8cc3f9670d3e0afc779a553f1e9afc699c1ab097`; gnosis `0xe6729389dea76d47b5bcb0ba5c080821c3b51329` | ⚠️ Unaudited |
| AgaveReimbursementReclaimer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xec8baf09eb04a0e820c80967d2eab0980fca9620` | ⚠️ Unaudited |
| AgaveswapInterfaceMulticall | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x466df21ffb4b1ca195abf59dfc41a0c98da7b1d7` | ⚠️ Unaudited |
| AgaveswapV3Factory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | 2 deployments: gnosis `0x0cf086e8714571c85b3e88b541fcac763555b66f`; gnosis `0xa98c2e26a22c17d1199327895a737463abd047c3` | ⚠️ Unaudited |
| AgaveTreasuryRedeemer | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x33805e4ef17cf0f391d25ead14fa9d2b74bbc457` | ⚠️ Unaudited |
| AgaveTreasuryWithdrawer | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x91ed5609e5b9d6991f024570025c872382890018` | ⚠️ Unaudited |
| AToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | 6 deployments: gnosis `0x223fe000fc6ef0ed36576d912e506b5f572c7ac2`; gnosis `0x3e2081400517e9ef8436401e0c06dc2cbe9ec2d2`; gnosis `0x8f0563a7987db44dfaea62d156deb8ec79b9ee40`; gnosis `0x8f40f69ceb986aa66fc64f18bad8d6491a3a27ba`; gnosis `0xc8270d4a1c6b552b242db93b10056288b5e23725`; gnosis `0xdc77a058e11c341a54890dea56a3f4faf992f381` | ⚠️ Unaudited |
| BridgeInterestReceiver | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | 2 deployments: gnosis `0x17780d40287eb6d9605ec8b324605cf98a625122`; gnosis `0x670daeaf0f1a5e336090504c68179670b5059088` | ⚠️ Unaudited |
| BridgeRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x74899961224538e423effd1a0ff3346adf3f4c56`; ethereum `0x9a873656c19efecbfb4f9fab5b7acdeab466a0b0` | ⚠️ Unaudited |
| BridgeValidators | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | gnosis | n/a | 2 deployments: gnosis `0x26fc9fc1c98607e1634f87b47e6798d436823299`; gnosis `0xb289f0e6fbdff8eee340498a56e1787b303f1b6d` | ⚠️ Unaudited |
| BulkMerkleClaimer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xb229353e8d34349e8e2951d06642902c87f644b1` | ⚠️ Unaudited |
| Claimable | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | 4 deployments: gnosis `0x4aa42145aa6ebf72e164c9bbc74fbd3788045016`; gnosis `0x710d6ec2b0948def1f423ec77b51b6a55847d2c5`; gnosis `0xd760e016226836cc02e329addbb6821945dd5100`; gnosis `0xe1579debdd2df16ebdb9db8694391fa74eea201e` | ⚠️ Unaudited |
| CLSynchronicityPriceAdapterPegToBase | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xae27e63307963850c4d30bfba78fc1116d7b48c3` | ⚠️ Unaudited |
| DefaultReserveInterestRateStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | 13 deployments: gnosis `0x0514ba56e9efb43583b02aa91e38c295f7d599b1`; gnosis `0x103a06d091d53fd25e29348484cc7518215ee672`; gnosis `0x152fe5a19e4a4740699bfd519be89c9f7540927f`; gnosis `0x1707a724612ecba66a2cb13d4a0a6b72ce2046be`; gnosis `0x23c5515e7464c15d8f56e3a48cb220d9ee265126`; gnosis `0x5f539a167c85fc428a64ff0a2988ae35a2e0aba4`; gnosis `0x629a80eda7d31781147709a8e9c7b7111fc6ee47`; gnosis `0x64bdf6b823bcb4b33147fda53d443c2a328628c3`; gnosis `0x794da82f9fb0c758c917fbb074667df6e2254aa7`; gnosis `0x8c41d54948bebbe4b7f3178ea842b343f6f0c254`; gnosis `0xa32b572f94eae1638b7076565d06ca196ce6558d`; gnosis `0xe253094ea2819e63333387659fedf5703fa430e0`; gnosis `0xf7f88000be29d179015fb2c5ee466743f6386edc` | ⚠️ Unaudited |
| Erc20AMBOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xb7f600845e4649ee5b8ee16d44d91bc0ee65f4ea` | ⚠️ Unaudited |
| Erc20ToNativeBridgeHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xe30269bc61e677cd60ad163a221e464b7022fbf5` | ⚠️ Unaudited |
| ERC4626SynchronicityPriceAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | 2 deployments: gnosis `0x2cd3494bb70a30f042fcfccab4d192f6b7449042`; gnosis `0x73295899f9e5d7c3ac8d631c2ff7432c2e6fa0ee` | ⚠️ Unaudited |
| GenericLogic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x985323cd58346d83e0a90ab6b8fec7025fce20a7` | ⚠️ Unaudited |
| GnosisSafe | governance | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x42f38ec5a75accec50054671233dfac9c0e7a3f6` | ⚠️ Unaudited |
| GnosisSafeL2 | governance | non_address_book | standard_proxy_or_library (excluded) | 1 | gnosis | n/a | `0x7a48dac683da91e4faa5ab13d91ab5fd170875bd` | ⚠️ Unaudited |
| HashiManager | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | gnosis | n/a | 2 deployments: gnosis `0x0d3cc0e1934add62415243f22c1b1e3dd33d8776`; gnosis `0x6c70cdda7cb2eafaf296d7087e24475d39bf2962` | ⚠️ Unaudited |
| HashiManager | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | gnosis | n/a | 2 deployments: gnosis `0x5483ebc7522c5e2669a887a7a1edf256b3e4440d`; gnosis `0x60aa15198a3adfc86ff15b941549a6447b2ddb49` | ⚠️ Unaudited |
| HashiManager | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | gnosis | n/a | 2 deployments: gnosis `0x694beeb84f912d0951e88cfcf76900b7c728b5b5`; gnosis `0x74cacae9801ba4fe0027ed6f58d53797cca7296e` | ⚠️ Unaudited |
| HomeAMB | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xa033535983d1abcc2648af730edcb198909903d7` | ⚠️ Unaudited |
| HomeBridgeErcToNative | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | 4 deployments: gnosis `0x37d5b903a8fbd0d9f44f9f719fc33603189f2ff5`; gnosis `0x492c2d6be504511f8ca92d4da51c56b6ec0d9732`; gnosis `0xab2785e38c3f21670d85f1889ff65cef7f4e8937`; gnosis `0xb740472c650fe949931b9df0cb253b48c80c82de` | ⚠️ Unaudited |
| HomeBridgeErcToNative | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 1 | gnosis | n/a | 2 deployments: gnosis `0x7301cfa0e1756b71869e93d4e4dca5c7d0eb0aa6`; gnosis `0xe6998b0c03d3cb9ee8c04f266e573c7fa8782846` | ⚠️ Unaudited |
| InitializableAdminUpgradeabilityProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | 5 deployments: gnosis `0x1437f115bd1d206c1c0955ac70debafd964eadfe`; gnosis `0x315a8234091150f857d3a6bab3c9d13fe6ba0553`; gnosis `0x39ce830f258798269080927ba9bf35f32648a050`; gnosis `0x65efaf6618405652c400e7d78767d795d2474c47`; gnosis `0xf1dc9497d803b906e43ce91d33575b20218cb26f` | ⚠️ Unaudited |
| LendingPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | 4 deployments: gnosis `0x1881dd4589447aaa1d8fd0515878fbed971a6bec`; gnosis `0x73280cc830a4be3f14ab2439660361dc70d024fd`; gnosis `0xbd804a38fdeee47695ced968f6416adfb6054921`; gnosis `0xe183c741966c397a0f904964b074aa36cefd1e2d` | ⚠️ Unaudited |
| LendingPoolCollateralManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | 2 deployments: gnosis `0x9bc06ed9cd3c15eee13b05ce52442d22f060ac2b`; gnosis `0xd7e6500dfb81a5b2553b7604cb55305aa7db949f` | ⚠️ Unaudited |
| LendingPoolConfigurator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x4e7dfd59060e2c91495b006617f7e429439304ca` | ⚠️ Unaudited |
| LendingRateOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xa83a29e98b0177138dddcc3a4b6536442d22c5c1` | ⚠️ Unaudited |
| MerkleClaimERC20 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | 3 deployments: gnosis `0x15b7bd2686650eadb6feb1be6e9134c1f9241a95`; gnosis `0xb88d66e7721a20b58e7d18d81cdb9682307399ba`; gnosis `0xc21a7b1e58356892f606bee801a00c7bad72edf7` | ⚠️ Unaudited |
| NFTDescriptor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xedc96ca776c0336cf3924dbfd1d0a54fbba05cf1` | ⚠️ Unaudited |
| NonfungiblePositionManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x1f78108fdd0cb4bb0475fc9ce9e9a92688dd2f75` | ⚠️ Unaudited |
| NonfungibleTokenPositionDescriptor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x5ad43460308287189cf7207f7750373649137bed` | ⚠️ Unaudited |
| Quoter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x96f4bf695ed277aecd44fc176d4f2643ba18f57c` | ⚠️ Unaudited |
| ReserveLogic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x1b0348c67d01a46627ce1d8f9e2e218c9eae9966` | ⚠️ Unaudited |
| SavingsDai | unknown | project_anchor | own_supporting | 0 | ethereum | unit-392087 | `0x83f20f44975d03b1b09e64809b757c47f942beea` | ⚠️ Unaudited |
| SavingsXDai | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | 2 deployments: gnosis `0x4ab77f4883d099992c69d417ff8708220da171d1`; gnosis `0xaf204776c7245bf4147c2612bf6e5972ee483701` | ⚠️ Unaudited |
| SavingsXDaiAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | 3 deployments: gnosis `0x02ae11dc9783467e0830041399a2d48251f63907`; gnosis `0xd499b51fcfc66bd31248ef4b28d656d67e591a94`; gnosis `0xfae3a9b87d10e37a81f6e660c38c925f4efd7b9c` | ⚠️ Unaudited |
| StableDebtToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | 6 deployments: gnosis `0x059c47cdad2c96ca5551921124b75b82119bf73a`; gnosis `0x100bd913a8339250bc0f9ab788baabe0fb7ec7c3`; gnosis `0x3eb706053a2f5629edd7f94125b78377b4ddfdf4`; gnosis `0x5d9a99c1e2b0d7b0a446688ffafb5189bac7dc09`; gnosis `0xeb5767a1f3d9bd6891d5097b68768fae1d658af6`; gnosis `0xfcdd9111755f9b28c6d6ee41d57f4cf1d5cd3d23` | ⚠️ Unaudited |
| StakedAgave | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x2e91cd1bf5ab2104633112ef35a7eb6998ec2695` | ⚠️ Unaudited |
| StaticATokenLM | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | gnosis | n/a | 2 deployments: gnosis `0x01ac9005f8446af28b065af87216b85faac5f6e2`; gnosis `0x248ce8d11c990190642aa4eb34e8af2c832acc13` | ⚠️ Unaudited |
| StaticATokenLM | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | gnosis | n/a | 2 deployments: gnosis `0x110e2d3d4c94596f5698c753d5cd43221d3ec78b`; gnosis `0x85822764fe473028c753bc1124c5df6607fcb2f0` | ⚠️ Unaudited |
| StaticATokenLM | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | gnosis | n/a | 2 deployments: gnosis `0x13f2b819b7165686f36af81d887e1459d19de3fb`; gnosis `0x6d9dc1282b9e25a91b266b6b61ef65a38f949f22` | ⚠️ Unaudited |
| StaticATokenLM | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | gnosis | n/a | 2 deployments: gnosis `0x20e5eb701e8d711d419d444814308f8c2243461f`; gnosis `0xd28490e975a49ce009163bb9feb566133ace4ed2` | ⚠️ Unaudited |
| StaticATokenLM | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | 3 deployments: gnosis `0x365d2e94e3c0e84e7f7a678482f6029151f35322`; gnosis `0x9a4dcbcb82fac32580dc419fab3b8226868631ea`; gnosis `0xe22b9b998366b42886c76fb69c436ec3e5e0ef13` | ⚠️ Unaudited |
| StaticATokenLM | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | gnosis | n/a | 2 deployments: gnosis `0x3d938f90ac251c1bcf6b4e399dd72c8c685a9bbc`; gnosis `0xa9502766df45f1bbdc4ea55a3fc38053be25cc68` | ⚠️ Unaudited |
| StaticATokenLM | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | gnosis | n/a | 2 deployments: gnosis `0x4a0c32e9079bf9e42eeeac31f2a05dccd07e8adb`; gnosis `0x8e0dbc8b165268943121527639889069c92bc339` | ⚠️ Unaudited |
| StaticATokenLM | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | gnosis | n/a | 2 deployments: gnosis `0x9ae6d606d9ca14c59b703494bea2d8870e5c97ed`; gnosis `0xc1593302979e5e8e16e53c3303bf99ffa319d314` | ⚠️ Unaudited |
| StaticATokenLM | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | gnosis | n/a | 2 deployments: gnosis `0xa357efdaf20a1b3498400b029314a826b20ae61e`; gnosis `0xce02a2fb42d93438e508a32e80555add2fd8daff` | ⚠️ Unaudited |
| Swapper_Coordinator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | 3 deployments: gnosis `0xba51d09224e14caef5ab6f3c9e8f3b9d7f896eb4`; gnosis `0xdd494510e56347058703c277ef770d3d9099ca42`; gnosis `0xf429c5e2f1fa4c5bcc6a7a376c618121b2a621e9` | ⚠️ Unaudited |
| Swapper_Helper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | 4 deployments: gnosis `0x7ffc86c7a61a8874d3819c32b12618235613d1a0`; gnosis `0x8b707ce7ab2d9639ebb63cabe14d8d3960e9af64`; gnosis `0xb450162dd2278bf2db6bb53d5010b54b390ce5b7`; gnosis `0xb624888498c057b5398ef34898efc3d0fbf89489` | ⚠️ Unaudited |
| Swapper_UserProxyFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | 3 deployments: gnosis `0x0f0a02d56708e01af559f7d80b916c178ca6efa0`; gnosis `0x19bfaf6c3c091aa145f7df7d7a687b2c1c1abd10`; gnosis `0x456844e967f823df3aa565d16d8ed7d4d99179ff` | ⚠️ Unaudited |
| Swapper_UserProxyImplementation | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | 10 deployments: gnosis `0x2869b62af774fe012de271de6dc7bca0cd87145f`; gnosis `0x4125737f1af8343a137da77194ee7faaa4b0b078`; gnosis `0x475506f459c814d6d27c76115a1a95175627ff7b`; gnosis `0x5668e5a6b4663dc062db4b437f790909e68fe99a`; gnosis `0x98216d5f0451b93a3747148b1b6247f6bfe3b385`; gnosis `0xb0b0f7f9a860dbd92fe645bb88e90f8b8b2a08b8`; gnosis `0xdb8e23f856d25aba008f39c92d161f0748f419ea`; gnosis `0xea45ce264a5b2a2d2cc12fd5a92d6c8b444d5636`; gnosis `0xf7da8f7ac394c08b4da3292ccab11e5243e63284`; gnosis `0xfd42833b8bfffb8e4cc8ef860cfe26f4878ac91d` | ⚠️ Unaudited |
| Swapper_Utils | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xac942b1acbbb080d30421c8a3ab20a73fa519bdb` | ⚠️ Unaudited |
| SwapRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x662a928e66a7f874ee06e94eb82d4ede73869728` | ⚠️ Unaudited |
| TickLens | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x76bbec1b0d287169d102ca985aaad8deac787ed9` | ⚠️ Unaudited |
| UiPoolDataProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | 4 deployments: gnosis `0x169eb836bd947670d2d26b64157a8723b61744c5`; gnosis `0x46ad11df6c12e355241dfca7cea5734e0d512e8f`; gnosis `0x569358ba6579539c6a2dc868aa57ed7e0ad2075e`; gnosis `0x606a84c7241acc02699c5fe9f8f821a39adbfe88` | ⚠️ Unaudited |
| USDSDepositContract | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x5c183c8a49aba6e31049997a56d75600e27ff8c9` | ⚠️ Unaudited |
| V3Migrator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x53ba4b2ed945e1eba48056ac02e610d10616921f` | ⚠️ Unaudited |
| ValidationLogic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x09bf5d4dff196c000fb735f94e4b22340b25e678` | ⚠️ Unaudited |
| VariableDebtToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | 6 deployments: gnosis `0x0d23359086cbdda2f49e29de370ab85b451e81dd`; gnosis `0x25fa1d8b25160789446300ad987a64cb54376471`; gnosis `0x5630622525e50e385126a1134b842c2263a35789`; gnosis `0x9546320a15179d0f4ac6f5dc0996c43fa87325b0`; gnosis `0xa476a54bdd5ff4a900496877ec599f8840034fd7`; gnosis `0xf6373624d8ce43e7c5e5904b9f5d7af3ecf3a2c4` | ⚠️ Unaudited |
| WETHGateway | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x4e1461882e72232807f7a65081321b543e2e52c0` | ⚠️ Unaudited |
| WrappedAgTokenFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x6c1878a83884b9f14a342c7d96fc00c9a0d434d2` | ⚠️ Unaudited |
| WrappedAgTokenUpgradeable | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | 3 deployments: gnosis `0x78eb5d51d620ff9e6c70ef02208e5ac7079c304b`; gnosis `0xa1d0ad01a7ae157d7941fd8a7e67094361a6bdc5`; gnosis `0xfc4c44bb2fff803b16d0b421bb9f08ed65b0d716` | ⚠️ Unaudited |
| WXDAI | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xe91d153e0b41518a2ce8dd3d7944fa863463a97d` | ⚠️ Unaudited |
| XDaiForeignBridge | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x257bdd093cab1bd39ebf837dcb60f33d031d7d49`; ethereum `0x4aa42145aa6ebf72e164c9bbc74fbd3788045016` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (72)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x098f51bdfb5d6d319dd4fdf06b64773d25bd1316` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0be3b7483f728791eb0c6b2370f63b1455b58937` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x159b36ed5ba327fd269fb93c75918257dcfe686d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x26fc9fc1c98607e1634f87b47e6798d436823299` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x37d5b903a8fbd0d9f44f9f719fc33603189f2ff5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3abd91b5564baf7966dca7a30bd50eacc9abed77` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3b6669727927b934753b018eb421a84ed4eb0a43` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x492c2d6be504511f8ca92d4da51c56b6ec0d9732` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x65ce45cad9cf9880db84637bfa322fdbacf0df8d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x691c025efa7ea1c87df256f2da9208e5345d40b1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6c70cdda7cb2eafaf296d7087e24475d39bf2962` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x710d6ec2b0948def1f423ec77b51b6a55847d2c5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x716623daf27f2afa8d6051a4eda08e12107a2c83` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7301cfa0e1756b71869e93d4e4dca5c7d0eb0aa6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x74b987a253864278ea4ae0cf0850e73c3a5bc4f8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7df0e6a8ba609a6cc3ab2fa33d953a3b5584f10c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x93f6ee78451aacc1db1db49a12abfcc4662b9cc9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x96b32f2682eb26324226d18df53d64f79af6e1da` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9accfad714a1e670cd1f6dc666fe892d1d5547bd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xab2785e38c3f21670d85f1889ff65cef7f4e8937` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb289f0e6fbdff8eee340498a56e1787b303f1b6d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb54042f5ba4b048fea54aae70abbbe41ac716299` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd760e016226836cc02e329addbb6821945dd5100` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe1579debdd2df16ebdb9db8694391fa74eea201e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf676cc15eb6d15b794aec65bc20052afb53d9052` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x02e2e694184955432037856e1785a598f2c6eef5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x071bf5695afeda65c405794c6574ae63ca8b73c3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x109f6f453a9aa0f45a2353d517504ee3258d23fa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x17dce52b2f7abe4204011196019276d36cd55c71` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x1964b041ad6ab83275f3cc9bcafa4e92b13ceff2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x1c5b8da51e5deef2acc29dffe4c34c781fecf942` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x201959d07446095cebbb3c162afd9ff7749437a6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x22df53dc7efb5d74828f19784db2ad375f3b02c4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x2ac1f91872c2a642ea957f6822afa470194f1904` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x2ffabab31ab17f785b9d03abc9f022fc57775aab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x35dd0085adea1ae2c1893107b844bfec40b85db6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x37673908230360128162aaf9790c90af9540d42c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x40d2e77cf5328aade163fbbaf239152d0dc67b39` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x46eb3f515c72de82a03d28fec263a56943cd581c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x4c8b996c61d72a5dc39dd2bc54512612fabfb961` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x4da5beb71f98dbadb86a93ccbaf63093a53eaae2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x562e49d53ccbdc7f446f4683e270f6e51e9ec2bc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x5be5d4bb56451a27c76f3ea87f7c564f05c20dc3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x678b9300d4db3c1436dd765c2fb4ddb3321cc69c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x6a0614a055ae3004117face62572398073fc387a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x6c8ae5a91503cf83996be170284bc609ba7beb75` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x7057a9ecb283e205b73a5137e6bcb47ee69c2e23` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x7b81e0bac030a9079e1e2b45d5c089c3e2b93dc1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x7eb44b224a4cf83f0f72612379ec57dacb651fd4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x832cd194fc518411377e8382bc27b7bcb76c4ca2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x8677a74ea1b5404b36e9a9eb1aaf42d1d6e27136` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x88be51f9c26efbf821386ed2c33a95f9a62ecb49` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x8b1fcd819828f4df3f3bd7667b502ed6ba15da34` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x8d43d510880abca3e8e6fc5b0cd7e469410905b9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x8eb7982958d8aa2af98a35b8cda2e6c4e746d250` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x9065d67115fcc2d52dc1d0c420f27796186e56a2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x91282467dc9d8f1f19112e6ec48e576c130e7570` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x92157163b57da2fac0c1f563bfcf07fd315f89d4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x9380d8db2cafbb7c9c2c2a47c96db061fc7f368f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x95d0e869271aa731ebc3f4bf6046636493470b3a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x9f1837a88cd992b693c266aa6a4254a8644ae99b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xae898842ee80ffa9c45a4802fabf471f3d50b423` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xb69aa1583aeea760fb18e55572cbfefca6188dde` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xb6f20b02c6e7e7d4594dc1acd76bb20aaa679725` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xbc07ceae5a1d18ad6035b4c904a3b70b6e152f0e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xbd56909c5261ad1787a561ba031c9fba7d17ef81` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xc1529e13a5842d790da01f778bf23a3677830986` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xc66e94d2acaebab0d0314a01666b64b88ababc42` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xcf6a209df4c745534c97086e7e4d58ee93fbe689` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xd99d9d46af82d7c82913c2a6a21258e829e2f10e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xe7728def71d2175bdc8049510ea53026df3861e8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xed1d03f17bddbfbd3e908d9e40fbf95f45473a5e` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 221
- Live contracts: 0
- Unknown liveness contracts: 221
- Source-verified contracts: 147
- Currently scope-matched contracts retained as-is: 0
- Classification counts: candidate review=28, contamination review=19, source verified unclassified=100, unverified unclassified=74

Showing first 200 of 221 contracts. The complete deployer expansion list is in `brief.json`.

| Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|
| candidate review | BridgeInterestReceiver<br>`0x17780d40287eb6d9605ec8b324605cf98a625122` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| candidate review | EternalStorageProxy<br>`0x60aa15198a3adfc86ff15b941549a6447b2ddb49` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x30fb61178f39c0452ced4ad9a7fec3344cb10b2e` |
| candidate review | EternalStorageProxy<br>`0x6c70cdda7cb2eafaf296d7087e24475d39bf2962` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x30fb61178f39c0452ced4ad9a7fec3344cb10b2e` |
| candidate review | EternalStorageProxy<br>`0x74cacae9801ba4fe0027ed6f58d53797cca7296e` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x30fb61178f39c0452ced4ad9a7fec3344cb10b2e` |
| candidate review | EternalStorageProxy<br>`0xb289f0e6fbdff8eee340498a56e1787b303f1b6d` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xcdb858ce72a31735bff85579603bbdcf85e5e081` |
| candidate review | InitializableAdminUpgradeabilityProxy<br>`0x01ac9005f8446af28b065af87216b85faac5f6e2` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| candidate review | InitializableAdminUpgradeabilityProxy<br>`0x110e2d3d4c94596f5698c753d5cd43221d3ec78b` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| candidate review | InitializableAdminUpgradeabilityProxy<br>`0x1437f115bd1d206c1c0955ac70debafd964eadfe` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| candidate review | InitializableAdminUpgradeabilityProxy<br>`0x20e5eb701e8d711d419d444814308f8c2243461f` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| candidate review | InitializableAdminUpgradeabilityProxy<br>`0x315a8234091150f857d3a6bab3c9d13fe6ba0553` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| candidate review | InitializableAdminUpgradeabilityProxy<br>`0x39ce830f258798269080927ba9bf35f32648a050` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| candidate review | InitializableAdminUpgradeabilityProxy<br>`0x3d938f90ac251c1bcf6b4e399dd72c8c685a9bbc` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| candidate review | InitializableAdminUpgradeabilityProxy<br>`0x4a0c32e9079bf9e42eeeac31f2a05dccd07e8adb` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| candidate review | InitializableAdminUpgradeabilityProxy<br>`0x65efaf6618405652c400e7d78767d795d2474c47` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| candidate review | InitializableAdminUpgradeabilityProxy<br>`0x6d9dc1282b9e25a91b266b6b61ef65a38f949f22` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| candidate review | InitializableAdminUpgradeabilityProxy<br>`0xc1593302979e5e8e16e53c3303bf99ffa319d314` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| candidate review | InitializableAdminUpgradeabilityProxy<br>`0xce02a2fb42d93438e508a32e80555add2fd8daff` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| candidate review | InitializableAdminUpgradeabilityProxy<br>`0xf1dc9497d803b906e43ce91d33575b20218cb26f` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| candidate review | LendingPoolConfigurator<br>`0x4e7dfd59060e2c91495b006617f7e429439304ca` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| candidate review | SavingsXDai<br>`0x4ab77f4883d099992c69d417ff8708220da171d1` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| candidate review | SavingsXDaiAdapter<br>`0xfae3a9b87d10e37a81f6e660c38c925f4efd7b9c` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| candidate review | Swapper_UserProxyFactory<br>`0x0f0a02d56708e01af559f7d80b916c178ca6efa0` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| candidate review | Swapper_UserProxyFactory<br>`0x19bfaf6c3c091aa145f7df7d7a687b2c1c1abd10` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| candidate review | Swapper_UserProxyFactory<br>`0x456844e967f823df3aa565d16d8ed7d4d99179ff` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| candidate review | WrappedAgTokenFactory<br>`0x6c1878a83884b9f14a342c7d96fc00c9a0d434d2` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| candidate review | WrappedAgTokenUpgradeable<br>`0x78eb5d51d620ff9e6c70ef02208e5ac7079c304b` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| candidate review | WrappedAgTokenUpgradeable<br>`0xa1d0ad01a7ae157d7941fd8a7e67094361a6bdc5` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| candidate review | WrappedAgTokenUpgradeable<br>`0xfc4c44bb2fff803b16d0b421bb9f08ed65b0d716` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| contamination review | AgaveHoldingsOracle<br>`0xa671d7d0c571e5b92510de6c5d0b5c1635ec8791` | non_address_book | unknown | unknown | verified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| contamination review | AgaveIncentivesBulkClaimer<br>`0xc777eb53b224ab27dd348d2a678bfd20ce913277` | non_address_book | unknown | unknown | verified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| contamination review | AgaveProtocolDataProvider<br>`0x57cba82270fd0eeb3fc76b7c97480a8720bdb2cb` | non_address_book | unknown | unknown | verified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| contamination review | AgaveswapInterfaceMulticall<br>`0x466df21ffb4b1ca195abf59dfc41a0c98da7b1d7` | non_address_book | unknown | unknown | verified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| contamination review | AgaveswapV3Factory<br>`0x0cf086e8714571c85b3e88b541fcac763555b66f` | non_address_book | unknown | unknown | verified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| contamination review | BulkMerkleClaimer<br>`0xb229353e8d34349e8e2951d06642902c87f644b1` | non_address_book | unknown | unknown | verified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| contamination review | DefaultReserveInterestRateStrategy<br>`0x0514ba56e9efb43583b02aa91e38c295f7d599b1` | non_address_book | unknown | unknown | verified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| contamination review | Erc20AMBOracle<br>`0xb7f600845e4649ee5b8ee16d44d91bc0ee65f4ea` | non_address_book | unknown | unknown | verified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| contamination review | Erc20ToNativeBridgeHelper<br>`0xe30269bc61e677cd60ad163a221e464b7022fbf5` | non_address_book | unknown | unknown | verified | n/a | `0x30fb61178f39c0452ced4ad9a7fec3344cb10b2e` |
| contamination review | HomeBridgeErcToNative<br>`0x37d5b903a8fbd0d9f44f9f719fc33603189f2ff5` | non_address_book | unknown | unknown | verified | n/a | `0xcdb858ce72a31735bff85579603bbdcf85e5e081` |
| contamination review | LendingPoolCollateralManager<br>`0x9bc06ed9cd3c15eee13b05ce52442d22f060ac2b` | non_address_book | unknown | unknown | verified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| contamination review | MerkleClaimERC20<br>`0x15b7bd2686650eadb6feb1be6e9134c1f9241a95` | non_address_book | unknown | unknown | verified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| contamination review | NonfungibleTokenPositionDescriptor<br>`0x5ad43460308287189cf7207f7750373649137bed` | non_address_book | unknown | unknown | verified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| contamination review | Quoter<br>`0x96f4bf695ed277aecd44fc176d4f2643ba18f57c` | non_address_book | unknown | unknown | verified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| contamination review | Swapper_Helper<br>`0x7ffc86c7a61a8874d3819c32b12618235613d1a0` | non_address_book | unknown | unknown | verified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| contamination review | Swapper_UserProxyImplementation<br>`0x2869b62af774fe012de271de6dc7bca0cd87145f` | non_address_book | unknown | unknown | verified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| contamination review | Swapper_Utils<br>`0xac942b1acbbb080d30421c8a3ab20a73fa519bdb` | non_address_book | unknown | unknown | verified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| contamination review | TickLens<br>`0x76bbec1b0d287169d102ca985aaad8deac787ed9` | non_address_book | unknown | unknown | verified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| contamination review | UiPoolDataProvider<br>`0x169eb836bd947670d2d26b64157a8723b61744c5` | non_address_book | unknown | unknown | verified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| source verified unclassified | AgaveBuybackOrder<br>`0x5d1e9fa09ed123660775c395beac281f405befb4` | non_address_book | unknown | unknown | verified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| source verified unclassified | AgaveHoldingsOracle<br>`0xbe76f35bd6676c233bd8b6493fecd3d8e6f615ef` | non_address_book | unknown | unknown | verified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| source verified unclassified | AgaveOracle<br>`0x062b9d1d3f5357ef399948067e93b81f4b85db7a` | non_address_book | unknown | unknown | verified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| source verified unclassified | AgaveProtocolDataProvider<br>`0x8cc3f9670d3e0afc779a553f1e9afc699c1ab097` | non_address_book | unknown | unknown | verified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| source verified unclassified | AgaveProtocolDataProvider<br>`0xe6729389dea76d47b5bcb0ba5c080821c3b51329` | non_address_book | unknown | unknown | verified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| source verified unclassified | AgaveReimbursementReclaimer<br>`0xec8baf09eb04a0e820c80967d2eab0980fca9620` | non_address_book | unknown | unknown | verified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| source verified unclassified | AgaveswapV3Factory<br>`0xa98c2e26a22c17d1199327895a737463abd047c3` | non_address_book | unknown | unknown | verified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| source verified unclassified | AToken<br>`0x223fe000fc6ef0ed36576d912e506b5f572c7ac2` | non_address_book | unknown | unknown | verified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| source verified unclassified | AToken<br>`0x3e2081400517e9ef8436401e0c06dc2cbe9ec2d2` | non_address_book | unknown | unknown | verified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| source verified unclassified | AToken<br>`0x8f0563a7987db44dfaea62d156deb8ec79b9ee40` | non_address_book | unknown | unknown | verified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| source verified unclassified | AToken<br>`0x8f40f69ceb986aa66fc64f18bad8d6491a3a27ba` | non_address_book | unknown | unknown | verified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| source verified unclassified | AToken<br>`0xc8270d4a1c6b552b242db93b10056288b5e23725` | non_address_book | unknown | unknown | verified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| source verified unclassified | AToken<br>`0xdc77a058e11c341a54890dea56a3f4faf992f381` | non_address_book | unknown | unknown | verified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| source verified unclassified | BridgeValidators<br>`0x26fc9fc1c98607e1634f87b47e6798d436823299` | non_address_book | unknown | unknown | verified | n/a | `0xcdb858ce72a31735bff85579603bbdcf85e5e081` |
| source verified unclassified | Claimable<br>`0x4aa42145aa6ebf72e164c9bbc74fbd3788045016` | non_address_book | unknown | unknown | verified | n/a | `0xcdb858ce72a31735bff85579603bbdcf85e5e081` |
| source verified unclassified | Claimable<br>`0x710d6ec2b0948def1f423ec77b51b6a55847d2c5` | non_address_book | unknown | unknown | verified | n/a | `0xcdb858ce72a31735bff85579603bbdcf85e5e081` |
| source verified unclassified | Claimable<br>`0xd760e016226836cc02e329addbb6821945dd5100` | non_address_book | unknown | unknown | verified | n/a | `0xcdb858ce72a31735bff85579603bbdcf85e5e081` |
| source verified unclassified | Claimable<br>`0xe1579debdd2df16ebdb9db8694391fa74eea201e` | non_address_book | unknown | unknown | verified | n/a | `0xcdb858ce72a31735bff85579603bbdcf85e5e081` |
| source verified unclassified | CLSynchronicityPriceAdapterPegToBase<br>`0xae27e63307963850c4d30bfba78fc1116d7b48c3` | non_address_book | unknown | unknown | verified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| source verified unclassified | DefaultReserveInterestRateStrategy<br>`0x103a06d091d53fd25e29348484cc7518215ee672` | non_address_book | unknown | unknown | verified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| source verified unclassified | DefaultReserveInterestRateStrategy<br>`0x152fe5a19e4a4740699bfd519be89c9f7540927f` | non_address_book | unknown | unknown | verified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| source verified unclassified | DefaultReserveInterestRateStrategy<br>`0x1707a724612ecba66a2cb13d4a0a6b72ce2046be` | non_address_book | unknown | unknown | verified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| source verified unclassified | DefaultReserveInterestRateStrategy<br>`0x23c5515e7464c15d8f56e3a48cb220d9ee265126` | non_address_book | unknown | unknown | verified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| source verified unclassified | DefaultReserveInterestRateStrategy<br>`0x5f539a167c85fc428a64ff0a2988ae35a2e0aba4` | non_address_book | unknown | unknown | verified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| source verified unclassified | DefaultReserveInterestRateStrategy<br>`0x629a80eda7d31781147709a8e9c7b7111fc6ee47` | non_address_book | unknown | unknown | verified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| source verified unclassified | DefaultReserveInterestRateStrategy<br>`0x64bdf6b823bcb4b33147fda53d443c2a328628c3` | non_address_book | unknown | unknown | verified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| source verified unclassified | DefaultReserveInterestRateStrategy<br>`0x794da82f9fb0c758c917fbb074667df6e2254aa7` | non_address_book | unknown | unknown | verified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| source verified unclassified | DefaultReserveInterestRateStrategy<br>`0x8c41d54948bebbe4b7f3178ea842b343f6f0c254` | non_address_book | unknown | unknown | verified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| source verified unclassified | DefaultReserveInterestRateStrategy<br>`0xa32b572f94eae1638b7076565d06ca196ce6558d` | non_address_book | unknown | unknown | verified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| source verified unclassified | DefaultReserveInterestRateStrategy<br>`0xe253094ea2819e63333387659fedf5703fa430e0` | non_address_book | unknown | unknown | verified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| source verified unclassified | DefaultReserveInterestRateStrategy<br>`0xf7f88000be29d179015fb2c5ee466743f6386edc` | non_address_book | unknown | unknown | verified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| source verified unclassified | ERC4626SynchronicityPriceAdapter<br>`0x2cd3494bb70a30f042fcfccab4d192f6b7449042` | non_address_book | unknown | unknown | verified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| source verified unclassified | ERC4626SynchronicityPriceAdapter<br>`0x73295899f9e5d7c3ac8d631c2ff7432c2e6fa0ee` | non_address_book | unknown | unknown | verified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| source verified unclassified | GenericLogic<br>`0x985323cd58346d83e0a90ab6b8fec7025fce20a7` | non_address_book | unknown | unknown | verified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| source verified unclassified | HashiManager<br>`0x0d3cc0e1934add62415243f22c1b1e3dd33d8776` | non_address_book | unknown | unknown | verified | n/a | `0x30fb61178f39c0452ced4ad9a7fec3344cb10b2e` |
| source verified unclassified | HashiManager<br>`0x5483ebc7522c5e2669a887a7a1edf256b3e4440d` | non_address_book | unknown | unknown | verified | n/a | `0x30fb61178f39c0452ced4ad9a7fec3344cb10b2e` |
| source verified unclassified | HashiManager<br>`0x694beeb84f912d0951e88cfcf76900b7c728b5b5` | non_address_book | unknown | unknown | verified | n/a | `0x30fb61178f39c0452ced4ad9a7fec3344cb10b2e` |
| source verified unclassified | HomeAMB<br>`0xa033535983d1abcc2648af730edcb198909903d7` | non_address_book | unknown | unknown | verified | n/a | `0x30fb61178f39c0452ced4ad9a7fec3344cb10b2e` |
| source verified unclassified | HomeBridgeErcToNative<br>`0x492c2d6be504511f8ca92d4da51c56b6ec0d9732` | non_address_book | unknown | unknown | verified | n/a | `0x30fb61178f39c0452ced4ad9a7fec3344cb10b2e` |
| source verified unclassified | HomeBridgeErcToNative<br>`0xab2785e38c3f21670d85f1889ff65cef7f4e8937` | non_address_book | unknown | unknown | verified | n/a | `0x30fb61178f39c0452ced4ad9a7fec3344cb10b2e` |
| source verified unclassified | HomeBridgeErcToNative<br>`0xb740472c650fe949931b9df0cb253b48c80c82de` | non_address_book | unknown | unknown | verified | n/a | `0x30fb61178f39c0452ced4ad9a7fec3344cb10b2e` |
| source verified unclassified | HomeBridgeErcToNative<br>`0xe6998b0c03d3cb9ee8c04f266e573c7fa8782846` | non_address_book | unknown | unknown | verified | n/a | `0x30fb61178f39c0452ced4ad9a7fec3344cb10b2e` |
| source verified unclassified | LendingPool<br>`0x1881dd4589447aaa1d8fd0515878fbed971a6bec` | non_address_book | unknown | unknown | verified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| source verified unclassified | LendingPool<br>`0x73280cc830a4be3f14ab2439660361dc70d024fd` | non_address_book | unknown | unknown | verified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| source verified unclassified | LendingPool<br>`0xbd804a38fdeee47695ced968f6416adfb6054921` | non_address_book | unknown | unknown | verified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| source verified unclassified | LendingPool<br>`0xe183c741966c397a0f904964b074aa36cefd1e2d` | non_address_book | unknown | unknown | verified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| source verified unclassified | LendingPoolCollateralManager<br>`0xd7e6500dfb81a5b2553b7604cb55305aa7db949f` | non_address_book | unknown | unknown | verified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| source verified unclassified | LendingRateOracle<br>`0xa83a29e98b0177138dddcc3a4b6536442d22c5c1` | non_address_book | unknown | unknown | verified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| source verified unclassified | MerkleClaimERC20<br>`0xb88d66e7721a20b58e7d18d81cdb9682307399ba` | non_address_book | unknown | unknown | verified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| source verified unclassified | MerkleClaimERC20<br>`0xc21a7b1e58356892f606bee801a00c7bad72edf7` | non_address_book | unknown | unknown | verified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| source verified unclassified | NFTDescriptor<br>`0xedc96ca776c0336cf3924dbfd1d0a54fbba05cf1` | non_address_book | unknown | unknown | verified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| source verified unclassified | NonfungiblePositionManager<br>`0x1f78108fdd0cb4bb0475fc9ce9e9a92688dd2f75` | non_address_book | unknown | unknown | verified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| source verified unclassified | ReserveLogic<br>`0x1b0348c67d01a46627ce1d8f9e2e218c9eae9966` | non_address_book | unknown | unknown | verified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| source verified unclassified | SavingsXDaiAdapter<br>`0x02ae11dc9783467e0830041399a2d48251f63907` | non_address_book | unknown | unknown | verified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| source verified unclassified | StableDebtToken<br>`0x059c47cdad2c96ca5551921124b75b82119bf73a` | non_address_book | unknown | unknown | verified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| source verified unclassified | StableDebtToken<br>`0x100bd913a8339250bc0f9ab788baabe0fb7ec7c3` | non_address_book | unknown | unknown | verified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| source verified unclassified | StableDebtToken<br>`0x3eb706053a2f5629edd7f94125b78377b4ddfdf4` | non_address_book | unknown | unknown | verified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| source verified unclassified | StableDebtToken<br>`0x5d9a99c1e2b0d7b0a446688ffafb5189bac7dc09` | non_address_book | unknown | unknown | verified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| source verified unclassified | StableDebtToken<br>`0xeb5767a1f3d9bd6891d5097b68768fae1d658af6` | non_address_book | unknown | unknown | verified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| source verified unclassified | StableDebtToken<br>`0xfcdd9111755f9b28c6d6ee41d57f4cf1d5cd3d23` | non_address_book | unknown | unknown | verified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| source verified unclassified | StakedAgave<br>`0x2e91cd1bf5ab2104633112ef35a7eb6998ec2695` | non_address_book | unknown | unknown | verified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| source verified unclassified | StaticATokenLM<br>`0x13f2b819b7165686f36af81d887e1459d19de3fb` | non_address_book | unknown | unknown | verified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| source verified unclassified | StaticATokenLM<br>`0x248ce8d11c990190642aa4eb34e8af2c832acc13` | non_address_book | unknown | unknown | verified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| source verified unclassified | StaticATokenLM<br>`0x365d2e94e3c0e84e7f7a678482f6029151f35322` | non_address_book | unknown | unknown | verified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| source verified unclassified | StaticATokenLM<br>`0x85822764fe473028c753bc1124c5df6607fcb2f0` | non_address_book | unknown | unknown | verified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| source verified unclassified | StaticATokenLM<br>`0x8e0dbc8b165268943121527639889069c92bc339` | non_address_book | unknown | unknown | verified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| source verified unclassified | StaticATokenLM<br>`0x9a4dcbcb82fac32580dc419fab3b8226868631ea` | non_address_book | unknown | unknown | verified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| source verified unclassified | StaticATokenLM<br>`0x9ae6d606d9ca14c59b703494bea2d8870e5c97ed` | non_address_book | unknown | unknown | verified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| source verified unclassified | StaticATokenLM<br>`0xa357efdaf20a1b3498400b029314a826b20ae61e` | non_address_book | unknown | unknown | verified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| source verified unclassified | StaticATokenLM<br>`0xa9502766df45f1bbdc4ea55a3fc38053be25cc68` | non_address_book | unknown | unknown | verified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| source verified unclassified | StaticATokenLM<br>`0xd28490e975a49ce009163bb9feb566133ace4ed2` | non_address_book | unknown | unknown | verified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| source verified unclassified | StaticATokenLM<br>`0xe22b9b998366b42886c76fb69c436ec3e5e0ef13` | non_address_book | unknown | unknown | verified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| source verified unclassified | Swapper_Coordinator<br>`0xba51d09224e14caef5ab6f3c9e8f3b9d7f896eb4` | non_address_book | unknown | unknown | verified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| source verified unclassified | Swapper_Coordinator<br>`0xdd494510e56347058703c277ef770d3d9099ca42` | non_address_book | unknown | unknown | verified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| source verified unclassified | Swapper_Coordinator<br>`0xf429c5e2f1fa4c5bcc6a7a376c618121b2a621e9` | non_address_book | unknown | unknown | verified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| source verified unclassified | Swapper_Helper<br>`0x8b707ce7ab2d9639ebb63cabe14d8d3960e9af64` | non_address_book | unknown | unknown | verified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| source verified unclassified | Swapper_Helper<br>`0xb450162dd2278bf2db6bb53d5010b54b390ce5b7` | non_address_book | unknown | unknown | verified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| source verified unclassified | Swapper_Helper<br>`0xb624888498c057b5398ef34898efc3d0fbf89489` | non_address_book | unknown | unknown | verified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| source verified unclassified | Swapper_UserProxyImplementation<br>`0x4125737f1af8343a137da77194ee7faaa4b0b078` | non_address_book | unknown | unknown | verified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| source verified unclassified | Swapper_UserProxyImplementation<br>`0x475506f459c814d6d27c76115a1a95175627ff7b` | non_address_book | unknown | unknown | verified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| source verified unclassified | Swapper_UserProxyImplementation<br>`0x5668e5a6b4663dc062db4b437f790909e68fe99a` | non_address_book | unknown | unknown | verified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| source verified unclassified | Swapper_UserProxyImplementation<br>`0x98216d5f0451b93a3747148b1b6247f6bfe3b385` | non_address_book | unknown | unknown | verified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| source verified unclassified | Swapper_UserProxyImplementation<br>`0xb0b0f7f9a860dbd92fe645bb88e90f8b8b2a08b8` | non_address_book | unknown | unknown | verified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| source verified unclassified | Swapper_UserProxyImplementation<br>`0xdb8e23f856d25aba008f39c92d161f0748f419ea` | non_address_book | unknown | unknown | verified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| source verified unclassified | Swapper_UserProxyImplementation<br>`0xea45ce264a5b2a2d2cc12fd5a92d6c8b444d5636` | non_address_book | unknown | unknown | verified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| source verified unclassified | Swapper_UserProxyImplementation<br>`0xf7da8f7ac394c08b4da3292ccab11e5243e63284` | non_address_book | unknown | unknown | verified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| source verified unclassified | Swapper_UserProxyImplementation<br>`0xfd42833b8bfffb8e4cc8ef860cfe26f4878ac91d` | non_address_book | unknown | unknown | verified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| source verified unclassified | SwapRouter<br>`0x662a928e66a7f874ee06e94eb82d4ede73869728` | non_address_book | unknown | unknown | verified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| source verified unclassified | UiPoolDataProvider<br>`0x46ad11df6c12e355241dfca7cea5734e0d512e8f` | non_address_book | unknown | unknown | verified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| source verified unclassified | UiPoolDataProvider<br>`0x569358ba6579539c6a2dc868aa57ed7e0ad2075e` | non_address_book | unknown | unknown | verified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| source verified unclassified | UiPoolDataProvider<br>`0x606a84c7241acc02699c5fe9f8f821a39adbfe88` | non_address_book | unknown | unknown | verified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| source verified unclassified | V3Migrator<br>`0x53ba4b2ed945e1eba48056ac02e610d10616921f` | non_address_book | unknown | unknown | verified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| source verified unclassified | ValidationLogic<br>`0x09bf5d4dff196c000fb735f94e4b22340b25e678` | non_address_book | unknown | unknown | verified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| source verified unclassified | VariableDebtToken<br>`0x0d23359086cbdda2f49e29de370ab85b451e81dd` | non_address_book | unknown | unknown | verified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| source verified unclassified | VariableDebtToken<br>`0x25fa1d8b25160789446300ad987a64cb54376471` | non_address_book | unknown | unknown | verified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| source verified unclassified | VariableDebtToken<br>`0x5630622525e50e385126a1134b842c2263a35789` | non_address_book | unknown | unknown | verified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| source verified unclassified | VariableDebtToken<br>`0x9546320a15179d0f4ac6f5dc0996c43fa87325b0` | non_address_book | unknown | unknown | verified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| source verified unclassified | VariableDebtToken<br>`0xa476a54bdd5ff4a900496877ec599f8840034fd7` | non_address_book | unknown | unknown | verified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| source verified unclassified | VariableDebtToken<br>`0xf6373624d8ce43e7c5e5904b9f5d7af3ecf3a2c4` | non_address_book | unknown | unknown | verified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| source verified unclassified | WETHGateway<br>`0x4e1461882e72232807f7a65081321b543e2e52c0` | non_address_book | unknown | unknown | verified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| unverified unclassified | UnnamedContract<br>`0x098f51bdfb5d6d319dd4fdf06b64773d25bd1316` | non_address_book | unknown | unknown | unverified | n/a | `0x30fb61178f39c0452ced4ad9a7fec3344cb10b2e` |
| unverified unclassified | UnnamedContract<br>`0x0be3b7483f728791eb0c6b2370f63b1455b58937` | non_address_book | unknown | unknown | unverified | n/a | `0x30fb61178f39c0452ced4ad9a7fec3344cb10b2e` |
| unverified unclassified | UnnamedContract<br>`0x159b36ed5ba327fd269fb93c75918257dcfe686d` | non_address_book | unknown | unknown | unverified | n/a | `0x30fb61178f39c0452ced4ad9a7fec3344cb10b2e` |
| unverified unclassified | UnnamedContract<br>`0x257bdd093cab1bd39ebf837dcb60f33d031d7d49` | non_address_book | unknown | unknown | unverified | n/a | `0x30fb61178f39c0452ced4ad9a7fec3344cb10b2e` |
| unverified unclassified | UnnamedContract<br>`0x26fc9fc1c98607e1634f87b47e6798d436823299` | non_address_book | unknown | unknown | unverified | n/a | `0xcdb858ce72a31735bff85579603bbdcf85e5e081` |
| unverified unclassified | UnnamedContract<br>`0x37d5b903a8fbd0d9f44f9f719fc33603189f2ff5` | non_address_book | unknown | unknown | unverified | n/a | `0xcdb858ce72a31735bff85579603bbdcf85e5e081` |
| unverified unclassified | UnnamedContract<br>`0x3abd91b5564baf7966dca7a30bd50eacc9abed77` | non_address_book | unknown | unknown | unverified | n/a | `0x30fb61178f39c0452ced4ad9a7fec3344cb10b2e` |
| unverified unclassified | UnnamedContract<br>`0x3b6669727927b934753b018eb421a84ed4eb0a43` | non_address_book | unknown | unknown | unverified | n/a | `0x30fb61178f39c0452ced4ad9a7fec3344cb10b2e` |
| unverified unclassified | UnnamedContract<br>`0x492c2d6be504511f8ca92d4da51c56b6ec0d9732` | non_address_book | unknown | unknown | unverified | n/a | `0x30fb61178f39c0452ced4ad9a7fec3344cb10b2e` |
| unverified unclassified | UnnamedContract<br>`0x65ce45cad9cf9880db84637bfa322fdbacf0df8d` | non_address_book | unknown | unknown | unverified | n/a | `0x30fb61178f39c0452ced4ad9a7fec3344cb10b2e` |
| unverified unclassified | UnnamedContract<br>`0x691c025efa7ea1c87df256f2da9208e5345d40b1` | non_address_book | unknown | unknown | unverified | n/a | `0x30fb61178f39c0452ced4ad9a7fec3344cb10b2e` |
| unverified unclassified | UnnamedContract<br>`0x6c70cdda7cb2eafaf296d7087e24475d39bf2962` | non_address_book | unknown | unknown | unverified | n/a | `0x30fb61178f39c0452ced4ad9a7fec3344cb10b2e` |
| unverified unclassified | UnnamedContract<br>`0x710d6ec2b0948def1f423ec77b51b6a55847d2c5` | non_address_book | unknown | unknown | unverified | n/a | `0xcdb858ce72a31735bff85579603bbdcf85e5e081` |
| unverified unclassified | UnnamedContract<br>`0x716623daf27f2afa8d6051a4eda08e12107a2c83` | non_address_book | unknown | unknown | unverified | n/a | `0x30fb61178f39c0452ced4ad9a7fec3344cb10b2e` |
| unverified unclassified | UnnamedContract<br>`0x7301cfa0e1756b71869e93d4e4dca5c7d0eb0aa6` | non_address_book | unknown | unknown | unverified | n/a | `0xcdb858ce72a31735bff85579603bbdcf85e5e081` |
| unverified unclassified | UnnamedContract<br>`0x74899961224538e423effd1a0ff3346adf3f4c56` | non_address_book | unknown | unknown | unverified | n/a | `0x30fb61178f39c0452ced4ad9a7fec3344cb10b2e` |
| unverified unclassified | UnnamedContract<br>`0x74b987a253864278ea4ae0cf0850e73c3a5bc4f8` | non_address_book | unknown | unknown | unverified | n/a | `0x30fb61178f39c0452ced4ad9a7fec3344cb10b2e` |
| unverified unclassified | UnnamedContract<br>`0x7df0e6a8ba609a6cc3ab2fa33d953a3b5584f10c` | non_address_book | unknown | unknown | unverified | n/a | `0x30fb61178f39c0452ced4ad9a7fec3344cb10b2e` |
| unverified unclassified | UnnamedContract<br>`0x93f6ee78451aacc1db1db49a12abfcc4662b9cc9` | non_address_book | unknown | unknown | unverified | n/a | `0x30fb61178f39c0452ced4ad9a7fec3344cb10b2e` |
| unverified unclassified | UnnamedContract<br>`0x96b32f2682eb26324226d18df53d64f79af6e1da` | non_address_book | unknown | unknown | unverified | n/a | `0x30fb61178f39c0452ced4ad9a7fec3344cb10b2e` |
| unverified unclassified | UnnamedContract<br>`0x9accfad714a1e670cd1f6dc666fe892d1d5547bd` | non_address_book | unknown | unknown | unverified | n/a | `0x30fb61178f39c0452ced4ad9a7fec3344cb10b2e` |
| unverified unclassified | UnnamedContract<br>`0xab2785e38c3f21670d85f1889ff65cef7f4e8937` | non_address_book | unknown | unknown | unverified | n/a | `0x30fb61178f39c0452ced4ad9a7fec3344cb10b2e` |
| unverified unclassified | UnnamedContract<br>`0xb289f0e6fbdff8eee340498a56e1787b303f1b6d` | non_address_book | unknown | unknown | unverified | n/a | `0xcdb858ce72a31735bff85579603bbdcf85e5e081` |
| unverified unclassified | UnnamedContract<br>`0xb54042f5ba4b048fea54aae70abbbe41ac716299` | non_address_book | unknown | unknown | unverified | n/a | `0x30fb61178f39c0452ced4ad9a7fec3344cb10b2e` |
| unverified unclassified | UnnamedContract<br>`0xd760e016226836cc02e329addbb6821945dd5100` | non_address_book | unknown | unknown | unverified | n/a | `0xcdb858ce72a31735bff85579603bbdcf85e5e081` |
| unverified unclassified | UnnamedContract<br>`0xe1579debdd2df16ebdb9db8694391fa74eea201e` | non_address_book | unknown | unknown | unverified | n/a | `0xcdb858ce72a31735bff85579603bbdcf85e5e081` |
| unverified unclassified | UnnamedContract<br>`0xf676cc15eb6d15b794aec65bc20052afb53d9052` | non_address_book | unknown | unknown | unverified | n/a | `0x30fb61178f39c0452ced4ad9a7fec3344cb10b2e` |
| unverified unclassified | UnnamedContract<br>`0x02e2e694184955432037856e1785a598f2c6eef5` | non_address_book | unknown | unknown | unverified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| unverified unclassified | UnnamedContract<br>`0x071bf5695afeda65c405794c6574ae63ca8b73c3` | non_address_book | unknown | unknown | unverified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| unverified unclassified | UnnamedContract<br>`0x109f6f453a9aa0f45a2353d517504ee3258d23fa` | non_address_book | unknown | unknown | unverified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| unverified unclassified | UnnamedContract<br>`0x17dce52b2f7abe4204011196019276d36cd55c71` | non_address_book | unknown | unknown | unverified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| unverified unclassified | UnnamedContract<br>`0x1964b041ad6ab83275f3cc9bcafa4e92b13ceff2` | non_address_book | unknown | unknown | unverified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| unverified unclassified | UnnamedContract<br>`0x1c5b8da51e5deef2acc29dffe4c34c781fecf942` | non_address_book | unknown | unknown | unverified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| unverified unclassified | UnnamedContract<br>`0x201959d07446095cebbb3c162afd9ff7749437a6` | non_address_book | unknown | unknown | unverified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| unverified unclassified | UnnamedContract<br>`0x22df53dc7efb5d74828f19784db2ad375f3b02c4` | non_address_book | unknown | unknown | unverified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| unverified unclassified | UnnamedContract<br>`0x2ac1f91872c2a642ea957f6822afa470194f1904` | non_address_book | unknown | unknown | unverified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| unverified unclassified | UnnamedContract<br>`0x2ffabab31ab17f785b9d03abc9f022fc57775aab` | non_address_book | unknown | unknown | unverified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| unverified unclassified | UnnamedContract<br>`0x35dd0085adea1ae2c1893107b844bfec40b85db6` | non_address_book | unknown | unknown | unverified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| unverified unclassified | UnnamedContract<br>`0x37673908230360128162aaf9790c90af9540d42c` | non_address_book | unknown | unknown | unverified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| unverified unclassified | UnnamedContract<br>`0x40d2e77cf5328aade163fbbaf239152d0dc67b39` | non_address_book | unknown | unknown | unverified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| unverified unclassified | UnnamedContract<br>`0x46eb3f515c72de82a03d28fec263a56943cd581c` | non_address_book | unknown | unknown | unverified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| unverified unclassified | UnnamedContract<br>`0x4c8b996c61d72a5dc39dd2bc54512612fabfb961` | non_address_book | unknown | unknown | unverified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| unverified unclassified | UnnamedContract<br>`0x4da5beb71f98dbadb86a93ccbaf63093a53eaae2` | non_address_book | unknown | unknown | unverified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| unverified unclassified | UnnamedContract<br>`0x562e49d53ccbdc7f446f4683e270f6e51e9ec2bc` | non_address_book | unknown | unknown | unverified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| unverified unclassified | UnnamedContract<br>`0x5be5d4bb56451a27c76f3ea87f7c564f05c20dc3` | non_address_book | unknown | unknown | unverified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| unverified unclassified | UnnamedContract<br>`0x678b9300d4db3c1436dd765c2fb4ddb3321cc69c` | non_address_book | unknown | unknown | unverified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| unverified unclassified | UnnamedContract<br>`0x6a0614a055ae3004117face62572398073fc387a` | non_address_book | unknown | unknown | unverified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| unverified unclassified | UnnamedContract<br>`0x6c8ae5a91503cf83996be170284bc609ba7beb75` | non_address_book | unknown | unknown | unverified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| unverified unclassified | UnnamedContract<br>`0x7057a9ecb283e205b73a5137e6bcb47ee69c2e23` | non_address_book | unknown | unknown | unverified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| unverified unclassified | UnnamedContract<br>`0x7b81e0bac030a9079e1e2b45d5c089c3e2b93dc1` | non_address_book | unknown | unknown | unverified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| unverified unclassified | UnnamedContract<br>`0x7eb44b224a4cf83f0f72612379ec57dacb651fd4` | non_address_book | unknown | unknown | unverified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| unverified unclassified | UnnamedContract<br>`0x832cd194fc518411377e8382bc27b7bcb76c4ca2` | non_address_book | unknown | unknown | unverified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| unverified unclassified | UnnamedContract<br>`0x8677a74ea1b5404b36e9a9eb1aaf42d1d6e27136` | non_address_book | unknown | unknown | unverified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

- No persisted address-book scope analysis is available.

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0x83f20f44975d03b1b09e64809b757c47f942beea` | SavingsDai | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 67 |
| upstream | 0 |
| standard_library | 3 |
| needs_review | 74 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 0 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
