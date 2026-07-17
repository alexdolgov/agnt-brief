# Agentic Audit Brief: Flying Tulip

## Export Authority

- Production state: **blocked no audit authority**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 0 (0 matched; 0 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Flying Tulip (`flying-tulip`)
- Website: [https://flyingtulip.com/](https://flyingtulip.com/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: avalanche, base, bsc, ethereum, sonic
- Contract surface: 198 unique implementations (258 raw deployments)
- Coverage basis: 0/70 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $10,168,483.52
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Flying Tulip. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 77 contract row(s) across avalanche, base, bsc, ethereum, sonic. Structural roles: 29 core, 26 unclassified, 22 supporting. 4 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 77
- Structural roles: core (29), unclassified (26), supporting (22)
- Contract kinds: contract (77)
- Detected standards: erc20 (33), ownable (13), pausable (7), erc20permit (5), ownable2step (4), chainlinkaggregator (2), erc1967proxy (2), accesscontrol (1), erc165 (1)
- Frameworks: openzeppelin (45), layerzero (5), openzeppelin-upgradeable (4), permit2 (1), solmate (1)
- Upgradeable-pattern rows: 4

## Fork Analysis

0 of 136 contracts are derived from known codebases. 136 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x01980bd1b58313bd3767f6adc75af8b6464f3db7`, chain 1)
- UnnamedContract (`0x051589975909644bee7c33c037a7d2009c8f1839`, chain 1)
- UnnamedContract (`0x054c80b91b39fc4f84ef0ecd53bbb53163229795`, chain 1)
- UnnamedContract (`0x1a5730c71576d77048e9fdc79dd40e4b1e8fe042`, chain 1)
- UnnamedContract (`0x28b0905d83bce5ffa6c54651f25858828a38123b`, chain 1)
- UnnamedContract (`0x3682168023e6ba8d1f995fda1d920827c5a8a43e`, chain 1)
- UnnamedContract (`0x40693bc9f8d986e6ed1291293e620b71f63b06e7`, chain 1)
- UnnamedContract (`0x460494af61bcb92b59797b4e09c26a5adecb2da2`, chain 1)
- UnnamedContract (`0x51afd3ed66b07dff22b90de0eba20796cf948e18`, chain 1)
- UnnamedContract (`0x56c5892b0cf41b792217ccdd208f0fa85b178ca9`, chain 1)
- UnnamedContract (`0x5a5e77f566079168706a9887172dda37d7b7a4fb`, chain 1)
- UnnamedContract (`0x5c5ab8fd8f40ad624e531fedf227ff60c5164d32`, chain 1)
- UnnamedContract (`0x6c971ddef3e910a786472a957108757bf7728c8c`, chain 1)
- UnnamedContract (`0x70312a3e8b94a8023b2e0afe193b1939978cde3d`, chain 1)
- UnnamedContract (`0x7127bb9d9ad0f47b8da9087e634d67f3946f840e`, chain 1)
- UnnamedContract (`0x7ad77fddef64ec8325e8d2d02c2708aa2a412ef7`, chain 1)
- UnnamedContract (`0x880a371ce2c5dbb2eb47ec0023b358e8ae80071b`, chain 1)
- UnnamedContract (`0x8852b132b72613a16f1e3960978a3d45c0a7c3c6`, chain 1)
- UnnamedContract (`0x8fffffd4afb6115b954bd326cbe7b4ba576818f6`, chain 1)
- UnnamedContract (`0x986841b77f3aa934d315d48121842e3c622e5440`, chain 1)
- UnnamedContract (`0xa8777c3d446fa7f0b0fc97a80c1ea1d37f1ca33e`, chain 1)
- UnnamedContract (`0xaa3d5fc84b43219391539714be5f0681aefca23b`, chain 1)
- UnnamedContract (`0xaa48ecbc843cf7e9a29155d112b8cb27902bd23c`, chain 1)
- UnnamedContract (`0xaee64ce25059929c92e96d4d0fd05b958a18b5d6`, chain 1)
- UnnamedContract (`0xb213e88f680fa41f9a910ada49ba8343f2e92c22`, chain 1)
- UnnamedContract (`0xbdd80028c9e4b9a2d268d2cf62fb54ec8697c68b`, chain 1)
- UnnamedContract (`0xbe4050a73a7fb384c65e885a15c33461a4b20055`, chain 1)
- UnnamedContract (`0xc67d966f761e8cf13faa0a1e774425290c8453d9`, chain 1)
- UnnamedContract (`0xcb210509f5ae2b3843b7fb8bb90baff9ce4f7355`, chain 1)
- UnnamedContract (`0xd25f964ead7bfbf07858b5bfede58f11a5a947e5`, chain 1)
- UnnamedContract (`0xd2e4a5ac4b4da102317cf7c9a1289adf082639e2`, chain 1)
- UnnamedContract (`0xeb48218a4c35c814c7678cbcae88c6ee037f7625`, chain 1)
- UnnamedContract (`0xf47bb65fb0886be183db541afce555345e3e1885`, chain 1)
- UnnamedContract (`0xf7d85ec4e7710f71992752eac2111312e73e9c9c`, chain 1)
- UnnamedContract (`0xfaed20b307a6789481ee383adc10b9b0090b1157`, chain 1)
- UnnamedContract (`0x02e9bae63509ff46248daddd4041e67ed851f95c`, chain 146)
- UnnamedContract (`0x051589975909644bee7c33c037a7d2009c8f1839`, chain 146)
- UnnamedContract (`0x054c80b91b39fc4f84ef0ecd53bbb53163229795`, chain 146)
- UnnamedContract (`0x3682168023e6ba8d1f995fda1d920827c5a8a43e`, chain 146)
- UnnamedContract (`0x38b9717cf28d8bfde7b40fe2c0a703ed457555d0`, chain 146)
- UnnamedContract (`0x56c5892b0cf41b792217ccdd208f0fa85b178ca9`, chain 146)
- UnnamedContract (`0x5a5e77f566079168706a9887172dda37d7b7a4fb`, chain 146)
- UnnamedContract (`0x5c5ab8fd8f40ad624e531fedf227ff60c5164d32`, chain 146)
- UnnamedContract (`0x5d3d9ec8da7857928ea0a00c0241e914f9a816bf`, chain 146)
- UnnamedContract (`0x7127bb9d9ad0f47b8da9087e634d67f3946f840e`, chain 146)
- UnnamedContract (`0x727bc187150d5599e7fba32732c21c6d9f5b1837`, chain 146)
- UnnamedContract (`0x7a2fd34e4cc4c8b1023576a3f3d1f7aa36cf8b47`, chain 146)
- UnnamedContract (`0x7ad77fddef64ec8325e8d2d02c2708aa2a412ef7`, chain 146)
- UnnamedContract (`0x880a371ce2c5dbb2eb47ec0023b358e8ae80071b`, chain 146)
- UnnamedContract (`0x8852b132b72613a16f1e3960978a3d45c0a7c3c6`, chain 146)
- UnnamedContract (`0x8b98e46421898437862de44aa63b73b2da69147b`, chain 146)
- UnnamedContract (`0x8e0fa0076e67b105ad4645522d73ecd801beff12`, chain 146)
- UnnamedContract (`0x986841b77f3aa934d315d48121842e3c622e5440`, chain 146)
- UnnamedContract (`0x9b4aa6ba7ab3a08980a68244d5c5c1c46756b66d`, chain 146)
- UnnamedContract (`0xa8777c3d446fa7f0b0fc97a80c1ea1d37f1ca33e`, chain 146)
- UnnamedContract (`0xaa3d5fc84b43219391539714be5f0681aefca23b`, chain 146)
- UnnamedContract (`0xae65fd1cf583962a104cf7f68a04c7256b5a16eb`, chain 146)
- UnnamedContract (`0xb213e88f680fa41f9a910ada49ba8343f2e92c22`, chain 146)
- UnnamedContract (`0xb6f498c8212bad07369b87fc0590fe6e2084ae86`, chain 146)
- UnnamedContract (`0xbb155f15d8452139d1a9c3a664847d2f8314c18e`, chain 146)
- UnnamedContract (`0xbdd80028c9e4b9a2d268d2cf62fb54ec8697c68b`, chain 146)
- UnnamedContract (`0xbe4050a73a7fb384c65e885a15c33461a4b20055`, chain 146)
- UnnamedContract (`0xc67d966f761e8cf13faa0a1e774425290c8453d9`, chain 146)
- UnnamedContract (`0xcb2c0168bf3440f5f342ed685dfdfd06a4607edc`, chain 146)
- UnnamedContract (`0xd25f964ead7bfbf07858b5bfede58f11a5a947e5`, chain 146)
- UnnamedContract (`0xd6587e78d252e630d425ecd827017bf81b0ac553`, chain 146)
- UnnamedContract (`0xefd7d5471839e8cf1ee4cd6078de720262b705e9`, chain 146)
- UnnamedContract (`0xf47bb65fb0886be183db541afce555345e3e1885`, chain 146)
- UnnamedContract (`0xf7d85ec4e7710f71992752eac2111312e73e9c9c`, chain 146)
- AaveStrategy (`0x061d7d04682a6c060cbc4b6fd65adcc724afeadb`, chain 1)
- AaveStrategy (`0x0987fb9ae6cdc6e71defcf710833acfc36e3ba7d`, chain 1)
- AaveStrategy (`0x2e43f825fba9018d6303e9cf978cad9ac54b04ae`, chain 1)
- AaveStrategy (`0x3e607766adcece773ebc69ad9f2e79ffbbe81f4b`, chain 1)
- AaveStrategy (`0x51e85e0820a508b0a1034ab1fa4f260372f3db03`, chain 1)
- AaveStrategy (`0x638a51e61400e228f4300076d95708b5d8962307`, chain 1)
- AaveStrategy (`0xb804919a6fd9ee6ac90ad3a12bec902c0b29cb4e`, chain 1)
- AaveStrategy (`0xbe968499626b8f027f93ba7a9b9c686c949dd2da`, chain 1)
- AaveStrategy (`0x216e588e4d726c691679c7eb4944c033e0d3df28`, chain 146)
- AaveStrategy (`0x974ba6aa224f6f3515170f963fbd256df214f8ee`, chain 146)
- AaveStrategy (`0xf09b9d5abde8b84d36578f6da977440332d94dda`, chain 146)
- CircuitBreaker (`0x9676e697399581ab288844cde5f73d0887ec18e0`, chain 1)
- CircuitBreaker (`0xcb170bc873b3a1f69f433c25a4b6d0fd4d4d90de`, chain 1)
- CircuitBreaker (`0x9676e697399581ab288844cde5f73d0887ec18e0`, chain 146)
- CircuitBreakerGuardian (`0xdc86ad63ca7db1d8b703598b0735c08d5374c7ea`, chain 1)
- CircuitBreakerGuardian (`0xdc86ad63ca7db1d8b703598b0735c08d5374c7ea`, chain 146)
- CircuitBreakerOperator (`0x765224780ad888285b03af221f528d0a6824994d`, chain 1)
- CircuitBreakerOperator (`0x765224780ad888285b03af221f528d0a6824994d`, chain 146)
- DeltaNeutralStakingStrategy (`0x6ec218fc45ac0c7b83d16557befabb62ed7455ae`, chain 146)
- EpochRewardsVault (`0xea95e4636badc00881f8f73a0623b0fe8627b6da`, chain 1)
- EpochRewardsVault (`0x5aee4b34df62790581e2f2c31468ddfd7020e841`, chain 146)
- FT (`0x5dd1a7a369e8273371d2dbf9d83356057088082c`, chain 1)
- FT (`0x5dd1a7a369e8273371d2dbf9d83356057088082c`, chain 56)
- FT (`0x5dd1a7a369e8273371d2dbf9d83356057088082c`, chain 146)
- FT (`0x5dd1a7a369e8273371d2dbf9d83356057088082c`, chain 8453)
- FT (`0x5dd1a7a369e8273371d2dbf9d83356057088082c`, chain 43114)
- ftACL (`0xa09d08e5a850b26d39ea2a69f8f99fd8aa1359eb`, chain 1)
- ftYieldWrapper (`0x095d8b8d4503d590f647343f7cd880fa2abbbf59`, chain 1)
- ftYieldWrapper (`0x267df6b637ddcaa7763d94b64ebe09f01b07cb36`, chain 1)
- ftYieldWrapper (`0x9d96bac8a4e9a5b51b5b262f316c4e648e44e305`, chain 1)
- ftYieldWrapper (`0xa143a9c486a1a4aaf54faeff7252cece2d337573`, chain 1)
- ftYieldWrapper (`0xe5270e0458f58b83db3d90aa6a616173c98c97b6`, chain 1)
- ftYieldWrapper (`0xe6880fc961b1235c46552e391358a270281b5625`, chain 1)
- ftYieldWrapper (`0x267df6b637ddcaa7763d94b64ebe09f01b07cb36`, chain 43114)
- ftYieldWrapperV2 (`0x28cca8eea2cd0498ce91a9da15772a1ce42347d6`, chain 1)
- ftYieldWrapperV2 (`0x6aaf84563cdb03a22cd92ee2553698bee87e837d`, chain 1)
- ftYieldWrapperV2 (`0xb44a9c40efc05eb014effeac3cbed6a31f8cb87f`, chain 1)
- ftYieldWrapperV2 (`0x0237a67db9d55b2e0f2b25a137ea15e4c497ab6a`, chain 146)
- ftYieldWrapperV2 (`0x9acdce593888e52ec7cf70e3d22f0cf50682cd0b`, chain 146)
- LeverageRfqEngine (`0x8263a07504d93cb95e0a74f3627bb15faaf140e2`, chain 1)
- LeverageRfqEngine (`0x8263a07504d93cb95e0a74f3627bb15faaf140e2`, chain 146)
- LongTailIRM (`0x09cd852f47aca224ee6b4accc29bd2694f29ef69`, chain 1)
- LongTailIRM (`0x09cd852f47aca224ee6b4accc29bd2694f29ef69`, chain 146)
- MajorIRM (`0x07ec8583b1bc7d97646409a2b51ddbed6725d12f`, chain 1)
- MajorIRM (`0x07ec8583b1bc7d97646409a2b51ddbed6725d12f`, chain 146)
- MetaActions (`0x3633eb60d08756674472e2d34d6ffb5f4c1c29f2`, chain 1)
- MetaActions (`0x3633eb60d08756674472e2d34d6ffb5f4c1c29f2`, chain 146)
- MetaSessionActions (`0x4f83ac5c8a79986d0916a8849730d9cef63a3497`, chain 1)
- MetaSessionActions (`0x4f83ac5c8a79986d0916a8849730d9cef63a3497`, chain 146)
- Permit2 (`0xeb450d21ae68d3303cf5775a54cc84ee7c3fc8ec`, chain 1)
- pFT (`0xc55253ea84050700e1efa8878d4a5053b6bf7c5e`, chain 1)
- PutManager (`0x90ae2cac15f8d58a258f7b4a243657754469922a`, chain 1)
- RelayerAuth (`0x823a97a2c32985e0f5457fc8103f36698d1f53f4`, chain 1)
- RelayerAuth (`0x823a97a2c32985e0f5457fc8103f36698d1f53f4`, chain 146)
- RfqEngine (`0xeb00b335ca52216fb60fdffa361397367c39dc32`, chain 1)
- RfqEngine (`0xeb00b335ca52216fb60fdffa361397367c39dc32`, chain 146)
- SparkSavingsStrategy (`0x3f537ef4313297b53bb827c02f3cc381ad080aeb`, chain 1)
- SparkSavingsStrategy (`0x4df6f4f8cda409550a5d8a89ad66de355cf7f2a7`, chain 1)
- SparkSavingsStrategy (`0x4f47c4adc71e1d33fda433fadda596a529307af5`, chain 1)
- SparkSavingsStrategy (`0x852dc7638ad159ec12526d7e47f53f1307756a42`, chain 1)
- SparkSavingsStrategy (`0xcfb9d82c426335c458ed78625b29b013c632ff2c`, chain 1)
- SparkSavingsStrategy (`0xeb5cb93c27a11782d146863a340455e614b10302`, chain 1)
- SparkSavingsStrategy (`0xf20119f84b7d54b6b1d6392efef19658515f99a8`, chain 1)
- SparkSavingsStrategy (`0xfbe0736ebf5668a604d73ba93a5ddbee9c10b0e5`, chain 1)
- StableIRM (`0x3253739a68640e308c8209384bb44e4ada38710d`, chain 1)
- StableIRM (`0x3253739a68640e308c8209384bb44e4ada38710d`, chain 146)
- TimelockController (`0x3518db98cb1fcb19e0c430b3e7f7f74b2a354707`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 77; live-surface rows included: 77 (72 live, 5 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 138/180 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/70 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 138 own, 5 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 55 discovered implementations shown in the inventory but excluded from coverage (5 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 29
- Confirmed-live implementations: 138 of 198 unique; 60 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/126
- Verified + Unaudited implementations: 126
- Verified by bytecode match: 0
- Unverified implementations: 72
- Unique implementations: 198
- Raw deployments: 258
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

### ⚠️ Verified + Unaudited (126)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AaveStrategy | operational_periphery | project_anchor | own_supporting | 0 | ethereum | unit-240095 | `0x061d7d04682a6c060cbc4b6fd65adcc724afeadb` | ⚠️ Unaudited |
| AaveStrategy | operational_periphery | project_anchor | own_supporting | 0 | ethereum | unit-240098 | `0x0987fb9ae6cdc6e71defcf710833acfc36e3ba7d` | ⚠️ Unaudited |
| AaveStrategy | operational_periphery | project_anchor | own_supporting | 0 | ethereum | unit-240106 | `0x2e43f825fba9018d6303e9cf978cad9ac54b04ae` | ⚠️ Unaudited |
| AaveStrategy | operational_periphery | project_anchor | own_supporting | 0 | ethereum | unit-240112 | `0x3e607766adcece773ebc69ad9f2e79ffbbe81f4b` | ⚠️ Unaudited |
| AaveStrategy | operational_periphery | project_anchor | own_supporting | 0 | ethereum | unit-240120 | `0x51e85e0820a508b0a1034ab1fa4f260372f3db03` | ⚠️ Unaudited |
| AaveStrategy | operational_periphery | project_anchor | own_supporting | 0 | ethereum | unit-240126 | `0x638a51e61400e228f4300076d95708b5d8962307` | ⚠️ Unaudited |
| AaveStrategy | operational_periphery | project_anchor | own_supporting | 0 | ethereum | unit-240159 | `0xb804919a6fd9ee6ac90ad3a12bec902c0b29cb4e` | ⚠️ Unaudited |
| AaveStrategy | operational_periphery | project_anchor | own_supporting | 0 | ethereum | unit-240163 | `0xbe968499626b8f027f93ba7a9b9c686c949dd2da` | ⚠️ Unaudited |
| AaveStrategy | operational_periphery | project_anchor | own_supporting | 0 | sonic | unit-240193 | `0x216e588e4d726c691679c7eb4944c033e0d3df28` | ⚠️ Unaudited |
| AaveStrategy | operational_periphery | project_anchor | own_supporting | 0 | sonic | unit-240227 | `0x974ba6aa224f6f3515170f963fbd256df214f8ee` | ⚠️ Unaudited |
| AaveStrategy | operational_periphery | project_anchor | own_supporting | 0 | sonic | unit-240257 | `0xf09b9d5abde8b84d36578f6da977440332d94dda` | ⚠️ Unaudited |
| CircuitBreaker | unknown | project_anchor | own_supporting | 0 | ethereum | unit-240143 | `0x9676e697399581ab288844cde5f73d0887ec18e0` | ⚠️ Unaudited |
| CircuitBreaker | unknown | project_anchor | own_supporting | 0 | ethereum | unit-240166 | `0xcb170bc873b3a1f69f433c25a4b6d0fd4d4d90de` | ⚠️ Unaudited |
| CircuitBreaker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 7 deployments: ethereum `0xac9994836cc5b52960e4d4e327f1b312c7a17b37`; bsc `0x2e43f825fba9018d6303e9cf978cad9ac54b04ae`; sonic `0x6b0743d3aff340bcac717320279e441d83673551`; sonic `0xedc6db35bd00fead7022bb8daa5957a865041960`; base `0xedc6db35bd00fead7022bb8daa5957a865041960`; avalanche `0x5dfbf7754174fc960ed5cb85d68b418f1ce7bf88`; avalanche `0x73384cac18642729102ccdd58da1288aa1a8e355` | ⚠️ Unaudited |
| CircuitBreaker | unknown | project_anchor | own_supporting | 0 | sonic | unit-240226 | `0x9676e697399581ab288844cde5f73d0887ec18e0` | ⚠️ Unaudited |
| CircuitBreakerGuardian | governance | project_anchor | own_supporting | 0 | ethereum | unit-240172 | `0xdc86ad63ca7db1d8b703598b0735c08d5374c7ea` | ⚠️ Unaudited |
| CircuitBreakerGuardian | governance | project_anchor | own_supporting | 0 | sonic | unit-240250 | `0xdc86ad63ca7db1d8b703598b0735c08d5374c7ea` | ⚠️ Unaudited |
| CircuitBreakerOperator | unknown | project_anchor | own_supporting | 0 | ethereum | unit-240132 | `0x765224780ad888285b03af221f528d0a6824994d` | ⚠️ Unaudited |
| CircuitBreakerOperator | unknown | project_anchor | own_supporting | 0 | sonic | unit-240216 | `0x765224780ad888285b03af221f528d0a6824994d` | ⚠️ Unaudited |
| DeltaNeutralStakingStrategy | core_logic | project_anchor | own_supporting | 0 | sonic | unit-240212 | `0x6ec218fc45ac0c7b83d16557befabb62ed7455ae` | ⚠️ Unaudited |
| EpochRewardsVault | unknown | project_anchor | own_supporting | 0 | ethereum | unit-240175 | `0xea95e4636badc00881f8f73a0623b0fe8627b6da` | ⚠️ Unaudited |
| EpochRewardsVault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | 2 deployments: sonic `0x0fdd3b7ff34b2e43ee3a0cea72bdfa5519bef61a`; sonic `0xc41855eaeb34e9b4531ce1fa9ef3824b5b642647` | ⚠️ Unaudited |
| EpochRewardsVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x4b8d731055c61d48c6f01923a0c92ad29e8b24e9` | ⚠️ Unaudited |
| EpochRewardsVault | unknown | project_anchor | own_supporting | 1 | sonic | unit-240270 | 2 deployments: sonic `0x5aee4b34df62790581e2f2c31468ddfd7020e841`; sonic `0xd1e5a86f1005f6356bd022c587de0f430cd2aeb1` | ⚠️ Unaudited |
| EpochSettlerOperator | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x35e00b1ccb8fd22648d716096b994be6c10d5748`; ethereum `0xa97b7423c4ef544be3b5c259eb67729fb0830a39` | ⚠️ Unaudited |
| EpochSettlerOperator | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0xaf76ecb4b7e30c7470cb8aeb213b75a3eb150bbc`; ethereum `0xbae14f050fb8cda4d16ab47dbec67793c7c0b566` | ⚠️ Unaudited |
| EpochSettlerOperator | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | 2 deployments: sonic `0xa4f83b1dbc76f78c9d71336c687d04c92d103aa1`; sonic `0xed0077a9e26329327722a81df2db3450f100226f` | ⚠️ Unaudited |
| ERC1967Proxy | proxy | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 3 deployments: bsc `0xa4215daaf3745e14e96e169e0e7706c479ce04f2`; bsc `0xba49d0ac42f4fba4e24a8677a22218a4df75ebaa`; sonic `0x44655c6f83a6acf43403cf61c6050b6784c7cfeb` | ⚠️ Unaudited |
| Escrow | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4577286a6082df1f99adbf790c4104dd90abefbc` | ⚠️ Unaudited |
| FlyingTulipModeler | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3f07ff0e3b80416dc7f7cb41ea862a309663298c` | ⚠️ Unaudited |
| FlyingTulipOracle | operational_periphery | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-240165 | `0xc8c895e2be9511006287ce02e51b5b198ab36793` | ⚠️ Unaudited |
| FlyingTulipOracle | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 7 deployments: bsc `0xc8c895e2be9511006287ce02e51b5b198ab36793`; sonic `0x2027909d69b501ce0967af62e6a165d24cf90d77`; sonic `0x30f9f53ec295530392ea10dea19a5cc3ac1701b8`; sonic `0xc8c895e2be9511006287ce02e51b5b198ab36793`; base `0xc8c895e2be9511006287ce02e51b5b198ab36793`; avalanche `0xc8c895e2be9511006287ce02e51b5b198ab36793`; avalanche `0xe83c56f4166c96cee84ed6cc652bcdb9c66b0941` | ⚠️ Unaudited |
| FT | unknown | project_anchor | own_supporting | 0 | ethereum | unit-240125 | `0x5dd1a7a369e8273371d2dbf9d83356057088082c` | ⚠️ Unaudited |
| FT | unknown | project_anchor | own_supporting | 0 | bsc | unit-240264 | `0x5dd1a7a369e8273371d2dbf9d83356057088082c` | ⚠️ Unaudited |
| FT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x26382a5331ddb46e7c0c101fb53480eb64a94ad9` | ⚠️ Unaudited |
| FT | unknown | project_anchor | own_supporting | 0 | sonic | unit-240209 | `0x5dd1a7a369e8273371d2dbf9d83356057088082c` | ⚠️ Unaudited |
| FT | unknown | project_anchor | own_supporting | 0 | base | unit-240265 | `0x5dd1a7a369e8273371d2dbf9d83356057088082c` | ⚠️ Unaudited |
| FT | unknown | project_anchor | own_supporting | 0 | avalanche | unit-240263 | `0x5dd1a7a369e8273371d2dbf9d83356057088082c` | ⚠️ Unaudited |
| ftACL | governance | project_anchor | own_supporting | 0 | ethereum | unit-240148 | `0xa09d08e5a850b26d39ea2a69f8f99fd8aa1359eb` | ⚠️ Unaudited |
| ftACL | governance | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 2 deployments: sonic `0x995d9c9d077c07f6fe0c078d50c3e1f7979fe65b`; sonic `0xd901ed360a01871825e97fae15823833b716d433` | ⚠️ Unaudited |
| FtLiquidator | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd92b5892dfa62aa7f00e23e45a11b38f6b27d4ac` | ⚠️ Unaudited |
| FtUsdMintRedeemOracleProxy | operational_periphery | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-240150 | `0xa69f7a38b6c91a4bc2477f097dc8a1f16daadff8` | ⚠️ Unaudited |
| FtUsdMintRedeemOracleProxy | operational_periphery | external_dependency_or_infra | third_party_dependency (excluded) | 0 | sonic | unit-240195 | `0x2c64f618f8ce7ea31e9ff1f9022cb1b21a9b8aae` | ⚠️ Unaudited |
| ftYieldWrapper | unknown | project_anchor | own_supporting | 0 | ethereum | unit-240097 | `0x095d8b8d4503d590f647343f7cd880fa2abbbf59` | ⚠️ Unaudited |
| ftYieldWrapper | unknown | project_anchor | own_supporting | 0 | ethereum | unit-240102 | `0x267df6b637ddcaa7763d94b64ebe09f01b07cb36` | ⚠️ Unaudited |
| ftYieldWrapper | unknown | project_anchor | own_supporting | 0 | ethereum | unit-240147 | `0x9d96bac8a4e9a5b51b5b262f316c4e648e44e305` | ⚠️ Unaudited |
| ftYieldWrapper | unknown | project_anchor | own_supporting | 0 | ethereum | unit-240149 | `0xa143a9c486a1a4aaf54faeff7252cece2d337573` | ⚠️ Unaudited |
| ftYieldWrapper | unknown | project_anchor | own_supporting | 0 | ethereum | unit-240173 | `0xe5270e0458f58b83db3d90aa6a616173c98c97b6` | ⚠️ Unaudited |
| ftYieldWrapper | unknown | project_anchor | own_supporting | 0 | ethereum | unit-240174 | `0xe6880fc961b1235c46552e391358a270281b5625` | ⚠️ Unaudited |
| ftYieldWrapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 12 deployments: bsc `0x095d8b8d4503d590f647343f7cd880fa2abbbf59`; sonic `0x095d8b8d4503d590f647343f7cd880fa2abbbf59`; sonic `0x0e959ea4cc900a3e492759bf87497ed32440ad49`; sonic `0x62ebd646734d0faddd2c70391910b38bec2ede2d`; sonic `0x9d96bac8a4e9a5b51b5b262f316c4e648e44e305`; base `0x095d8b8d4503d590f647343f7cd880fa2abbbf59`; base `0x9d96bac8a4e9a5b51b5b262f316c4e648e44e305`; avalanche `0x095d8b8d4503d590f647343f7cd880fa2abbbf59`; avalanche `0x0edc9d87e1cfe6905b25e0bd9fca288f2c6b7d38`; avalanche `0x2fa3e7fc699a577e61d520dca62bc4587d6009b0`; avalanche `0x6cd8cbb72d74d2d0fbaff398cd0daff787a54dbf`; avalanche `0x9d96bac8a4e9a5b51b5b262f316c4e648e44e305` | ⚠️ Unaudited |
| ftYieldWrapper | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | `0x0e794b1fd35a7a5550cd3e305882369ffb2df7f7` | ⚠️ Unaudited |
| ftYieldWrapper | unknown | project_anchor | own_supporting | 0 | avalanche | unit-240262 | `0x267df6b637ddcaa7763d94b64ebe09f01b07cb36` | ⚠️ Unaudited |
| ftYieldWrapperV2 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-240104 | `0x28cca8eea2cd0498ce91a9da15772a1ce42347d6` | ⚠️ Unaudited |
| ftYieldWrapperV2 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-240127 | `0x6aaf84563cdb03a22cd92ee2553698bee87e837d` | ⚠️ Unaudited |
| ftYieldWrapperV2 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-240157 | `0xb44a9c40efc05eb014effeac3cbed6a31f8cb87f` | ⚠️ Unaudited |
| ftYieldWrapperV2 | unknown | project_anchor | own_supporting | 0 | sonic | unit-240186 | `0x0237a67db9d55b2e0f2b25a137ea15e4c497ab6a` | ⚠️ Unaudited |
| ftYieldWrapperV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 3 deployments: sonic `0x298d44fc5f6a75b2673701bb77fddc923d59515e`; sonic `0x359b1924d6170b806cf1c70c440cca75e069115b`; sonic `0x46b0bf6a209425b895cad2feddb1ac055c4e1ec9` | ⚠️ Unaudited |
| ftYieldWrapperV2 | unknown | project_anchor | own_supporting | 0 | sonic | unit-240229 | `0x9acdce593888e52ec7cf70e3d22f0cf50682cd0b` | ⚠️ Unaudited |
| GeniusDollar | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | `0x000000000eccff26b795f73fb0a70d48da657fef` | ⚠️ Unaudited |
| HopHelper | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x30439b989fdfdf68e08a232799acca68152d9bc9` | ⚠️ Unaudited |
| LeveragedRfqFiller | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6a4c8bfab54ff0405630cf3e14b99f2726f401f8` | ⚠️ Unaudited |
| LeverageRfqEngine | unknown | project_anchor | own_supporting | 0 | ethereum | unit-240136 | `0x8263a07504d93cb95e0a74f3627bb15faaf140e2` | ⚠️ Unaudited |
| LeverageRfqEngine | unknown | project_anchor | own_supporting | 0 | sonic | unit-240220 | `0x8263a07504d93cb95e0a74f3627bb15faaf140e2` | ⚠️ Unaudited |
| LiquidationHelper | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfb98663b574f39dda6caa8703fcebbcaa3b5c95a` | ⚠️ Unaudited |
| Liquidator | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x2a8530ad26164896e8e1ba84f3b3bd48c1375dc0`; ethereum `0x3fd484dd5212240bd04c12bf4efa7fac7d5faff6` | ⚠️ Unaudited |
| LockerModeler | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0778519a236942e6c81f0bfd004bdf4ab1c12a39` | ⚠️ Unaudited |
| LongTailIRM | unknown | project_anchor | own_supporting | 0 | ethereum | unit-240099 | `0x09cd852f47aca224ee6b4accc29bd2694f29ef69` | ⚠️ Unaudited |
| LongTailIRM | unknown | project_anchor | own_supporting | 0 | sonic | unit-240191 | `0x09cd852f47aca224ee6b4accc29bd2694f29ef69` | ⚠️ Unaudited |
| MajorIRM | unknown | project_anchor | own_supporting | 0 | ethereum | unit-240096 | `0x07ec8583b1bc7d97646409a2b51ddbed6725d12f` | ⚠️ Unaudited |
| MajorIRM | unknown | project_anchor | own_supporting | 0 | sonic | unit-240190 | `0x07ec8583b1bc7d97646409a2b51ddbed6725d12f` | ⚠️ Unaudited |
| MetaActions | unknown | project_anchor | own_supporting | 0 | ethereum | unit-240109 | `0x3633eb60d08756674472e2d34d6ffb5f4c1c29f2` | ⚠️ Unaudited |
| MetaActions | unknown | project_anchor | own_supporting | 0 | sonic | unit-240197 | `0x3633eb60d08756674472e2d34d6ffb5f4c1c29f2` | ⚠️ Unaudited |
| MetaSessionActions | unknown | project_anchor | own_supporting | 0 | ethereum | unit-240118 | `0x4f83ac5c8a79986d0916a8849730d9cef63a3497` | ⚠️ Unaudited |
| MetaSessionActions | unknown | project_anchor | own_supporting | 0 | sonic | unit-240203 | `0x4f83ac5c8a79986d0916a8849730d9cef63a3497` | ⚠️ Unaudited |
| MintAndRedeem | unknown | project_anchor | own_supporting | 1 | sonic | unit-240271 | 2 deployments: sonic `0x0c6f8ec81c3ea5bff06f6cd0791780f9f050ee31`; sonic `0x8852b132b72613a16f1e3960978a3d45c0a7c3c6` | ⚠️ Unaudited |
| MintAndRedeem | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | 2 deployments: sonic `0x5e272c172eb3f385d65d1887d15042eea52c313d`; sonic `0xb9682c6736fad7c8589d43cdfda58a70d53b7fda` | ⚠️ Unaudited |
| MintAndRedeem | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xbbf10e78eceb04c4dac655583701c3e9d924a09f` | ⚠️ Unaudited |
| MintedERC20 | token | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | `0x50c42deacd8fc9773493ed674b675be577f2634b` | ⚠️ Unaudited |
| MintModeler | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x94a7afefe7e3037b2619d524e62d352b79cfad36` | ⚠️ Unaudited |
| OracleRouterChainlink | operational_periphery | external_dependency_or_infra | third_party_dependency (excluded) | 1 | ethereum | unit-240269 | `0xe4372db43d2814750a19b93950157ad81d93674a` | ⚠️ Unaudited |
| OracleWrapper | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xe7c36251197aac71fa4b0579960b2e7a5fa28253` | ⚠️ Unaudited |
| Permit2 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-240177 | `0xeb450d21ae68d3303cf5775a54cc84ee7c3fc8ec` | ⚠️ Unaudited |
| pFT | unknown | project_anchor | own_supporting | 1 | ethereum | unit-240268 | 2 deployments: ethereum `0xa4215daaf3745e14e96e169e0e7706c479ce04f2`; ethereum `0xc55253ea84050700e1efa8878d4a5053b6bf7c5e` | ⚠️ Unaudited |
| pFT | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | 2 deployments: sonic `0x1d8051c90076faa5b683a3551ee4369d00f99d67`; sonic `0xcf047256d5cd7354327213929214e5dad3a83326` | ⚠️ Unaudited |
| pFT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 3 deployments: bsc `0xc55253ea84050700e1efa8878d4a5053b6bf7c5e`; sonic `0x51d2a9807956378e8d0368339ea2117678e3efeb`; avalanche `0x7f9c1847dc0ea532170faec33cb2cc866eeb7c0d` | ⚠️ Unaudited |
| pFT | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | 2 deployments: sonic `0xa4215daaf3745e14e96e169e0e7706c479ce04f2`; sonic `0xc55253ea84050700e1efa8878d4a5053b6bf7c5e` | ⚠️ Unaudited |
| pFT | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0xa4215daaf3745e14e96e169e0e7706c479ce04f2`; base `0xc55253ea84050700e1efa8878d4a5053b6bf7c5e` | ⚠️ Unaudited |
| pFT | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | 2 deployments: avalanche `0xa4215daaf3745e14e96e169e0e7706c479ce04f2`; avalanche `0xc55253ea84050700e1efa8878d4a5053b6bf7c5e` | ⚠️ Unaudited |
| pFTMarketplace | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-240105 | `0x2a35f9f1b4ab24f377a06eda61bda382f7b2da7f` | ⚠️ Unaudited |
| pFTMarketplace | unknown | project_anchor | own_supporting | 1 | ethereum | unit-240267 | `0x31248663adccdbcad155555b7717697b76cf570c` | ⚠️ Unaudited |
| pFTMarketplace | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x758ebe9f693c0d30ac8ac9c27c02ea1fc4ad14a7` | ⚠️ Unaudited |
| PutManager | unknown | project_anchor | own_supporting | 0 | ethereum | unit-240142 | `0x90ae2cac15f8d58a258f7b4a243657754469922a` | ⚠️ Unaudited |
| PutManager | unknown | project_anchor | own_supporting | 1 | ethereum | unit-240266 | `0xba49d0ac42f4fba4e24a8677a22218a4df75ebaa` | ⚠️ Unaudited |
| PutManager | governance | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x90ae2cac15f8d58a258f7b4a243657754469922a` | ⚠️ Unaudited |
| PutManager | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | 2 deployments: sonic `0x2a41a37603c8e7a87880c887a9080ee435d9acad`; sonic `0xaa8cd6341c8430eacf1c74af58a25e8ac653b202` | ⚠️ Unaudited |
| PutManager | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | 2 deployments: sonic `0x90ae2cac15f8d58a258f7b4a243657754469922a`; sonic `0xba49d0ac42f4fba4e24a8677a22218a4df75ebaa` | ⚠️ Unaudited |
| PutManager | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | 2 deployments: sonic `0x915220f3845d9d0db7960399c4e5ba0038f1170b`; sonic `0xabd838e9977fc76430d637ed35eccfaf178ce071` | ⚠️ Unaudited |
| PutManager | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x90ae2cac15f8d58a258f7b4a243657754469922a`; base `0xba49d0ac42f4fba4e24a8677a22218a4df75ebaa` | ⚠️ Unaudited |
| PutManager | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | 2 deployments: avalanche `0x90ae2cac15f8d58a258f7b4a243657754469922a`; avalanche `0xba49d0ac42f4fba4e24a8677a22218a4df75ebaa` | ⚠️ Unaudited |
| PutManagerInvestProxy | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x33c2eefb21da9b1408f2615d02125ff1eba7a666`; ethereum `0x7c2b3bb00a24da15f9a89777ede1cb87fbadb5d5` | ⚠️ Unaudited |
| RelayerAuth | unknown | project_anchor | own_supporting | 0 | ethereum | unit-240135 | `0x823a97a2c32985e0f5457fc8103f36698d1f53f4` | ⚠️ Unaudited |
| RelayerAuth | unknown | project_anchor | own_supporting | 0 | sonic | unit-240219 | `0x823a97a2c32985e0f5457fc8103f36698d1f53f4` | ⚠️ Unaudited |
| RfqCBLens | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x80e01cc9a202658674e31e1d57767abd12d27316` | ⚠️ Unaudited |
| RfqEngine | unknown | project_anchor | own_supporting | 0 | ethereum | unit-240176 | `0xeb00b335ca52216fb60fdffa361397367c39dc32` | ⚠️ Unaudited |
| RfqEngine | unknown | project_anchor | own_supporting | 0 | sonic | unit-240253 | `0xeb00b335ca52216fb60fdffa361397367c39dc32` | ⚠️ Unaudited |
| SessionManager | governance | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 4 deployments: ethereum `0x2daf4b445e7d659100b22a15c3eeb10e64ac5dc9`; ethereum `0xf9f3ddf2e96cabef94e2634c326dc6dde99360f8`; sonic `0x109ae72778a0260571b9767477204f1ce41fbdff`; sonic `0x2daf4b445e7d659100b22a15c3eeb10e64ac5dc9` | ⚠️ Unaudited |
| SparkSavingsStrategy | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-240113 | `0x3f537ef4313297b53bb827c02f3cc381ad080aeb` | ⚠️ Unaudited |
| SparkSavingsStrategy | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-240116 | `0x4df6f4f8cda409550a5d8a89ad66de355cf7f2a7` | ⚠️ Unaudited |
| SparkSavingsStrategy | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-240117 | `0x4f47c4adc71e1d33fda433fadda596a529307af5` | ⚠️ Unaudited |
| SparkSavingsStrategy | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-240137 | `0x852dc7638ad159ec12526d7e47f53f1307756a42` | ⚠️ Unaudited |
| SparkSavingsStrategy | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-240168 | `0xcfb9d82c426335c458ed78625b29b013c632ff2c` | ⚠️ Unaudited |
| SparkSavingsStrategy | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-240179 | `0xeb5cb93c27a11782d146863a340455e614b10302` | ⚠️ Unaudited |
| SparkSavingsStrategy | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-240180 | `0xf20119f84b7d54b6b1d6392efef19658515f99a8` | ⚠️ Unaudited |
| SparkSavingsStrategy | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-240184 | `0xfbe0736ebf5668a604d73ba93a5ddbee9c10b0e5` | ⚠️ Unaudited |
| StableIRM | unknown | project_anchor | own_supporting | 0 | ethereum | unit-240107 | `0x3253739a68640e308c8209384bb44e4ada38710d` | ⚠️ Unaudited |
| StableIRM | unknown | project_anchor | own_supporting | 0 | sonic | unit-240196 | `0x3253739a68640e308c8209384bb44e4ada38710d` | ⚠️ Unaudited |
| TimelockController | governance | project_anchor | own_supporting | 0 | ethereum | unit-240108 | `0x3518db98cb1fcb19e0c430b3e7f7f74b2a354707` | ⚠️ Unaudited |
| TreasuryWrapper | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x9d978c7a7e8e7e93a0d709797bf3f9f4534efd91`; ethereum `0xaa1869e07708c1cc35e2dd6975758864128dfbb3` | ⚠️ Unaudited |
| TreasuryWrapper | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | 2 deployments: sonic `0x171ba268b9dff25c44fdeff1c6d08412558c3b21`; sonic `0x725897054ea5f968b810f2b092ca51547549a2d3` | ⚠️ Unaudited |
| TreasuryWrapper | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | 2 deployments: sonic `0x24db7a17f233d4ffd37a0210a57b0a38f158ecba`; sonic `0xb65a077f4be7d133358dd15c8d48b5c75dfa48ca` | ⚠️ Unaudited |
| TreasuryWrapper | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | 2 deployments: sonic `0x3e4815af1dbf57b1e27316cc20fe5d35d1037aea`; sonic `0x7e362172f273a47e31d2d3a276d9dc22f99fa4a9` | ⚠️ Unaudited |
| UniV2Executor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdc9b61a88b5ca5bdfa592fe19861422b2fb057a3` | ⚠️ Unaudited |
| UniV3Executor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb972e7941f359f9f9460e724d66d3026f6f3869f` | ⚠️ Unaudited |
| VCYieldClaimer | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x418856f634813d904a31e5e16848d6711410b9e9`; ethereum `0xad12b39eca2b6cb31e1e1b2c7932f62db0909ed9` | ⚠️ Unaudited |
| WrapperModeler | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x65c1fffb85121dd38ed7807e65e33236fb2695b8` | ⚠️ Unaudited |
| YieldClaimer | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 4 deployments: ethereum `0x88432bb6ea62e774cb6d87995cc5277568d01397`; ethereum `0xff81e06af64e92203c1229930426cb41e7fac9e2`; sonic `0x59222220759efe35b8e46f5563151827e4114628`; sonic `0x70fe8da96775b07d360545a7a0c6700b33d669d8` | ⚠️ Unaudited |

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
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-240092 | `0x01980bd1b58313bd3767f6adc75af8b6464f3db7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-240093 | `0x051589975909644bee7c33c037a7d2009c8f1839` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-240094 | `0x054c80b91b39fc4f84ef0ecd53bbb53163229795` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x16564b3f66c05a588fdafc74c07a517673a74e89` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-240100 | `0x1a5730c71576d77048e9fdc79dd40e4b1e8fe042` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-240103 | `0x28b0905d83bce5ffa6c54651f25858828a38123b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-240110 | `0x3682168023e6ba8d1f995fda1d920827c5a8a43e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-240114 | `0x40693bc9f8d986e6ed1291293e620b71f63b06e7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-240115 | `0x460494af61bcb92b59797b4e09c26a5adecb2da2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4df8ba330d1fadfd2c4ece1b464b38c34f900d72` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-240119 | `0x51afd3ed66b07dff22b90de0eba20796cf948e18` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-240121 | `0x56c5892b0cf41b792217ccdd208f0fa85b178ca9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-240122 | `0x5a5e77f566079168706a9887172dda37d7b7a4fb` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-240123 | `0x5c5ab8fd8f40ad624e531fedf227ff60c5164d32` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-240128 | `0x6c971ddef3e910a786472a957108757bf7728c8c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-240129 | `0x70312a3e8b94a8023b2e0afe193b1939978cde3d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-240130 | `0x7127bb9d9ad0f47b8da9087e634d67f3946f840e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-240134 | `0x7ad77fddef64ec8325e8d2d02c2708aa2a412ef7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-240138 | `0x880a371ce2c5dbb2eb47ec0023b358e8ae80071b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-240139 | `0x8852b132b72613a16f1e3960978a3d45c0a7c3c6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-240141 | `0x8fffffd4afb6115b954bd326cbe7b4ba576818f6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-240145 | `0x986841b77f3aa934d315d48121842e3c622e5440` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-240151 | `0xa8777c3d446fa7f0b0fc97a80c1ea1d37f1ca33e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-240152 | `0xaa3d5fc84b43219391539714be5f0681aefca23b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-240153 | `0xaa48ecbc843cf7e9a29155d112b8cb27902bd23c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-240155 | `0xaee64ce25059929c92e96d4d0fd05b958a18b5d6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-240156 | `0xb213e88f680fa41f9a910ada49ba8343f2e92c22` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-240161 | `0xbdd80028c9e4b9a2d268d2cf62fb54ec8697c68b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-240162 | `0xbe4050a73a7fb384c65e885a15c33461a4b20055` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-240164 | `0xc67d966f761e8cf13faa0a1e774425290c8453d9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc8b2b6ed837c3f8c7487aaac051249937391763e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-240167 | `0xcb210509f5ae2b3843b7fb8bb90baff9ce4f7355` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-240169 | `0xd25f964ead7bfbf07858b5bfede58f11a5a947e5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-240170 | `0xd2e4a5ac4b4da102317cf7c9a1289adf082639e2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-240178 | `0xeb48218a4c35c814c7678cbcae88c6ee037f7625` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-240181 | `0xf47bb65fb0886be183db541afce555345e3e1885` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-240182 | `0xf7d85ec4e7710f71992752eac2111312e73e9c9c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-240183 | `0xfaed20b307a6789481ee383adc10b9b0090b1157` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sonic | unit-240187 | `0x02e9bae63509ff46248daddd4041e67ed851f95c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sonic | unit-240188 | `0x051589975909644bee7c33c037a7d2009c8f1839` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sonic | unit-240189 | `0x054c80b91b39fc4f84ef0ecd53bbb53163229795` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sonic | unit-240198 | `0x3682168023e6ba8d1f995fda1d920827c5a8a43e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sonic | unit-240199 | `0x38b9717cf28d8bfde7b40fe2c0a703ed457555d0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sonic | unit-240205 | `0x56c5892b0cf41b792217ccdd208f0fa85b178ca9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sonic | unit-240206 | `0x5a5e77f566079168706a9887172dda37d7b7a4fb` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sonic | unit-240207 | `0x5c5ab8fd8f40ad624e531fedf227ff60c5164d32` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sonic | unit-240208 | `0x5d3d9ec8da7857928ea0a00c0241e914f9a816bf` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sonic | unit-240214 | `0x7127bb9d9ad0f47b8da9087e634d67f3946f840e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sonic | unit-240215 | `0x727bc187150d5599e7fba32732c21c6d9f5b1837` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sonic | unit-240217 | `0x7a2fd34e4cc4c8b1023576a3f3d1f7aa36cf8b47` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sonic | unit-240218 | `0x7ad77fddef64ec8325e8d2d02c2708aa2a412ef7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sonic | unit-240222 | `0x880a371ce2c5dbb2eb47ec0023b358e8ae80071b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sonic | unit-240223 | `0x8b98e46421898437862de44aa63b73b2da69147b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sonic | unit-240224 | `0x8e0fa0076e67b105ad4645522d73ecd801beff12` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sonic | unit-240228 | `0x986841b77f3aa934d315d48121842e3c622e5440` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sonic | unit-240230 | `0x9b4aa6ba7ab3a08980a68244d5c5c1c46756b66d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sonic | unit-240232 | `0xa8777c3d446fa7f0b0fc97a80c1ea1d37f1ca33e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sonic | unit-240233 | `0xaa3d5fc84b43219391539714be5f0681aefca23b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sonic | unit-240235 | `0xae65fd1cf583962a104cf7f68a04c7256b5a16eb` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sonic | unit-240237 | `0xb213e88f680fa41f9a910ada49ba8343f2e92c22` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sonic | unit-240239 | `0xb6f498c8212bad07369b87fc0590fe6e2084ae86` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sonic | unit-240241 | `0xbb155f15d8452139d1a9c3a664847d2f8314c18e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sonic | unit-240242 | `0xbdd80028c9e4b9a2d268d2cf62fb54ec8697c68b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sonic | unit-240243 | `0xbe4050a73a7fb384c65e885a15c33461a4b20055` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sonic | unit-240244 | `0xc67d966f761e8cf13faa0a1e774425290c8453d9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sonic | unit-240246 | `0xcb2c0168bf3440f5f342ed685dfdfd06a4607edc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sonic | unit-240247 | `0xd25f964ead7bfbf07858b5bfede58f11a5a947e5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sonic | unit-240249 | `0xd6587e78d252e630d425ecd827017bf81b0ac553` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | sonic | unit-240251 | `0xe4372db43d2814750a19b93950157ad81d93674a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sonic | unit-240256 | `0xefd7d5471839e8cf1ee4cd6078de720262b705e9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sonic | unit-240258 | `0xf47bb65fb0886be183db541afce555345e3e1885` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sonic | unit-240259 | `0xf7d85ec4e7710f71992752eac2111312e73e9c9c` | ❓ Unverified |

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
| ethereum | `0x9676e697399581ab288844cde5f73d0887ec18e0` | CircuitBreaker | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xcb170bc873b3a1f69f433c25a4b6d0fd4d4d90de` | CircuitBreaker | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0x9676e697399581ab288844cde5f73d0887ec18e0` | CircuitBreaker | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xdc86ad63ca7db1d8b703598b0735c08d5374c7ea` | CircuitBreakerGuardian | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0xdc86ad63ca7db1d8b703598b0735c08d5374c7ea` | CircuitBreakerGuardian | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x765224780ad888285b03af221f528d0a6824994d` | CircuitBreakerOperator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0x765224780ad888285b03af221f528d0a6824994d` | CircuitBreakerOperator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0x6ec218fc45ac0c7b83d16557befabb62ed7455ae` | DeltaNeutralStakingStrategy | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xea95e4636badc00881f8f73a0623b0fe8627b6da` | EpochRewardsVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0x5aee4b34df62790581e2f2c31468ddfd7020e841` | EpochRewardsVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x5dd1a7a369e8273371d2dbf9d83356057088082c` | FT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x5dd1a7a369e8273371d2dbf9d83356057088082c` | FT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0x5dd1a7a369e8273371d2dbf9d83356057088082c` | FT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x5dd1a7a369e8273371d2dbf9d83356057088082c` | FT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0x5dd1a7a369e8273371d2dbf9d83356057088082c` | FT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xa09d08e5a850b26d39ea2a69f8f99fd8aa1359eb` | ftACL | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x095d8b8d4503d590f647343f7cd880fa2abbbf59` | ftYieldWrapper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x267df6b637ddcaa7763d94b64ebe09f01b07cb36` | ftYieldWrapper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x9d96bac8a4e9a5b51b5b262f316c4e648e44e305` | ftYieldWrapper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xa143a9c486a1a4aaf54faeff7252cece2d337573` | ftYieldWrapper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xe5270e0458f58b83db3d90aa6a616173c98c97b6` | ftYieldWrapper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xe6880fc961b1235c46552e391358a270281b5625` | ftYieldWrapper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0x267df6b637ddcaa7763d94b64ebe09f01b07cb36` | ftYieldWrapper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x28cca8eea2cd0498ce91a9da15772a1ce42347d6` | ftYieldWrapperV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x6aaf84563cdb03a22cd92ee2553698bee87e837d` | ftYieldWrapperV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xb44a9c40efc05eb014effeac3cbed6a31f8cb87f` | ftYieldWrapperV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0x0237a67db9d55b2e0f2b25a137ea15e4c497ab6a` | ftYieldWrapperV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0x9acdce593888e52ec7cf70e3d22f0cf50682cd0b` | ftYieldWrapperV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x8263a07504d93cb95e0a74f3627bb15faaf140e2` | LeverageRfqEngine | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0x8263a07504d93cb95e0a74f3627bb15faaf140e2` | LeverageRfqEngine | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x09cd852f47aca224ee6b4accc29bd2694f29ef69` | LongTailIRM | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0x09cd852f47aca224ee6b4accc29bd2694f29ef69` | LongTailIRM | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x07ec8583b1bc7d97646409a2b51ddbed6725d12f` | MajorIRM | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0x07ec8583b1bc7d97646409a2b51ddbed6725d12f` | MajorIRM | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x3633eb60d08756674472e2d34d6ffb5f4c1c29f2` | MetaActions | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0x3633eb60d08756674472e2d34d6ffb5f4c1c29f2` | MetaActions | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x4f83ac5c8a79986d0916a8849730d9cef63a3497` | MetaSessionActions | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0x4f83ac5c8a79986d0916a8849730d9cef63a3497` | MetaSessionActions | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0x0c6f8ec81c3ea5bff06f6cd0791780f9f050ee31` | MintAndRedeem | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xa4215daaf3745e14e96e169e0e7706c479ce04f2` | pFT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x31248663adccdbcad155555b7717697b76cf570c` | pFTMarketplace | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x90ae2cac15f8d58a258f7b4a243657754469922a` | PutManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xba49d0ac42f4fba4e24a8677a22218a4df75ebaa` | PutManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x823a97a2c32985e0f5457fc8103f36698d1f53f4` | RelayerAuth | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0x823a97a2c32985e0f5457fc8103f36698d1f53f4` | RelayerAuth | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xeb00b335ca52216fb60fdffa361397367c39dc32` | RfqEngine | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0xeb00b335ca52216fb60fdffa361397367c39dc32` | RfqEngine | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x3253739a68640e308c8209384bb44e4ada38710d` | StableIRM | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0x3253739a68640e308c8209384bb44e4ada38710d` | StableIRM | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 104 |
| upstream | 19 |
| standard_library | 3 |
| needs_review | 72 |

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
