# Agentic Audit Brief: Suzaku

## Export Authority

- Production state: **published scope**
- Raw selected rows: 1 across 1 audit(s)
- Eligible audit results: 2 (1 matched; 1 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `f59b0c07e38ecec2d34eb2896e4262470519ed280e5a0a28b0f46fc69c79a374`

## Project Overview

- Project: Suzaku (`suzaku`)
- Website: [https://www.suzaku.network/](https://www.suzaku.network/)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: avalanche
- Contract surface: 67 unique implementations (106 raw deployments)
- Coverage basis: 1/24 confirmed own live verified implementations (4.2%); conservative 4.2% with 0 needs-review implementation(s)
- DeFi Llama TVL: $1,010,414.75
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Suzaku. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 25 contract row(s) across avalanche. Structural roles: 15 core, 8 supporting, 2 unclassified. 16 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 25
- Structural roles: core (15), supporting (8), unclassified (2)
- Contract kinds: contract (25)
- Detected standards: erc20 (9), ownable (7), erc165 (5), accesscontrol (2), erc1967proxy (1)
- Frameworks: openzeppelin (22), openzeppelin-upgradeable (16), permit2 (9)
- Upgradeable-pattern rows: 16

## Fork Lineage

This project reuses audited code from **Symbiotic** (`symbiotic`) in the DefaultCollateral subsystem.
2 audits inherited from `symbiotic`, scoped to that subsystem.

Total inherited audits: 2. Inherited coverage reflects forked/shared code audited by the origin project — it is not a direct audit of this project.

## Fork Analysis

8 of 26 contracts are derived from known codebases. 18 contracts have no detected origin.

### Forked Contracts

**DefaultCollateral** (`0x0cec099933f0da490dff91724b02e2203faaf9af`, chain 43114)
Origin: mantle-restaking (`0x475d3e...7c304a`)
Containment: 100.0% - 17 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**DefaultCollateral** (`0x1d8bd363922465246a91b7699e7b32babf5fef62`, chain 43114)
Origin: mantle-restaking (`0x475d3e...7c304a`)
Containment: 100.0% - 17 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**DefaultCollateral** (`0x203e9101e09dc87ce391542e705a07522d19df0d`, chain 43114)
Origin: mantle-restaking (`0x475d3e...7c304a`)
Containment: 100.0% - 17 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**DefaultCollateral** (`0x51111e1f63d3341573882c0ed844e0876efd634d`, chain 43114)
Origin: mantle-restaking (`0x475d3e...7c304a`)
Containment: 100.0% - 17 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**DefaultCollateral** (`0x8f1dea444380a2ddc5e6669f508d235401caee5f`, chain 43114)
Origin: mantle-restaking (`0x475d3e...7c304a`)
Containment: 100.0% - 17 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**DefaultCollateral** (`0xa53e127bfd9c4d0310858d9d5fcdf1d2617d4c41`, chain 43114)
Origin: mantle-restaking (`0x475d3e...7c304a`)
Containment: 100.0% - 17 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**DefaultCollateral** (`0xc96d4958f69db878190ec661ede04657458dce5a`, chain 43114)
Origin: mantle-restaking (`0x475d3e...7c304a`)
Containment: 100.0% - 17 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**DefaultCollateral** (`0xe3c983013b8c5830d866f550a28fd7ed4393d5b7`, chain 43114)
Origin: mantle-restaking (`0x475d3e...7c304a`)
Containment: 100.0% - 17 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x093783055f9047c2bff99c4e414501f8a147bc69`, chain 43114)
- UnnamedContract (`0xc9a25f0a8436de76e999787bd509edba0d2471a2`, chain 43114)
- UnnamedContract (`0xdc1c4428f3145286f262980d36c640285c0da403`, chain 43114)
- AvalancheL1Middleware (`0x9411307279456450abf9b5181aa7a02271f0dc34`, chain 43114)
- DefaultCollateralFactory (`0xe5296638aa86bd4175d802a210e158688e41a93c`, chain 43114)
- DelegatorFactory (`0x657741f081e7c7ea74cabb8e9c9004c913c8c2be`, chain 43114)
- L1Registry (`0xaa59b19a7636bf6d821aa124a14eee6c92746110`, chain 43114)
- L1RestakeDelegator (`0xd90a725005d529a6fda8f78dbeb8ae979d3273ef`, chain 43114)
- LSTWrapperFactory (`0xd096f41fe118814e3a88d0c0c7e8bf25d5535a77`, chain 43114)
- OperatorL1OptInService (`0x48a990a31ec2b994a54f248bfd560954991fa574`, chain 43114)
- OperatorRegistry (`0xcccb4ec6408bf2c9d057d63dab01e55bb536936e`, chain 43114)
- OperatorVaultOptInService (`0xe437b5efa4c0717ec15aced13a82bbd8ce92da47`, chain 43114)
- PoASecurityModule (`0x01daeb143b95372fc7bfc37187160739be56fafd`, chain 43114)
- SlasherFactory (`0x2eb000900452bcf56f607480f4872c07d45f4415`, chain 43114)
- SuzakuToken (`0x451532f1c9eb7e4dc2d493db52b682c0acf6f5ef`, chain 43114)
- TransparentUpgradeableProxy (`0xcff0fc701ef47d6217fdf9def903990b7afa8ac7`, chain 43114)
- VaultFactory (`0x3e669b3aec2227f1454cdad4b475a636e575694a`, chain 43114)
- VaultHelper (`0x9985e09bef1f6729c89326a271b2ed5ebd1bf970`, chain 43114)

## Contract Surface Quality

- Logic-topography rows: 25; live-surface rows included: 25 (25 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 27/27 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 1/24 (4.2%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 27 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 40 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 4
- Confirmed-live implementations: 27 of 67 unique; 40 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 1/37
- Verified + Unaudited implementations: 36
- Verified by bytecode match: 0
- Unverified implementations: 30
- Unique implementations: 67
- Raw deployments: 106
- Audits discovered: 2 (0 direct, 2 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-05 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 2 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 1 match-unverified
- Tier 1 coverage: 4.2% (ChainSecurity)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| ChainSecurity | Tier 1 | 1 | 2.7% | 2024-05 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| DefaultCollateralFactory | registry | project_anchor | own_supporting | 0 | avalanche | unit-393598 | `0xe5296638aa86bd4175d802a210e158688e41a93c` | ✅ Audited |

### ⚠️ Verified + Unaudited (36)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AlgebraPool | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x9ee7478ddf586d19bd946bc4ad7f523a4bf995de` | ⚠️ Unaudited |
| AvalancheL1Middleware | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 7 deployments: avalanche `0x1bdc44dd7195b067b945bc8d034b592aff2427a7`; avalanche `0x3fc5101a5d022e1af9d71cc47417d66c1b56f00b`; avalanche `0x4817d2239ce85313a2a9393ef844d19ef9636710`; avalanche `0x881f38357a3169314725fcbe54af284a79cbb037`; avalanche `0x8d453f8401e84356811b52191236c44d67791830`; avalanche `0xa6170c9bf2de9df5cbadc0f2a33a923031a7e14b`; avalanche `0xbd02b12fc87bf9e75083b218e4d7a5b2f52b26f4` | ⚠️ Unaudited |
| AvalancheL1Middleware | unknown | project_anchor | own_supporting | 0 | avalanche | unit-393574 | `0x9411307279456450abf9b5181aa7a02271f0dc34` | ⚠️ Unaudited |
| BalancerValidatorManager | governance | project_anchor | own_supporting | 1 | avalanche | unit-393603 | `0xcff0fc701ef47d6217fdf9def903990b7afa8ac7` | ⚠️ Unaudited |
| BoringVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 3 deployments: avalanche `0x72ab674ec8fb2b2626cf48131fe34fc95075d9b5`; avalanche `0xdf788ad40181894da035b827cdf55c523bf52f67`; avalanche `0xe684f692bdf5b3b0db7e8e31a276de8a2e9f0025` | ⚠️ Unaudited |
| DefaultCollateral | unknown | project_anchor | own_supporting | 0 | avalanche | unit-393555 | `0x0cec099933f0da490dff91724b02e2203faaf9af` | ⚠️ Unaudited |
| DefaultCollateral | unknown | project_anchor | own_supporting | 0 | avalanche | unit-393557 | `0x1d8bd363922465246a91b7699e7b32babf5fef62` | ⚠️ Unaudited |
| DefaultCollateral | unknown | project_anchor | own_supporting | 0 | avalanche | unit-393559 | `0x203e9101e09dc87ce391542e705a07522d19df0d` | ⚠️ Unaudited |
| DefaultCollateral | unknown | project_anchor | own_supporting | 0 | avalanche | unit-393568 | `0x51111e1f63d3341573882c0ed844e0876efd634d` | ⚠️ Unaudited |
| DefaultCollateral | unknown | project_anchor | own_supporting | 0 | avalanche | unit-393572 | `0x8f1dea444380a2ddc5e6669f508d235401caee5f` | ⚠️ Unaudited |
| DefaultCollateral | unknown | project_anchor | own_supporting | 0 | avalanche | unit-393578 | `0xa53e127bfd9c4d0310858d9d5fcdf1d2617d4c41` | ⚠️ Unaudited |
| DefaultCollateral | unknown | project_anchor | own_supporting | 0 | avalanche | unit-393582 | `0xc96d4958f69db878190ec661ede04657458dce5a` | ⚠️ Unaudited |
| DefaultCollateral | unknown | project_anchor | own_supporting | 0 | avalanche | unit-393594 | `0xe3c983013b8c5830d866f550a28fd7ed4393d5b7` | ⚠️ Unaudited |
| DelegatorFactory | registry | project_anchor | own_supporting | 0 | avalanche | unit-393571 | `0x657741f081e7c7ea74cabb8e9c9004c913c8c2be` | ⚠️ Unaudited |
| L1Registry | registry | project_anchor | own_supporting | 0 | avalanche | unit-393580 | `0xaa59b19a7636bf6d821aa124a14eee6c92746110` | ⚠️ Unaudited |
| L1RestakeDelegator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x8264147715e6da0900c11143c6e5879aa6598096` | ⚠️ Unaudited |
| L1RestakeDelegator | unknown | project_anchor | own_supporting | 0 | avalanche | unit-393590 | `0xd90a725005d529a6fda8f78dbeb8ae979d3273ef` | ⚠️ Unaudited |
| LSTWrapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x017d60fbf9e82ebf77860500e052287280eef453` | ⚠️ Unaudited |
| LSTWrapper | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | 2 deployments: avalanche `0x119c46aea0ce94603719c2dd4077a5716b16b68c`; avalanche `0xa1c16af728c7e897ddbdc15ea34b34c222438c7e` | ⚠️ Unaudited |
| LSTWrapperFactory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x6389b838d11a04ad68c56a9bf0a569c041dfefcb` | ⚠️ Unaudited |
| LSTWrapperFactory | registry | project_anchor | own_supporting | 0 | avalanche | unit-393588 | `0xd096f41fe118814e3a88d0c0c7e8bf25d5535a77` | ⚠️ Unaudited |
| MiddlewareVaultManager | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 26 deployments: avalanche `0x08c1512f016ac9c1f7a3fff0c457d23010a64f81`; avalanche `0x14d4fe210de7c1ff2f1954e66d0fbae593d23a76`; avalanche `0x21a2b3dc07c4bf080d73bfd738a3591da209f328`; avalanche `0x239023c70d1b1daeb674c912b6ef1ed08372bff8`; avalanche `0x2d4c52ddec04319cbbbebf762d31c277bef96a66`; avalanche `0x348d6792303a8e5b2def7ca903a59e6816b8b082`; avalanche `0x382db98dc599110843e6b26a0a110e4a76c080dd`; avalanche `0x3d078db8008e762160d2fc061d6b85048900559a`; avalanche `0x430d6094fe512f8b5a7a4445e49899744786faed`; avalanche `0x6a121283b5f6440ef9ae6ffd34a0928cddfe4d41`; avalanche `0x763afae118025003656dbe7a4e4fc94d77c1fad9`; avalanche `0x7e844ef5d0dc7ab538ef5fe2e5be62c337fadb0d`; avalanche `0x81a170d95adad2f314f12189e8348d26a6b38b52`; avalanche `0x91e112b7bdd7b58ebbf7e1281c5dbd736e36e329`; avalanche `0xb2a341e10a95d35178cdc910e42d53fe4f2c083f`; avalanche `0xbb26769357a84d38ab02fc58f6b26dbbd68d8a6f`; avalanche `0xbb9f2008eb0f23301fcae2ed89ca0896d0f4d84f`; avalanche `0xbd1550095864a7cfb1eb2bf0abed5a51d6d8dfbf`; avalanche `0xc3b4d915996295b83a77e31324d35eafae4aa5b8`; avalanche `0xc5f945b97116e63b3307d0838e6f934a67dca1b4`; avalanche `0xcc0bd188a379c2445c77c4164f74bfe9196a2129`; avalanche `0xcf29f0e048c630637067b4dcffbf5bd4aad2c418`; avalanche `0xd8e7db027557163de8559397694ee11771648592`; avalanche `0xea47a277ea2ceb66bfaec66a4cdd23f056153e4d`; avalanche `0xf34617afeabd6cd48c1b0e04a88c73444966e189`; avalanche `0xfd9387fd1445df70359a915720d6215f1327b408` | ⚠️ Unaudited |
| OperatorL1OptInService | unknown | project_anchor | own_supporting | 0 | avalanche | unit-393566 | `0x48a990a31ec2b994a54f248bfd560954991fa574` | ⚠️ Unaudited |
| OperatorRegistry | registry | project_anchor | own_supporting | 0 | avalanche | unit-393586 | `0xcccb4ec6408bf2c9d057d63dab01e55bb536936e` | ⚠️ Unaudited |
| OperatorVaultOptInService | core_logic | project_anchor | own_supporting | 0 | avalanche | unit-393596 | `0xe437b5efa4c0717ec15aced13a82bbd8ce92da47` | ⚠️ Unaudited |
| PoASecurityModule | unknown | project_anchor | own_supporting | 0 | avalanche | unit-393551 | `0x01daeb143b95372fc7bfc37187160739be56fafd` | ⚠️ Unaudited |
| RewardsNativeToken | unknown | project_anchor | own_supporting | 1 | avalanche | unit-393600 | 2 deployments: avalanche `0x0f388c7c6201014ad836400e9e2ebd211bdbcb00`; avalanche `0x430e1e8324b0a271aa0164cecb8b5f86d1d1d077` | ⚠️ Unaudited |
| RewardsNativeToken | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | 2 deployments: avalanche `0x3d03302456d9d9f1a6760898e4d25128425d6d32`; avalanche `0xff5d885e58ba4845ace17a3124d4e8a7639efdd4` | ⚠️ Unaudited |
| SlasherFactory | registry | project_anchor | own_supporting | 0 | avalanche | unit-393561 | `0x2eb000900452bcf56f607480f4872c07d45f4415` | ⚠️ Unaudited |
| SuzakuToken | token | project_anchor | own_supporting | 0 | avalanche | unit-393564 | `0x451532f1c9eb7e4dc2d493db52b682c0acf6f5ef` | ⚠️ Unaudited |
| UptimeTracker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 2 deployments: avalanche `0x2e04257da6a8a835c0aeb6d40b9fd4b04f698639`; avalanche `0xd6ecff67596ccb2d03a5f5c8219f1c27f244ceaf` | ⚠️ Unaudited |
| VaultFactory | registry | project_anchor | own_supporting | 0 | avalanche | unit-393562 | `0x3e669b3aec2227f1454cdad4b475a636e575694a` | ⚠️ Unaudited |
| VaultHelper | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 2 deployments: avalanche `0x76e0b9d2c716840f597b3af1e2833f4b4098402a`; avalanche `0x9677f7e5fd716eab3e8efed53fe22cb8968d95b8` | ⚠️ Unaudited |
| VaultHelper | core_logic | project_anchor | own_supporting | 0 | avalanche | unit-393576 | `0x9985e09bef1f6729c89326a271b2ed5ebd1bf970` | ⚠️ Unaudited |
| VaultTokenized | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xce634fa642d482be2f60d1bed91414aae6e2f8ed` | ⚠️ Unaudited |
| VestingWallet | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 2 deployments: avalanche `0x42de24a11f50e66b755056c3daa832c5cbfc1aa0`; avalanche `0x9afb65e1442efbdb98db3faeebea9917c09bef1f` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (30)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x073626307495906092cf7a631a637dd65eb03b3a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-393553 | `0x093783055f9047c2bff99c4e414501f8a147bc69` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x128af5b8ec993addbd1989bf286829cae7ed6d13` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x21de609da4fc01647c38a796a9aee87411a5632a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x2385be9090007e31f3841e3703570c1f70087ff6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x4537f57d50793d57b084b58748369b5121d79c13` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x49c0d6cb3caf5e88fbbbc249e81fbb6d07b441ac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x4df49fd5f47092ef15793ece662edc11af506a33` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x5681e870dc53f696844912dddad7e72840dbd327` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x78e17cfe85990950415f74a145c1cbbdb07083fb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x79aca80d0da218130f06d6c088ec532881893171` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x82dec770fbb9e915ac539b0f6ca0980e0093393b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x879436d48c6c50fab94a6974683f64e4f7bc3876` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x8ee73cfefd83830343d2d367ccf6d9143e4e9c02` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x963fd13dab23e928de5026000f914126151d3779` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa24a69245860d5ce24b2ba8c966da0cbe33b2f82` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa2767ef083b2bfc3331341cde3943ae69e5fbd6b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa59bea66b2323e97506645d52a4c6f4531bdb626` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb297992b980cc06577e854f47575bc45410ad0b1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb322a6a55d1f541b61de41eec7d42f4997e4e78d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc504d563b7d7f2e83f9b8c339367f4e87d5efb7b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-393584 | `0xc9a25f0a8436de76e999787bd509edba0d2471a2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xcffcba13ea63b9149ac60a62f6cd102f111ed685` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xd3ebe00b5ff10b99af57c6834a3cb258818d6220` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-393592 | `0xdc1c4428f3145286f262980d36c640285c0da403` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xdd7011f0400ed17ea55c8b6845d4bd7769c7eae0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xec25e1a08833a3b39fc53243f87291126c366337` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xf385b2e215efc30b1c2b06a1167879fe22f69574` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xf8a6b2958692ab050517cc1d4337416485e3453b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xfe9f3a8f004964d7ea843ee725ad972f0fca0cc9` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 8
- Live contracts: 2
- Unknown liveness contracts: 6
- Source-verified contracts: 8
- Currently scope-matched contracts retained as-is: 0
- Contract rows sorted by chain, deployer, classification, contract name, then address.
- Classification counts: candidate review=6, source verified unclassified=2

| Chain | Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|---|
| avalanche | candidate review | RewardsNativeToken<br>`0x3d03302456d9d9f1a6760898e4d25128425d6d32` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xad1251198815fa263f52bdf15d172bfe1b98de37` |
| avalanche | candidate review | RewardsNativeToken<br>`0x430e1e8324b0a271aa0164cecb8b5f86d1d1d077` | retained_scope_excluded_inventory | unknown | live | verified | review: no_fresh_structural_match | `0xad1251198815fa263f52bdf15d172bfe1b98de37` |
| avalanche | candidate review | TransparentUpgradeableProxy<br>`0x0f388c7c6201014ad836400e9e2ebd211bdbcb00` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0xad1251198815fa263f52bdf15d172bfe1b98de37` |
| avalanche | candidate review | TransparentUpgradeableProxy<br>`0x119c46aea0ce94603719c2dd4077a5716b16b68c` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xad1251198815fa263f52bdf15d172bfe1b98de37` |
| avalanche | candidate review | TransparentUpgradeableProxy<br>`0xff5d885e58ba4845ace17a3124d4e8a7639efdd4` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xad1251198815fa263f52bdf15d172bfe1b98de37` |
| avalanche | candidate review | VaultTokenized<br>`0xce634fa642d482be2f60d1bed91414aae6e2f8ed` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xad1251198815fa263f52bdf15d172bfe1b98de37` |
| avalanche | source verified unclassified | LSTWrapper<br>`0x017d60fbf9e82ebf77860500e052287280eef453` | non_address_book | unknown | unknown | verified | n/a | `0xad1251198815fa263f52bdf15d172bfe1b98de37` |
| avalanche | source verified unclassified | LSTWrapper<br>`0xa1c16af728c7e897ddbdc15ea34b34c222438c7e` | non_address_book | unknown | unknown | verified | n/a | `0xad1251198815fa263f52bdf15d172bfe1b98de37` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [ChainSecurity_DefaultCollateral.pdf](https://github.com/symbioticfi/collateral/blob/main/audits/ChainSecurity_DefaultCollateral.pdf) | ChainSecurity | Audit | 2024-05 | stale | Inherited from Symbiotic — forked code, scoped to DefaultCollateral | contract_name | matched | 1 | 0 | 0 | 3 | high |
| [Statemind_DefaultCollateral.pdf](https://github.com/symbioticfi/collateral/blob/main/audits/Statemind_DefaultCollateral.pdf) | Statemind | Audit | 2024-05 | stale | Inherited from Symbiotic — forked code, scoped to DefaultCollateral | contract_name | no match | 0 | 0 | 0 | 4 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [29668] ChainSecurity_DefaultCollateral.pdf — matched: Scope section explicitly lists four contracts in src/contracts/ directory. Audit date is May 14, 2024 from cover page.
- [29670] Statemind_DefaultCollateral.pdf — no match: Scope section explicitly lists four files: Factory.sol, DefaultBond.sol, DefaultBondFactory.sol, Permit2Lib.sol. Audit date inferred from timeline '26-04-2024 - 01-05-2024' using end date.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| ChainSecurity_DefaultCollateral.pdf | Factory | unmatched — not counted | — | listed in scope table | no |
| ChainSecurity_DefaultCollateral.pdf | DefaultCollateral | ambiguous — not counted | DefaultCollateral (alternative) `0x8f1dea444380a2ddc5e6669f508d235401caee5f` — deployed 2024-10-18 23:29:10+03 — liveness: live (current_address_book_code)<br>DefaultCollateral (alternative) `0x1d8bd363922465246a91b7699e7b32babf5fef62` — deployed 2024-10-15 15:23:53+03 — liveness: live (current_address_book_code)<br>DefaultCollateral (alternative) `0x51111e1f63d3341573882c0ed844e0876efd634d` — deployed 2026-01-21 14:31:36+03 — liveness: live (code_present_context)<br>DefaultCollateral (alternative) `0xa53e127bfd9c4d0310858d9d5fcdf1d2617d4c41` — deployed 2024-09-30 12:29:04+03 — liveness: live (current_address_book_code)<br>DefaultCollateral (alternative) `0xc96d4958f69db878190ec661ede04657458dce5a` — deployed 2025-07-29 17:59:56+03 — liveness: live (current_address_book_code)<br>DefaultCollateral (alternative) `0x203e9101e09dc87ce391542e705a07522d19df0d` — deployed 2024-09-30 12:25:41+03 — liveness: live (current_address_book_code)<br>DefaultCollateral (alternative) `0xe3c983013b8c5830d866f550a28fd7ed4393d5b7` — deployed 2024-09-30 12:23:24+03 — liveness: live (current_address_book_code)<br>DefaultCollateral (alternative) `0x0cec099933f0da490dff91724b02e2203faaf9af` — deployed 2024-11-18 19:40:27+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| ChainSecurity_DefaultCollateral.pdf | DefaultCollateralFactory | own contract | DefaultCollateralFactory (selected) `0xe5296638aa86bd4175d802a210e158688e41a93c` — deployed 2024-09-30 12:18:22+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| ChainSecurity_DefaultCollateral.pdf | Permit2Lib | unmatched — not counted | — | listed in scope table (diff only) | no |
| Statemind_DefaultCollateral.pdf | Factory | unmatched — not counted | — | listed in scope | no |
| Statemind_DefaultCollateral.pdf | DefaultBond | unmatched — not counted | — | listed in scope | no |
| Statemind_DefaultCollateral.pdf | DefaultBondFactory | unmatched — not counted | — | listed in scope | no |
| Statemind_DefaultCollateral.pdf | Permit2Lib | unmatched — not counted | — | listed in scope | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| avalanche | `0x9411307279456450abf9b5181aa7a02271f0dc34` | AvalancheL1Middleware | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0x0cec099933f0da490dff91724b02e2203faaf9af` | DefaultCollateral | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0x1d8bd363922465246a91b7699e7b32babf5fef62` | DefaultCollateral | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0x203e9101e09dc87ce391542e705a07522d19df0d` | DefaultCollateral | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0x51111e1f63d3341573882c0ed844e0876efd634d` | DefaultCollateral | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0x8f1dea444380a2ddc5e6669f508d235401caee5f` | DefaultCollateral | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0xa53e127bfd9c4d0310858d9d5fcdf1d2617d4c41` | DefaultCollateral | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0xc96d4958f69db878190ec661ede04657458dce5a` | DefaultCollateral | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0xe3c983013b8c5830d866f550a28fd7ed4393d5b7` | DefaultCollateral | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0x657741f081e7c7ea74cabb8e9c9004c913c8c2be` | DelegatorFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0xaa59b19a7636bf6d821aa124a14eee6c92746110` | L1Registry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0xd90a725005d529a6fda8f78dbeb8ae979d3273ef` | L1RestakeDelegator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0xd096f41fe118814e3a88d0c0c7e8bf25d5535a77` | LSTWrapperFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0x48a990a31ec2b994a54f248bfd560954991fa574` | OperatorL1OptInService | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0xcccb4ec6408bf2c9d057d63dab01e55bb536936e` | OperatorRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0xe437b5efa4c0717ec15aced13a82bbd8ce92da47` | OperatorVaultOptInService | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0x01daeb143b95372fc7bfc37187160739be56fafd` | PoASecurityModule | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0x0f388c7c6201014ad836400e9e2ebd211bdbcb00` | RewardsNativeToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0x2eb000900452bcf56f607480f4872c07d45f4415` | SlasherFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0x451532f1c9eb7e4dc2d493db52b682c0acf6f5ef` | SuzakuToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0x3e669b3aec2227f1454cdad4b475a636e575694a` | VaultFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0x9985e09bef1f6729c89326a271b2ed5ebd1bf970` | VaultHelper | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 36 |
| upstream | 1 |
| standard_library | 0 |
| needs_review | 30 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Address-book scope dispositions: 1 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 1 ambiguous, 6 unmatched
- Matched-own operational status: 1 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=2
- Match method counts: unique_name=1

Zero-match audit list:

- [29670] Statemind_DefaultCollateral.pdf

Fork inheritance lineage and inherited audits are included when available.
