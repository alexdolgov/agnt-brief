# Agentic Audit Brief: Bio Protocol

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 6 (0 matched; 6 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e40c73181a386361babecc6895e0f6c5587548f92814db09f88491f8b4a38d92`

## Project Overview

- Project: Bio Protocol (`bio-protocol`)
- Website: [https://www.bio.xyz/](https://www.bio.xyz/)
- Lifecycle: active (Tier 0, 79.5% below peak)
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: base, ethereum
- Contract surface: 64 unique implementations (165 raw deployments)
- Coverage basis: 0/4 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $4,112,254.28
- On-chain TVL (included contracts): $133,528,280.50
- TVL by chain: Ethereum $124,791,536.09 | Base $8,736,744.41

## Project Description

This brief describes the observed EVM deployment and audit surface for Bio Protocol. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 5 contract row(s) across base, ethereum. Structural roles: 2 core, 2 supporting, 1 unclassified. 2 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 5
- Structural roles: core (2), supporting (2), unclassified (1)
- Contract kinds: contract (5)
- Detected standards: accesscontrol (2), erc165 (2), erc1967proxy (2), erc20 (2), ownable (1)
- Frameworks: openzeppelin (2), openzeppelin-upgradeable (2)
- Upgradeable-pattern rows: 2

## Fork Analysis

0 of 6 contracts are derived from known codebases. 6 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x0d2adb4af57cdac02d553e7601456739857d2ef4`, chain 1)
- BioToken (`0xcb1592591996765ec0efc1f92599a19767ee5ffa`, chain 1)
- ERC1967Proxy (`0xf91a12742aa609d41513a137d3c36b749f56f40c`, chain 1)
- ERC1967Proxy (`0xe1b48c0279cd95d984f1290293116c45d049a3bd`, chain 8453)
- Token (`0x226a2fa2556c48245e57cd1cba4c6c9e67077dd2`, chain 8453)
- VeBIO (`0xc0a2ca1c2c05ac200c109f0bb571fd5710403e93`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 5; live-surface rows included: 5 (5 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 5/5 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/4 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 5 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 59 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 21
- Confirmed-live implementations: 5 of 64 unique; 59 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/56
- Verified + Unaudited implementations: 56
- Verified by bytecode match: 0
- Unverified implementations: 8
- Unique implementations: 64
- Raw deployments: 165
- Audits discovered: 6 (6 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $94,571,863.40
- Latest audit: 2025-07 (aging)
- Audit staleness (calendar age): 0 fresh, 4 aging, 2 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (56)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| BioToken | token | project_anchor | own_supporting | 0 | ethereum | unit-380595 | `0xcb1592591996765ec0efc1f92599a19767ee5ffa` | ⚠️ Unaudited |
| HairToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9ce115f0341ae5dabc8b477b74e83db2018a6f42` | ⚠️ Unaudited |
| IPToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 7 deployments: ethereum `0x0d6866f3369e4825ce07f226a424f1c11861add1`; ethereum `0x3c426812f39337679265ea407f744cdac672d9d3`; ethereum `0x7b66e84be78772a3afaf5ba8c1993a1b5d05f9c2`; ethereum `0x89a14be8f7824d4775053edad0f2fa2d6767b72b`; ethereum `0x9e4fc6e6d1a64e3429ab852d3cb31ad7aa06997a`; ethereum `0xd07ea8776e52c1b67dca6ffbc3f659fc9fbe4113`; ethereum `0xd79fe2c4879b3a3d732df11294329a60cff3a0a9` | ⚠️ Unaudited |
| Token | token | project_anchor | own_supporting | 0 | base | unit-380596 | `0x226a2fa2556c48245e57cd1cba4c6c9e67077dd2` | ⚠️ Unaudited |
| AgentToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 10 deployments: base `0x03699469849a6cf876a65b4fd01fbd663c401127`; base `0x492ae2107f952b02f2554ce153841933c09d6d43`; base `0x54f16bd3996169914c84dbb2a16635100cf48a0a`; base `0x5d4d258144bc954aefc00ee6cbda0433b1b2dcd3`; base `0x7db6dfe35158bab10039648ce0e0e119d0ec21ec`; base `0x896a0b1f23479e4438ad086c0bda159361294250`; base `0x9d56c29e820dd13b0580b185d0e0dc301d27581d`; base `0xd9bf9127e37d33514aa485ff7d3b26f1f5298411`; base `0xe183b1a4dd59ca732211678eca1836ee35bce582`; base `0xe8f802b0cb13adf1a4333b541d4d3f703b8a69fa` | ⚠️ Unaudited |
| GrowToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x761a3557184cbc07b7493da0661c41177b2f97fa` | ⚠️ Unaudited |
| CerebrumDAOToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xab814ce69e15f6b9660a3b184c0b0c97b9394a6b` | ⚠️ Unaudited |
| AthenaDAOToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa4ffdf3208f46898ce063e25c1c43056fa754739` | ⚠️ Unaudited |
| JBToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf4308b0263723b121056938c2172868e408079d0` | ⚠️ Unaudited |
| QBioToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3e6a1b21bd267677fa49be6425aebe2fc0f89bde` | ⚠️ Unaudited |
| OtoCoToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2196b84eace74867b73fb003aff93c11fce1d47a` | ⚠️ Unaudited |
| StakedLockingCrowdSale | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x35bce29f52f51f547998717cd598068afa2b29b7` | ⚠️ Unaudited |
| AccessResolver | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x97b7f5ddb5699a5b3d93f4a7d7df29143f181b80`; ethereum `0xc130e0b49840b266a49f62c0cc77e353e0c99cd0` | ⚠️ Unaudited |
| AccessResolver | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa1ed7ae99abeab2883a4a9486dbbb1c020a60691` | ⚠️ Unaudited |
| CrowdSale | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf0a8d23f38e9cbbe01c4ed37f23bd519b65bc6c2` | ⚠️ Unaudited |
| DAOToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x3ae5eae997d2031f78177bfb4bbee511edd9ed2f`; ethereum `0xc85f5dd5880d5162faf5fdb24d40845b7c8f976f`; ethereum `0xd25954c9bad1f39945b1e75f2d3f0a4f4d78f6fe` | ⚠️ Unaudited |
| ERC20Mock | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x41e9163856b37fa79dc676d3805de88e917c6fd3` | ⚠️ Unaudited |
| FairAuctionVesting | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 24 deployments: ethereum `0x122a151d6cf3213d2d00920887cac1986c13d722`; ethereum `0x2dc49ed248c43bb56411f886ebc13928f1c522ef`; ethereum `0x3068a5995a4f3408a2e11036c42f551221de9824`; ethereum `0x40e1532ad3eeb7994a63c3b7d166af99af6165c7`; ethereum `0x4821550561553770b671f17873656b249662bbb3`; ethereum `0x50926e24bd470876b5507c73e76a53bd39bf905b`; ethereum `0x50fb8ec3a293dd208a2a347da995dc8f3d062540`; ethereum `0x51363917ff8ab51c869fe75ab30f7b883eedfd1f`; ethereum `0x5d4f4b3db74b08f87fdfb58180e95164a14231bc`; ethereum `0x6f4744df2e5a188b552cd0dbe77331b8a9d0c36d`; ethereum `0x7bbb1ba644633de2f24d2ce2e5d962990dd2cdd2`; ethereum `0x86206f8813a1a4201420d67b75c27cca0ff2a836`; ethereum `0x87621fccfb79a9121445e0e1c47aa877a56df2e6`; ethereum `0x88d6ddd0f48297d8dda4a97b81c646d5a7cd586b`; ethereum `0xa4c91a5a8a01d4b54f49d276051533781817b18a`; ethereum `0xad032c243c88d41973ba75e0c2b6585273cb42c1`; ethereum `0xb35d73f8a8c8fa5926ea77d3866c314c96cb400f`; ethereum `0xd20e71bf1243d782aaac542bc4adceaddfe84507`; ethereum `0xe1a1598f3f5a8b1143fd93c20c33856dcbdd265b`; ethereum `0xe5e2ecdf265a32584ce16a56f80292973b838b24`; ethereum `0xeb46ed79243e866078132e59a946652cddee64b3`; ethereum `0xf6380a738840f81b9913672e64bcbb485a3788da`; ethereum `0xf6d0f52a1b42aae6dda00ff3adedc1b71645d83e`; ethereum `0xfbda21d8ef309795bd01a2fcd23748be98c899a6` | ⚠️ Unaudited |
| IPNFT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x0443dfac8e510cfbdfdb9247e77400e9728ae45d`; ethereum `0x096c80ddf90008eb29d692fd91fdf6420563e3dc`; ethereum `0x6b179dffac5e190c670176606f552cb792847f80`; ethereum `0xdbdf5082500b7732bf88e6f4fe0ecbd1582cc060` | ⚠️ Unaudited |
| IPNFT | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0xcad88677ca87a7815728c72d74b4ff4982d54fc1`; ethereum `0xd035421eeffced3262cc360ca9aca23770c57384` | ⚠️ Unaudited |
| LockedToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0xb1729b20dad1fa670f96e4cf4bffe21ac6a8f3b8`; ethereum `0xc8cd729902e344bedf8585fe1af0545c44582b5b` | ⚠️ Unaudited |
| LockedTokenFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x8299699969d696bd9c05fd4fb89f8840e2c3199a`; ethereum `0xc9be11ccc31d2d7fe74f9a27b1fd192ee90fd825` | ⚠️ Unaudited |
| LockedTokenFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0xde1ca97de2dd6b234ee25dafea365647b9e9f57b`; ethereum `0xf6fee6cd54d687015c28f5261f544552c08ccae0` | ⚠️ Unaudited |
| LockingCrowdSale | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfbfd266bf3b49db8746155aa318d4533cc66db26` | ⚠️ Unaudited |
| MerkleAirdrop | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x26d6a8b2df727edf20dd73f5e4754d94e52e0716` | ⚠️ Unaudited |
| MockUsdc | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x42d01846f7b3669a5b0167c938168afe22618e8b` | ⚠️ Unaudited |
| NttManager | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x1783e7d1f498321d7e15044d769621e1bedc7f4c`; ethereum `0x2bbacb406d043d93997344f28a74a25069f3e9e3` | ⚠️ Unaudited |
| NttManager | governance | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x2c6c5c6e0f706ac7fcbc15a2e9b0e86de3c8dcf8`; ethereum `0xf758df3222d7fa076ed0e24591f06af631a5c9ad` | ⚠️ Unaudited |
| NttManager | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x7620d0a6791ec4184fe7dba2a2aea90d1b39ec0a`; ethereum `0xb7a1c2c90c20a5f7d5841d8102a421e98a1be9ee` | ⚠️ Unaudited |
| NttManager | governance | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x9e2de6ee57bcf1015eacd5a5cc31f2f9f37a7237`; ethereum `0xa05f7194e665c4a6baf54d4a94d65fbeb0fed7f1` | ⚠️ Unaudited |
| NttManager | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x565c2bd01ad5c4b955b052be542757cf344d7625`; base `0x9afebca0d37661167afd24481c39ebe2ead89571` | ⚠️ Unaudited |
| OptimismMintableERC20 | bridge_template | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 11 deployments: base `0x1f4446faaaed23090f324f051c3f8c5ce5ad1c36`; base `0x1fbaf8bdc2a43b0c9ba90b6caf44ee14d2ee6773`; base `0x321725ee44cb4bfa544cf45a5a585b925d30a58c`; base `0x3568c7a4f7545805e379c264303239781b4e9a79`; base `0x3a38dde9824e18cc4c0a147824f95bf5d608f0b3`; base `0x490a4b510d0ea9f835d2df29eb73b4fca5071937`; base `0x58d75a1c4477914f9a98a8708feaed1dbe40b8a3`; base `0x85d0e1bde4e71aede97e0f0412c6e4b3d1e59a97`; base `0x93757336de76f24f7eee15e6150e4ec42fbdaa21`; base `0xe18c07d858fb1bbf8c06fd78c13b86afd3d04e28`; base `0xfbad5be3a505889df2aa189580e3bd36118bf4d8` | ⚠️ Unaudited |
| Raphael | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9abf28ab6f80c1ef666f983935437e717aafff7a` | ⚠️ Unaudited |
| SignedMintAuthorizer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbc5fbb45a2bbb64d9b2eebfa327284a35d5c5865` | ⚠️ Unaudited |
| StakedToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 23 deployments: ethereum `0x023c3e7cc97b5d00bc88b47e068d324faffb98be`; ethereum `0x0bb56479c5d9d253e22380ecfe9a2885aa126cca`; ethereum `0x3350153900c0bd8dfdbfe77b274ac4e49d002588`; ethereum `0x357d6e1ae7c075984174d2a7e96f6e724ed0ae7c`; ethereum `0x450ee6af4d54054c069c2471f08478fe3d0ef313`; ethereum `0x67cdf8faf53fe5411940cae499799242c6dfcecc`; ethereum `0x75edde220b82d23f9ef8b38e5c533e8e865e92ba`; ethereum `0x88835d2c6d06759d3b6ea61e6b558f7c42469ad7`; ethereum `0xa41ceaec2b16e32a87e899d514395ecf5b74de48`; ethereum `0xb840c44c4e998bd98702467493b9a8fe88690687`; ethereum `0xb90f1028266210a007780e6a37d2c36738830f69`; ethereum `0xd12e4175619607a39299388d0f8a4233f3121e79`; ethereum `0xe41ba1329c76640a5da6d995bfd1b56a08c52352`; base `0x6c85e430ac13f6e88c83434b7789b969497ca9f8`; base `0x852c11e88478aafda31950f9e4f4fe86d9342e53`; base `0x85ecbc26f39fdca293d76c40fdd9feadc6a66797`; base `0x9dff3a11f315288cdb100364d6a81088ea9c6a7f`; base `0xafb64ab91da6be665d84016844e5c345399e07d0`; base `0xcbd956381a12cc84302344960c95e4ac313845db`; base `0xe01b67eaca87d742638842fceb9e8c2f006dc29b`; base `0xe1ea71e1c1dc3c2492a4d6b7618840d9f1ebe13f`; base `0xec637540ae2da2b795afe9427b840a827cf72f9a`; base `0xee8ea7c133d986b8d9a2708ef50d83d81ff3b4a1` | ⚠️ Unaudited |
| Staking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x711f2ac9e39615e07b4fe4548154d698b517a66d` | ⚠️ Unaudited |
| Synthesizer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x4b62ec784479c5520ec77de8d10c1a85d8f0850a`; ethereum `0xb050a85933ff0807f05d289b7f6457c5efbc348f` | ⚠️ Unaudited |
| Synthesizer | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | ethereum | n/a | 3 deployments: ethereum `0x534e082059123ba06411af4b2e8aaf196dd5fa5e`; ethereum `0x5372b35c82856a8babf0a33ca9fd21e009f6a60d`; ethereum `0x769c68346c5b20eb358bcedb55c6f27b5aa43585` | ⚠️ Unaudited |
| TermsAcceptedPermissioner | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0xc3191defe827d504885f47cfb3fe0919ebd35705`; ethereum `0xc837e02982992b701a1b5e4e21fa01ceb0a628fa` | ⚠️ Unaudited |
| TimelockedToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x625ed621d814645aa81c50c4f333d4a407576e8f` | ⚠️ Unaudited |
| Tokenizer | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x0d781edf9c75cf9136aac6600873d0a20a6dd43f`; ethereum `0x58eb89c69cb389dbef0c130c6296ee271b82f436` | ⚠️ Unaudited |
| Tokenizer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x6517dd48908f4c1ff4ed74ffd780908241a3654c`; ethereum `0x9c70fa8c87d7e94fd63eeccca657d5c4224a36f3`; ethereum `0xe8701330f196fefe415b28daa767ab076f42557a` | ⚠️ Unaudited |
| TokenVesting | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x4f55edffd4e9325577d4c8dde6f15782cefd6517`; ethereum `0x7c36c64da1c3a2065074caa9c48e7648fb733aab`; ethereum `0xde659cafbe68fc2b80fe7eb4f6135c1d4473926d`; ethereum `0xf9f8a1d51fb257097836ebda0428e28efdbe58e9` | ⚠️ Unaudited |
| TokenVestingMerkle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1510e9cf00daeb33e9fc9566a70de7c75be9857b` | ⚠️ Unaudited |
| TokenVestingMerklePurchasable | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x067c1ec64c8cdfc28cb53bff742974f1150036dd`; ethereum `0x1362edae7a0d002188645b789707a201b840a793`; ethereum `0x2141b47a1c7de6df073d23ff94f04d9fd2aaa9b3`; ethereum `0x637b118738ccf4146e6679ff620fddf30a6f0868` | ⚠️ Unaudited |
| VeBIO | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x66ffe61b9eabb77a30685143329d6b0726ad8022`; ethereum `0xbb1bc56d01f2b06521bf82dddfa1115ac15beb20` | ⚠️ Unaudited |
| VeBIO | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0xb5df43c84321c591ba48414192e19e2e30fc31d1`; ethereum `0xbcb8302c565b6ffe0ed7544ec76d92f3bb7ab19c` | ⚠️ Unaudited |
| VeBIO | unknown | project_anchor | own_supporting | 1 | ethereum | unit-380597 | 2 deployments: ethereum `0xc0a2ca1c2c05ac200c109f0bb571fd5710403e93`; ethereum `0xf91a12742aa609d41513a137d3c36b749f56f40c` | ⚠️ Unaudited |
| VeBIO | unknown | project_anchor | own_supporting | 1 | base | unit-380598 | `0xe1b48c0279cd95d984f1290293116c45d049a3bd` | ⚠️ Unaudited |
| VITA | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x81f8f0bb1cb2a06649e51913a151f0e7ef6fa321` | ⚠️ Unaudited |
| WormholeTransceiver | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x107abd279d67c1dbb196a5c1a4d74abcba191b5e` | ⚠️ Unaudited |
| WormholeTransceiver | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x164359844eb77995ecd74c70c4e023b7abdd6867` | ⚠️ Unaudited |
| WormholeTransceiver | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x548f8474ffdab0203eae82131b680a99c4a88e31` | ⚠️ Unaudited |
| WormholeTransceiver | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x676cd89c6b6f02d6975547fd7da1d5a8dbc8a3e1` | ⚠️ Unaudited |
| WormholeTransceiver | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0xcb75cc365abd9713b9a9b9613d90e9c359dd483f` | ⚠️ Unaudited |
| WrappedIPToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0ca5f50a8a59a59ef8c8d610f5ebf99e41f1352f` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (8)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380594 | `0x0d2adb4af57cdac02d553e7601456739857d2ef4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6034e0d6999741f07cb6fb1162cbaa46a1d33d36` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x023c3e7cc97b5d00bc88b47e068d324faffb98be` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x2196b84eace74867b73fb003aff93c11fce1d47a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x357d6e1ae7c075984174d2a7e96f6e724ed0ae7c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x3e6a1b21bd267677fa49be6425aebe2fc0f89bde` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xab814ce69e15f6b9660a3b184c0b0c97b9394a6b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xe41ba1329c76640a5da6d995bfd1b56a08c52352` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 68
- Live contracts: 1
- Unknown liveness contracts: 67
- Source-verified contracts: 68
- Currently scope-matched contracts retained as-is: 0
- Classification counts: candidate auto own=12, candidate review=25, source verified unclassified=31

| Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|
| candidate auto own | FairAuctionVesting<br>`0x40e1532ad3eeb7994a63c3b7d166af99af6165c7` | non_address_book | unknown | unknown | verified | automatic_own: fresh_structural_and_independent_ownership_match | `0x9ec0b6ae27214d45ca4a26e52e0efb9f8a9099b5` |
| candidate auto own | FairAuctionVesting<br>`0x4821550561553770b671f17873656b249662bbb3` | non_address_book | unknown | unknown | verified | automatic_own: fresh_structural_and_independent_ownership_match | `0x9ec0b6ae27214d45ca4a26e52e0efb9f8a9099b5` |
| candidate auto own | FairAuctionVesting<br>`0x50fb8ec3a293dd208a2a347da995dc8f3d062540` | non_address_book | unknown | unknown | verified | automatic_own: fresh_structural_and_independent_ownership_match | `0x9ec0b6ae27214d45ca4a26e52e0efb9f8a9099b5` |
| candidate auto own | FairAuctionVesting<br>`0x51363917ff8ab51c869fe75ab30f7b883eedfd1f` | non_address_book | unknown | unknown | verified | automatic_own: fresh_structural_and_independent_ownership_match | `0x9ec0b6ae27214d45ca4a26e52e0efb9f8a9099b5` |
| candidate auto own | FairAuctionVesting<br>`0x5d4f4b3db74b08f87fdfb58180e95164a14231bc` | non_address_book | unknown | unknown | verified | automatic_own: fresh_structural_and_independent_ownership_match | `0x9ec0b6ae27214d45ca4a26e52e0efb9f8a9099b5` |
| candidate auto own | FairAuctionVesting<br>`0x6f4744df2e5a188b552cd0dbe77331b8a9d0c36d` | non_address_book | unknown | unknown | verified | automatic_own: fresh_structural_and_independent_ownership_match | `0x9ec0b6ae27214d45ca4a26e52e0efb9f8a9099b5` |
| candidate auto own | FairAuctionVesting<br>`0x86206f8813a1a4201420d67b75c27cca0ff2a836` | non_address_book | unknown | unknown | verified | automatic_own: fresh_structural_and_independent_ownership_match | `0x9ec0b6ae27214d45ca4a26e52e0efb9f8a9099b5` |
| candidate auto own | FairAuctionVesting<br>`0xad032c243c88d41973ba75e0c2b6585273cb42c1` | non_address_book | unknown | unknown | verified | automatic_own: fresh_structural_and_independent_ownership_match | `0x9ec0b6ae27214d45ca4a26e52e0efb9f8a9099b5` |
| candidate auto own | FairAuctionVesting<br>`0xb35d73f8a8c8fa5926ea77d3866c314c96cb400f` | non_address_book | unknown | unknown | verified | automatic_own: fresh_structural_and_independent_ownership_match | `0x9ec0b6ae27214d45ca4a26e52e0efb9f8a9099b5` |
| candidate auto own | FairAuctionVesting<br>`0xd20e71bf1243d782aaac542bc4adceaddfe84507` | non_address_book | unknown | unknown | verified | automatic_own: fresh_structural_and_independent_ownership_match | `0x9ec0b6ae27214d45ca4a26e52e0efb9f8a9099b5` |
| candidate auto own | FairAuctionVesting<br>`0xeb46ed79243e866078132e59a946652cddee64b3` | non_address_book | unknown | unknown | verified | automatic_own: fresh_structural_and_independent_ownership_match | `0x9ec0b6ae27214d45ca4a26e52e0efb9f8a9099b5` |
| candidate auto own | FairAuctionVesting<br>`0xfbda21d8ef309795bd01a2fcd23748be98c899a6` | non_address_book | unknown | unknown | verified | automatic_own: fresh_structural_and_independent_ownership_match | `0x9ec0b6ae27214d45ca4a26e52e0efb9f8a9099b5` |
| candidate review | IPNFT<br>`0x0443dfac8e510cfbdfdb9247e77400e9728ae45d` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x34021576f01275a429163a56908bd02b43e2b7e1` |
| candidate review | IPNFT<br>`0x096c80ddf90008eb29d692fd91fdf6420563e3dc` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x34021576f01275a429163a56908bd02b43e2b7e1` |
| candidate review | IPNFT<br>`0x6b179dffac5e190c670176606f552cb792847f80` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x34021576f01275a429163a56908bd02b43e2b7e1` |
| candidate review | IPNFT<br>`0xd035421eeffced3262cc360ca9aca23770c57384` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x34021576f01275a429163a56908bd02b43e2b7e1` |
| candidate review | IPNFT<br>`0xdbdf5082500b7732bf88e6f4fe0ecbd1582cc060` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x34021576f01275a429163a56908bd02b43e2b7e1` |
| candidate review | IPToken<br>`0x0d6866f3369e4825ce07f226a424f1c11861add1` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x34021576f01275a429163a56908bd02b43e2b7e1` |
| candidate review | IPToken<br>`0x89a14be8f7824d4775053edad0f2fa2d6767b72b` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x34021576f01275a429163a56908bd02b43e2b7e1` |
| candidate review | IPToken<br>`0x9e4fc6e6d1a64e3429ab852d3cb31ad7aa06997a` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x34021576f01275a429163a56908bd02b43e2b7e1` |
| candidate review | LockedTokenFactory<br>`0x8299699969d696bd9c05fd4fb89f8840e2c3199a` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x34021576f01275a429163a56908bd02b43e2b7e1` |
| candidate review | LockedTokenFactory<br>`0xf6fee6cd54d687015c28f5261f544552c08ccae0` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x34021576f01275a429163a56908bd02b43e2b7e1` |
| candidate review | Synthesizer<br>`0x4b62ec784479c5520ec77de8d10c1a85d8f0850a` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x34021576f01275a429163a56908bd02b43e2b7e1` |
| candidate review | Synthesizer<br>`0x5372b35c82856a8babf0a33ca9fd21e009f6a60d` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x34021576f01275a429163a56908bd02b43e2b7e1` |
| candidate review | Synthesizer<br>`0xb050a85933ff0807f05d289b7f6457c5efbc348f` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x34021576f01275a429163a56908bd02b43e2b7e1` |
| candidate review | TermsAcceptedPermissioner<br>`0xc837e02982992b701a1b5e4e21fa01ceb0a628fa` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x34021576f01275a429163a56908bd02b43e2b7e1` |
| candidate review | TimelockedToken<br>`0x625ed621d814645aa81c50c4f333d4a407576e8f` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x34021576f01275a429163a56908bd02b43e2b7e1` |
| candidate review | Tokenizer<br>`0x0d781edf9c75cf9136aac6600873d0a20a6dd43f` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x34021576f01275a429163a56908bd02b43e2b7e1` |
| candidate review | Tokenizer<br>`0x6517dd48908f4c1ff4ed74ffd780908241a3654c` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x34021576f01275a429163a56908bd02b43e2b7e1` |
| candidate review | Tokenizer<br>`0x9c70fa8c87d7e94fd63eeccca657d5c4224a36f3` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x34021576f01275a429163a56908bd02b43e2b7e1` |
| candidate review | Tokenizer<br>`0xe8701330f196fefe415b28daa767ab076f42557a` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x34021576f01275a429163a56908bd02b43e2b7e1` |
| candidate review | TokenVesting<br>`0xde659cafbe68fc2b80fe7eb4f6135c1d4473926d` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x2fd030d1f76ff3cc25a52fcb79cdc8d483cfb136` |
| candidate review | TokenVesting<br>`0xf9f8a1d51fb257097836ebda0428e28efdbe58e9` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x2fd030d1f76ff3cc25a52fcb79cdc8d483cfb136` |
| candidate review | TokenVestingMerkle<br>`0x1510e9cf00daeb33e9fc9566a70de7c75be9857b` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x0536a28b56bb590560703b5c945356fc8fdfc932` |
| candidate review | TokenVestingMerklePurchasable<br>`0x067c1ec64c8cdfc28cb53bff742974f1150036dd` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x9ec0b6ae27214d45ca4a26e52e0efb9f8a9099b5` |
| candidate review | TokenVestingMerklePurchasable<br>`0x1362edae7a0d002188645b789707a201b840a793` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x9ec0b6ae27214d45ca4a26e52e0efb9f8a9099b5` |
| candidate review | TokenVestingMerklePurchasable<br>`0x637b118738ccf4146e6679ff620fddf30a6f0868` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x9ec0b6ae27214d45ca4a26e52e0efb9f8a9099b5` |
| source verified unclassified | AccessResolver<br>`0x97b7f5ddb5699a5b3d93f4a7d7df29143f181b80` | non_address_book | unknown | unknown | verified | n/a | `0x34021576f01275a429163a56908bd02b43e2b7e1` |
| source verified unclassified | DAOToken<br>`0x3ae5eae997d2031f78177bfb4bbee511edd9ed2f` | non_address_book | unknown | unknown | verified | n/a | `0x9ec0b6ae27214d45ca4a26e52e0efb9f8a9099b5` |
| source verified unclassified | DAOToken<br>`0xd25954c9bad1f39945b1e75f2d3f0a4f4d78f6fe` | non_address_book | unknown | unknown | verified | n/a | `0x9ec0b6ae27214d45ca4a26e52e0efb9f8a9099b5` |
| source verified unclassified | ERC1967Proxy<br>`0x1783e7d1f498321d7e15044d769621e1bedc7f4c` | non_address_book | unknown | unknown | verified | n/a | `0x9ec0b6ae27214d45ca4a26e52e0efb9f8a9099b5` |
| source verified unclassified | ERC1967Proxy<br>`0x534e082059123ba06411af4b2e8aaf196dd5fa5e` | non_address_book | unknown | unknown | verified | n/a | `0x34021576f01275a429163a56908bd02b43e2b7e1` |
| source verified unclassified | ERC1967Proxy<br>`0x58eb89c69cb389dbef0c130c6296ee271b82f436` | non_address_book | unknown | unknown | verified | n/a | `0x34021576f01275a429163a56908bd02b43e2b7e1` |
| source verified unclassified | ERC1967Proxy<br>`0x7620d0a6791ec4184fe7dba2a2aea90d1b39ec0a` | non_address_book | unknown | unknown | verified | n/a | `0x9ec0b6ae27214d45ca4a26e52e0efb9f8a9099b5` |
| source verified unclassified | ERC1967Proxy<br>`0x769c68346c5b20eb358bcedb55c6f27b5aa43585` | non_address_book | unknown | unknown | verified | n/a | `0x34021576f01275a429163a56908bd02b43e2b7e1` |
| source verified unclassified | ERC1967Proxy<br>`0x9e2de6ee57bcf1015eacd5a5cc31f2f9f37a7237` | non_address_book | governance | unknown | verified | n/a | `0x535489587a0cad6c64787e7e0a3393e39830432b` |
| source verified unclassified | ERC1967Proxy<br>`0xb5df43c84321c591ba48414192e19e2e30fc31d1` | non_address_book | unknown | unknown | verified | n/a | `0x535489587a0cad6c64787e7e0a3393e39830432b` |
| source verified unclassified | ERC1967Proxy<br>`0xbb1bc56d01f2b06521bf82dddfa1115ac15beb20` | non_address_book | unknown | unknown | verified | n/a | `0x535489587a0cad6c64787e7e0a3393e39830432b` |
| source verified unclassified | ERC1967Proxy<br>`0xc130e0b49840b266a49f62c0cc77e353e0c99cd0` | non_address_book | unknown | unknown | verified | n/a | `0x34021576f01275a429163a56908bd02b43e2b7e1` |
| source verified unclassified | ERC1967Proxy<br>`0xc9be11ccc31d2d7fe74f9a27b1fd192ee90fd825` | non_address_book | unknown | unknown | verified | n/a | `0x34021576f01275a429163a56908bd02b43e2b7e1` |
| source verified unclassified | ERC1967Proxy<br>`0xcad88677ca87a7815728c72d74b4ff4982d54fc1` | non_address_book | unknown | unknown | verified | n/a | `0x34021576f01275a429163a56908bd02b43e2b7e1` |
| source verified unclassified | ERC1967Proxy<br>`0xde1ca97de2dd6b234ee25dafea365647b9e9f57b` | non_address_book | unknown | unknown | verified | n/a | `0x34021576f01275a429163a56908bd02b43e2b7e1` |
| source verified unclassified | ERC1967Proxy<br>`0xf758df3222d7fa076ed0e24591f06af631a5c9ad` | non_address_book | governance | unknown | verified | n/a | `0x535489587a0cad6c64787e7e0a3393e39830432b` |
| source verified unclassified | MerkleAirdrop<br>`0x26d6a8b2df727edf20dd73f5e4754d94e52e0716` | non_address_book | unknown | unknown | verified | n/a | `0x9ec0b6ae27214d45ca4a26e52e0efb9f8a9099b5` |
| source verified unclassified | NttManager<br>`0x2bbacb406d043d93997344f28a74a25069f3e9e3` | non_address_book | unknown | unknown | verified | n/a | `0x9ec0b6ae27214d45ca4a26e52e0efb9f8a9099b5` |
| source verified unclassified | NttManager<br>`0x2c6c5c6e0f706ac7fcbc15a2e9b0e86de3c8dcf8` | non_address_book | governance | unknown | verified | n/a | `0x535489587a0cad6c64787e7e0a3393e39830432b` |
| source verified unclassified | NttManager<br>`0xa05f7194e665c4a6baf54d4a94d65fbeb0fed7f1` | non_address_book | governance | unknown | verified | n/a | `0x535489587a0cad6c64787e7e0a3393e39830432b` |
| source verified unclassified | NttManager<br>`0xb7a1c2c90c20a5f7d5841d8102a421e98a1be9ee` | non_address_book | unknown | unknown | verified | n/a | `0x9ec0b6ae27214d45ca4a26e52e0efb9f8a9099b5` |
| source verified unclassified | Raphael<br>`0x9abf28ab6f80c1ef666f983935437e717aafff7a` | non_address_book | unknown | unknown | verified | n/a | `0x4f9f4d9128b96b74f0212ba128485fecbc9e27fe` |
| source verified unclassified | SignedMintAuthorizer<br>`0xbc5fbb45a2bbb64d9b2eebfa327284a35d5c5865` | non_address_book | unknown | unknown | verified | n/a | `0x34021576f01275a429163a56908bd02b43e2b7e1` |
| source verified unclassified | Staking<br>`0x711f2ac9e39615e07b4fe4548154d698b517a66d` | non_address_book | unknown | unknown | verified | n/a | `0x4f9f4d9128b96b74f0212ba128485fecbc9e27fe` |
| source verified unclassified | TermsAcceptedPermissioner<br>`0xc3191defe827d504885f47cfb3fe0919ebd35705` | non_address_book | unknown | unknown | verified | n/a | `0x34021576f01275a429163a56908bd02b43e2b7e1` |
| source verified unclassified | VeBIO<br>`0x66ffe61b9eabb77a30685143329d6b0726ad8022` | non_address_book | unknown | unknown | verified | n/a | `0x535489587a0cad6c64787e7e0a3393e39830432b` |
| source verified unclassified | VeBIO<br>`0xbcb8302c565b6ffe0ed7544ec76d92f3bb7ab19c` | non_address_book | unknown | unknown | verified | n/a | `0x535489587a0cad6c64787e7e0a3393e39830432b` |
| source verified unclassified | VeBIO<br>`0xc0a2ca1c2c05ac200c109f0bb571fd5710403e93` | retained_scope_excluded_inventory | unknown | live | verified | n/a | `0x535489587a0cad6c64787e7e0a3393e39830432b` |
| source verified unclassified | ERC1967Proxy<br>`0x9afebca0d37661167afd24481c39ebe2ead89571` | non_address_book | unknown | unknown | verified | n/a | `0x9ec0b6ae27214d45ca4a26e52e0efb9f8a9099b5` |
| source verified unclassified | NttManager<br>`0x565c2bd01ad5c4b955b052be542757cf344d7625` | non_address_book | unknown | unknown | verified | n/a | `0x9ec0b6ae27214d45ca4a26e52e0efb9f8a9099b5` |
| source verified unclassified | OptimismMintableERC20<br>`0x1fbaf8bdc2a43b0c9ba90b6caf44ee14d2ee6773` | non_address_book | unknown | unknown | verified | n/a | `0x259b31509426988545e50ab16114242b5e8645d5` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [spaces/3ba2jNU6BPQUl4RXgHor/uploads/uYIpl4lmoMs2hOgnrj18/Launchpad v2 Contracts (FYEO).pdf](https://files.gitbook.com/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F3ba2jNU6BPQUl4RXgHor%2Fuploads%2FuYIpl4lmoMs2hOgnrj18%2FLaunchpad%20v2%20Contracts%20(FYEO).pdf?alt=media) | FYEO | Audit | 2025-07 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 16 | high |
| [spaces/3ba2jNU6BPQUl4RXgHor/uploads/W7mPQHDWHGApxw1jl6CO/Bio-security-review_2025-03-12.pdf](https://files.gitbook.com/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F3ba2jNU6BPQUl4RXgHor%2Fuploads%2FW7mPQHDWHGApxw1jl6CO%2FBio-security-review_2025-03-12.pdf?alt=media) | Code4rena | Contest | 2025-03 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [spaces/3ba2jNU6BPQUl4RXgHor/uploads/wUCj5OeWCmIpLizDug9d/Bio - Security Code Review of Bio Launchpad v0.1.pdf](https://files.gitbook.com/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F3ba2jNU6BPQUl4RXgHor%2Fuploads%2FwUCj5OeWCmIpLizDug9d%2FBio%20-%20Security%20Code%20Review%20of%20Bio%20Launchpad%20v0.1.pdf?alt=media) | FYEO | Audit | 2025-02 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [spaces/3ba2jNU6BPQUl4RXgHor/uploads/f5zTFrmYvglsJ6WAXZxM/DesciLaunchpad-security-review_2025-02-07.pdf](https://files.gitbook.com/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F3ba2jNU6BPQUl4RXgHor%2Fuploads%2Ff5zTFrmYvglsJ6WAXZxM%2FDesciLaunchpad-security-review_2025-02-07.pdf?alt=media) | Pashov Audit Group | Audit | 2025-02 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 13 | high |
| [spaces/3ba2jNU6BPQUl4RXgHor/uploads/Xm1EkQX20KCOrH0s1e3Y/Bio-security-review.pdf](https://499247139-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F3ba2jNU6BPQUl4RXgHor%2Fuploads%2FXm1EkQX20KCOrH0s1e3Y%2FBio-security-review.pdf) | Pashov Audit Group | Audit | 2024-06 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [2023-04-pashov.md](https://github.com/bio-xyz/vesting-contracts/blob/main/audits/2023-04-pashov.md) | Pashov Audit Group | Audit | 2023-04 | stale | Direct | n/a | no match | 0 | 0 | 0 | 2 | n/a |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [2523] spaces/3ba2jNU6BPQUl4RXgHor/uploads/uYIpl4lmoMs2hOgnrj18/Launchpad v2 Contracts (FYEO).pdf — no match: All contracts listed in the scope table (Table 1) are extracted. The audit date is from the cover page: '29 July 2025'.
- [2524] spaces/3ba2jNU6BPQUl4RXgHor/uploads/W7mPQHDWHGApxw1jl6CO/Bio-security-review_2025-03-12.pdf — no match: Scope section explicitly lists 'Curation' and 'LaunchFactory' as the smart contracts in scope.
- [2525] spaces/3ba2jNU6BPQUl4RXgHor/uploads/wUCj5OeWCmIpLizDug9d/Bio - Security Code Review of Bio Launchpad v0.1.pdf — no match: The scope table lists the entire 'bio-launchpad' program directory. No individual contract names are given; the program is a single Solana program.
- [2526] spaces/3ba2jNU6BPQUl4RXgHor/uploads/f5zTFrmYvglsJ6WAXZxM/DesciLaunchpad-security-review_2025-02-07.pdf — no match: Scope section lists Rust source files (modules) rather than Solidity contracts. Extracted names from the scope list.
- [2527] spaces/3ba2jNU6BPQUl4RXgHor/uploads/Xm1EkQX20KCOrH0s1e3Y/Bio-security-review.pdf — no match: Only one contract explicitly in scope. TokenVesting is referenced but not listed in scope.
- [2528] 2023-04-pashov.md — no match: No reason recorded

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| spaces/3ba2jNU6BPQUl4RXgHor/uploads/uYIpl4lmoMs2hOgnrj18/Launchpad v2 Contracts (FYEO).pdf | Launch | unmatched — not counted | — | listed in scope table | no |
| spaces/3ba2jNU6BPQUl4RXgHor/uploads/uYIpl4lmoMs2hOgnrj18/Launchpad v2 Contracts (FYEO).pdf | LaunchFactory | unmatched — not counted | — | listed in scope table | no |
| spaces/3ba2jNU6BPQUl4RXgHor/uploads/uYIpl4lmoMs2hOgnrj18/Launchpad v2 Contracts (FYEO).pdf | LaunchLib | unmatched — not counted | — | listed in scope table | no |
| spaces/3ba2jNU6BPQUl4RXgHor/uploads/uYIpl4lmoMs2hOgnrj18/Launchpad v2 Contracts (FYEO).pdf | LaunchTypes | unmatched — not counted | — | listed in scope table | no |
| spaces/3ba2jNU6BPQUl4RXgHor/uploads/uYIpl4lmoMs2hOgnrj18/Launchpad v2 Contracts (FYEO).pdf | IAgentFactory | unmatched — not counted | — | listed in scope table | no |
| spaces/3ba2jNU6BPQUl4RXgHor/uploads/uYIpl4lmoMs2hOgnrj18/Launchpad v2 Contracts (FYEO).pdf | IAgentToken | unmatched — not counted | — | listed in scope table | no |
| spaces/3ba2jNU6BPQUl4RXgHor/uploads/uYIpl4lmoMs2hOgnrj18/Launchpad v2 Contracts (FYEO).pdf | IAgentVeToken | unmatched — not counted | — | listed in scope table | no |
| spaces/3ba2jNU6BPQUl4RXgHor/uploads/uYIpl4lmoMs2hOgnrj18/Launchpad v2 Contracts (FYEO).pdf | IERC20Config | unmatched — not counted | — | listed in scope table | no |
| spaces/3ba2jNU6BPQUl4RXgHor/uploads/uYIpl4lmoMs2hOgnrj18/Launchpad v2 Contracts (FYEO).pdf | IUniswapV2Factory | unmatched — not counted | — | listed in scope table | no |
| spaces/3ba2jNU6BPQUl4RXgHor/uploads/uYIpl4lmoMs2hOgnrj18/Launchpad v2 Contracts (FYEO).pdf | IUniswapV2Pair | unmatched — not counted | — | listed in scope table | no |
| spaces/3ba2jNU6BPQUl4RXgHor/uploads/uYIpl4lmoMs2hOgnrj18/Launchpad v2 Contracts (FYEO).pdf | IUniswapV2Router01 | unmatched — not counted | — | listed in scope table | no |
| spaces/3ba2jNU6BPQUl4RXgHor/uploads/uYIpl4lmoMs2hOgnrj18/Launchpad v2 Contracts (FYEO).pdf | IUniswapV2Router02 | unmatched — not counted | — | listed in scope table | no |
| spaces/3ba2jNU6BPQUl4RXgHor/uploads/uYIpl4lmoMs2hOgnrj18/Launchpad v2 Contracts (FYEO).pdf | AgentFactory | unmatched — not counted | — | listed in scope table | no |
| spaces/3ba2jNU6BPQUl4RXgHor/uploads/uYIpl4lmoMs2hOgnrj18/Launchpad v2 Contracts (FYEO).pdf | AgentToken | unmatched — not counted | — | listed in scope table | no |
| spaces/3ba2jNU6BPQUl4RXgHor/uploads/uYIpl4lmoMs2hOgnrj18/Launchpad v2 Contracts (FYEO).pdf | AgentVeToken | unmatched — not counted | — | listed in scope table | no |
| spaces/3ba2jNU6BPQUl4RXgHor/uploads/uYIpl4lmoMs2hOgnrj18/Launchpad v2 Contracts (FYEO).pdf | veBIO | ambiguous — not counted | ERC1967Proxy (proxy) (alternative) `0xf91a12742aa609d41513a137d3c36b749f56f40c` — deployed 2025-08-05 14:28:23+03 — liveness: live (current_address_book_code)<br>ERC1967Proxy (proxy) (alternative) `0xe1b48c0279cd95d984f1290293116c45d049a3bd` — deployed 2025-07-30 13:42:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| spaces/3ba2jNU6BPQUl4RXgHor/uploads/W7mPQHDWHGApxw1jl6CO/Bio-security-review_2025-03-12.pdf | Curation | unmatched — not counted | — | listed in scope section | no |
| spaces/3ba2jNU6BPQUl4RXgHor/uploads/W7mPQHDWHGApxw1jl6CO/Bio-security-review_2025-03-12.pdf | LaunchFactory | unmatched — not counted | — | listed in scope section | no |
| spaces/3ba2jNU6BPQUl4RXgHor/uploads/wUCj5OeWCmIpLizDug9d/Bio - Security Code Review of Bio Launchpad v0.1.pdf | bio-launchpad | unmatched — not counted | — | listed in scope table | no |
| spaces/3ba2jNU6BPQUl4RXgHor/uploads/f5zTFrmYvglsJ6WAXZxM/DesciLaunchpad-security-review_2025-02-07.pdf | buy_token | unmatched — not counted | — | listed in scope | no |
| spaces/3ba2jNU6BPQUl4RXgHor/uploads/f5zTFrmYvglsJ6WAXZxM/DesciLaunchpad-security-review_2025-02-07.pdf | claim_revenue | unmatched — not counted | — | listed in scope | no |
| spaces/3ba2jNU6BPQUl4RXgHor/uploads/f5zTFrmYvglsJ6WAXZxM/DesciLaunchpad-security-review_2025-02-07.pdf | claim_token | unmatched — not counted | — | listed in scope | no |
| spaces/3ba2jNU6BPQUl4RXgHor/uploads/f5zTFrmYvglsJ6WAXZxM/DesciLaunchpad-security-review_2025-02-07.pdf | create_token | unmatched — not counted | — | listed in scope | no |
| spaces/3ba2jNU6BPQUl4RXgHor/uploads/f5zTFrmYvglsJ6WAXZxM/DesciLaunchpad-security-review_2025-02-07.pdf | deposit_token | unmatched — not counted | — | listed in scope | no |
| spaces/3ba2jNU6BPQUl4RXgHor/uploads/f5zTFrmYvglsJ6WAXZxM/DesciLaunchpad-security-review_2025-02-07.pdf | init_stats | unmatched — not counted | — | listed in scope | no |
| spaces/3ba2jNU6BPQUl4RXgHor/uploads/f5zTFrmYvglsJ6WAXZxM/DesciLaunchpad-security-review_2025-02-07.pdf | mod | unmatched — not counted | — | listed in scope | no |
| spaces/3ba2jNU6BPQUl4RXgHor/uploads/f5zTFrmYvglsJ6WAXZxM/DesciLaunchpad-security-review_2025-02-07.pdf | update_token | unmatched — not counted | — | listed in scope | no |
| spaces/3ba2jNU6BPQUl4RXgHor/uploads/f5zTFrmYvglsJ6WAXZxM/DesciLaunchpad-security-review_2025-02-07.pdf | withdraw_token | unmatched — not counted | — | listed in scope | no |
| spaces/3ba2jNU6BPQUl4RXgHor/uploads/f5zTFrmYvglsJ6WAXZxM/DesciLaunchpad-security-review_2025-02-07.pdf | state | unmatched — not counted | — | listed in scope | no |
| spaces/3ba2jNU6BPQUl4RXgHor/uploads/f5zTFrmYvglsJ6WAXZxM/DesciLaunchpad-security-review_2025-02-07.pdf | lib | unmatched — not counted | — | listed in scope | no |
| spaces/3ba2jNU6BPQUl4RXgHor/uploads/f5zTFrmYvglsJ6WAXZxM/DesciLaunchpad-security-review_2025-02-07.pdf | error | unmatched — not counted | — | listed in scope | no |
| spaces/3ba2jNU6BPQUl4RXgHor/uploads/f5zTFrmYvglsJ6WAXZxM/DesciLaunchpad-security-review_2025-02-07.pdf | constants | unmatched — not counted | — | listed in scope | no |
| spaces/3ba2jNU6BPQUl4RXgHor/uploads/Xm1EkQX20KCOrH0s1e3Y/Bio-security-review.pdf | FairAuctionVesting | unmatched — not counted | — | Listed in scope section: 'The following smart contracts were in scope of the audit: FairAuctionVesting' | no |
| 2023-04-pashov.md | TokenVesting | unmatched — not counted | — | — | no |
| 2023-04-pashov.md | TokenVestingMerkle | unmatched — not counted | — | — | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0xcb1592591996765ec0efc1f92599a19767ee5ffa` | BioToken | token | $89,366,879.30 | Verified native implementation with $89,366,879.30 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x226a2fa2556c48245e57cd1cba4c6c9e67077dd2` | Token | token | $5,204,984.10 | Verified native implementation with $5,204,984.10 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xc0a2ca1c2c05ac200c109f0bb571fd5710403e93` | VeBIO | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 44 |
| upstream | 1 |
| standard_library | 10 |
| needs_review | 9 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 6
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 1 ambiguous, 34 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=5
- Match method counts: n/a

Zero-match audit list:

- [2523] spaces/3ba2jNU6BPQUl4RXgHor/uploads/uYIpl4lmoMs2hOgnrj18/Launchpad v2 Contracts (FYEO).pdf
- [2524] spaces/3ba2jNU6BPQUl4RXgHor/uploads/W7mPQHDWHGApxw1jl6CO/Bio-security-review_2025-03-12.pdf
- [2525] spaces/3ba2jNU6BPQUl4RXgHor/uploads/wUCj5OeWCmIpLizDug9d/Bio - Security Code Review of Bio Launchpad v0.1.pdf
- [2526] spaces/3ba2jNU6BPQUl4RXgHor/uploads/f5zTFrmYvglsJ6WAXZxM/DesciLaunchpad-security-review_2025-02-07.pdf
- [2527] spaces/3ba2jNU6BPQUl4RXgHor/uploads/Xm1EkQX20KCOrH0s1e3Y/Bio-security-review.pdf
- [2528] 2023-04-pashov.md

Fork inheritance lineage and inherited audits are included when available.
