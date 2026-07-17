# Agentic Audit Brief: Suzaku

## Project Overview

- Project: Suzaku (`suzaku`)
- Website: [https://www.suzaku.network/](https://www.suzaku.network/)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:59.151Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-43c7
- Chains: avalanche
- Contract surface: 52 unique implementations (102 raw deployments)
- DeFi Llama TVL: $1,010,414.75
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Restaking. Structurally: 25 project-authored contract(s) across 1 chain(s); 1 ERC4626 vault, 4 ERC20 tokens; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 6 functional families. Its contracts share 12 common project-authored base contract(s) (erc20upgradeable, contextupgradeable, reentrancyguardupgradeable). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 103; live-surface contracts included: 101 (74 live, 27 unknown).
- Excluded by liveness: 2 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 2/24 (8.3%)
- Deployed-live implementations: 25 of 52 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 2/25
- Verified + Unaudited implementations: 23
- Verified by bytecode match: 0
- Unverified implementations: 27
- Unique implementations: 52
- Raw deployments: 102
- Audits discovered: 2 (2 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-05 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 2 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 2 match-unverified
- Tier 1 coverage: 8.3% (ChainSecurity)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| ChainSecurity | Tier 1 | 2 | 8.0% | 2024-05 |

## Contract Surface

### ✅ Verified + Audited (2)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| DefaultCollateral | unknown | avalanche | n/a | 8 deployments: avalanche [`0x0cec099933f0da490dff91724b02e2203faaf9af`](./contracts/avalanche-43114/0x0cec099933f0da490dff91724b02e2203faaf9af/); avalanche `0x1d8bd363922465246a91b7699e7b32babf5fef62`; avalanche `0x203e9101e09dc87ce391542e705a07522d19df0d`; avalanche `0x51111e1f63d3341573882c0ed844e0876efd634d`; avalanche `0x8f1dea444380a2ddc5e6669f508d235401caee5f`; avalanche `0xa53e127bfd9c4d0310858d9d5fcdf1d2617d4c41`; avalanche `0xc96d4958f69db878190ec661ede04657458dce5a`; avalanche `0xe3c983013b8c5830d866f550a28fd7ed4393d5b7` | ✅ Audited |
| DefaultCollateralFactory | registry | avalanche | n/a | [`0xe5296638aa86bd4175d802a210e158688e41a93c`](./contracts/avalanche-43114/0xe5296638aa86bd4175d802a210e158688e41a93c/) | ✅ Audited |

### ⚠️ Verified + Unaudited (23)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AlgebraPool | core_logic | avalanche | n/a | [`0x9ee7478ddf586d19bd946bc4ad7f523a4bf995de`](./contracts/avalanche-43114/0x9ee7478ddf586d19bd946bc4ad7f523a4bf995de/) | ⚠️ Unaudited |
| AvalancheL1Middleware | unknown | avalanche | n/a | 8 deployments: avalanche [`0x1bdc44dd7195b067b945bc8d034b592aff2427a7`](./contracts/avalanche-43114/0x1bdc44dd7195b067b945bc8d034b592aff2427a7/); avalanche `0x3fc5101a5d022e1af9d71cc47417d66c1b56f00b`; avalanche `0x4817d2239ce85313a2a9393ef844d19ef9636710`; avalanche `0x881f38357a3169314725fcbe54af284a79cbb037`; avalanche `0x8d453f8401e84356811b52191236c44d67791830`; avalanche `0x9411307279456450abf9b5181aa7a02271f0dc34`; avalanche `0xa6170c9bf2de9df5cbadc0f2a33a923031a7e14b`; avalanche `0xbd02b12fc87bf9e75083b218e4d7a5b2f52b26f4` | ⚠️ Unaudited |
| BalancerValidatorManager | governance | avalanche | n/a | [`0xcff0fc701ef47d6217fdf9def903990b7afa8ac7`](./contracts/avalanche-43114/0xcff0fc701ef47d6217fdf9def903990b7afa8ac7/) | ⚠️ Unaudited |
| BoringVault | core_logic | avalanche | n/a | 3 deployments: avalanche [`0x72ab674ec8fb2b2626cf48131fe34fc95075d9b5`](./contracts/avalanche-43114/0x72ab674ec8fb2b2626cf48131fe34fc95075d9b5/); avalanche `0xdf788ad40181894da035b827cdf55c523bf52f67`; avalanche `0xe684f692bdf5b3b0db7e8e31a276de8a2e9f0025` | ⚠️ Unaudited |
| DelegatorFactory | registry | avalanche | n/a | [`0x657741f081e7c7ea74cabb8e9c9004c913c8c2be`](./contracts/avalanche-43114/0x657741f081e7c7ea74cabb8e9c9004c913c8c2be/) | ⚠️ Unaudited |
| L1Registry | registry | avalanche | n/a | [`0xaa59b19a7636bf6d821aa124a14eee6c92746110`](./contracts/avalanche-43114/0xaa59b19a7636bf6d821aa124a14eee6c92746110/) | ⚠️ Unaudited |
| L1RestakeDelegator | unknown | avalanche | n/a | 2 deployments: avalanche [`0x8264147715e6da0900c11143c6e5879aa6598096`](./contracts/avalanche-43114/0x8264147715e6da0900c11143c6e5879aa6598096/); avalanche `0xd90a725005d529a6fda8f78dbeb8ae979d3273ef` | ⚠️ Unaudited |
| LSTWrapper | unknown | avalanche | n/a | 2 deployments: avalanche [`0x119c46aea0ce94603719c2dd4077a5716b16b68c`](./contracts/avalanche-43114/0x119c46aea0ce94603719c2dd4077a5716b16b68c/); avalanche `0xa1c16af728c7e897ddbdc15ea34b34c222438c7e` | ⚠️ Unaudited |
| LSTWrapperFactory | registry | avalanche | n/a | 2 deployments: avalanche [`0x6389b838d11a04ad68c56a9bf0a569c041dfefcb`](./contracts/avalanche-43114/0x6389b838d11a04ad68c56a9bf0a569c041dfefcb/); avalanche `0xd096f41fe118814e3a88d0c0c7e8bf25d5535a77` | ⚠️ Unaudited |
| MiddlewareVaultManager | core_logic | avalanche | n/a | 26 deployments: avalanche [`0x08c1512f016ac9c1f7a3fff0c457d23010a64f81`](./contracts/avalanche-43114/0x08c1512f016ac9c1f7a3fff0c457d23010a64f81/); avalanche `0x14d4fe210de7c1ff2f1954e66d0fbae593d23a76`; avalanche `0x21a2b3dc07c4bf080d73bfd738a3591da209f328`; avalanche `0x239023c70d1b1daeb674c912b6ef1ed08372bff8`; avalanche `0x2d4c52ddec04319cbbbebf762d31c277bef96a66`; avalanche `0x348d6792303a8e5b2def7ca903a59e6816b8b082`; avalanche `0x382db98dc599110843e6b26a0a110e4a76c080dd`; avalanche `0x3d078db8008e762160d2fc061d6b85048900559a`; avalanche `0x430d6094fe512f8b5a7a4445e49899744786faed`; avalanche `0x6a121283b5f6440ef9ae6ffd34a0928cddfe4d41`; avalanche `0x763afae118025003656dbe7a4e4fc94d77c1fad9`; avalanche `0x7e844ef5d0dc7ab538ef5fe2e5be62c337fadb0d`; avalanche `0x81a170d95adad2f314f12189e8348d26a6b38b52`; avalanche `0x91e112b7bdd7b58ebbf7e1281c5dbd736e36e329`; avalanche `0xb2a341e10a95d35178cdc910e42d53fe4f2c083f`; avalanche `0xbb26769357a84d38ab02fc58f6b26dbbd68d8a6f`; avalanche `0xbb9f2008eb0f23301fcae2ed89ca0896d0f4d84f`; avalanche `0xbd1550095864a7cfb1eb2bf0abed5a51d6d8dfbf`; avalanche `0xc3b4d915996295b83a77e31324d35eafae4aa5b8`; avalanche `0xc5f945b97116e63b3307d0838e6f934a67dca1b4`; avalanche `0xcc0bd188a379c2445c77c4164f74bfe9196a2129`; avalanche `0xcf29f0e048c630637067b4dcffbf5bd4aad2c418`; avalanche `0xd8e7db027557163de8559397694ee11771648592`; avalanche `0xea47a277ea2ceb66bfaec66a4cdd23f056153e4d`; avalanche `0xf34617afeabd6cd48c1b0e04a88c73444966e189`; avalanche `0xfd9387fd1445df70359a915720d6215f1327b408` | ⚠️ Unaudited |
| OperatorL1OptInService | unknown | avalanche | n/a | [`0x48a990a31ec2b994a54f248bfd560954991fa574`](./contracts/avalanche-43114/0x48a990a31ec2b994a54f248bfd560954991fa574/) | ⚠️ Unaudited |
| OperatorRegistry | registry | avalanche | n/a | [`0xcccb4ec6408bf2c9d057d63dab01e55bb536936e`](./contracts/avalanche-43114/0xcccb4ec6408bf2c9d057d63dab01e55bb536936e/) | ⚠️ Unaudited |
| OperatorVaultOptInService | core_logic | avalanche | n/a | [`0xe437b5efa4c0717ec15aced13a82bbd8ce92da47`](./contracts/avalanche-43114/0xe437b5efa4c0717ec15aced13a82bbd8ce92da47/) | ⚠️ Unaudited |
| PoASecurityModule | unknown | avalanche | n/a | [`0x01daeb143b95372fc7bfc37187160739be56fafd`](./contracts/avalanche-43114/0x01daeb143b95372fc7bfc37187160739be56fafd/) | ⚠️ Unaudited |
| RewardsNativeToken | unknown | avalanche | n/a | 2 deployments: avalanche [`0x0f388c7c6201014ad836400e9e2ebd211bdbcb00`](./contracts/avalanche-43114/0x0f388c7c6201014ad836400e9e2ebd211bdbcb00/); avalanche `0x430e1e8324b0a271aa0164cecb8b5f86d1d1d077` | ⚠️ Unaudited |
| RewardsNativeToken | unknown | avalanche | n/a | 2 deployments: avalanche [`0x3d03302456d9d9f1a6760898e4d25128425d6d32`](./contracts/avalanche-43114/0x3d03302456d9d9f1a6760898e4d25128425d6d32/); avalanche `0xff5d885e58ba4845ace17a3124d4e8a7639efdd4` | ⚠️ Unaudited |
| SlasherFactory | registry | avalanche | n/a | [`0x2eb000900452bcf56f607480f4872c07d45f4415`](./contracts/avalanche-43114/0x2eb000900452bcf56f607480f4872c07d45f4415/) | ⚠️ Unaudited |
| SuzakuToken | token | avalanche | n/a | [`0x451532f1c9eb7e4dc2d493db52b682c0acf6f5ef`](./contracts/avalanche-43114/0x451532f1c9eb7e4dc2d493db52b682c0acf6f5ef/) | ⚠️ Unaudited |
| UptimeTracker | unknown | avalanche | n/a | 2 deployments: avalanche [`0x2e04257da6a8a835c0aeb6d40b9fd4b04f698639`](./contracts/avalanche-43114/0x2e04257da6a8a835c0aeb6d40b9fd4b04f698639/); avalanche `0xd6ecff67596ccb2d03a5f5c8219f1c27f244ceaf` | ⚠️ Unaudited |
| VaultFactory | registry | avalanche | n/a | [`0x3e669b3aec2227f1454cdad4b475a636e575694a`](./contracts/avalanche-43114/0x3e669b3aec2227f1454cdad4b475a636e575694a/) | ⚠️ Unaudited |
| VaultHelper | core_logic | avalanche | n/a | 3 deployments: avalanche [`0x76e0b9d2c716840f597b3af1e2833f4b4098402a`](./contracts/avalanche-43114/0x76e0b9d2c716840f597b3af1e2833f4b4098402a/); avalanche `0x9677f7e5fd716eab3e8efed53fe22cb8968d95b8`; avalanche `0x9985e09bef1f6729c89326a271b2ed5ebd1bf970` | ⚠️ Unaudited |
| VaultTokenized | unknown | avalanche | n/a | [`0xce634fa642d482be2f60d1bed91414aae6e2f8ed`](./contracts/avalanche-43114/0xce634fa642d482be2f60d1bed91414aae6e2f8ed/) | ⚠️ Unaudited |
| VestingWallet | operational_periphery | avalanche | n/a | 2 deployments: avalanche [`0x42de24a11f50e66b755056c3daa832c5cbfc1aa0`](./contracts/avalanche-43114/0x42de24a11f50e66b755056c3daa832c5cbfc1aa0/); avalanche `0x9afb65e1442efbdb98db3faeebea9917c09bef1f` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (27)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | avalanche | n/a | `0x073626307495906092cf7a631a637dd65eb03b3a` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x128af5b8ec993addbd1989bf286829cae7ed6d13` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x21de609da4fc01647c38a796a9aee87411a5632a` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x2385be9090007e31f3841e3703570c1f70087ff6` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x4537f57d50793d57b084b58748369b5121d79c13` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x49c0d6cb3caf5e88fbbbc249e81fbb6d07b441ac` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x4df49fd5f47092ef15793ece662edc11af506a33` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x5681e870dc53f696844912dddad7e72840dbd327` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x78e17cfe85990950415f74a145c1cbbdb07083fb` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x79aca80d0da218130f06d6c088ec532881893171` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x82dec770fbb9e915ac539b0f6ca0980e0093393b` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x879436d48c6c50fab94a6974683f64e4f7bc3876` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x8ee73cfefd83830343d2d367ccf6d9143e4e9c02` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x963fd13dab23e928de5026000f914126151d3779` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xa24a69245860d5ce24b2ba8c966da0cbe33b2f82` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xa2767ef083b2bfc3331341cde3943ae69e5fbd6b` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xa59bea66b2323e97506645d52a4c6f4531bdb626` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xb297992b980cc06577e854f47575bc45410ad0b1` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xb322a6a55d1f541b61de41eec7d42f4997e4e78d` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xc504d563b7d7f2e83f9b8c339367f4e87d5efb7b` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xcffcba13ea63b9149ac60a62f6cd102f111ed685` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xd3ebe00b5ff10b99af57c6834a3cb258818d6220` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xdd7011f0400ed17ea55c8b6845d4bd7769c7eae0` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xec25e1a08833a3b39fc53243f87291126c366337` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xf385b2e215efc30b1c2b06a1167879fe22f69574` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xf8a6b2958692ab050517cc1d4337416485e3453b` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xfe9f3a8f004964d7ea843ee725ad972f0fca0cc9` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [ChainSecurity_DefaultCollateral.pdf](https://github.com/symbioticfi/collateral/blob/main/audits/ChainSecurity_DefaultCollateral.pdf) | ChainSecurity | Audit | 2024-05 | stale | Direct | contract_name | 2 | n/a |
| [Statemind_DefaultCollateral.pdf](https://github.com/symbioticfi/collateral/blob/main/audits/Statemind_DefaultCollateral.pdf) | Statemind | Audit | 2024-05 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| avalanche | [`0x9ee7478ddf586d19bd946bc4ad7f523a4bf995de`](./contracts/avalanche-43114/0x9ee7478ddf586d19bd946bc4ad7f523a4bf995de/) | AlgebraPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x1bdc44dd7195b067b945bc8d034b592aff2427a7`](./contracts/avalanche-43114/0x1bdc44dd7195b067b945bc8d034b592aff2427a7/) | AvalancheL1Middleware | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x72ab674ec8fb2b2626cf48131fe34fc95075d9b5`](./contracts/avalanche-43114/0x72ab674ec8fb2b2626cf48131fe34fc95075d9b5/) | BoringVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x657741f081e7c7ea74cabb8e9c9004c913c8c2be`](./contracts/avalanche-43114/0x657741f081e7c7ea74cabb8e9c9004c913c8c2be/) | DelegatorFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xaa59b19a7636bf6d821aa124a14eee6c92746110`](./contracts/avalanche-43114/0xaa59b19a7636bf6d821aa124a14eee6c92746110/) | L1Registry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x8264147715e6da0900c11143c6e5879aa6598096`](./contracts/avalanche-43114/0x8264147715e6da0900c11143c6e5879aa6598096/) | L1RestakeDelegator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x119c46aea0ce94603719c2dd4077a5716b16b68c`](./contracts/avalanche-43114/0x119c46aea0ce94603719c2dd4077a5716b16b68c/) | LSTWrapper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x6389b838d11a04ad68c56a9bf0a569c041dfefcb`](./contracts/avalanche-43114/0x6389b838d11a04ad68c56a9bf0a569c041dfefcb/) | LSTWrapperFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x08c1512f016ac9c1f7a3fff0c457d23010a64f81`](./contracts/avalanche-43114/0x08c1512f016ac9c1f7a3fff0c457d23010a64f81/) | MiddlewareVaultManager | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x48a990a31ec2b994a54f248bfd560954991fa574`](./contracts/avalanche-43114/0x48a990a31ec2b994a54f248bfd560954991fa574/) | OperatorL1OptInService | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xcccb4ec6408bf2c9d057d63dab01e55bb536936e`](./contracts/avalanche-43114/0xcccb4ec6408bf2c9d057d63dab01e55bb536936e/) | OperatorRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xe437b5efa4c0717ec15aced13a82bbd8ce92da47`](./contracts/avalanche-43114/0xe437b5efa4c0717ec15aced13a82bbd8ce92da47/) | OperatorVaultOptInService | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x01daeb143b95372fc7bfc37187160739be56fafd`](./contracts/avalanche-43114/0x01daeb143b95372fc7bfc37187160739be56fafd/) | PoASecurityModule | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x0f388c7c6201014ad836400e9e2ebd211bdbcb00`](./contracts/avalanche-43114/0x0f388c7c6201014ad836400e9e2ebd211bdbcb00/) | RewardsNativeToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x3d03302456d9d9f1a6760898e4d25128425d6d32`](./contracts/avalanche-43114/0x3d03302456d9d9f1a6760898e4d25128425d6d32/) | RewardsNativeToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x2eb000900452bcf56f607480f4872c07d45f4415`](./contracts/avalanche-43114/0x2eb000900452bcf56f607480f4872c07d45f4415/) | SlasherFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x451532f1c9eb7e4dc2d493db52b682c0acf6f5ef`](./contracts/avalanche-43114/0x451532f1c9eb7e4dc2d493db52b682c0acf6f5ef/) | SuzakuToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x2e04257da6a8a835c0aeb6d40b9fd4b04f698639`](./contracts/avalanche-43114/0x2e04257da6a8a835c0aeb6d40b9fd4b04f698639/) | UptimeTracker | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x3e669b3aec2227f1454cdad4b475a636e575694a`](./contracts/avalanche-43114/0x3e669b3aec2227f1454cdad4b475a636e575694a/) | VaultFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x76e0b9d2c716840f597b3af1e2833f4b4098402a`](./contracts/avalanche-43114/0x76e0b9d2c716840f597b3af1e2833f4b4098402a/) | VaultHelper | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xce634fa642d482be2f60d1bed91414aae6e2f8ed`](./contracts/avalanche-43114/0xce634fa642d482be2f60d1bed91414aae6e2f8ed/) | VaultTokenized | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x42de24a11f50e66b755056c3daa832c5cbfc1aa0`](./contracts/avalanche-43114/0x42de24a11f50e66b755056c3daa832c5cbfc1aa0/) | VestingWallet | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 24 |
| upstream | 1 |
| standard_library | 0 |
| needs_review | 27 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: contract_name=2

Zero-match audit list:

- [14292] Statemind_DefaultCollateral.pdf

Fork inheritance lineage and inherited audits are included when available.
