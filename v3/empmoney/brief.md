# Agentic Audit Brief: EmpMoney

## Export Authority

- Production state: **published scope**
- Raw selected rows: 6 across 1 audit(s)
- Eligible audit results: 1 (1 matched; 0 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: EmpMoney (`empmoney`)
- Website: [https://emp.money](https://emp.money)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: bsc
- Contract surface: 124 unique implementations (192 raw deployments)
- Coverage basis: 6/6 confirmed own live verified implementations (100.0%); conservative 100.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $182,080.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for EmpMoney. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 6 contract row(s) across bsc. Structural roles: 5 core, 1 supporting. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 6
- Structural roles: core (5), supporting (1)
- Contract kinds: contract (6)
- Detected standards: erc20 (3), ownable (3)
- Frameworks: openzeppelin (6)
- Upgradeable-pattern rows: 0

## Fork Analysis

1 of 18 contracts are derived from known codebases. 17 contracts have no detected origin.

### Forked Contracts

**Emp** (`0x3b248cefa87f836a4e6f6d6c9b42991b88dc1d58`, chain 56)
Origin: empmoney (`0x269765b520f22a57a8421e6c3a4fead11c399a10`)
Containment: 100.0% - 19 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x1747af98ebf0b22d500014c7dd52985d736337d2`, chain 56)
- UnnamedContract (`0x29c55f1b02a95f0b30e61976835a3eee2359ad92`, chain 56)
- UnnamedContract (`0x50a7bad86bd493c128863c4df8a830417763f2d6`, chain 56)
- UnnamedContract (`0x59f521e1c6bbcfc504b8f2ac536df4dc483bae98`, chain 56)
- UnnamedContract (`0x69ffe1cea85a766edd97c3908ba0ac60c986a9db`, chain 56)
- UnnamedContract (`0x84821bb588f049913dc579dc511e5e31eb22d5e4`, chain 56)
- UnnamedContract (`0xa27c2b2b439dea43b59060efd2d9820fbc812f97`, chain 56)
- UnnamedContract (`0xa69ac7779519f5cbcbc70940ebb1fd02623bc5f9`, chain 56)
- UnnamedContract (`0xa9ea52d60111073e34fad966c03f70684e5b205d`, chain 56)
- UnnamedContract (`0xb530d6258a217a3213b3865e2dce41905ddb4e5b`, chain 56)
- UnnamedContract (`0xbf61173522aa0a2f819d8fed2c6025f5ad3bf68b`, chain 56)
- UnnamedContract (`0xc1f655118223f0aa87240c6aaa247ba6c6625410`, chain 56)
- Boardroom (`0xe9baceea645e8be68a0b63b9764670f97a50942f`, chain 56)
- EBond (`0x7099a19da2f17bc85193b1f0e9091df014a5d520`, chain 56)
- EShare (`0xdb20f6a8665432ce895d724b417f77ecac956550`, chain 56)
- EShareRewardPool (`0x97a68a7949ee30849d273b0c4450314ae26235b1`, chain 56)
- Treasury (`0xd3dd99430a7c6818f8c848ecffed527d38505bb0`, chain 56)

## Contract Surface Quality

- Logic-topography rows: 6; live-surface rows included: 6 (6 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 18/18 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 6/6 (100.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 18 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 106 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Confirmed-live implementations: 18 of 124 unique; 106 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 6/25
- Verified + Unaudited implementations: 19
- Verified by bytecode match: 0
- Unverified implementations: 99
- Unique implementations: 124
- Raw deployments: 192
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022-01 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 6 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 6 | 24.0% | 2022-01 |

## Contract Surface

### ✅ Verified + Audited (6)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Boardroom | unknown | project_anchor | own_supporting | 0 | bsc | unit-384223 | `0xe9baceea645e8be68a0b63b9764670f97a50942f` | ✅ Audited |
| EBond | unknown | project_anchor | own_supporting | 0 | bsc | unit-384212 | `0x7099a19da2f17bc85193b1f0e9091df014a5d520` | ✅ Audited |
| Emp | unknown | project_anchor | own_supporting | 0 | bsc | unit-384208 | `0x3b248cefa87f836a4e6f6d6c9b42991b88dc1d58` | ✅ Audited |
| EShare | unknown | project_anchor | own_supporting | 0 | bsc | unit-384222 | `0xdb20f6a8665432ce895d724b417f77ecac956550` | ✅ Audited |
| EShareRewardPool | core_logic | project_anchor | own_supporting | 0 | bsc | unit-384214 | `0x97a68a7949ee30849d273b0c4450314ae26235b1` | ✅ Audited |
| Treasury | operational_periphery | project_anchor | own_supporting | 0 | bsc | unit-384221 | `0xd3dd99430a7c6818f8c848ecffed527d38505bb0` | ✅ Audited |

### ⚠️ Verified + Unaudited (19)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Boardroom | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 10 deployments: bsc `0x4284e9c74aa8a3bbcc75cd416a1d6741a2f6219a`; bsc `0x61226b4945d8dfad43df48bbdbcc7cbf4b02c743`; bsc `0x662a8aeec032d872dbdbf105654e9001a6657d48`; bsc `0x6b228898f3379affd8f8ee69926d1d53d26e8f65`; bsc `0x79516b4f7382726b56384b018ec73b2b86811183`; bsc `0x7a51c848babaeedc58dc89556583b06f6f7dbcf3`; bsc `0xa0900aca38e2c0472722326349b79dc8cab55bcd`; bsc `0xd90a4d22a3b406a7e9f59d2c295c2d8554cd88b0`; bsc `0xf0f98729aeb7cf644156b5b2897195172c610a2c`; bsc `0xf93c26ad3c7d22f42e7f403823a890492288a16e` | ⚠️ Unaudited |
| EBond | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 5 deployments: bsc `0x162416703eb602e1d2ea73003d6d9a55b18c4a18`; bsc `0x4350b29b8fde58dadf0bbaf6ad3e372d492ee08c`; bsc `0x8a3f7dbb92e493027bac9b2120f1712aa150906f`; bsc `0xe4ecc0e062ef3b1bebc854266b997c50930546dc`; bsc `0xe7ff78f0bb8e739a8788d74ec02305b90d3319ae` | ⚠️ Unaudited |
| Emp | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 4 deployments: bsc `0x269765b520f22a57a8421e6c3a4fead11c399a10`; bsc `0x5f65851b942235f7043283e4f1291926772d123e`; bsc `0xd8d2764839b498ab757c0fa842af2c71e8e92e71`; bsc `0xe70a5a026960ff79a534b48eda0bfa3a6b500ff0` | ⚠️ Unaudited |
| EmpGenesisRewardPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 5 deployments: bsc `0x1f5659cda58b245ce19ddd499c81eb0c8a29da1f`; bsc `0x30394dd71210f77ae15261fd95903320facfb92a`; bsc `0x8fa16d968a9c12a75ab14cacdfbb3a56e6811ca9`; bsc `0x9b19d7cedf68804fd81e1abb42e2471443e8cbfa`; bsc `0xf587efad2705ef04f4439c728c6a9b42e07c0cb0` | ⚠️ Unaudited |
| EmpRewardPool | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 5 deployments: bsc `0x13ea3cacf0ed02aeab86f80c2e9de77c70a9421c`; bsc `0x5f5db542c1afe4eba70753a7942f8d63ee4a40fe`; bsc `0xa7097828dc57e50a5c83005906c3cf8c453dfa79`; bsc `0xa9d08ef741d36480ae2a69d77962d61dff0be0a9`; bsc `0xe4f5d6035db6678fb14b0448a60a9e4640914be4` | ⚠️ Unaudited |
| EShare | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 4 deployments: bsc `0x43afd3d4ee88c5d1e1a856f5ae1aaccc1d4733ff`; bsc `0x588d6b4c754ff9fef01713e9254106def41694b8`; bsc `0x6f0544f3de57c38a76bed7360cff56b44ca6df11`; bsc `0x7a3a5eaf759f2ee505d832f7b169e354075aa3aa` | ⚠️ Unaudited |
| EShareRewardPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 4 deployments: bsc `0x16390346cacefe2498cde08a9b94baef25a0b58d`; bsc `0x21d10e797841993d59965401d30afb75593988b8`; bsc `0x5c3d056cb82a223f8baab83209b79645c9a4c27d`; bsc `0x69e08146b31f540d437c33171cce83e6f55591fe` | ⚠️ Unaudited |
| FlokiSwap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 5 deployments: bsc `0x18b6f86b7c51c902c737cb9123e1e4a1b7c01fd4`; bsc `0x2fb09b8749a3a13eefa3fd4e643fc44dbdba5b39`; bsc `0x6db2bd77946f5a37dc3334404f9cf1be95baf223`; bsc `0x9e29325b9ab60a2ebc62f205d4194b4880ac4ce7`; bsc `0xd8ea827486934d214ffc2d6220d01a31601259f1` | ⚠️ Unaudited |
| MasterChefFlokis | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 4 deployments: bsc `0x0a904163a4a768983cdf289256bdf0292535ab96`; bsc `0x81a02ecea91986d2fc6829bd920d0b18c78adebe`; bsc `0xb01e4b56c93fe8c9f65b1d8cfa16d579272f1172`; bsc `0xcb922512c48143e3685fb83d6c2ec2a0e28e38d3` | ⚠️ Unaudited |
| MasterChefShiba | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0xb3251232890db32900101e1e4efce283b5b7f15b`; bsc `0xfd31c7560ec78f3f729c4496f1d877c47dc54be7` | ⚠️ Unaudited |
| Oracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 9 deployments: bsc `0x0fe57361b0e3fc7f61972bd839ddaa8da3e691d2`; bsc `0x4d6894747335f79ed693f1e5ed03570bda094ac2`; bsc `0x4e5232bf283c15c8c423e86ca73ead98190c6ddf`; bsc `0x73c17a4e31720c5adb7701d55dd48fbf0e335590`; bsc `0xc8a48dbb253924dc1b2339616b004ca7c069543a`; bsc `0xc8ee84ad818f8c19391e0ee1b8231e93064f2651`; bsc `0xcfefb36f9172995a64460a56bd39b4bab2d2e3de`; bsc `0xd323f9bc024d5119d6485ea19714067010cdd2e6`; bsc `0xea5427b360c6697ace76fa23aad4b16ce6cbc2e9` | ⚠️ Unaudited |
| Strategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 3 deployments: bsc `0x02078cbc6724983d40dfd04968222adca1248a75`; bsc `0x4676819c0677b1920b8e43194d93921c25c8cce1`; bsc `0x7bd7e7394b348226d1fb812e58de05ab5fe3909a` | ⚠️ Unaudited |
| TaxOffice | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 5 deployments: bsc `0x35607cf9328f37477595b2357be7ef6ce9ffb517`; bsc `0xbcebf2b248dee2fb197a990f4fa431fb1791f9b0`; bsc `0xc34ac3fc955085ac23238f55a4c6a34f554c3b47`; bsc `0xe9cc47da5e01a584852e6f17c9e0906619a16eab`; bsc `0xeadca7f4a3bde45ee13ed8471193f1ca7438b4bc` | ⚠️ Unaudited |
| TaxOfficeV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 5 deployments: bsc `0x12a9691b3bd61f0d235cf95676d6a7a555164768`; bsc `0x7449b0c739db7cd3660995969e8ad4e886b1e619`; bsc `0x930320610968f444dfb396091925439469311c60`; bsc `0xa8afe806e3d1ad0e84d690ee0034b5f4861417af`; bsc `0xbe3d754fa17cd178bf4ee31cb64bae69917795db` | ⚠️ Unaudited |
| TeamRewardPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8b680af3c848764d998b92f5d26c5571c79ba33a` | ⚠️ Unaudited |
| Timelock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x6a8eb65997ba14f96b202b3b5e9afdd95f3bca82`; bsc `0xefebe2c43517eadba5a81b7b00b40207c87fa94a` | ⚠️ Unaudited |
| TimelockController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 5 deployments: bsc `0x185508c976889d08dc25b471c6f2feb55a09942c`; bsc `0x18aa1f50701de3cfc164d84e0fff0ea370bb1aaa`; bsc `0x50e2da77bb991f6082037655b4f59efeae2ff5b9`; bsc `0x93522936e12cfc07d3880238acf0e69debbd4657`; bsc `0xa1332bc13c3c2f43edee16cb977001a65efc94c0` | ⚠️ Unaudited |
| Zap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 6 deployments: bsc `0x02282bab1ba4140e48c3301aed3c0ce14a87fd8b`; bsc `0x118e367103c74f3818dbd66662057e669629cdc1`; bsc `0x1732bb86dcd3d29e041aa88ff8fee947c8abaed2`; bsc `0x22c15de715c52540253773db92032f3d6a7fda39`; bsc `0x67d0e451a4658a3518ba5b583cc53647ea212f7b`; bsc `0xe3ffc5cf6bae906e1307e48e91f746dd5acf9cd8` | ⚠️ Unaudited |
| Zapper | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 3 deployments: bsc `0x5bad3568c99f15833b92dea08a34d7ce868a5aa2`; bsc `0x7d5eeb5218993eb1c8b8ddec6adf85bfdf6f96f0`; bsc `0xda52fae0ab679c81141c1452f6e4c7ce37dec4e0` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (99)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0062dca513bdf2f01a6d8631241b3980838b753a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0357b4fe87e0b9b96ff9aedc4a82e675ca530cad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x03b3fe22de54e5ece9f5ad14414bc6cb1b97942f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x067f858a97bd9857c18185a406233944a789d864` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x073e65b1af38a324bef9983f3e55e312bb011918` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0892a8fc50235b2b741f8778ead50ede1c7f5c0e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0988f15988a543fc613bfaf24c6660b81834b31d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0dc296824b0291f0f3601eb15f8b8a9e3cf83e21` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x13f1e6a52ba36d4380b58098ed8a410f9d4550a6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1483f91378eb8998e405c2b8c0f1fc92566b3c26` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-384206 | `0x1747af98ebf0b22d500014c7dd52985d736337d2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x18d1be9dd700272d51a13c55792d7901423cc8ac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1f6f39ebcf877c2a2636bc45fca90226609c6d80` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x20a88046c7d1fc969a11f18dd748c32ff3097eff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x227bb7a997cd0b0d3c9f3ef89495c51a0fdf0256` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x25d8d45955fbffa0692dcda831a5184d76c23c73` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x26c20ce6e82e484b423f9e823229bd599b6b002f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x28227698fb1c92acf949dd5cd52c9c11d588617f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-384207 | `0x29c55f1b02a95f0b30e61976835a3eee2359ad92` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2a55caac38d338537669acb36234b1b2dedbe266` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2a7e01d24a9a2760940b176af0f5af18b75dcc41` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2b2be9b18fb8dd5bbab9e312646803f2caf8c1e7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x301f1725c3a3cc5d9e826ea2fbdbc07bb7c0ed9a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x33cc517c8d944dba1ea022a1505e6f466f19e397` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x33ff4ea0865dd80e0e6f57bec3f87336183bcca4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x344d3654693a1aeddf346ba7e67b05f636fefcbd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3b211b0b040969121cbc0e567600078411fc642a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3fc9b625bfeb67437825c440d66463a1bfc32f3b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x47e3799ef1ff9c6b290ebe00f7f96f9e0947895c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x48e1578c3f9a152126dcedfdebbc3b88c70f21ad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x48f38551ca59107853674dcc897b3b2235016d29` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x48f81664035bc2471b8b39a3d661a606ff26fa1f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x49e4715dc2b35f44a3252e8fb18f82826dbcfc6c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4a956fe83d4fb652cb0e94df414a9b6e3a3d332a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-384209 | `0x50a7bad86bd493c128863c4df8a830417763f2d6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x544712752ccaba2a7ef253a454b65c155c6bfb23` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x54ae04758365235969b88c9b063dbe9abbaeff42` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5519dfc34418b8c74c86a2eaaf5039c4f7663e97` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-384210 | `0x59f521e1c6bbcfc504b8f2ac536df4dc483bae98` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5f2779217b371e3aeaf317de104529a00a3705d3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x637db1e3eb2860d941458d734b26d0e7ceb5a7e0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6509c9bf61cd2c37bd82fc111d6e29f37b694a4a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x68fde40e9896dda5c04fc4bd7e147a54c0947e5b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-384211 | `0x69ffe1cea85a766edd97c3908ba0ac60c986a9db` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6a70d4aca873b0f6ba8c16af43d49a2fb041fb2f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6c8f49485abe379ab6eb54eb8b59d014997b5fe0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6de2314b3fe12ac71dd92de3da32511f1077398e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6ffa02f3f519fca118c8f12a7bba061e6547b31e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7bf48d187d1d3a212eea75cad6eb6ab938b5dfce` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x82de62fb20eb0876bce0d2d01a5c135ddcce9f36` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-384213 | `0x84821bb588f049913dc579dc511e5e31eb22d5e4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8893760c640953e1a2639215536e499e6d9a54ed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8e0a1d5dc075af3bacd6b7ee3a08728b27294831` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x90d0599cdcc5d805074312fec769b44ec413448e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x91b625c93086253be76b20932c836ab4d63b7d6f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x94c379b0c4aeca98459ee86658828e4a26b95c5b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x973bbdffd30429d820465b2c2dc9ca79f1f48eb8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x98f1c06c12027546eb0ff60257b303b26b595f60` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x99a217edcbbbd0ce60dc6aff9929351ebc45fa11` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9f048967b027707be26deba8b598ef20b774aabf` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-384215 | `0xa27c2b2b439dea43b59060efd2d9820fbc812f97` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa605b764bc0c34dc45dcf89e6225ff0492978f13` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa61b6a15393be3d57c3fb948bfc8c18bf5d6b077` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-384216 | `0xa69ac7779519f5cbcbc70940ebb1fd02623bc5f9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa9242c601c8be6105cd16449772299913011ecf7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-384217 | `0xa9ea52d60111073e34fad966c03f70684e5b205d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xac3d39dec91d737ec4e46ff27faaa9b2649dc401` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xaf2af66c0e598c4545ffe676ca383feef5e0dc16` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb00a534dc015f5235b7770b554c827068a3843f2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb11fae6cdcc39ff0656e0f1f01136534c9277369` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb23b86502950a69b026220571bf8e2e699219256` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-384218 | `0xb530d6258a217a3213b3865e2dce41905ddb4e5b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb87f2a53359a9058c84b143c54dc9226587684fd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb8e860fb85aa09ada3fef943dcfae8064e76fa24` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb992076f9d35b87dc6b30f95c6c69212db27b853` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xbe559bc913a08a587020c9cffd4829bf4a095275` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-384219 | `0xbf61173522aa0a2f819d8fed2c6025f5ad3bf68b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xbfd40ea95059548a8021ae559f138f4c0fba5f68` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc0b58f8bceb1b300216803924e4a41ddf25aa297` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc11a259b7bd91afb0cd60b7a4d3705632b3e0dd1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc16438798c7d85058814f079e926c18303ed4102` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-384220 | `0xc1f655118223f0aa87240c6aaa247ba6c6625410` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc44a48172717549052868d0b118ed9b909956279` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc5ca857b6f28aad3b9200dbd35b0721f91d59cdb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc5f0049d3b1ed2c6a9ba4eb2d76dd5a84593bc3e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xcc6c5baa9bdcf0c46c8b667bbe7facac2f5e5004` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xccbfdc7fdd8ce105321eded11b5cfdc6dd1d1c1e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xcd42d2478610584e786a98d2d6d94bc80a066218` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xcffd446efb7ac72c15da9283eb1638b5585e9acd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xdc860cdf0e7930408900a2e3eab43cfb1bbc301e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe1bafbe6a7e6b8c6bd6c9fc44ffa66d820d69038` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe8c5dfdf1aedab09499691698e44d480f41a20bf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xeb2860a6eae1961254b785e49d1e0c3ff6fab283` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xecbac4345538c00b8cf4b068b1865b85aa1f96cb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xedc361e2566cbe35bb0c4a334b1c8e1ba2b83cbb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf6f0b5441064ef2fd1622397654148e8365bf23f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf84b624168f5ce776e1f00ab34d47222c3ceeaf0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xfc67df99cb156b666650bc0c0be86368d0ff89dd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xfe7a471e5e2f71fa2222686a83e332c1edb0abdb` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [EMP-Money_final-audit-report.pdf](https://github.com/0xGuard-com/audit-reports/blob/master/emp-money/EMP-Money_final-audit-report.pdf) | unknown | Audit | 2022-01 | stale | Direct | n/a | matched | 6 | 0 | 0 | 7 | n/a |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [13082] EMP-Money_final-audit-report.pdf — matched: No reason recorded

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| EMP-Money_final-audit-report.pdf | Boardroom | own contract | Boardroom (selected) `0xe9baceea645e8be68a0b63b9764670f97a50942f` — deployed 2022-01-22 02:10:18+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| EMP-Money_final-audit-report.pdf | EBond | own contract | EBond (selected) `0x7099a19da2f17bc85193b1f0e9091df014a5d520` — deployed 2022-01-18 00:47:42+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| EMP-Money_final-audit-report.pdf | EShare | own contract | EShare (selected) `0xdb20f6a8665432ce895d724b417f77ecac956550` — deployed 2022-01-18 00:47:03+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| EMP-Money_final-audit-report.pdf | EShareRewardPool | own contract | EShareRewardPool (selected) `0x97a68a7949ee30849d273b0c4450314ae26235b1` — deployed 2022-01-18 00:48:18+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| EMP-Money_final-audit-report.pdf | Emp | own contract | Emp (selected) `0x3b248cefa87f836a4e6f6d6c9b42991b88dc1d58` — deployed 2022-01-18 00:46:15+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| EMP-Money_final-audit-report.pdf | EmpGenesisRewardPool | unmatched — not counted | — | — | no |
| EMP-Money_final-audit-report.pdf | EmpRewardPool | unmatched — not counted | — | — | no |
| EMP-Money_final-audit-report.pdf | Oracle | unmatched — not counted | — | — | no |
| EMP-Money_final-audit-report.pdf | TaxOffice | unmatched — not counted | — | — | no |
| EMP-Money_final-audit-report.pdf | TaxOfficeV2 | unmatched — not counted | — | — | no |
| EMP-Money_final-audit-report.pdf | TaxOracle | unmatched — not counted | — | — | no |
| EMP-Money_final-audit-report.pdf | Treasury | own contract | Treasury (selected) `0xd3dd99430a7c6818f8c848ecffed527d38505bb0` — deployed 2022-01-22 02:10:30+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| EMP-Money_final-audit-report.pdf | Zapper | unmatched — not counted | — | — | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 24 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 99 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Address-book scope dispositions: 6 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 7 unmatched
- Matched-own operational status: 6 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: n/a
- Match method counts: unique_name=6

Fork inheritance lineage and inherited audits are included when available.
