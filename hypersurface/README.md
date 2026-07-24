# Agentic Audit Brief: Hypersurface

## Export Authority

- Production state: **published scope**
- Raw selected rows: 1 across 1 audit(s)
- Eligible audit results: 2 (1 matched; 1 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e40c73181a386361babecc6895e0f6c5587548f92814db09f88491f8b4a38d92`

## Project Overview

- Project: Hypersurface (`hypersurface`)
- Website: [https://app.hypersurface.io](https://app.hypersurface.io)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: base, hyperliquid
- Contract surface: 335 unique implementations (590 raw deployments)
- Coverage basis: 1/6 confirmed own live verified implementations (16.7%); conservative 16.7% with 0 needs-review implementation(s)
- DeFi Llama TVL: $2,590,605.12
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Hypersurface. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 8 contract row(s) across base, hyperliquid. Structural roles: 5 unclassified, 3 core. 2 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 8
- Structural roles: unclassified (5), core (3)
- Contract kinds: contract (8)
- Detected standards: ownable (3), erc165 (1), erc20 (1)
- Frameworks: openzeppelin (3), openzeppelin-upgradeable (2), chainlink (1), uniswap-v3 (1)
- Upgradeable-pattern rows: 2

## Fork Analysis

0 of 11 contracts are derived from known codebases. 11 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x06d44b2ad3a8827613b1a3813722d3870edf26c1`, chain 999)
- UnnamedContract (`0x578858dd49292ecc818f1a88f95fc079b8663fe0`, chain 999)
- UnnamedContract (`0x64049338da0b7358336d6ad81afddd9c1d353d33`, chain 999)
- UnnamedContract (`0x7d2e4b4d7ba55c423f5cce194ae8194efd1c6e35`, chain 999)
- UnnamedContract (`0x84d4c4771cc3c47f43c608e08a3ac5d9f80c54ab`, chain 999)
- UnnamedContract (`0xf077393f8d2e6fb8151a53c5209686544a0e3749`, chain 999)
- UnnamedContract (`0xf61f55ddc42bb1d6e08a04e22c78eed7d1e37e3e`, chain 999)
- UnnamedContract (`0xfb7d8f202c8f8182f3bcfe658ba52260b0c719c4`, chain 8453)
- HedgedPool (`0xbac1bce3f9e1e2d689071cb86290169d9607fac7`, chain 8453)
- MarginPool (`0x9aba7a212d479ed1678d903ba851778bc2fb3103`, chain 8453)
- MMTradeHelper (`0x1e1be1b7205d0038e2588a7c7d1059875ae5dfaf`, chain 999)

## Contract Surface Quality

- Logic-topography rows: 8; live-surface rows included: 8 (8 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 10/11 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 1/6 (16.7%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 10 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 325 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 1 standard proxy/library)
- Proxy deployments represented within implementation groups: 52
- Confirmed-live implementations: 10 of 335 unique; 325 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 1/89
- Verified + Unaudited implementations: 88
- Verified by bytecode match: 0
- Unverified implementations: 246
- Unique implementations: 335
- Raw deployments: 590
- Audits discovered: 2 (2 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-11 (fresh)
- Audit staleness (calendar age): 1 fresh, 0 aging, 0 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 1 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 1 | 1.1% | 2025-11 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| HedgedPool | unknown | project_anchor | own_supporting | 1 | base | unit-387328 | 2 deployments: base `0x68893915f202e5da2ef01493463c50b2f68df56d`; base `0xbac1bce3f9e1e2d689071cb86290169d9607fac7` | ✅ Audited |

### ⚠️ Verified + Unaudited (88)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Aero | token | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x940181a94a35a4569e4529a3cdfb74e38fd98631` | ⚠️ Unaudited |
| BurnAndEarn | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: base `0x79c1921fc8cd076415cbd1ebb330629f4ec7bbd1`; base `0xe25e010026692de7a3bb35ef7474cdf4fa1c7e44` | ⚠️ Unaudited |
| CrossChainERC20 | token | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x311935cd80b76769bf2ecc9d8ab7635b2139cf82` | ⚠️ Unaudited |
| ERC20MoonwellMorphoStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 4 | base | n/a | 4 deployments: base `0x1ddaef2ead56cc4544c35d6957ba4e948f57310c`; base `0x3efc7c5717627cc05538b2bd8ebe7c494bd20d1d`; base `0x4fecdb9bfcd385771fde2b802f732ab71a7a523e`; base `0xf847f646d6578beeae0b47068e08f830e0a5d3f7` | ⚠️ Unaudited |
| Execute | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: base `0x9d15103f8fdbf9b989583a37a49724f6b3a41e31`; base `0x9d484628d76603796a492117f90788721bc5b7f8` | ⚠️ Unaudited |
| FeeSplitter | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xc90f6d74f81cb551c19d138b50456c644f9b3284` | ⚠️ Unaudited |
| GaugeFactory | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x35f35ca5b132cadf2916bab57639128eac5bbcb5` | ⚠️ Unaudited |
| HedgedPool | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | 3 deployments: hyperliquid `0x2ef31a3c848e0789feefc56377b46db63329d0c5`; hyperliquid `0x9749a02658008b814eee4c123e8b18a2055ab298`; base `0x433cf96e9245aa1b576b564effd3054b0533f943` | ⚠️ Unaudited |
| HedgedPoolLib | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 4 deployments: hyperliquid `0x384dfc8d5e0a6256a13fa257415563f219ea1a71`; hyperliquid `0xe16f4b4204534ca3bdb6b817c841d1c938d1f48b`; base `0x3409ddb621ab0f6dcc82d656c4a4bc8c0d1edbe4`; base `0x4c5a1728585cf5692c477d874db4c83012ba1dbf` | ⚠️ Unaudited |
| MAMO | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 3 deployments: base `0x31093641ac0a6930f5c0909c4540d295051188a4`; base `0x7300b37dfdfab110d83290a29dfb31b1740219fe`; base `0xbfd59caa3faf7cabbfa3ee1776a9fd3853c6a589` | ⚠️ Unaudited |
| MAMO2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x036e14fe5ad9636f36d9878d7bcf6ea795d81af0`; base `0xaefd289e99767a09e6d970866cfd6cd05e0cce63` | ⚠️ Unaudited |
| MAMO2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x9294ea619d273a7a9d9daca79472a18d03ce6852`; base `0x980a12665ebd7672eb1c91ab6e6de3a0ccfc6dcb` | ⚠️ Unaudited |
| MamoStakingRegistry | registry | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 5 deployments: base `0x20ff28f7d8313b81989620a3cea7ec4151c492be`; base `0xa4f24b25cebca9f48552368a376e8eda8be17e32`; base `0xec2fa154343958a8912a2e2bccdcdfd74362dfa3`; base `0xf196481065ab728ea84648830b606207aa3b5d0d`; base `0xff3bb81651592bc9c64220093a98ffb10d2b2706` | ⚠️ Unaudited |
| MamoStakingStrategy | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 5 deployments: base `0x26ba1566bba5660eeccc6c052e953e945bf28550`; base `0x2785d56fa8fe2bbf1397361d14942b82edf07749`; base `0x7240519388acd7632ff38753f514fcc993abed09`; base `0xd8100e6a8fd9d58f31c537b4420b732ba00b5157`; base `0xfe25f3024b0c4c0859ef2295647ac4b79472f8a4` | ⚠️ Unaudited |
| MamoStakingStrategyFactory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 5 deployments: base `0x1829e71933058620aa8a92556dc0e04f5d160475`; base `0x877de3630d3b1316d6ad9e25a36ca2aae3fc17ea`; base `0xa0449e32ee32275bff524c2317ac738f613f408a`; base `0xd034bf87003a216f9a451a55a2f4f7176aae23c8`; base `0xd7c3f474761b9a0ca4a8634570e8dcd4f5c92239` | ⚠️ Unaudited |
| MamoStrategyRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 9 deployments: base `0x029773ca368ddd11d76b6485dc53748bd6861e6c`; base `0x142f39471d2c322d447bc6daef0f36aa7dbcb76c`; base `0x1b8b7deaaf29b8fcdcf904a26ea4d83e54508f97`; base `0x46a5624c2ba92c08aba4b206297052edf14baa92`; base `0x7597418ec9f9630773b841da05af7a8b05b6fe29`; base `0xb5c87722a0d4f285ba117e8aa11d80beb34d65d0`; base `0xc4fdf7a922df734363f7cea253a9aecfddc70e85`; base `0xe4ccad0893dc1f0ca18decfd957d3456796edfab`; base `0xe659d7c07a50e90f1276fd885f04f16440d54710` | ⚠️ Unaudited |
| MarginPool | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x04fe57fc72f75bfdca4a3f910256797e97fb126d` | ⚠️ Unaudited |
| MarginPool | core_logic | project_anchor | own_supporting | 0 | base | unit-387324 | `0x9aba7a212d479ed1678d903ba851778bc2fb3103` | ⚠️ Unaudited |
| Minter | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xeb018363f0a9af8f91f06fee6613a751b2a33fe5` | ⚠️ Unaudited |
| MMTradeHelper | unknown | project_anchor | own_supporting | 1 | hyperliquid | unit-387330 | 2 deployments: hyperliquid `0x1e1be1b7205d0038e2588a7c7d1059875ae5dfaf`; hyperliquid `0x5d2cbe54e4a27fdbffaf8de29b95c584c910269d` | ⚠️ Unaudited |
| Multicall | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 14 deployments: base `0x125d3eeb43f99f2d1450f3db38e4ddda03742fe8`; base `0x141d8b7f279785424070dd88a5bfc4c97a2a7257`; base `0x1578bd9ff22f54707bc39aed698c97df9068f60a`; base `0x1602cc5de704c0a946515493683f2eeed53f4920`; base `0x20076b9e344d062ecb2d2faf06677057479296da`; base `0x261640f4a046e87f8e916efd83dc5f0e90e9ecda`; base `0x513137525c3282e125cbb1aa8858400f63ebb2be`; base `0x79ec9dfaf0264531cec88c28733bde64289ad1ab`; base `0x7a829c5c97a2bf8befb4b01d96a282e4763848d8`; base `0x7cb24efa3fe76650388145b9b0823de6600f1f4c`; base `0x98ae9ae88cd3bdf5d5599bd1b04b6f003ab79040`; base `0xb040be6b1c5f0ea44dcb6e6b1c276f38e3560222`; base `0xd4693314460d6fb598c1124aec40c03e2aa0a8a4`; base `0xe0aa215086ddf76098fe84d1ea5b71eacc775942` | ⚠️ Unaudited |
| Multicall | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x23035f0574adc543f5611eac9a518215fa29f33c`; base `0x603664308b6a23be87b5d81c656871825a0f82c5` | ⚠️ Unaudited |
| Multicall | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x88ab4ad767955f495b25fad394318b920533eb80`; base `0xc40153ecbdea90c4e0a409f38f4a50e58f5e7eda` | ⚠️ Unaudited |
| Multicall | periphery | non_address_book | standard_proxy_or_library (excluded) | 1 | base | n/a | `0xa7cfc43872f4d7b0e6141ee8c36f1f7fee5d099e` | ⚠️ Unaudited |
| MultiRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: base `0x7855b0821401ab078f6cf457deafae775ff6c7a3`; base `0xec9abc51bf7d7a91a60c32dea861f8029b1a7791` | ⚠️ Unaudited |
| OpClaim | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x1c69cc8be2b29225b74743752a721ca21d0203a5`; base `0x93c08dac9b36c28e6065c4ef3d7bdc3dc76663ca` | ⚠️ Unaudited |
| OtokenFactory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0xf6d788dd55738f82d03f97597660221ca8b4c98d` | ⚠️ Unaudited |
| PairInfos | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 15 deployments: base `0x18cbd536ba9a069e48f6419769d73da78eb9a975`; base `0x28f525100fefae8b1c63b4d4a52d0f305cc0e136`; base `0x4859a4dfa2f787f8b9acec5d4ac8e48bf43c6f6e`; base `0x7cc70d3acb7872f9c4f61fff13c1820bd9cfde64`; base `0x7e74639f5777c9a2e8f7bc019da9327d2ab5afb8`; base `0x86ff253f05e4c3f145fd4209e901c7a4cc2ba98d`; base `0x8f50eae05c74675109dbf0678f22a8ffee3b6de3`; base `0x9323cb21d72e9409192d12b2fbac88c88c2ad489`; base `0xa86a0d825796441f24b21f1813bbe52b74dae787`; base `0xd344d6c1b5cb22557997ceee1e406d40a2e90f8a`; base `0xd4d8eef0ae77e12abf34696efe3b498c6f075093`; base `0xdb7b172054aeecb5c6bc3f988bc19528318cfbfb`; base `0xdf85bfd38c6694fbffc67a60f5a09d9932b58df9`; base `0xef601ac9efd7210801a4d1ba362b5b03dc1cddeb`; base `0xf74074180d9d8d7259449c5dbb351d5c6130668f` | ⚠️ Unaudited |
| PairStorage | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 28 deployments: base `0x2f09260089c75112ef20621d947f96cea6969ca9`; base `0x3a93922fd64bac36ba63ebc52fe982bb7ce6d64d`; base `0x433cf9e346b8d15b4f9269c4c75144398262db49`; base `0x45ad5d71a38a291680798dc943d30bd2255e515d`; base `0x4dadd07575aebd1204ff566b7d90b4af9f0f8a04`; base `0x4ff0116543e7f24d2d2c251075bf540cb3de7eba`; base `0x65b3cc065991fde0a58640c54fcc22ddcda5bc39`; base `0x68e0dcae2c3cd40f91c18152f2c2fd84c43fd08f`; base `0x6b01810e829d217db2d51c964cf182bd8be7ef54`; base `0x6eca2480f672fbc235ce7075325bb6d7dad2b1e9`; base `0x6f839de7af9382b9778f996f40d61041b780f830`; base `0x7affc49628e9cb236156ca67ecfbc8ff91e29f50`; base `0x8311b4852efc1b28a532fbf1dae5c88b8c6a1700`; base `0x8b4027bb5bb062963ae65bd6496bfd5559daf4cc`; base `0x9894a06644d3bae4fe3b6a7976aaa150db351cec`; base `0x9db724c6eaa156a23ae6c53fbc2041e30d575a71`; base `0xb3048b8bc47be68965dda9603468e8518b50db66`; base `0xbf8d255830e71f071dc4bf06f8db8bcfeb2542b3`; base `0xceab8815c58cc3409f33298d73a74b9b9feb0968`; base `0xd2c75f14ac388011f9e3259beaff92b66a39187b`; base `0xd910d2312ad46ce74b468103c527c04f8998b195`; base `0xe41c5401b560b9d22ab86fb839ff337313372c26`; base `0xe4f1b20a7944e2ecfd2515546fd8d3892b0d08b0`; base `0xe7f661993706abcb92a59e21d23e266631b8ea15`; base `0xe8379485808a0cc86ad482bbc90699cc7be45934`; base `0xe87d9747ccd26add50639e93b5b3daea5af6ee77`; base `0xf68a5c8e7540d9f4b28efd077064064f354b0397`; base `0xf76370a0924fbfb010dc1efb3c05da9e34426aa1` | ⚠️ Unaudited |
| PairStorage | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x5db3772136e5557efe028db05ee95c84d76faec4`; base `0x6a2be7f60c312b0dabde5a515bdee5ffc22b2a88` | ⚠️ Unaudited |
| PriceAggregator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 14 deployments: base `0x0611a36cb46a19f5df3dc57951248a6f5f336ad9`; base `0x0cce4d12192ea86bde79f774409cf6f5ee72fca8`; base `0x1996eb377cb75572d2bc4a60b39cc3a22f921698`; base `0x1a172d9ba45ed78a41855a9918a9218cd898d287`; base `0x4efea74ffd48cfa37dd7282df0ee4b22f08e74f9`; base `0x5032922a9c75fcee55e9fe510f939d42cbef4ae3`; base `0x5e848711acf64b492f57550e0d80a4a23cad5f23`; base `0x6b693dad3cbdc7c969acfde2973e6c00d1382e5b`; base `0x6db4e7008f589e3d806dc3a4176756f684aaea85`; base `0x7e7f28170eabecefdde33100c04510784101312d`; base `0x93f547dec160c65c19c993b0aad6eb4b3c587ce4`; base `0xa4a1a9b747cce2fcab601049e8167649dee09b41`; base `0xbe4c3bdbd45cf79ba21e5396e1d0c8ff29073be5`; base `0xbeddace886664ad29fb1c1929cd4cf8ab2e2684f` | ⚠️ Unaudited |
| ProxyAdmin | governance | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | 2 deployments: hyperliquid `0x596d60051bbc2181944fd4799c4f4d598c95144e`; hyperliquid `0x6b1e489411116140fa944e9e32984a10d80f7ebd` | ⚠️ Unaudited |
| Referral | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0x1a110bba13a1f16cca4b79758bd39290f29de82d` | ⚠️ Unaudited |
| Referral | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x45e0611972e930462781c75c7295504c0e49112b`; base `0xa3672c25e8118bd8ff1185ce00a28a10305228a4` | ⚠️ Unaudited |
| Referral | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: base `0x7f163ae5cdde135d96c27f5be626341a20019bd1`; base `0xfe417372088146476ca28fa35d00f5e0f60b64f7` | ⚠️ Unaudited |
| RewardsDistributor | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x227f65131a261548b057215bb1d5ab2997964c7d` | ⚠️ Unaudited |
| RewardsDistributorSafeModule | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 7 deployments: base `0x1ee37bb5ef11615e4bfc396e39a30e0b381e5ebc`; base `0x30a182da0c30c7a59d37d447663ec0ae04fc2e09`; base `0x3db8c15e1834b35b7a9e4107228a32ba34ecd0f9`; base `0x614236501dc12b14f3a99e2af8a84dfa92ef248a`; base `0x6f85d661961c9a265776e2a3ccfcdf3a542d6da2`; base `0x9df761aeb0d09ed631f336565806fe26d65c470b`; base `0xfabe701fdd289e0b1938238c48ede86b02757f85` | ⚠️ Unaudited |
| Router | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xcf77a3ba9a5ca399b7c97c74d54e5b1beb874e43` | ⚠️ Unaudited |
| SlippagePriceChecker | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x1d1a3c6420d949249b7e663a39800649b2014ee2`; base `0x1e297b2bcfaeb73dcd5cfe37b1c91b504dc32909` | ⚠️ Unaudited |
| SlippagePriceChecker | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x1ec60ecef1e6f9d358408cdef4d9c8aa1820f48f`; base `0xc0189d6dcdc8a313e0d7d850dcdb910f077c1f0a` | ⚠️ Unaudited |
| SlippagePriceChecker | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x2d5f13d0d4fdb40d0315f08c2f82b76a2c3e12d8`; base `0x9010e71850fb3d670956fc28ffa2508e410fc5d0` | ⚠️ Unaudited |
| SlippagePriceChecker | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x413c38b68fe730f2bc30d8cde965967d1c7bc599`; base `0x5a8f10be44e25bb21492c5f46da94cdb1f0b2ff6` | ⚠️ Unaudited |
| SlippagePriceChecker | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x47517abd7bea7ab21c7510fc4b63eb2b74788df7`; base `0x64cf013ba62ffd984b03ec14160b5301bd67a07a` | ⚠️ Unaudited |
| SlippagePriceChecker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: base `0x518e95f6f91e316133fe256fbc1cf47a54e50c56`; base `0x6af6fa071b74e255d5732df2e703446bfb5d4946` | ⚠️ Unaudited |
| SlippagePriceChecker | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x5612e3942202d7aaf40da84454ee64914b4e942c`; base `0xd646263af8967cdfce2caa5f8901e93783e4e059` | ⚠️ Unaudited |
| SlippagePriceChecker | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x68efd623f47acf218f5c2063f5a4fb2d2eab7bb0`; base `0x7d8fa4c4bc2d35371ea4f9394a5aee1fcfd5262b` | ⚠️ Unaudited |
| SlippagePriceChecker | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x863f302e78a463dcb65e28b8a6507922240c188e`; base `0xbb42bcf182c3734286f9510cb2a5462c71e5fef7` | ⚠️ Unaudited |
| SlippagePriceChecker | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0xe3aed9eaa34b22532561bc67e3c63cf8a49cdbe1`; base `0xefbfc62ebff226a306c8ebbd5397126a8e0d8036` | ⚠️ Unaudited |
| SlippagePriceChecker | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0xf732cc757f195cc5312fe78398dac6be9021c8d7`; base `0xfc5411069edf7ace1e8178b1dadf20de2d287628` | ⚠️ Unaudited |
| StakedToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 3 deployments: base `0x553000ac1a8d7f2d6372e4b7adb7efcba9a1ced5`; base `0xb85e0ffc5f7799170724c6220209826e9854194c`; base `0xd546040f08e6b3a4f1d21683b9bd9935d73bd9e9` | ⚠️ Unaudited |
| StrategyFactory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 13 deployments: base `0x14ba47ef0286b345e2b74d26243767268290ee28`; base `0x1eeb3fd8c8302daf6bc265a6b8a5c397d89de286`; base `0x1f9b6cbc4d89d66be7e13075ab06febe9a42db9f`; base `0x20c444bed40fafee49222ee9a480937b825282dc`; base `0x3098360e627e84fb9dd621f01ea03e325ccee2c6`; base `0x488eef7561e97f4f8186f30cf7dd502b28bbc67e`; base `0x689e1e8026a17a80e5c539cad43eb9982cbec032`; base `0xa3eea50fd8cf0ce75f319edf959e306459d8d974`; base `0xaa5b91e52a9cc07dc7c416ee35fb5bb54efcec08`; base `0xaaa7155c734c385453e7289434b22688df385289`; base `0xe23c8e37f256ba5783351cbb7b6673fe68248712`; base `0xf3a72612bdd50480672350dcee4609b94da9ecf9`; base `0xf8cfdef5068929e022a50315983043b61e9987f8` | ⚠️ Unaudited |
| Token | token | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: base `0x696f9436b67233384889472cd7cd58a6fb5df4f1`; base `0xc009895d2f97966c1bddf36519cd44ccf789e070` | ⚠️ Unaudited |
| Trading | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 19 deployments: base `0x00695efc895ec1e549e8f16f7f1c713eb7ef1295`; base `0x16ad53406c0ff09e329bcd53302081e3a3564156`; base `0x16cb9a51960041960bc79359c2a397039e8d72c5`; base `0x3ae99070ee412275dab316a5513b03c39be92b28`; base `0x46246125ea8221f184f7c8670149a09b673cb6e7`; base `0x46395b611744408241835fc2fdd9e17183d24548`; base `0x6588285ff85032cb2a1a0f404e405e80cd3748b4`; base `0x6b199e7ecc732f7a2c4f851a1371483c10451507`; base `0x79c50438e00ad5e9a1bde2ea1acd8eb1aa6050c8`; base `0x828b64b99c0820e58521fc51591febf446bed78c`; base `0x99c10680dbf73b519443c61d66482565063c9669`; base `0xbd958a04fcf91e7a6a72e0918646fbd4389c70b0`; base `0xc10a2842f53dd44784ea51470851341eb918790b`; base `0xd52ea52c2a8460fcdd931bf2005a81926d3ffb30`; base `0xd7917d3fc67c8b2f52ca4ed69bb46248e8df7968`; base `0xd973b86d336ff55198d4d33f504a6e77306d9783`; base `0xe2127524187d34663b3789d4603a84bfb6f6c5dd`; base `0xeede119b1553db78751804074059c00b459c4d5f`; base `0xfc3a952c1ced32eb389043718f0340d7c90f9e6a` | ⚠️ Unaudited |
| Trading | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0x44914408af82bc9983bbb330e3578e1105e11d4e` | ⚠️ Unaudited |
| Trading | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x60ff7987fa2ad267fc6723b96bb2426bd7961248`; base `0xcb28068e0f6cf42dc480fce67ef6630391156ad8` | ⚠️ Unaudited |
| TradingCallbacks | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 17 deployments: base `0x00123005b7b62c4beff0a4b08247e06142833f9f`; base `0x00ee4236763bc79f354097a79f00f99cb0c53bda`; base `0x1fe035f203b9f48755521b56f133488dfb064680`; base `0x2067ff027d97b4f2f1cba1a2c846531a68cfdf15`; base `0x21b59c3a9384010c3182b0ead65eb0c883f5e706`; base `0x27282ce609d9812af67f0c4e7418ea95dc3442e9`; base `0x300a64687ebecc30f908d9f996421a93a2bdb960`; base `0x373faea72a86bd0eb33ef08e01c5918a95919349`; base `0x4263f0725962909899cb8a45d27f63744deea20c`; base `0x45452e412d93e0d7e023978d09455eb6de7a6330`; base `0x680149878b2bc3f5c0db4b4d62b9b8b879fc421c`; base `0x6a22930d0f6f0e39c406f1423abc4d5c287c5de0`; base `0x81a52f7284e8690d74aaac474219cead8b494701`; base `0x8550015ce849abeced0cb8f55f544a78895e14fa`; base `0x8dc5e67c014662a59b6c4b50748ea795370ba86c`; base `0x9af69b4ad8b4f1ff349fb5186219df1caf433e75`; base `0xb1c9c2c07ece4ea14108ffde8932c22893d8feca` | ⚠️ Unaudited |
| TradingStorage | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 16 deployments: base `0x0e82149feb35a5edb540294129420a979dcd7dc9`; base `0x20155a0b84513189cfb92297a7b2f1036216e131`; base `0x22281877575c3f84562822e600876a5dc4d23318`; base `0x236a48becf55f4c8f9f59cdc05187ad889fecffa`; base `0x586f650cde0ef43e63818d2f1e4de9d514b4e4f2`; base `0x62c5442b2fb9012a8e7f50b604069dea1d371ca2`; base `0x717eb3493cc2394fba753a434630892eb992244a`; base `0x83dbaf0d491534bfdf54098d1b780b08df35a996`; base `0x9229b667dde658d5c98404a290cab4233b9e71e4`; base `0x9e6b80dbf9e8b7047e8ca1eb5ac36918b6d12422`; base `0xb4d2f8c421308a346c088b6edf941cd88c320c47`; base `0xb916e6847de484bdb37e16e7a81e695ffe4ae5c3`; base `0xd14447e1c7d77e5a694f4571f7f52f1565a7728c`; base `0xdbff9642962cc9a2d3fe9fa1960846ad88e7760b`; base `0xe8ae5603b0fe6265592cbfd36bb596e223e966d8`; base `0xf77e2bd968cd296679c9fbfee34301c9ac01db70` | ⚠️ Unaudited |
| Tranche | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 11 deployments: base `0x2db4fff86d94341f2fe137ff654f4b89ed473775`; base `0x548f3f61f1ca8d8eb36f323b6091b6ece090d500`; base `0x5d023a1a4fad735ad78a3f9012701b1223637c8f`; base `0x5fc6cd7b0ab384b4a0efb2df9d85c7e85d93952b`; base `0x80cd76bac3793422f9e3f9ad7faa4157c55032d8`; base `0x8bc80666b4c4bedb03f4f2a5493cf5c42228d2bc`; base `0x96878c16dc858658e62aca3c92a90a2860429361`; base `0xc149309556f166b0735bd985c1dace9f9cf56559`; base `0xc3769e440e3515ba374372837f76aafdc4fba26d`; base `0xdd6d9134268feb42c226d24ac0711750af068673`; base `0xe56ad25f6e3ae0143f00df6ba4182c919b2c35ed` | ⚠️ Unaudited |
| TransferAndEarn | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: base `0x0589ac4734527fdb896367665b1ada33503fcd1b`; base `0xac4ddda19c5877d1e46925e0f2ec44f299407d3e` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | project_anchor | own_supporting | 1 | hyperliquid | unit-387333 | `0x0095acdd705cfcc11eaffb6c19a28c0153ad196f` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x174199040622973df338ec0fabd8a596103ef28c`; hyperliquid `0x7bf74274250b5b6b0d086e0ac64ea091f36fcc14` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x212d347deacddb34969f944510c2c4f3c8e70e31`; hyperliquid `0x9a7b42c3cd5cf266ac8efaa923d9a8b78447b3ca` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x24d33df70cbf0a7af595d6bd6c8e51b726430028`; hyperliquid `0x7de9d932234d7774a361d0194361ab52917a8939` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x25dd9eaae2e0b118a2cefdd229233654840ba7a0`; hyperliquid `0x7e6d8289752080e4b4dabc75d61fddf8fddcd0f8` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x2ccf2a0bd960b849e5bf4502e114acb4332d282c`; hyperliquid `0xbd607756b693d3ee0254eac0f18731abc34ff304` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x30acf5ac982804df26e3b09c63b31ac465dae371`; hyperliquid `0x68f77dfabc311df0530b24b22e4d7da413d4f054` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x438530c3c77c38f3ff47dc9c20b40ceba018c87b`; hyperliquid `0xf82062a5ce27c4ee6fb4b5e7b4abeeeb3b156aa6` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x4a400778ddd7331a4f716f062eda4f66ef3bbb51`; hyperliquid `0x80d11a186b6eed8e78ba3352dea78dbf95a333e5` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | project_anchor | own_supporting | 1 | hyperliquid | unit-387331 | 2 deployments: hyperliquid `0x578858dd49292ecc818f1a88f95fc079b8663fe0`; hyperliquid `0xa8c9403bdf554c047ad91a448ddb24208ab5313c` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x705e893c66c973accb316c806765ed86d238ec64`; hyperliquid `0x9b321888c767678a5c5d268bc36f95444705e156` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x74cc036d4626ebdb28a24bbad7fe9ecbe227a6a5`; hyperliquid `0xf1de5b1982e86595724d29346a95a28d90b5fea0` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x7a21961c9945eca79975f386bfd7d815e99a02c2`; hyperliquid `0x934c5a942de3a3333c65c245d1abe20fb666cf13` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x7ea4fc58abdac0c855e93ac9e14bce53f3755e6b`; hyperliquid `0x83395430426d268ae48a4087ebecc93c3c2ebe2e` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0xd347d9f5f0f4bb25a2a40fde1207e81b406c6266`; hyperliquid `0xe26b244eb420a5ebb6c4f83628f434c4a230a371` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x10b3c39c66b43a6c7169e779d9e6a6d1f74c732a`; base `0xea63abd2ce0e3a4e353ed3a8323007ec9407dfa2` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | project_anchor | own_supporting | 1 | base | unit-387329 | 2 deployments: base `0x135fedc0159391ac8e3f0bf88d8fe319086679d2`; base `0xfb7d8f202c8f8182f3bcfe658ba52260b0c719c4` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x32858cbecea9d021e39dab7ab9f1b2d171241a31`; base `0xbec3a272dbe9388dc798074166c0d4338c848081` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x5afce295fde99088def78e4cbae77f20d063e712`; base `0xdd1095e98957b6549b65db6801ca71ad90025751` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x770eb2941045f7f7d675f6b522d142df2e078928`; base `0x8fc4e831369f252bb70c69b3ee7da4a121aba9a3` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0xc738e6c690931aaa4aad73d214e6c76349458414`; base `0xd3ab6f4b1568b309631811f321698e1abf6a2938` | ⚠️ Unaudited |
| USDCStrategyFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 14 deployments: base `0x06ac210e3087960c1028b851611a6fab9e981094`; base `0x31b83d13c2a4c7fc034206ee8b89ada3b73e47f9`; base `0x4417b1f0e50af737ab04b109dee4041d108dfc00`; base `0x50b305fe2bb671c708bb80a9aee414ae0d6cba92`; base `0x5967ea71cc65d610dc6999d7df62bfa512e62d07`; base `0x65723431dc01c64ddc85b3c7bfe67c5e985c88bd`; base `0x71be9cee81eacecf7449de13ee3c0f52c103aa9e`; base `0xb3c3555e3262bcc9545455f3e22587e956cba325`; base `0xc1b4494596e4081190de75d27d25498573840427`; base `0xce3137a3ce65f6bae20f44cc4877419f823c6030`; base `0xd7757aa4ccf72f08637880440a710eb57f058448`; base `0xea4d74a452f89d7a8fd9e4bc2c1edeb57015a44e`; base `0xf64a5c786daee61d9eb20d388099e56f9270b564`; base `0xf976a682b5cd205c7bdabfdc1254d6d071f14086` | ⚠️ Unaudited |
| VaultManager | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 12 deployments: base `0x0ca0ba253f192b31fb76aa93a2d3ec8687527486`; base `0x12c16c4168e7d6d6ceae7ad8be773501a8a30546`; base `0x13c7e59312903787f0b9f71ab4adeced257de37a`; base `0x4ab200dca5e3c594fa7ab98af67b46b3c5ada864`; base `0x535940d3a4b7d30bdd43cc3d656f54927aa437b8`; base `0x6201d3b7457f8140c2fbac02049d2842b9cce9fc`; base `0x866e4ab1ae1873160f039fda39b8f3b5f5e3973d`; base `0x8e99ae5502aaabeb1b511c876cdd2a6203dd367d`; base `0xa7f4c25de45ccd76364722134607c3f71efdfe96`; base `0xc15c0a260db8ca26707e2982430032e18541ec18`; base `0xf9c4a5fa6f63632157c2873c2c40dcb1f0b9f60a`; base `0xffd83193fae18f86da1d5a718bd35e4778f811c5` | ⚠️ Unaudited |
| VeArtProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xe9992487b2ee03b7a91241695a58e0ef3654643e` | ⚠️ Unaudited |
| VeTranche | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 4 deployments: base `0x8b0cf27913da70f6732f250a647301b111aa23ac`; base `0xa0ab93f6284d2dc4b1903cfef111e4c9da5a9b46`; base `0xadeb64e81b2f76f9702b92093213a61fec21fcdd`; base `0xe5391d01933cdac18609a011b775764d237ae565` | ⚠️ Unaudited |
| Voter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x16613524e02ad97edfef371bc883f2f5d6c480a5` | ⚠️ Unaudited |
| VotingEscrow | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xebf418fe2512e7e6bd9b87a8f0f294acdc67e6b4` | ⚠️ Unaudited |
| Whitelist | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0xeea2e4459b4065be147d7f060f4b331b3c95ed61` | ⚠️ Unaudited |
| Zora | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x1111111111166b7fe7bd91427724b487980afc69` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (246)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Proxy (impl: 0x64049338da0b7358336d6ad81afddd9c1d353d33) | unknown | project_anchor | own_supporting | 1 | hyperliquid | unit-387332 | 2 deployments: hyperliquid `0x06d44b2ad3a8827613b1a3813722d3870edf26c1`; hyperliquid `0x64049338da0b7358336d6ad81afddd9c1d353d33` | ❓ Unverified |
| Proxy (impl: 0xf61f55ddc42bb1d6e08a04e22c78eed7d1e37e3e) | proxy | project_anchor | own_supporting | 1 | hyperliquid | unit-387334 | 2 deployments: hyperliquid `0xf077393f8d2e6fb8151a53c5209686544a0e3749`; hyperliquid `0xf61f55ddc42bb1d6e08a04e22c78eed7d1e37e3e` | ❓ Unverified |
| Proxy (impl: 0xfa420c97e5c713b13d1c943a4faeb60845a1a730) | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x8b2ca70266e114409cf7741524ac6e22ca28f086`; base `0xfa420c97e5c713b13d1c943a4faeb60845a1a730` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x0004aabac18ad4056cd9114156d24e0d19fce02c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x00cc680326da4f918c16459eb7138d8282199513` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x04b35ab84102bf37e5d5e3d7347a43750997e768` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x052e8091255951b3a30e0cf60687b6483f5c10fa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x0a06578a43b63ad5573d9921a27552809384a2e3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x0a49978913567deafef4c53fcd813ac8858d1395` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x0a6439329fa967f5093a89935b5114983816160b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x1150aa040074c6adc814b43ff84d58eb3d800685` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x15a46d072cca0947a1963765875cc03ef754e3a3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x1696173867f724e297bc505330ef6a9ffee5c3dc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x16a6b6c7914ce8f4928d453c305a36c0c725f53f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x16fc3a17a53c679a17e07e1ce37a398413f6920c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x18470c38234805f5a08c9ced377d642281ea7ab0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x19a871a9952453699c1e46c7e6780d3486cbcd82` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x1b0727e4678e3a0d26fbca2c5ed0002fefa0295d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x1bf5ab9dfbf1e9db39cabfc36829c6e041c976fc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x1c0148cf0f15390d25afbac59e9a02612cb18c5d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x217f3b7ac00436638b33c4f95ef60b3c44fa4e12` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x21f63266fb0f88cd88cc3b0d21edd7d17d8d9967` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x22099bf072ef2664ecf3f299729a9ab1f485ffb2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x220f86b641ec63f4832cc30a663bb26b15259ee2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x227ffb51d67065702249ef0b2ba953f4d044cda8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x22e8a331eca9affcd40fe1ceee6d5098adeddb21` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x25298592cf99617a09ba6132a5e5b45dca92bfdd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x2561822a800590db4534d2e6221aa35d15c56dd6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x28d9da65d5c5433626a9605598b1e2ed11b0f32c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x295651c8d5bc6955c98d1378a08a55a9ce346fd6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x2b3c1d59b1430cd3da1879e61e911549876f8546` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x2d12fe9c382dd66a17b87c29c087bb0cc0c9eccf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x317b4aef8547355e9609bc4297534e965d45228a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x31caee128f31b4dc466262308b9ad3e356f93fea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x326f6412c737469887c7423221609bd888b851c7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x32cc9a267d0b948ce550af0ac38ad3972edcac58` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x3345a5f13b7d0674a96cb353d56b6950bc92d076` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x369529f8a7122697612ba2624817324f88298994` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x372863e8ddbc660ea3b400730ecc95a429baef5e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x39cb477b9c79578b2190278debbf08ace64385fa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x3baf3dd4486cc3234d0ad8b28d6aabeff4507c86` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x3fa79b8fae2ca95a729a165a97a876ba1b1c66f0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x429a40982156f6b270b1701c3def1b1941a8040c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x44a91a9f570fde503599d7124c195a0053de61b6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x47ae69e70f30cbf6082638e62bd82730b4c4e8bf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x4b8cff9aa9ed66b2e517b11715a77f52540d34f1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x4c85869eaf1c40f88a24e4f981d6b2093095d42e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x4ccf9c1bb0f55117c8f320c803f24a6d54e5dbfb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x5276fa65dd2dd50f7bc8358175d2f204a9186d7f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x528b0ad6a0ec62d6f5b95c95666fc41b4e966340` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x52eb08c7e3af92615acb0ae5b23e6947a1432679` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x543ed59f71f6bbe3aa6dc88d09ecaead40138b95` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x5501b69f6448e1b6d4586397dad8b9629024df2d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x58402cdb42d350cf8531796511f4055baeb684f6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x5adbdfe1c861320a44e5a363b4da007e7aa13f55` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x5bb1fb62dca8e95338e51fa1dfb448e74275416f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x5c7e60dfae83a2fd18d7c4752191f7f1ee2fa1b7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x5e408a76891bdf6cf1485345d1555a8a2ea2dbb8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x5e6dba23a268497aaf48cde995c4a500750c1047` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x5e97614820c1d49026a10acab8074cf3c9b2422d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x5f3afeedeb129e6e44897e409bb79bafef656478` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x60f29178e0e20aa20dc83c7843a1bc88a0a3977d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x6351ab4b7fe79ba374c67578c4462014addf39c2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x63b8a849b35dc915cb039d23befa5346701935e5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x63f69b6109befedddb318e03c2f9c5a96c5015b0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x67604c345d0bfa41c5252e7ca36e1bb07740f36a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x67b1a08d9490a315aac1cb7ac8690ee3e28a03ce` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x67da33101cb77313cfb17dd95210b04a352448e7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x687441675a40ea662e798ba24dceb8c98edd853a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x6b29358188a59e7f5ecce86102980bae011e93df` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x6b8d97c19802a89931f870395bd0ef6e89794475` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x6e6824ab5ac2a0175a015724788326d7961ade14` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x6eab66ca479f687531bbc2eba40cbe9747bcf2a2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x6f862654e7e466ed11a97d94a735db20d1e46cdf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x7329cd46628746708eefe67cfea8707acaff5696` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x744a86185b9eeb8be1f162fff226f8ab44a5d9bc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x74829afa88eabf4124f3d8fe905748eb1a3c95d5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x74cc24a60f33025a3d41c5adf261d3e8d91f0ab1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x758d0fc302869f7d5c136c4ccdeee36b4e934532` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x768f5f77686bc29b7465b12756209821ad178888` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x78391536695d12831153b98be7ff0e908bbaf64d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x78d66e5e69079168efcc235875d2f67a365db4a5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x7b08b96b8de4bbe8257962e7128f528020d10391` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x7bf4342b6ef700557f8446344c24900f7a13affc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-387325 | `0x7d2e4b4d7ba55c423f5cce194ae8194efd1c6e35` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x7e64485715caac0431068a2e48c6858049347b86` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x7e737df1b5a71547a9441354b8c4733cd511678a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x7fa82b885cc9636d0d5201e96f91a3f16dc29571` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x7ffd5706c916499676d707f3ec3f0c9b928e7a95` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x823b8b60617c0813673bc0d015722b9c9dd37b57` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x83836e78362ba28807163544dbe00b5556d4ee4c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x84ced90c23dea1d9c0078de2c9f00b946a1af1aa` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-387326 | `0x84d4c4771cc3c47f43c608e08a3ac5d9f80c54ab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x84f7c64c48dac9fa350cbb2e0db2f6260033bf15` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x88a78cedf1d8d8ba90790840b82cd16bedd7fcb6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x89031b5512186719b2abe923b3235881962d292f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x8bb24fbdb3e9ac5d5a3fa96b7fe9efeb2efec4fa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x8c5e29209b106a52e5262ab1bc658aa0e70bbcac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x8cff2204315b93d3967feac40e9767450ad3e613` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x8daadb1a5aa081cad96503e1c4007453d2e93265` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x8ef5643549b08ca4e4fefa344d8b0c8ecd5b34c5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x9077f11163a5e695ec3c41c05b46c317912331d4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x91d54ee3062eebb2c249e1fca33ce1104aafa792` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x926002ed61fb82b53677631627ad6032eed98c2b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x939b0c57aab8dbd5f1b23dedeb592cce212210aa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x9484f55ef500b57a46e5d1dc9ca748252602a3df` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x96e28c17c5d89104f4fe2ee57424f8c68603c2b9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x97f1d776c28736764ae703ba0a57290ce1190449` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x98174ec12380400baaddd7075c390799e9417943` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x9a220a0b393e90b80d518991ab1c02cbfbaed9fb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x9a307633382b7b6bf3d3399af8b675370e181465` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x9bd37c164ebf5ee5da5c1ef682114638278ca4b2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x9c7f86f88becf3b9fa32a19673b9438de51a2da4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x9de7afd40385c9107833e7ad4ca9e4fe6963400b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x9fef035897ffd4c2087c5a26377c4b5e72ce2f75` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0xa04e16cd14f6e2270b1d7cba7141a65832204995` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0xa474a6d1a2ef76c4d94c01f8dc7efc47ea7c571f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0xa4b06ebda7be25cd03ad618e69a0f888649d77ca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0xa6a324fdc797e6b2b7514ebaa8bbfe24207cef8e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0xab57eec0c4c2d1cb49ca8a59eaba752b26122ed3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0xad26522785d0fcfef0c522dcca6f5e632dfd8aea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0xad2b96f47e23d50fb0340e2bd2a1a5f3d728b2b0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0xae1ea30106931e46c52bd25c47c7d249482b88fd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0xaeba446d06beecf380118885b2949faf65d97efb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0xb52b7d6061a6aba385409994765ad7ada0b46174` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0xb820c14c10c7d3db400246fa79c06173a6cb389f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0xba58f5b9673b2da68e5d7ce5b4d8f954f3ff1279` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0xbb3aa5c1f997d7b9cc4aab69680f0f4b50867a59` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0xbc2dad5ec459c18ea34b448f0cb05c29f2574200` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0xbd7f1153bb714f88f0d154c9d180ebbfb12f4a8c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0xbe66045053a5f775e887697596dc512217177cf9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0xbeefeee67296951651296456e543894de2e8a966` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0xbf733e605dfcd012309eb309475bdcfc886314a1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0xc3b8c9bbba0b7777889d875ad692090b2a019f7e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0xc5997e8007fb71498b72d7cfe3dfb61bd0a5daeb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0xc5eba3670716a3599604f894cecf6649a0dce1b7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0xc6148c130f91f7f18669faadec08b801467001dc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0xc6744cee3ab3cd1058b1929257d2cab52d2d8e76` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0xc769b29684d9fc6d60a1fd9157d1e3800e3e14f2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0xc8c4e1fcb41e0b51add1a399b6334aa6d1e63a97` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0xc932ec185d133cf3754b3dc85bf99e84b1a9946b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0xca043164abd269ba4a7e457dde84055cf9fe60bf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0xcadb534ed4c51da48c5b27a78718f4b9ba6ea3a2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0xcb0aae7887facf47c1f1ced24cf461d61170aef8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0xcb14ce2e4e055148fcca00df895937551be65292` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0xcda387a85cae608a0352bab549b301f2d825b41b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0xce371d118466738c397a6b332036b3eab06a5b7b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0xcf8bd04fc353d501af0378c7c123e1d72bfa1efd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0xd0f46c66af79e3420815fed89842e694c8568cc6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0xd14e98963645bfe7290a99952ff0185054f59f80` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0xd3f78768a0c0bbd42ec6866e229e7ad5ba8fcdb0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0xdaa547197963799d62118867deaf5ec8109da4d6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0xdb0ba696d277d3ac39320a38dd0c426448268dd4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0xdc7f9782970dc0603330ffb4a395b648207c8068` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0xde030311c882aabf71d67caba16a92f795a33e11` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0xe0f9ca7fd12e31f5d720a93d04722d6dfbad59e7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0xe4821a435463eb803819708fc1accb959b1de529` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | hyperliquid | unit-387327 | `0xe881375470b1e8cf040dcfff692b3e84d3d738be` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0xe889d65081e726583d0a35a2e366f8709fb21aea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0xea5c321e478c210657dc129581bb3fb48b675bf3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0xebf9dc3c86a2fc032a088f9a131b5fdb7195fc90` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0xec85945d22a03f6852043ea2fd3bb67558aeb028` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0xec8fd35ad839172733eaeda311bc9660af064412` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0xee0490af3e267f3c4a1dbfc147175aeb99b6e4dc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0xef72e2f6e32cd45e344cd6dd1081a1c9d525ba02` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0xefc6ecec73c2fb10b8477e52f028befdea1f34e4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0xf0f52a98a878b8432b633e95047a6331bc3f83ec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0xf1856256aa9fe7f958c59e0dd8e6f1fe07296b05` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0xf1c318bd15c6bcdd24ddd194ef934af27ddf2233` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0xf2cda14e1a178b7c2585ed67fdc7f4346042fa4e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0xf88f1ef22a8ac8380e41873c3e060bfb303bf9bf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0xfafb5527d05003bc94b88933ab32de47a655037f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0xfd49d0d9126edcc7db75dab890c1077a1a6e2f09` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0xfe025f0886f7f9ae055d27f2a3fe3f851c87f56a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0xfe2f50874955651fba661534a38b7a3557a19b4e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0xfe4dfaad4c2b4664869d43ffc5b803921010b693` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0xffced55260fe9c2644f394d9c7bf5981c3e37155` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0xffcf4271023146d28f6872880bab2700b7e14743` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0xfff80e04d6146092b57c479cdbf6cc7ae2f6d66d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x0690706595d23c48d10f0328fac582192022a0f3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x0aa1881d4904364ae7419cd11fcf1805be4752f4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x100ad61b9072ba15530794779007a264c107b788` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x10118e85063f0dcfe272a5a0300ea84abb06e98b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x14aebf60d69542dbc7728afebfd8fa30a173c106` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x17d8cdc5d2eaa334111de8432ab7c32402d06275` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x18c411e26558ee1941bf780f5a14964477d5df82` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x19c9b059f3c4c0e3f7ac92f47725bcb052472d47` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x1f410e4c21b123247d8fea32a117ed8af549cb9e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x20a187e73b8d18bb334c607ddd320412d4cf0b98` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x22353ca850ac6bf0f1f1641f7a256f6e690f078b`; base `0x37de046173f66f9538aa6bb69a987ac00163f17c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x2408b569bc90b8d49e32dbc951461b894fea9572` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x2b8f49e96e5b03b99b973bac4e9e70d9600e85a7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x2d2b390076679ac3cbbdf60e5af29259b9471ccb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x31eb6ed57326a839541f6c071aa89340c71a02cf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x33f7204a4f19325d396fe14b3de7a1ae2be8d079` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x36668e957be1dd545cbe81acd35bb9f14f1a44f1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x37280e7b6897ac64ae980c9981ec428f726b60ab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x3addfc87054163fde389363e0a6ccf367bcec30b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x3d4a039aeaef87546ed63023e02ca41638709002` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x406a926f328a921299847031ef14af2a467bcefb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x42e7cc152c66dccfb46e2def160746482fb49650` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x440804d0d3726bde21e236cbd69db894712aa8a5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x46e2ecc09f944515285709eb1deb68651fc87aa7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x4e9d71b6436731952ab96573ef0588dac4736fb1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x538a6a49380be7c76556805fdf58e42262a5c6ef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x57a9c0648b7ba104b579b191873fe1c13999ec9a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x59c9b2e3ce1131156950aacdfc24430c69112b28` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x5a780fe7ac97d3c0729eb3638e2025622506a163` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x5c7fbc0b7bee7e8f88c42469db92f5c3a6a530e1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x61b5c1a805a463b3057a321cebee2e18862058d0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x64e2312be1d952376e00c57d2b407bce3a664641` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x67c67f6c2365edc156921398913a123e86792d86` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x690fcf689c71493611d5b2a1a6ed89351894c7f0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x6a75ef404a0c9184f28905beee6af2d4dfa3e29b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x6b71ca5c49bcaa1aae7e60697950c0fbd3654908` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x6e9e364a3459057792d64b191ee0d98b27369db7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x6ff79e002dae6f3ac15cd82f77137c36977c60f8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x71e792bac750bffdf88ea736e9f3f1b186c81889` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x76c91a7b3da7bae2201a07233d17a054a7e6b8c6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x78c79bedf5a3698a29ef6170bb884d455d13a930` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x7b06e4aa843a00d156a14c4b1273e42299fdc25c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x7d7e7d90991efa606b1dd657deaea4ea2c9448b4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x82c6275b5e84e24f404661f4c6e6ff5e5e232e9d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x8ba486587b115d307bbffa4839126ea7271d05b7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x8e492e7da3407cc34fad97a275cb22b610647511` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x8ed7782e9c271775434b4e0801339c58b57a3ce0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x9884c1170da0e69eb8e5a2149c15e261d4b574da` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xa25966231c18dfae9743969e8b5503f3436c81d4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xa30c33a3129a87d83559d332f001df52b2c3a09a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xa3e4708acdd9be69e904d20c3e08f7601d519d95` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xa5af7d01522975ae037cb993380a7f65bfbb8c84` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xaf6be89e6a221164b5f744e217b993193eef9e71` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xb4106bb055d2c1e01d02c62d609cc93dd71c1c11` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xb6298f0d8d7ffc1e5aa456bbfed9837ebba83bd7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xb8c43f637b0f214e0af1c7ca1b9110fc1f9502ab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xb95353cccc37b249bd22657fa3ddd52964511695` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xbb58df25ffd07481e8bd7d78aa6609938aeb00a8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xc2ff0bf0a663aeced80a8e082cd32b9963f0459e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xc7a69e39728494566bd404db96477ce89af598f0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xcbc7bcaf40b28cf8e4c0e6bc5f0eb19430480877` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xd96c38d90d40f3c7348e0ed532199d1648cefb68` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xe294f5faab4177d4b65a6c1d2a0645e12a6ca36d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xee78049a6c15ef437d57705937a157f67f070bd0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xf0093b276cc439bbd6e81cef80e30b48ebca8175` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xf765c9297036cccc10c09cba9cddf82c9f06c4a4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xfdcfbccd823d8eb7444b0e4a339ad76ec0cf2acb` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 227
- Live contracts: 11
- Unknown liveness contracts: 216
- Source-verified contracts: 149
- Currently scope-matched contracts retained as-is: 1
- Classification counts: currently scope matched=1, candidate auto own=1, candidate review=68, contamination review=3, exact address book overlap=1, source verified unclassified=76, unverified unclassified=77

Showing first 200 of 227 contracts. The complete deployer expansion list is in `brief.json`.

| Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|
| currently scope matched | TransparentUpgradeableProxy<br>`0x68893915f202e5da2ef01493463c50b2f68df56d` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0x6593cae3336ce36e6f7338f7103d2b07226fc297` |
| candidate auto own | HedgedPool<br>`0xbac1bce3f9e1e2d689071cb86290169d9607fac7` | retained_scope_excluded_inventory | unknown | live | verified | automatic_own: fresh_structural_and_independent_ownership_match | `0x6593cae3336ce36e6f7338f7103d2b07226fc297` |
| candidate review | TransparentUpgradeableProxy<br>`0x0095acdd705cfcc11eaffb6c19a28c0153ad196f` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0x67540f004d06b0145278857e1ec2b9507bbfaee8` |
| candidate review | TransparentUpgradeableProxy<br>`0x174199040622973df338ec0fabd8a596103ef28c` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x67540f004d06b0145278857e1ec2b9507bbfaee8` |
| candidate review | TransparentUpgradeableProxy<br>`0x212d347deacddb34969f944510c2c4f3c8e70e31` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x67540f004d06b0145278857e1ec2b9507bbfaee8` |
| candidate review | TransparentUpgradeableProxy<br>`0x24d33df70cbf0a7af595d6bd6c8e51b726430028` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x67540f004d06b0145278857e1ec2b9507bbfaee8` |
| candidate review | TransparentUpgradeableProxy<br>`0x25dd9eaae2e0b118a2cefdd229233654840ba7a0` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x67540f004d06b0145278857e1ec2b9507bbfaee8` |
| candidate review | TransparentUpgradeableProxy<br>`0x2ccf2a0bd960b849e5bf4502e114acb4332d282c` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x67540f004d06b0145278857e1ec2b9507bbfaee8` |
| candidate review | TransparentUpgradeableProxy<br>`0x4a400778ddd7331a4f716f062eda4f66ef3bbb51` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x67540f004d06b0145278857e1ec2b9507bbfaee8` |
| candidate review | TransparentUpgradeableProxy<br>`0x5d2cbe54e4a27fdbffaf8de29b95c584c910269d` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0x67540f004d06b0145278857e1ec2b9507bbfaee8` |
| candidate review | TransparentUpgradeableProxy<br>`0x68f77dfabc311df0530b24b22e4d7da413d4f054` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x67540f004d06b0145278857e1ec2b9507bbfaee8` |
| candidate review | TransparentUpgradeableProxy<br>`0x705e893c66c973accb316c806765ed86d238ec64` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x67540f004d06b0145278857e1ec2b9507bbfaee8` |
| candidate review | TransparentUpgradeableProxy<br>`0x7ea4fc58abdac0c855e93ac9e14bce53f3755e6b` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x67540f004d06b0145278857e1ec2b9507bbfaee8` |
| candidate review | TransparentUpgradeableProxy<br>`0x934c5a942de3a3333c65c245d1abe20fb666cf13` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x67540f004d06b0145278857e1ec2b9507bbfaee8` |
| candidate review | TransparentUpgradeableProxy<br>`0xa8c9403bdf554c047ad91a448ddb24208ab5313c` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0x67540f004d06b0145278857e1ec2b9507bbfaee8` |
| candidate review | TransparentUpgradeableProxy<br>`0xd347d9f5f0f4bb25a2a40fde1207e81b406c6266` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x67540f004d06b0145278857e1ec2b9507bbfaee8` |
| candidate review | TransparentUpgradeableProxy<br>`0xf1de5b1982e86595724d29346a95a28d90b5fea0` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x67540f004d06b0145278857e1ec2b9507bbfaee8` |
| candidate review | TransparentUpgradeableProxy<br>`0xf82062a5ce27c4ee6fb4b5e7b4abeeeb3b156aa6` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x67540f004d06b0145278857e1ec2b9507bbfaee8` |
| candidate review | ERC1967Proxy<br>`0x1ddaef2ead56cc4544c35d6957ba4e948f57310c` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xdca82e03057329f53ed4173429d46b0511e46fb8` |
| candidate review | ERC1967Proxy<br>`0x1e297b2bcfaeb73dcd5cfe37b1c91b504dc32909` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xdca82e03057329f53ed4173429d46b0511e46fb8` |
| candidate review | ERC1967Proxy<br>`0x1ec60ecef1e6f9d358408cdef4d9c8aa1820f48f` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xdca82e03057329f53ed4173429d46b0511e46fb8` |
| candidate review | ERC1967Proxy<br>`0x2d5f13d0d4fdb40d0315f08c2f82b76a2c3e12d8` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xdca82e03057329f53ed4173429d46b0511e46fb8` |
| candidate review | ERC1967Proxy<br>`0x3efc7c5717627cc05538b2bd8ebe7c494bd20d1d` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xdca82e03057329f53ed4173429d46b0511e46fb8` |
| candidate review | ERC1967Proxy<br>`0x4fecdb9bfcd385771fde2b802f732ab71a7a523e` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xdca82e03057329f53ed4173429d46b0511e46fb8` |
| candidate review | ERC1967Proxy<br>`0x5a8f10be44e25bb21492c5f46da94cdb1f0b2ff6` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xdca82e03057329f53ed4173429d46b0511e46fb8` |
| candidate review | ERC1967Proxy<br>`0x64cf013ba62ffd984b03ec14160b5301bd67a07a` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xdca82e03057329f53ed4173429d46b0511e46fb8` |
| candidate review | ERC1967Proxy<br>`0x68efd623f47acf218f5c2063f5a4fb2d2eab7bb0` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xdca82e03057329f53ed4173429d46b0511e46fb8` |
| candidate review | ERC1967Proxy<br>`0x863f302e78a463dcb65e28b8a6507922240c188e` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xdca82e03057329f53ed4173429d46b0511e46fb8` |
| candidate review | ERC1967Proxy<br>`0x980a12665ebd7672eb1c91ab6e6de3a0ccfc6dcb` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xdca82e03057329f53ed4173429d46b0511e46fb8` |
| candidate review | ERC1967Proxy<br>`0xaefd289e99767a09e6d970866cfd6cd05e0cce63` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xdca82e03057329f53ed4173429d46b0511e46fb8` |
| candidate review | ERC1967Proxy<br>`0xd646263af8967cdfce2caa5f8901e93783e4e059` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xdca82e03057329f53ed4173429d46b0511e46fb8` |
| candidate review | ERC1967Proxy<br>`0xefbfc62ebff226a306c8ebbd5397126a8e0d8036` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xdca82e03057329f53ed4173429d46b0511e46fb8` |
| candidate review | ERC1967Proxy<br>`0xf847f646d6578beeae0b47068e08f830e0a5d3f7` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xdca82e03057329f53ed4173429d46b0511e46fb8` |
| candidate review | ERC1967Proxy<br>`0xfc5411069edf7ace1e8178b1dadf20de2d287628` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xdca82e03057329f53ed4173429d46b0511e46fb8` |
| candidate review | MamoStrategyRegistry<br>`0x029773ca368ddd11d76b6485dc53748bd6861e6c` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xdca82e03057329f53ed4173429d46b0511e46fb8` |
| candidate review | MamoStrategyRegistry<br>`0x142f39471d2c322d447bc6daef0f36aa7dbcb76c` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xdca82e03057329f53ed4173429d46b0511e46fb8` |
| candidate review | MamoStrategyRegistry<br>`0x1b8b7deaaf29b8fcdcf904a26ea4d83e54508f97` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xdca82e03057329f53ed4173429d46b0511e46fb8` |
| candidate review | MamoStrategyRegistry<br>`0x7597418ec9f9630773b841da05af7a8b05b6fe29` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xdca82e03057329f53ed4173429d46b0511e46fb8` |
| candidate review | MamoStrategyRegistry<br>`0xb5c87722a0d4f285ba117e8aa11d80beb34d65d0` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xdca82e03057329f53ed4173429d46b0511e46fb8` |
| candidate review | MamoStrategyRegistry<br>`0xc4fdf7a922df734363f7cea253a9aecfddc70e85` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xdca82e03057329f53ed4173429d46b0511e46fb8` |
| candidate review | MamoStrategyRegistry<br>`0xe4ccad0893dc1f0ca18decfd957d3456796edfab` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xdca82e03057329f53ed4173429d46b0511e46fb8` |
| candidate review | MamoStrategyRegistry<br>`0xe659d7c07a50e90f1276fd885f04f16440d54710` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xdca82e03057329f53ed4173429d46b0511e46fb8` |
| candidate review | StrategyFactory<br>`0x1f9b6cbc4d89d66be7e13075ab06febe9a42db9f` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xdca82e03057329f53ed4173429d46b0511e46fb8` |
| candidate review | StrategyFactory<br>`0xaa5b91e52a9cc07dc7c416ee35fb5bb54efcec08` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xdca82e03057329f53ed4173429d46b0511e46fb8` |
| candidate review | StrategyFactory<br>`0xe23c8e37f256ba5783351cbb7b6673fe68248712` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xdca82e03057329f53ed4173429d46b0511e46fb8` |
| candidate review | TransparentUpgradeableProxy<br>`0x135fedc0159391ac8e3f0bf88d8fe319086679d2` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0x6593cae3336ce36e6f7338f7103d2b07226fc297` |
| candidate review | TransparentUpgradeableProxy<br>`0x1c69cc8be2b29225b74743752a721ca21d0203a5` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe4cc1b667217c1e9d9e827aef83a90f6c6fd797d` |
| candidate review | TransparentUpgradeableProxy<br>`0x23035f0574adc543f5611eac9a518215fa29f33c` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0xe4cc1b667217c1e9d9e827aef83a90f6c6fd797d` |
| candidate review | TransparentUpgradeableProxy<br>`0x45e0611972e930462781c75c7295504c0e49112b` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe4cc1b667217c1e9d9e827aef83a90f6c6fd797d` |
| candidate review | TransparentUpgradeableProxy<br>`0x5db3772136e5557efe028db05ee95c84d76faec4` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe4cc1b667217c1e9d9e827aef83a90f6c6fd797d` |
| candidate review | TransparentUpgradeableProxy<br>`0x60ff7987fa2ad267fc6723b96bb2426bd7961248` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe4cc1b667217c1e9d9e827aef83a90f6c6fd797d` |
| candidate review | TransparentUpgradeableProxy<br>`0x770eb2941045f7f7d675f6b522d142df2e078928` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x6593cae3336ce36e6f7338f7103d2b07226fc297` |
| candidate review | TransparentUpgradeableProxy<br>`0xbec3a272dbe9388dc798074166c0d4338c848081` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x6593cae3336ce36e6f7338f7103d2b07226fc297` |
| candidate review | TransparentUpgradeableProxy<br>`0xc40153ecbdea90c4e0a409f38f4a50e58f5e7eda` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0xe4cc1b667217c1e9d9e827aef83a90f6c6fd797d` |
| candidate review | TransparentUpgradeableProxy<br>`0xc738e6c690931aaa4aad73d214e6c76349458414` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x6593cae3336ce36e6f7338f7103d2b07226fc297` |
| candidate review | TransparentUpgradeableProxy<br>`0xdd1095e98957b6549b65db6801ca71ad90025751` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x6593cae3336ce36e6f7338f7103d2b07226fc297` |
| candidate review | TransparentUpgradeableProxy<br>`0xea63abd2ce0e3a4e353ed3a8323007ec9407dfa2` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x6593cae3336ce36e6f7338f7103d2b07226fc297` |
| candidate review | USDCStrategyFactory<br>`0x06ac210e3087960c1028b851611a6fab9e981094` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xdca82e03057329f53ed4173429d46b0511e46fb8` |
| candidate review | USDCStrategyFactory<br>`0x31b83d13c2a4c7fc034206ee8b89ada3b73e47f9` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xdca82e03057329f53ed4173429d46b0511e46fb8` |
| candidate review | USDCStrategyFactory<br>`0x4417b1f0e50af737ab04b109dee4041d108dfc00` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xdca82e03057329f53ed4173429d46b0511e46fb8` |
| candidate review | USDCStrategyFactory<br>`0x50b305fe2bb671c708bb80a9aee414ae0d6cba92` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xdca82e03057329f53ed4173429d46b0511e46fb8` |
| candidate review | USDCStrategyFactory<br>`0x65723431dc01c64ddc85b3c7bfe67c5e985c88bd` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xdca82e03057329f53ed4173429d46b0511e46fb8` |
| candidate review | USDCStrategyFactory<br>`0x71be9cee81eacecf7449de13ee3c0f52c103aa9e` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xdca82e03057329f53ed4173429d46b0511e46fb8` |
| candidate review | USDCStrategyFactory<br>`0xb3c3555e3262bcc9545455f3e22587e956cba325` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xdca82e03057329f53ed4173429d46b0511e46fb8` |
| candidate review | USDCStrategyFactory<br>`0xc1b4494596e4081190de75d27d25498573840427` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xdca82e03057329f53ed4173429d46b0511e46fb8` |
| candidate review | USDCStrategyFactory<br>`0xce3137a3ce65f6bae20f44cc4877419f823c6030` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xdca82e03057329f53ed4173429d46b0511e46fb8` |
| candidate review | USDCStrategyFactory<br>`0xd7757aa4ccf72f08637880440a710eb57f058448` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xdca82e03057329f53ed4173429d46b0511e46fb8` |
| candidate review | USDCStrategyFactory<br>`0xea4d74a452f89d7a8fd9e4bc2c1edeb57015a44e` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xdca82e03057329f53ed4173429d46b0511e46fb8` |
| candidate review | USDCStrategyFactory<br>`0xf64a5c786daee61d9eb20d388099e56f9270b564` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xdca82e03057329f53ed4173429d46b0511e46fb8` |
| candidate review | USDCStrategyFactory<br>`0xf976a682b5cd205c7bdabfdc1254d6d071f14086` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xdca82e03057329f53ed4173429d46b0511e46fb8` |
| contamination review | Execute<br>`0x9d15103f8fdbf9b989583a37a49724f6b3a41e31` | non_address_book | unknown | unknown | verified | n/a | `0xe4cc1b667217c1e9d9e827aef83a90f6c6fd797d` |
| contamination review | Multicall<br>`0x125d3eeb43f99f2d1450f3db38e4ddda03742fe8` | non_address_book | unknown | unknown | verified | n/a | `0xe4cc1b667217c1e9d9e827aef83a90f6c6fd797d` |
| contamination review | PriceAggregator<br>`0x0611a36cb46a19f5df3dc57951248a6f5f336ad9` | non_address_book | unknown | unknown | verified | n/a | `0xe4cc1b667217c1e9d9e827aef83a90f6c6fd797d` |
| exact address book overlap | 0x64049338da0b7358336d6ad81afddd9c1d353d33<br>`0x06d44b2ad3a8827613b1a3813722d3870edf26c1` | project_anchor | unknown | live | unverified | n/a | `0x67540f004d06b0145278857e1ec2b9507bbfaee8` |
| source verified unclassified | MMTradeHelper<br>`0x1e1be1b7205d0038e2588a7c7d1059875ae5dfaf` | retained_scope_excluded_inventory | unknown | live | verified | n/a | `0x67540f004d06b0145278857e1ec2b9507bbfaee8` |
| source verified unclassified | Execute<br>`0x9d484628d76603796a492117f90788721bc5b7f8` | non_address_book | unknown | unknown | verified | n/a | `0xe4cc1b667217c1e9d9e827aef83a90f6c6fd797d` |
| source verified unclassified | MAMO<br>`0x31093641ac0a6930f5c0909c4540d295051188a4` | non_address_book | unknown | unknown | verified | n/a | `0xdca82e03057329f53ed4173429d46b0511e46fb8` |
| source verified unclassified | MAMO<br>`0xbfd59caa3faf7cabbfa3ee1776a9fd3853c6a589` | non_address_book | unknown | unknown | verified | n/a | `0xdca82e03057329f53ed4173429d46b0511e46fb8` |
| source verified unclassified | MAMO2<br>`0x036e14fe5ad9636f36d9878d7bcf6ea795d81af0` | non_address_book | unknown | unknown | verified | n/a | `0xdca82e03057329f53ed4173429d46b0511e46fb8` |
| source verified unclassified | MAMO2<br>`0x9294ea619d273a7a9d9daca79472a18d03ce6852` | non_address_book | unknown | unknown | verified | n/a | `0xdca82e03057329f53ed4173429d46b0511e46fb8` |
| source verified unclassified | Multicall<br>`0x141d8b7f279785424070dd88a5bfc4c97a2a7257` | non_address_book | unknown | unknown | verified | n/a | `0xe4cc1b667217c1e9d9e827aef83a90f6c6fd797d` |
| source verified unclassified | Multicall<br>`0x20076b9e344d062ecb2d2faf06677057479296da` | non_address_book | unknown | unknown | verified | n/a | `0xe4cc1b667217c1e9d9e827aef83a90f6c6fd797d` |
| source verified unclassified | Multicall<br>`0x513137525c3282e125cbb1aa8858400f63ebb2be` | non_address_book | unknown | unknown | verified | n/a | `0xe4cc1b667217c1e9d9e827aef83a90f6c6fd797d` |
| source verified unclassified | Multicall<br>`0x603664308b6a23be87b5d81c656871825a0f82c5` | non_address_book | unknown | unknown | verified | n/a | `0xe4cc1b667217c1e9d9e827aef83a90f6c6fd797d` |
| source verified unclassified | Multicall<br>`0x79ec9dfaf0264531cec88c28733bde64289ad1ab` | non_address_book | unknown | unknown | verified | n/a | `0xe4cc1b667217c1e9d9e827aef83a90f6c6fd797d` |
| source verified unclassified | Multicall<br>`0x88ab4ad767955f495b25fad394318b920533eb80` | non_address_book | unknown | unknown | verified | n/a | `0xe4cc1b667217c1e9d9e827aef83a90f6c6fd797d` |
| source verified unclassified | Multicall<br>`0xd4693314460d6fb598c1124aec40c03e2aa0a8a4` | non_address_book | unknown | unknown | verified | n/a | `0xe4cc1b667217c1e9d9e827aef83a90f6c6fd797d` |
| source verified unclassified | OpClaim<br>`0x93c08dac9b36c28e6065c4ef3d7bdc3dc76663ca` | non_address_book | unknown | unknown | verified | n/a | `0xe4cc1b667217c1e9d9e827aef83a90f6c6fd797d` |
| source verified unclassified | PairInfos<br>`0x28f525100fefae8b1c63b4d4a52d0f305cc0e136` | non_address_book | unknown | unknown | verified | n/a | `0xe4cc1b667217c1e9d9e827aef83a90f6c6fd797d` |
| source verified unclassified | PairInfos<br>`0x7cc70d3acb7872f9c4f61fff13c1820bd9cfde64` | non_address_book | unknown | unknown | verified | n/a | `0xe4cc1b667217c1e9d9e827aef83a90f6c6fd797d` |
| source verified unclassified | PairInfos<br>`0x7e74639f5777c9a2e8f7bc019da9327d2ab5afb8` | non_address_book | unknown | unknown | verified | n/a | `0xe4cc1b667217c1e9d9e827aef83a90f6c6fd797d` |
| source verified unclassified | PairInfos<br>`0x86ff253f05e4c3f145fd4209e901c7a4cc2ba98d` | non_address_book | unknown | unknown | verified | n/a | `0xe4cc1b667217c1e9d9e827aef83a90f6c6fd797d` |
| source verified unclassified | PairInfos<br>`0x8f50eae05c74675109dbf0678f22a8ffee3b6de3` | non_address_book | unknown | unknown | verified | n/a | `0xe4cc1b667217c1e9d9e827aef83a90f6c6fd797d` |
| source verified unclassified | PairInfos<br>`0x9323cb21d72e9409192d12b2fbac88c88c2ad489` | non_address_book | unknown | unknown | verified | n/a | `0xe4cc1b667217c1e9d9e827aef83a90f6c6fd797d` |
| source verified unclassified | PairInfos<br>`0xa86a0d825796441f24b21f1813bbe52b74dae787` | non_address_book | unknown | unknown | verified | n/a | `0xe4cc1b667217c1e9d9e827aef83a90f6c6fd797d` |
| source verified unclassified | PairInfos<br>`0xd344d6c1b5cb22557997ceee1e406d40a2e90f8a` | non_address_book | unknown | unknown | verified | n/a | `0xe4cc1b667217c1e9d9e827aef83a90f6c6fd797d` |
| source verified unclassified | PairStorage<br>`0x2f09260089c75112ef20621d947f96cea6969ca9` | non_address_book | unknown | unknown | verified | n/a | `0xe4cc1b667217c1e9d9e827aef83a90f6c6fd797d` |
| source verified unclassified | PairStorage<br>`0x45ad5d71a38a291680798dc943d30bd2255e515d` | non_address_book | unknown | unknown | verified | n/a | `0xe4cc1b667217c1e9d9e827aef83a90f6c6fd797d` |
| source verified unclassified | PairStorage<br>`0x4ff0116543e7f24d2d2c251075bf540cb3de7eba` | non_address_book | unknown | unknown | verified | n/a | `0xe4cc1b667217c1e9d9e827aef83a90f6c6fd797d` |
| source verified unclassified | PairStorage<br>`0x6a2be7f60c312b0dabde5a515bdee5ffc22b2a88` | non_address_book | unknown | unknown | verified | n/a | `0xe4cc1b667217c1e9d9e827aef83a90f6c6fd797d` |
| source verified unclassified | PairStorage<br>`0x6eca2480f672fbc235ce7075325bb6d7dad2b1e9` | non_address_book | unknown | unknown | verified | n/a | `0xe4cc1b667217c1e9d9e827aef83a90f6c6fd797d` |
| source verified unclassified | PairStorage<br>`0x7affc49628e9cb236156ca67ecfbc8ff91e29f50` | non_address_book | unknown | unknown | verified | n/a | `0xe4cc1b667217c1e9d9e827aef83a90f6c6fd797d` |
| source verified unclassified | PairStorage<br>`0x9db724c6eaa156a23ae6c53fbc2041e30d575a71` | non_address_book | unknown | unknown | verified | n/a | `0xe4cc1b667217c1e9d9e827aef83a90f6c6fd797d` |
| source verified unclassified | PairStorage<br>`0xbf8d255830e71f071dc4bf06f8db8bcfeb2542b3` | non_address_book | unknown | unknown | verified | n/a | `0xe4cc1b667217c1e9d9e827aef83a90f6c6fd797d` |
| source verified unclassified | PairStorage<br>`0xd2c75f14ac388011f9e3259beaff92b66a39187b` | non_address_book | unknown | unknown | verified | n/a | `0xe4cc1b667217c1e9d9e827aef83a90f6c6fd797d` |
| source verified unclassified | PairStorage<br>`0xe41c5401b560b9d22ab86fb839ff337313372c26` | non_address_book | unknown | unknown | verified | n/a | `0xe4cc1b667217c1e9d9e827aef83a90f6c6fd797d` |
| source verified unclassified | PairStorage<br>`0xf68a5c8e7540d9f4b28efd077064064f354b0397` | non_address_book | unknown | unknown | verified | n/a | `0xe4cc1b667217c1e9d9e827aef83a90f6c6fd797d` |
| source verified unclassified | PriceAggregator<br>`0x1996eb377cb75572d2bc4a60b39cc3a22f921698` | non_address_book | unknown | unknown | verified | n/a | `0xe4cc1b667217c1e9d9e827aef83a90f6c6fd797d` |
| source verified unclassified | PriceAggregator<br>`0xa4a1a9b747cce2fcab601049e8167649dee09b41` | non_address_book | unknown | unknown | verified | n/a | `0xe4cc1b667217c1e9d9e827aef83a90f6c6fd797d` |
| source verified unclassified | PriceAggregator<br>`0xbe4c3bdbd45cf79ba21e5396e1d0c8ff29073be5` | non_address_book | unknown | unknown | verified | n/a | `0xe4cc1b667217c1e9d9e827aef83a90f6c6fd797d` |
| source verified unclassified | Referral<br>`0x7f163ae5cdde135d96c27f5be626341a20019bd1` | non_address_book | unknown | unknown | verified | n/a | `0xe4cc1b667217c1e9d9e827aef83a90f6c6fd797d` |
| source verified unclassified | Referral<br>`0xa3672c25e8118bd8ff1185ce00a28a10305228a4` | non_address_book | unknown | unknown | verified | n/a | `0xe4cc1b667217c1e9d9e827aef83a90f6c6fd797d` |
| source verified unclassified | SlippagePriceChecker<br>`0x1d1a3c6420d949249b7e663a39800649b2014ee2` | non_address_book | unknown | unknown | verified | n/a | `0xdca82e03057329f53ed4173429d46b0511e46fb8` |
| source verified unclassified | SlippagePriceChecker<br>`0x413c38b68fe730f2bc30d8cde965967d1c7bc599` | non_address_book | unknown | unknown | verified | n/a | `0xdca82e03057329f53ed4173429d46b0511e46fb8` |
| source verified unclassified | SlippagePriceChecker<br>`0x47517abd7bea7ab21c7510fc4b63eb2b74788df7` | non_address_book | unknown | unknown | verified | n/a | `0xdca82e03057329f53ed4173429d46b0511e46fb8` |
| source verified unclassified | SlippagePriceChecker<br>`0x518e95f6f91e316133fe256fbc1cf47a54e50c56` | non_address_book | unknown | unknown | verified | n/a | `0xdca82e03057329f53ed4173429d46b0511e46fb8` |
| source verified unclassified | SlippagePriceChecker<br>`0x5612e3942202d7aaf40da84454ee64914b4e942c` | non_address_book | unknown | unknown | verified | n/a | `0xdca82e03057329f53ed4173429d46b0511e46fb8` |
| source verified unclassified | SlippagePriceChecker<br>`0x7d8fa4c4bc2d35371ea4f9394a5aee1fcfd5262b` | non_address_book | unknown | unknown | verified | n/a | `0xdca82e03057329f53ed4173429d46b0511e46fb8` |
| source verified unclassified | SlippagePriceChecker<br>`0x9010e71850fb3d670956fc28ffa2508e410fc5d0` | non_address_book | unknown | unknown | verified | n/a | `0xdca82e03057329f53ed4173429d46b0511e46fb8` |
| source verified unclassified | SlippagePriceChecker<br>`0xbb42bcf182c3734286f9510cb2a5462c71e5fef7` | non_address_book | unknown | unknown | verified | n/a | `0xdca82e03057329f53ed4173429d46b0511e46fb8` |
| source verified unclassified | SlippagePriceChecker<br>`0xc0189d6dcdc8a313e0d7d850dcdb910f077c1f0a` | non_address_book | unknown | unknown | verified | n/a | `0xdca82e03057329f53ed4173429d46b0511e46fb8` |
| source verified unclassified | SlippagePriceChecker<br>`0xe3aed9eaa34b22532561bc67e3c63cf8a49cdbe1` | non_address_book | unknown | unknown | verified | n/a | `0xdca82e03057329f53ed4173429d46b0511e46fb8` |
| source verified unclassified | SlippagePriceChecker<br>`0xf732cc757f195cc5312fe78398dac6be9021c8d7` | non_address_book | unknown | unknown | verified | n/a | `0xdca82e03057329f53ed4173429d46b0511e46fb8` |
| source verified unclassified | Token<br>`0xc009895d2f97966c1bddf36519cd44ccf789e070` | non_address_book | unknown | unknown | verified | n/a | `0xe4cc1b667217c1e9d9e827aef83a90f6c6fd797d` |
| source verified unclassified | Trading<br>`0x6588285ff85032cb2a1a0f404e405e80cd3748b4` | non_address_book | unknown | unknown | verified | n/a | `0xe4cc1b667217c1e9d9e827aef83a90f6c6fd797d` |
| source verified unclassified | Trading<br>`0x828b64b99c0820e58521fc51591febf446bed78c` | non_address_book | unknown | unknown | verified | n/a | `0xe4cc1b667217c1e9d9e827aef83a90f6c6fd797d` |
| source verified unclassified | Trading<br>`0xbd958a04fcf91e7a6a72e0918646fbd4389c70b0` | non_address_book | unknown | unknown | verified | n/a | `0xe4cc1b667217c1e9d9e827aef83a90f6c6fd797d` |
| source verified unclassified | Trading<br>`0xc10a2842f53dd44784ea51470851341eb918790b` | non_address_book | unknown | unknown | verified | n/a | `0xe4cc1b667217c1e9d9e827aef83a90f6c6fd797d` |
| source verified unclassified | Trading<br>`0xcb28068e0f6cf42dc480fce67ef6630391156ad8` | non_address_book | unknown | unknown | verified | n/a | `0xe4cc1b667217c1e9d9e827aef83a90f6c6fd797d` |
| source verified unclassified | Trading<br>`0xd973b86d336ff55198d4d33f504a6e77306d9783` | non_address_book | unknown | unknown | verified | n/a | `0xe4cc1b667217c1e9d9e827aef83a90f6c6fd797d` |
| source verified unclassified | TradingCallbacks<br>`0x00ee4236763bc79f354097a79f00f99cb0c53bda` | non_address_book | unknown | unknown | verified | n/a | `0xe4cc1b667217c1e9d9e827aef83a90f6c6fd797d` |
| source verified unclassified | TradingCallbacks<br>`0x27282ce609d9812af67f0c4e7418ea95dc3442e9` | non_address_book | unknown | unknown | verified | n/a | `0xe4cc1b667217c1e9d9e827aef83a90f6c6fd797d` |
| source verified unclassified | TradingCallbacks<br>`0x373faea72a86bd0eb33ef08e01c5918a95919349` | non_address_book | unknown | unknown | verified | n/a | `0xe4cc1b667217c1e9d9e827aef83a90f6c6fd797d` |
| source verified unclassified | TradingCallbacks<br>`0x4263f0725962909899cb8a45d27f63744deea20c` | non_address_book | unknown | unknown | verified | n/a | `0xe4cc1b667217c1e9d9e827aef83a90f6c6fd797d` |
| source verified unclassified | TradingStorage<br>`0x20155a0b84513189cfb92297a7b2f1036216e131` | non_address_book | unknown | unknown | verified | n/a | `0xe4cc1b667217c1e9d9e827aef83a90f6c6fd797d` |
| source verified unclassified | TradingStorage<br>`0x22281877575c3f84562822e600876a5dc4d23318` | non_address_book | unknown | unknown | verified | n/a | `0xe4cc1b667217c1e9d9e827aef83a90f6c6fd797d` |
| source verified unclassified | TradingStorage<br>`0x586f650cde0ef43e63818d2f1e4de9d514b4e4f2` | non_address_book | unknown | unknown | verified | n/a | `0xe4cc1b667217c1e9d9e827aef83a90f6c6fd797d` |
| source verified unclassified | TradingStorage<br>`0x62c5442b2fb9012a8e7f50b604069dea1d371ca2` | non_address_book | unknown | unknown | verified | n/a | `0xe4cc1b667217c1e9d9e827aef83a90f6c6fd797d` |
| source verified unclassified | TradingStorage<br>`0x83dbaf0d491534bfdf54098d1b780b08df35a996` | non_address_book | unknown | unknown | verified | n/a | `0xe4cc1b667217c1e9d9e827aef83a90f6c6fd797d` |
| source verified unclassified | TradingStorage<br>`0xb4d2f8c421308a346c088b6edf941cd88c320c47` | non_address_book | unknown | unknown | verified | n/a | `0xe4cc1b667217c1e9d9e827aef83a90f6c6fd797d` |
| source verified unclassified | TradingStorage<br>`0xd14447e1c7d77e5a694f4571f7f52f1565a7728c` | non_address_book | unknown | unknown | verified | n/a | `0xe4cc1b667217c1e9d9e827aef83a90f6c6fd797d` |
| source verified unclassified | TradingStorage<br>`0xe8ae5603b0fe6265592cbfd36bb596e223e966d8` | non_address_book | unknown | unknown | verified | n/a | `0xe4cc1b667217c1e9d9e827aef83a90f6c6fd797d` |
| source verified unclassified | TradingStorage<br>`0xf77e2bd968cd296679c9fbfee34301c9ac01db70` | non_address_book | unknown | unknown | verified | n/a | `0xe4cc1b667217c1e9d9e827aef83a90f6c6fd797d` |
| source verified unclassified | Tranche<br>`0x548f3f61f1ca8d8eb36f323b6091b6ece090d500` | non_address_book | unknown | unknown | verified | n/a | `0xe4cc1b667217c1e9d9e827aef83a90f6c6fd797d` |
| source verified unclassified | Tranche<br>`0xc149309556f166b0735bd985c1dace9f9cf56559` | non_address_book | unknown | unknown | verified | n/a | `0xe4cc1b667217c1e9d9e827aef83a90f6c6fd797d` |
| source verified unclassified | VaultManager<br>`0x13c7e59312903787f0b9f71ab4adeced257de37a` | non_address_book | unknown | unknown | verified | n/a | `0xe4cc1b667217c1e9d9e827aef83a90f6c6fd797d` |
| source verified unclassified | VaultManager<br>`0x535940d3a4b7d30bdd43cc3d656f54927aa437b8` | non_address_book | unknown | unknown | verified | n/a | `0xe4cc1b667217c1e9d9e827aef83a90f6c6fd797d` |
| source verified unclassified | VaultManager<br>`0x866e4ab1ae1873160f039fda39b8f3b5f5e3973d` | non_address_book | unknown | unknown | verified | n/a | `0xe4cc1b667217c1e9d9e827aef83a90f6c6fd797d` |
| source verified unclassified | VaultManager<br>`0x8e99ae5502aaabeb1b511c876cdd2a6203dd367d` | non_address_book | unknown | unknown | verified | n/a | `0xe4cc1b667217c1e9d9e827aef83a90f6c6fd797d` |
| source verified unclassified | VaultManager<br>`0xffd83193fae18f86da1d5a718bd35e4778f811c5` | non_address_book | unknown | unknown | verified | n/a | `0xe4cc1b667217c1e9d9e827aef83a90f6c6fd797d` |
| unverified unclassified | UnnamedContract<br>`0x0004aabac18ad4056cd9114156d24e0d19fce02c` | non_address_book | unknown | unknown | unverified | n/a | `0x67540f004d06b0145278857e1ec2b9507bbfaee8` |
| unverified unclassified | UnnamedContract<br>`0x04b35ab84102bf37e5d5e3d7347a43750997e768` | non_address_book | unknown | unknown | unverified | n/a | `0x67540f004d06b0145278857e1ec2b9507bbfaee8` |
| unverified unclassified | UnnamedContract<br>`0x052e8091255951b3a30e0cf60687b6483f5c10fa` | non_address_book | unknown | unknown | unverified | n/a | `0x67540f004d06b0145278857e1ec2b9507bbfaee8` |
| unverified unclassified | UnnamedContract<br>`0x0a49978913567deafef4c53fcd813ac8858d1395` | non_address_book | unknown | unknown | unverified | n/a | `0x67540f004d06b0145278857e1ec2b9507bbfaee8` |
| unverified unclassified | UnnamedContract<br>`0x15a46d072cca0947a1963765875cc03ef754e3a3` | non_address_book | unknown | unknown | unverified | n/a | `0x67540f004d06b0145278857e1ec2b9507bbfaee8` |
| unverified unclassified | UnnamedContract<br>`0x18470c38234805f5a08c9ced377d642281ea7ab0` | non_address_book | unknown | unknown | unverified | n/a | `0x67540f004d06b0145278857e1ec2b9507bbfaee8` |
| unverified unclassified | UnnamedContract<br>`0x1b0727e4678e3a0d26fbca2c5ed0002fefa0295d` | non_address_book | unknown | unknown | unverified | n/a | `0x67540f004d06b0145278857e1ec2b9507bbfaee8` |
| unverified unclassified | UnnamedContract<br>`0x1bf5ab9dfbf1e9db39cabfc36829c6e041c976fc` | non_address_book | unknown | unknown | unverified | n/a | `0x67540f004d06b0145278857e1ec2b9507bbfaee8` |
| unverified unclassified | UnnamedContract<br>`0x22099bf072ef2664ecf3f299729a9ab1f485ffb2` | non_address_book | unknown | unknown | unverified | n/a | `0x67540f004d06b0145278857e1ec2b9507bbfaee8` |
| unverified unclassified | UnnamedContract<br>`0x220f86b641ec63f4832cc30a663bb26b15259ee2` | non_address_book | unknown | unknown | unverified | n/a | `0x67540f004d06b0145278857e1ec2b9507bbfaee8` |
| unverified unclassified | UnnamedContract<br>`0x22e8a331eca9affcd40fe1ceee6d5098adeddb21` | non_address_book | unknown | unknown | unverified | n/a | `0x67540f004d06b0145278857e1ec2b9507bbfaee8` |
| unverified unclassified | UnnamedContract<br>`0x2561822a800590db4534d2e6221aa35d15c56dd6` | non_address_book | unknown | unknown | unverified | n/a | `0x67540f004d06b0145278857e1ec2b9507bbfaee8` |
| unverified unclassified | UnnamedContract<br>`0x30acf5ac982804df26e3b09c63b31ac465dae371` | non_address_book | unknown | unknown | unverified | n/a | `0x67540f004d06b0145278857e1ec2b9507bbfaee8` |
| unverified unclassified | UnnamedContract<br>`0x369529f8a7122697612ba2624817324f88298994` | non_address_book | unknown | unknown | unverified | n/a | `0x67540f004d06b0145278857e1ec2b9507bbfaee8` |
| unverified unclassified | UnnamedContract<br>`0x438530c3c77c38f3ff47dc9c20b40ceba018c87b` | non_address_book | unknown | unknown | unverified | n/a | `0x67540f004d06b0145278857e1ec2b9507bbfaee8` |
| unverified unclassified | UnnamedContract<br>`0x4b8cff9aa9ed66b2e517b11715a77f52540d34f1` | non_address_book | unknown | unknown | unverified | n/a | `0x67540f004d06b0145278857e1ec2b9507bbfaee8` |
| unverified unclassified | UnnamedContract<br>`0x52eb08c7e3af92615acb0ae5b23e6947a1432679` | non_address_book | unknown | unknown | unverified | n/a | `0x67540f004d06b0145278857e1ec2b9507bbfaee8` |
| unverified unclassified | UnnamedContract<br>`0x543ed59f71f6bbe3aa6dc88d09ecaead40138b95` | non_address_book | unknown | unknown | unverified | n/a | `0x67540f004d06b0145278857e1ec2b9507bbfaee8` |
| unverified unclassified | UnnamedContract<br>`0x578858dd49292ecc818f1a88f95fc079b8663fe0` | retained_scope_excluded_inventory | unknown | live | unverified | n/a | `0x67540f004d06b0145278857e1ec2b9507bbfaee8` |
| unverified unclassified | UnnamedContract<br>`0x5e408a76891bdf6cf1485345d1555a8a2ea2dbb8` | non_address_book | unknown | unknown | unverified | n/a | `0x67540f004d06b0145278857e1ec2b9507bbfaee8` |
| unverified unclassified | UnnamedContract<br>`0x5f3afeedeb129e6e44897e409bb79bafef656478` | non_address_book | unknown | unknown | unverified | n/a | `0x67540f004d06b0145278857e1ec2b9507bbfaee8` |
| unverified unclassified | UnnamedContract<br>`0x6351ab4b7fe79ba374c67578c4462014addf39c2` | non_address_book | unknown | unknown | unverified | n/a | `0x67540f004d06b0145278857e1ec2b9507bbfaee8` |
| unverified unclassified | UnnamedContract<br>`0x63b8a849b35dc915cb039d23befa5346701935e5` | non_address_book | unknown | unknown | unverified | n/a | `0x67540f004d06b0145278857e1ec2b9507bbfaee8` |
| unverified unclassified | UnnamedContract<br>`0x64049338da0b7358336d6ad81afddd9c1d353d33` | retained_scope_excluded_inventory | unknown | live | unverified | n/a | `0x67540f004d06b0145278857e1ec2b9507bbfaee8` |
| unverified unclassified | UnnamedContract<br>`0x6b8d97c19802a89931f870395bd0ef6e89794475` | non_address_book | unknown | unknown | unverified | n/a | `0x67540f004d06b0145278857e1ec2b9507bbfaee8` |
| unverified unclassified | UnnamedContract<br>`0x74829afa88eabf4124f3d8fe905748eb1a3c95d5` | non_address_book | unknown | unknown | unverified | n/a | `0x67540f004d06b0145278857e1ec2b9507bbfaee8` |
| unverified unclassified | UnnamedContract<br>`0x74cc036d4626ebdb28a24bbad7fe9ecbe227a6a5` | non_address_book | unknown | unknown | unverified | n/a | `0x67540f004d06b0145278857e1ec2b9507bbfaee8` |
| unverified unclassified | UnnamedContract<br>`0x74cc24a60f33025a3d41c5adf261d3e8d91f0ab1` | non_address_book | unknown | unknown | unverified | n/a | `0x67540f004d06b0145278857e1ec2b9507bbfaee8` |
| unverified unclassified | UnnamedContract<br>`0x78d66e5e69079168efcc235875d2f67a365db4a5` | non_address_book | unknown | unknown | unverified | n/a | `0x67540f004d06b0145278857e1ec2b9507bbfaee8` |
| unverified unclassified | UnnamedContract<br>`0x7a21961c9945eca79975f386bfd7d815e99a02c2` | non_address_book | unknown | unknown | unverified | n/a | `0x67540f004d06b0145278857e1ec2b9507bbfaee8` |
| unverified unclassified | UnnamedContract<br>`0x7bf74274250b5b6b0d086e0ac64ea091f36fcc14` | non_address_book | unknown | unknown | unverified | n/a | `0x67540f004d06b0145278857e1ec2b9507bbfaee8` |
| unverified unclassified | UnnamedContract<br>`0x7de9d932234d7774a361d0194361ab52917a8939` | non_address_book | unknown | unknown | unverified | n/a | `0x67540f004d06b0145278857e1ec2b9507bbfaee8` |
| unverified unclassified | UnnamedContract<br>`0x7e6d8289752080e4b4dabc75d61fddf8fddcd0f8` | non_address_book | unknown | unknown | unverified | n/a | `0x67540f004d06b0145278857e1ec2b9507bbfaee8` |
| unverified unclassified | UnnamedContract<br>`0x7ffd5706c916499676d707f3ec3f0c9b928e7a95` | non_address_book | unknown | unknown | unverified | n/a | `0x67540f004d06b0145278857e1ec2b9507bbfaee8` |
| unverified unclassified | UnnamedContract<br>`0x80d11a186b6eed8e78ba3352dea78dbf95a333e5` | non_address_book | unknown | unknown | unverified | n/a | `0x67540f004d06b0145278857e1ec2b9507bbfaee8` |
| unverified unclassified | UnnamedContract<br>`0x83395430426d268ae48a4087ebecc93c3c2ebe2e` | non_address_book | unknown | unknown | unverified | n/a | `0x67540f004d06b0145278857e1ec2b9507bbfaee8` |
| unverified unclassified | UnnamedContract<br>`0x8bb24fbdb3e9ac5d5a3fa96b7fe9efeb2efec4fa` | non_address_book | unknown | unknown | unverified | n/a | `0x67540f004d06b0145278857e1ec2b9507bbfaee8` |
| unverified unclassified | UnnamedContract<br>`0x8cff2204315b93d3967feac40e9767450ad3e613` | non_address_book | unknown | unknown | unverified | n/a | `0x67540f004d06b0145278857e1ec2b9507bbfaee8` |
| unverified unclassified | UnnamedContract<br>`0x9484f55ef500b57a46e5d1dc9ca748252602a3df` | non_address_book | unknown | unknown | unverified | n/a | `0x67540f004d06b0145278857e1ec2b9507bbfaee8` |
| unverified unclassified | UnnamedContract<br>`0x98174ec12380400baaddd7075c390799e9417943` | non_address_book | unknown | unknown | unverified | n/a | `0x67540f004d06b0145278857e1ec2b9507bbfaee8` |
| unverified unclassified | UnnamedContract<br>`0x9a7b42c3cd5cf266ac8efaa923d9a8b78447b3ca` | non_address_book | unknown | unknown | unverified | n/a | `0x67540f004d06b0145278857e1ec2b9507bbfaee8` |
| unverified unclassified | UnnamedContract<br>`0x9b321888c767678a5c5d268bc36f95444705e156` | non_address_book | unknown | unknown | unverified | n/a | `0x67540f004d06b0145278857e1ec2b9507bbfaee8` |
| unverified unclassified | UnnamedContract<br>`0xad2b96f47e23d50fb0340e2bd2a1a5f3d728b2b0` | non_address_book | unknown | unknown | unverified | n/a | `0x67540f004d06b0145278857e1ec2b9507bbfaee8` |
| unverified unclassified | UnnamedContract<br>`0xae1ea30106931e46c52bd25c47c7d249482b88fd` | non_address_book | unknown | unknown | unverified | n/a | `0x67540f004d06b0145278857e1ec2b9507bbfaee8` |
| unverified unclassified | UnnamedContract<br>`0xaeba446d06beecf380118885b2949faf65d97efb` | non_address_book | unknown | unknown | unverified | n/a | `0x67540f004d06b0145278857e1ec2b9507bbfaee8` |
| unverified unclassified | UnnamedContract<br>`0xba58f5b9673b2da68e5d7ce5b4d8f954f3ff1279` | non_address_book | unknown | unknown | unverified | n/a | `0x67540f004d06b0145278857e1ec2b9507bbfaee8` |
| unverified unclassified | UnnamedContract<br>`0xbd607756b693d3ee0254eac0f18731abc34ff304` | non_address_book | unknown | unknown | unverified | n/a | `0x67540f004d06b0145278857e1ec2b9507bbfaee8` |
| unverified unclassified | UnnamedContract<br>`0xbf733e605dfcd012309eb309475bdcfc886314a1` | non_address_book | unknown | unknown | unverified | n/a | `0x67540f004d06b0145278857e1ec2b9507bbfaee8` |
| unverified unclassified | UnnamedContract<br>`0xc5997e8007fb71498b72d7cfe3dfb61bd0a5daeb` | non_address_book | unknown | unknown | unverified | n/a | `0x67540f004d06b0145278857e1ec2b9507bbfaee8` |
| unverified unclassified | UnnamedContract<br>`0xc6744cee3ab3cd1058b1929257d2cab52d2d8e76` | non_address_book | unknown | unknown | unverified | n/a | `0x67540f004d06b0145278857e1ec2b9507bbfaee8` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [Audited by Simply Staking](https://github.com/SimplyStaking/security-audit-reports) | Simply Staking | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [hypersurface-audit-v1.0.pdf](https://github.com/SimplyStaking/security-audit-reports/blob/main/Hypersurface/hypersurface-audit-v1.0.pdf) | unknown | Audit | 2025-11 | fresh | Direct | contract_name | matched | 1 | 1 | 0 | 13 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [17461] Audited by Simply Staking — no match: The provided text is a GitHub repository page with no audit report content, only repository metadata and navigation elements.
- [17462] hypersurface-audit-v1.0.pdf — matched: Extracted contract names from findings sections and file paths. Audit date from cover page: 13/10/25 - 17/10/25, used end date.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| hypersurface-audit-v1.0.pdf | HedgedPool | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x68893915f202e5da2ef01493463c50b2f68df56d` — deployed 2025-10-09 11:35:51+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| hypersurface-audit-v1.0.pdf | HedgedPoolLib | unmatched — not counted | — | Listed in scope and findings | no |
| hypersurface-audit-v1.0.pdf | UniswapOrdersLib | unmatched — not counted | — | Listed in scope and findings | no |
| hypersurface-audit-v1.0.pdf | OrderUtil | unmatched — not counted | — | Listed in scope and findings | no |
| hypersurface-audit-v1.0.pdf | TradeExecutor | unmatched — not counted | — | Listed in scope and findings | no |
| hypersurface-audit-v1.0.pdf | LpManager | unmatched — not counted | — | Listed in scope and findings | no |
| hypersurface-audit-v1.0.pdf | HyperliquidHedger | unmatched — not counted | — | Listed in scope and findings | no |
| hypersurface-audit-v1.0.pdf | Controller | unmatched — not counted | — | Listed in scope and findings | no |
| hypersurface-audit-v1.0.pdf | ControllerLib | unmatched — not counted | — | Listed in scope and findings | no |
| hypersurface-audit-v1.0.pdf | Lens | unmatched — not counted | — | Listed in scope and findings | no |
| hypersurface-audit-v1.0.pdf | FeeCollector | unmatched — not counted | — | Listed in scope and findings | no |
| hypersurface-audit-v1.0.pdf | AddressBook | unmatched — not counted | — | Listed in scope and findings | no |
| hypersurface-audit-v1.0.pdf | OtokenFactory | unmatched — not counted | — | Listed in scope and findings | no |
| hypersurface-audit-v1.0.pdf | Whitelist | unmatched — not counted | — | Listed in scope and findings | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| base | `0x9aba7a212d479ed1678d903ba851778bc2fb3103` | MarginPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | `0x1e1be1b7205d0038e2588a7c7d1059875ae5dfaf` | MMTradeHelper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 63 |
| upstream | 0 |
| standard_library | 18 |
| needs_review | 254 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Address-book scope dispositions: 1 own (1 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 13 unmatched
- Matched-own operational status: 1 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=1, low=1
- Match method counts: unique_name=1

Zero-match audit list:

- [17461] Audited by Simply Staking

Fork inheritance lineage and inherited audits are included when available.
