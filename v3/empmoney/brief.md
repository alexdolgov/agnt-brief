# Agentic Audit Brief: EmpMoney

## Export Authority

- Production state: **published scope**
- Raw selected rows: 6 across 1 audit(s)
- Eligible audit results: 1 (1 matched; 0 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e40c73181a386361babecc6895e0f6c5587548f92814db09f88491f8b4a38d92`

## Project Overview

- Project: EmpMoney (`empmoney`)
- Website: [https://emp.money](https://emp.money)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: bsc
- Contract surface: 597 unique implementations (665 raw deployments)
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
Origin: empmoney (`0x269765...399a10`)
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
- Outside the address book: 579 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Confirmed-live implementations: 18 of 597 unique; 579 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 6/25
- Verified + Unaudited implementations: 19
- Verified by bytecode match: 0
- Unverified implementations: 572
- Unique implementations: 597
- Raw deployments: 665
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

### ❓ Unverified (572)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0062dca513bdf2f01a6d8631241b3980838b753a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x006e4d022605effd62b7698a28318efbe8940bc7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x00be20095ba787e4ed4ac1aa9805122c16c15a68` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0121627c9c003f0513a249551749bbea657cf923` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x01b72287c7fc4335f25e61dd7e452feba36d2c14` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x02b00b22a1f12e319484347c89d27f9ba3308967` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0357b4fe87e0b9b96ff9aedc4a82e675ca530cad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x03b3fe22de54e5ece9f5ad14414bc6cb1b97942f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x03d81051699a56ef0277a6b9bf130e467c32683a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0531afa2af10207108c6bf560271d4f0a3283ec1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x05c2420c38da1b8de2ff6f271138e65be404e06c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x05dabe490ec14dc42bdfb4384e69ae547c1407e0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x064923fb5d8924693947303fbe31f74b965e013c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x064950d8bb305525cc0521d470dd6055372c4bca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x06664694250d68c4dff3c0708dd09569382f0afc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x06708cf2630d7c33bac637db08278bc9cd2f85f2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x067f858a97bd9857c18185a406233944a789d864` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x06c060657971443011ba1a5664810ff702017ae6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x073e65b1af38a324bef9983f3e55e312bb011918` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x077e41335146ea1baab14fea20a006c86c0dbb82` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x07b1a6f271d9e41091921fab494fbcf1d7da0648` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x07ba52d3c0b96ec556f7d50692b185257b80d129` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x07e6e1c7802ae416a3acb7eff487cf5c06697b29` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0855e69337cfc4b7610f428e4099eda9d2b798dc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0892a8fc50235b2b741f8778ead50ede1c7f5c0e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x096c3f7a9aba311b2eafcb099bfa69f61bac4992` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0988f15988a543fc613bfaf24c6660b81834b31d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0a0b5dba655d1cc8cea503e374eb3144a0d17eb0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0a415da3ca38214ff9f416e01a011f659727957a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0b66d1f2edeb7b40e180aa221a1108be35568fdf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0ba68ca5510829b29ad4bfced0377addabfa6ceb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0bc2e31107df56084700c4469e34f03b179741a4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0c1a2cb2e7cae15ad8e3447b84c4eaa81545687b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0dacff474867944bc436bd4bb196e117ed06d29c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0dc296824b0291f0f3601eb15f8b8a9e3cf83e21` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0df9defaca2a1e9a91387c3f9dce238c64bbee5e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0e547b928062f392c518d265114fa2f3bd04bac1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0e9f96e8e4a7793a4cec64540373f1483ae056cb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0f472ad677119ba20d6a142c8532d7425f4d380e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x10a5d7778bdbd28cee491e2858b0318bdfd029e0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x115670c831be17f31ba5f8f8e62da25c52796f1e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1183d51aec0d1f268e2fdab5ded8d325e3726bd5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1189d64ea0c8eae935dc66e01f5c291509858a84` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x11c2318b217f0356f2e6656d790e9d6b88125d45` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x12bf96668a9557a77bbbb3014bb51ac77fa95bd8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x130a41d07cd0c13b2ff73574e68a4c12cc5764cd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x13f1e6a52ba36d4380b58098ed8a410f9d4550a6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x14116551b74ad471d5e089875e8a4f980bd384f3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1443818a2a34f8be68797b32e1085652bff1f646` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1483f91378eb8998e405c2b8c0f1fc92566b3c26` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x158f2dda3adc32cc6eeb368ce41c667d7667b36e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x15938c70b5157d0fa54ec448c7a2b92f07f1c22d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x167200f5c9b478593cbc33fdb61efd2055dc16c1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-384206 | `0x1747af98ebf0b22d500014c7dd52985d736337d2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1751e91eb31e38a0491928ca1648461d65f59670` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x18d1be9dd700272d51a13c55792d7901423cc8ac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x19bf78e559fe2ae976cb7374bd2eed0f00fb002c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1a8df8cffd786ad5ada8a3db439937f940d7c913` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1aa4933b640a96f0352cad798c233eb07bb28ee3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1b2e5ca7631c5da2f18da0490980ac1cbe2de280` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1b3cf1cc526925c3df68ed50902e443e8f7bbd70` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1cae3d3f25ab60124d165fcb1aea1c31f8dc5121` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1d078d537bf1fe7b4abf280617f109b07e593390` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1e4a826b90124f69d56ebbb36baf1ee165c6626f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1e8debe01c7bd1319ecd05f3e5e467c60b26305a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1ee7884f17625d179b338c01b90a95d9da340138` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1f02ccccc24761f2160f53096d18dd7615fcdd61` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1f449cc5c64e5cdeacf4f67d636e47777de68df7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1f63f41c2db56bd42cdf7f889b25e16293cddf01` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1f6f39ebcf877c2a2636bc45fca90226609c6d80` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1f9a6db024b4d14bcbeb3735bb70318f66ba52c6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x20927fe1e39551ea7ebd4f3807f1fe5b1edd0a87` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x20a88046c7d1fc969a11f18dd748c32ff3097eff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x20e2a0374e9ba8b3f6e7df8dec3cbe4a96a492be` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x21a0f6bf6404be99ee162b661fdc7c4e5f79988a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x21d4f3ef9318a6c256480fca730cd45b29fb275b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x224617c11150e3282ab245b0c3c2d2bd30bc8b44` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2266160cbd533017311156bfa6300adac5bf3e81` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x227bb7a997cd0b0d3c9f3ef89495c51a0fdf0256` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x23f1af132ec28d0a74eee9cb0a4b0007665e72f4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x249daad4a8af828caf575badf693924db28eaa97` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x24c8cb1c21f6954ee8d8c00da164188d6e66e02c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x24e2a1aa921c8d503279552f6ec30d024ea9178d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x24f8ee6e7f84965b6d25f6056b03d15dda8bb1fb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2549f981d5deb2184b56c3e839847cbdb351de91` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x25d8d45955fbffa0692dcda831a5184d76c23c73` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x26c20ce6e82e484b423f9e823229bd599b6b002f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x270a6ac638a552fe2fa3865feeb50a2c681fc08a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x272192b732cee1d2acff4d8e41f2d115c555b39d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2729d15dce906e94018f1300a9b35fcea8758019` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x274027496fcb21aa9c9f1c095885fad96d5d548f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x27469ca4409d3a5d183204d9f46dbb8a5b5c94f6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x277284d93a0013fe157b988796ce36ca317fcb05` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x28227698fb1c92acf949dd5cd52c9c11d588617f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x285e4be7ebbf596833870c81326e89bcd4472c19` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x291df277d4767b77f4b2782d80a397e798426b45` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-384207 | `0x29c55f1b02a95f0b30e61976835a3eee2359ad92` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2a55caac38d338537669acb36234b1b2dedbe266` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2a7e01d24a9a2760940b176af0f5af18b75dcc41` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2b2be9b18fb8dd5bbab9e312646803f2caf8c1e7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2bf0d92181232cac5058334a552b6f287de725d4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2bf2df9fec51121828ee6d2617fc36a975fc0fb3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2c29c51162a40d357a67abd56c6437e5e1b7fa63` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2c47904288f8ee8859cefd453f41450767033991` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2c5a29c8cef44c2b65c3532485a3022fe69b3c14` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2c727ca977b9bd20147b931e33e3096e4325863e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2ca513aa0bf629b596c69cc98dd3fca00b1a0824` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2dd9387504f0086a6024c7a7cbb50130cea2f7fb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2eb8ee4db4022588b1b0d34637ff513b025c8935` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2edacb9a1acc98b4255edfcc21218eb5216902ba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2f5c3e511210fa5a543034035a240a47c3e1326d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2ffe49d03188160588806555c6ee509e7f2dae4d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x30151705d808f83133506b0539cd2c2b1494d0b5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x301f1725c3a3cc5d9e826ea2fbdbc07bb7c0ed9a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x305c4e9e71e9dd796c882c20c64cd3828e880738` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x30cd2520f89b9805233c62cf259c5b09b94c9d8c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3143b26930e5f923d5e28479d18cba6219b79ce2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x319e79cd86d8e135ac6fde37907c3069ad843bd2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x31ca83632534a8ce9f0994c24c24acbdc7c882d5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x33cc517c8d944dba1ea022a1505e6f466f19e397` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x33ff4ea0865dd80e0e6f57bec3f87336183bcca4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3411124ede2c53424c792c1d17c2ca1de1d02d2b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x344d3654693a1aeddf346ba7e67b05f636fefcbd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x355dba10b74312fd928c808c1939f6785d7f995a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x35a2cc95c9aa67009668a6682f296a13a3c389a0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3698946a5c0cdbb91740e80655118dd5a0ace37a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x36a3516fff68015bd22d858f784622b3b0091a89` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x37b28b3cb8a7e31c36daf16fb02dc5cd443004e5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3871dba63b081c635c3d651f3c3facf6b5ae9358` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x38c6eed20f61f1ce46d1c2ba29a5af3084eae287` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3940051ad839161768b55cc9d04b04b2edd275ab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x39c2cd20c43d246b83e8c3623edacad753914102` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3b211b0b040969121cbc0e567600078411fc642a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3b2d17e33e9bbb5032abfd52d18fc435cef5ed85` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3c47109bb7365d086bf44a3547daecc555fe2b93` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3cd55bb94af5b5c1583757a295f797ce9fcc9678` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3cd5b391cef115bed86549cba9a8ebc508b2d378` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3cf0a8f67f45dd51d75392ae8403f8c1e70a129a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3d306476696511dc1a3b4d048401aa66612bd609` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3e097ed1433e340c06768128cbc4cdb4792f9d2a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3e257254fba2b9a6e86b5dcff761917974f997a6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3fc9b625bfeb67437825c440d66463a1bfc32f3b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x413fe31cdcc63a0824b3a3a9be5f34de7fa7e182` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x42a57e6d4d8b852296846f566d4a376fe34d15ef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x42a8374a43bd06554aab9003294f84dd3bfbe552` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4314ed878fa5bd71be6dd1da0ce9350dd1f5bc2d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x447dfaf2b6dd46361833c119cb762850baef1a75` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4488dff71d2fab4434472814ccec5e50fd6e25d7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x449bbed2931959fc4dceaaa38900f684ddfe8f25` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x44aca0a060de4153f9946672b3b9e7a8f8343b87` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x45c21a2c41460268751f0191b05ab8ba7c01faa2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x469a014b23c20a4b27576a7021cc70dd95f03201` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x46bb3aca18b46b1e051fdbe6a521698d4bcf8176` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x470d47f4918770a80c3780a36cdc249c7ec8450c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4744ee9617c3914e0e37dff0cbb057a7e6cead09` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4753c2f65d688d6a2151cad12a7a508bac674659` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x475f306f1940bd9366181f23df453ae21102c326` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x47e3799ef1ff9c6b290ebe00f7f96f9e0947895c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x481b346766dc917b18eadafe1e99656a5e61d8e5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x48274e9a5a1d7c68011199920295a287d844365f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4843c8b1cd22ecd48ab968c495a0fd6bbd00406c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x48e1578c3f9a152126dcedfdebbc3b88c70f21ad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x48f38551ca59107853674dcc897b3b2235016d29` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x48f81664035bc2471b8b39a3d661a606ff26fa1f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4914d1d2415079e753a27d0ac97ba66450544f7a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4925b12cb09ded4a055612a1e577cb5b63f6ebaa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4948c46a7f7131810c1901e1cee36ce5a3aedcac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x49816f26f9f0a7b3c7302ddf0ee8583b1028d704` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x498bef7a3cccf5edf916b357092c8b1f8b2f9d8d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x49e4715dc2b35f44a3252e8fb18f82826dbcfc6c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4a956fe83d4fb652cb0e94df414a9b6e3a3d332a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4aa0a8c227e14efa8a4e35e9c5975f3081199ca4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4aac98d79a63d82f7653a0c576c8275de67bec4a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4adc155e07e0c455b258080f441446711bb05257` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4d435491f0bf6398017e11abd32315dc096869f4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4d4e614ba2a92ad0034790f5f5f61bedc118092d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4dcc7432254e4994c67b6c264b496b01819716db` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4e583055079811ac26271d4618e7eb6f5ddaaa79` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4f1ccc634d2bf026e6064e28a2ab8da8fce73545` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4fa865eb34193519a58131eb07cafea66142cc8d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4fdd18b623c1ca3777c20326e64df9f01956e043` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4fe2441267eca6bd1e7c3210c1f923eb95f488a7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4fe5357fb60d1d2be6363967712edf55e5614179` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x501d6c9d728371bcfd65cf7926a5c77e0fd0eb8d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x50614fbf62c2e542f895b1c29541385be694c4d9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-384209 | `0x50a7bad86bd493c128863c4df8a830417763f2d6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x50cc337fcd017ca0628a41052bc374ee2658cac3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x50ec7d93eaa2e1087fb812cf87389fee7ca2d0eb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x51ebdd7a065658ceb150a18be7a9d5edfa3d0b1f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x51ef5987970ba09253e914c6bdde88b519877634` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x51ffca2291bf7201d1d7d54496d8e0dd88e28b9e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x52479bab34718d7d5042014ad19c2348c893dd22` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x52f8e601c54b650f07c05de93141525889f0c40f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5317881b5500986ee43f9222cb6d89a2ffe12313` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5376a83112100ff1567b2782e0d99c6d949b5509` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x53c2c24ece64f341615b930a9e7edf5e70315c70` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x53d1eed48bb9de30e268bc6d7bfb7665e097d3c3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5420cf26251480becf20f94b7d334ac2e21ba3bf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x542315bb5a8a96c09c64a820ef76a83705b44285` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x544712752ccaba2a7ef253a454b65c155c6bfb23` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x545ebaf8ec41452f61340a26de0160c46adc5abd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x54a57073c41f99c15e72eb97983edb373becb746` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x54ae04758365235969b88c9b063dbe9abbaeff42` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5519dfc34418b8c74c86a2eaaf5039c4f7663e97` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5549b76b0c57db8606755d92234018c7edd1f338` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5558149e1bd4c47cad776505b987dd06566fa8e8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x569be28f14dd92aef950bd705797c4b68061a3c7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x569d71fb78fb532bd588378eb1625e6775e3fb46` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5757e4911827dd4fae9aabb0a45477ee3bb472d5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x577136d5ba616a882ffaeafa49966d0f45a81494` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x579524afee2a35ff9326d6498ab61580fe31257a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x57b48067a5005e26a57e534e517f98b4b12e4316` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x59283bea6a4a78ee2e615a905a491025d709f964` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x593b479193786ff5cb121fc25c2d2d84cd069ba3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-384210 | `0x59f521e1c6bbcfc504b8f2ac536df4dc483bae98` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5a18a88c4427212614f8d34b476bd598edc1332a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5a6428fba5a5f1c1f45d6019754ffa074b0fa19c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5ae2905d4e2a29aa25dc96b5a639e5cdbc927a16` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5b0baba13ff2c92b46e4be2d594b393e0e19e85f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5ba71e6d19e3ea7f4d53e60c1e46a710d3685e5a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5c4cf25596c0a8c437be9feb681581b77cbf5d15` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5c9f6fdb5422bb1decffbe291572592d93870135` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5d5d0e5694c70fdca6aef2e66b177571143add97` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5d7d1aefab715c17c5e89c6760c80848cfdbee3b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5eb90407cd55cf25a7268a839803ae1fafcb4308` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5ef982c4c341ff71184f4d87bca1f671c6cadb8a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5f2779217b371e3aeaf317de104529a00a3705d3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5f371a6a0ee11b4ef9cec6beab34183cf5e159a8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5f95d5aefc124a0607690c3aaa963f2bf2d6e7df` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5ffc83cc5df62c9674c0471af446b8c0d7498a24` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6043c4e1473eae3e25dc59e95a03eb89a6b26f4f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x61be921025660508b42077cb31863ecd354dc849` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x622921b26caab86054825d6c11d577f5478b2e4d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x62674c715b92d0c544d667f43a1ded1846ad4dbd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x637db1e3eb2860d941458d734b26d0e7ceb5a7e0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x647765861d5b7d5c05362cece70808a00393f12d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6509c9bf61cd2c37bd82fc111d6e29f37b694a4a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x659f402e80a68dff56283881e9692641c947adb0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x65bce5bed06a48d0bd7bef498bc2244a92954531` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x65fa9ea1538ee149339f28bc1110cfc5d9445dad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x663f74825adf13fdccf4dd423e759099c171b8ec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x666ca3397b1e86ee25a445d9fe53ede3ad7639b9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x66a3450f2331416a59d7e49a64891149ebe81f19` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x66c3ae8794bc9a0828476de0da1324db259f9655` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x66e75f759dccd5b335d45f948e590f7130af9839` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x68187eb6037e6a67889b1b649cf24ee8a784a533` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x684e3eb3b781d1eba8a6b4cb23f49328f20cf8cf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x68a218d5e2e9e964c223d69c549d3152a51b87d2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x68c6ff3dd0a8108ac72136c3803d4ebdbebc7a02` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x68fde40e9896dda5c04fc4bd7e147a54c0947e5b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x693c755d752c22920f20df4166e6067ada53ea5a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x695c9cfa37876d2774f608641d80d2cbb4638a2e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x69a7ac2e69b653bf6020ffad0b04cb2c5ae00efd` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-384211 | `0x69ffe1cea85a766edd97c3908ba0ac60c986a9db` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6a70d4aca873b0f6ba8c16af43d49a2fb041fb2f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6a7784f7cf4e88049b25f4a22fbedbbc4a62c13b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6aabcb85bda257a6b596b0c01fbb313250122972` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6ab4d3758b081b0479b06269ab131611583129fc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6ac9fd7c26b2dd925a0a3d387bc1082773023ab1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6b410a4c800de5b5914de15516de770a3238bcb5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6b772bd069b4cbec36aaa06d6796ef834cf6534e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6b822cceb7e4b15b4f451a84cf99914c65c9a9f2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6ba0ca24d5857917f055e37f82167cb34023a43c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6c8f49485abe379ab6eb54eb8b59d014997b5fe0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6cc46302602f8b69327245698cc8e4c42956baf9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6d6712504c415b9977c54410afc653ee8f55804a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6dbd3a6cdb81ff8a043fbebe3e683566a85ec405` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6de2314b3fe12ac71dd92de3da32511f1077398e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6df246a1e0064169518da5d1e1905e37410e8694` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6ffa02f3f519fca118c8f12a7bba061e6547b31e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7003431015b6196c49291dde51227f3d3d209b0f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7015858558acc400673e61b2d92188e15ab6d7c7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x709170d01349037fc5e1525feefd69aede26de0a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x718da897f20130cba5caf2bab119a393c9637699` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x71c6ebaa60080576067f77938d426a3e9e2cc981` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x72d88e3b9d70370f1cb5c70874630796b098d0b8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x73686014c1a10b6e071455cf399e0714f3baa22a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x766724aa12fdce99a12aa3df0ed2b8dc263a4096` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7667967f4410b2626555b2397671ce8a4cc7641d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x767d1eed15bfc71240833c9777fba5133be62feb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x76b20e67f6bd6d8cb04743123bff5a30f513a5fc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x772ac7e45b98862d2e25d2c867dfab2e45812304` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x77d6ec27192c180e9fb53880507b565c452b41e3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x79b5f69cae9ba84d96a82520b4c1991032bdd156` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x79f7d293f7af07f2f12e8f5fb3948845e01ec47b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7b4d612847fa99975a408a42a8f2fd1f31e9a662` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7ba71400925056f016c13b455b9cd5dff0978eb6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7bf48d187d1d3a212eea75cad6eb6ab938b5dfce` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7d2d3451ef42034d65f33d11faefe40f0208e9fd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7e05aab298d6fd75d75f30da9a1bb94e7d0fcd4d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7eb6264ae886922dcd8696a9b4f1a8152fc675ce` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7f040b52410589e3f96b78853f7839dbadedb969` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7f73af7c6fbae9b2e4bf316d8ba0b5e8ce399ab2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7f82794f28aff1952ff19964af2c92a122b67112` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x803ce3e9c3ebbee64c9b8b689e60649e6bfe158c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x81619f766a4efe8334429524dd7663c1092a87b1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x81facdbf8b790a7876640a1350b4df8c63b5bca0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x824ac1189bb5a2449986841c4b4ba98f577f1d5a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x82de62fb20eb0876bce0d2d01a5c135ddcce9f36` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x82de8e3e1270703a847010bd6b9c877ed1d393cc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x830353a778dfd52232b12a6cf213e42bbd61746a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x838c8c35166e4bbfe66b1e67562cf58668dd0b05` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x83d9913ba0cb52807df33c6eecee438dc6c3da00` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x83e2a9e53371a2731e04cf113e889c8482726d77` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x83ff8d4994858aa020b54b6d33e3e946d2a50860` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x841bd1a370e0e1618216509be19602d1dc3aaa5d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-384213 | `0x84821bb588f049913dc579dc511e5e31eb22d5e4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8491a63320ca02288e2c2792d36b0b28d6ad50f2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x84e5055e6e37084b164f40f045c39b581e4e0a0c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x84f6474efb79c09b491919aebbde2b9b922d93b6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x85792a069fbe5c88b61c0165693aba57f20dcd4a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x85936e31de82f624d511c136229eedab0646f3ea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x85bcefede48df7890a46905e3873e25860e36a2b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x85e9b803428395a57dfd6d3eb5149e37fc751f74` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8682acf8cec4f48ed05193bc329891332cd541f0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x869ec35f5e970773d24b7cbde94650e06a09871c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x87e29a46f7ce9bbddf34b601d88bd55881393879` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x887dd12c4a9497356c616b96899c117d4d43305f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8893760c640953e1a2639215536e499e6d9a54ed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x897765be1384a568fbcdbe280c6402d61e85e96d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8a80cc7f290d2b961a19345dac25e5e808a4b0f1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8aef786751f4a134289bf6f1846e7a0ebe4d0dad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8c85b376121c5e3962eb627fbb52e831c47f5570` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8e0a1d5dc075af3bacd6b7ee3a08728b27294831` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8f3b75f4e84b2b1c6b2e4bc4d919519536a388b3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8f931257862bab2c249ef0f125651735a9d737d8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x90d0599cdcc5d805074312fec769b44ec413448e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x919c824a39fa5ea108481e425e59d46ef7ca95b5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x91b625c93086253be76b20932c836ab4d63b7d6f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x91d4b09e752dc910c4bb7d4287c14a65c7754aee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x92197802703f47a7bb7fd259e050cbf025087edf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9274faa99c7ab044c91cd8a80c05873437806ba0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x93b133123e1ac7496d10ec62df82b1f7f9c98785` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x93c6382d0c465d379295b9583203f2760e0a4606` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x94a9b433ad97290f910e39c1faaea6362a88277c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x94c379b0c4aeca98459ee86658828e4a26b95c5b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9508ac1de62912a4f7d03c40bcb4b783e73eafd5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x95415b40ef3e8d2ad63cf8ddc3de8359704e3ff5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x956ce681af42dc6bf042df76abc9e3d8e87ba0c2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x95d1e2332b1dd122911f777c4cfb08779a2b759f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x95f0abac017dc191b91d1a56230fd78a7a5d2e7a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x961fec797b459cdfc781f6fcd790ddbb68437fbc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x96a5aadb141a7357e3a0af48b78df9fa90a0cc1c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x973bbdffd30429d820465b2c2dc9ca79f1f48eb8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x97a73488484ffd50318a70a5ef673132bcdfe587` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x97ae2c4de080573d550431cf534c7ef3992db95e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x98699d5ed795c5402cc19746a41b591282396dd7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x98f1c06c12027546eb0ff60257b303b26b595f60` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9992287eb30590758daea875f1e72796e0f19dff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x99a217edcbbbd0ce60dc6aff9929351ebc45fa11` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x99c74a0ee6ceea3ccd1ff545b51396dae4b46e44` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9a1a50cc00168b91a4042e3250db177d8b49ce37` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9a3fb02a3fdcbae52fd6c2cb0887fabaee00d791` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9b6238c8d82fec0d2dfd6882a9bd5ff31ff3dbcb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9b9a34f22aaf7d6c9a6a7e22792f9862c0fe5561` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9c3f732ffcd7dc148678b86e69265cebcc51bbb6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9c5257ff463fbc5c0e48b9036a04d869cb409cd0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9d1c1c0876f85cda73d840db7f2ac9e10da2cc99` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9d38b31da70dbd7c7101d280932fa5c4729c486e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9e06d4b4748d597a7226308e1e0638744d79e187` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9e4eba93312210d61ee056db02ed336331508ac3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9f048967b027707be26deba8b598ef20b774aabf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9f72bd153cd26de8546a0a74444909d4c6068146` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9f7bf96393a20836bc9fcc1d0c910bae32b35465` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9fb1ce55d9914f36ea2b7b54aa248ae57d083e78` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa08d0d410907b24fc19889015f6a13e46ed5bcfb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa128ffb5149451e2e8d9fe97f65880df2d0d1cda` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa1830b78df68f6ed2d6983ea1f09d6d698c5db48` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa20fdc56fe2d23ff1d7d156294dd345c10d08ad8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-384215 | `0xa27c2b2b439dea43b59060efd2d9820fbc812f97` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa2d627974575117c4d17528e885e93b66b2f1288` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa33e4e702d1557d8a0761051eadf2ccc523ec062` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa3d2d952cb0deee24cc21b393b1678b96374db1c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa4205e56f02ee68bd255c1f2e3205786c24a456c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa478495626a82f62c4c71757c6315a53b0e72f64` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa5a635fd0e40192d6a4f0d58b031213606644b64` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa5be372cb81dc7dd7317d1f93af7aa964f37d4ba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa605b764bc0c34dc45dcf89e6225ff0492978f13` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa61b6a15393be3d57c3fb948bfc8c18bf5d6b077` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa61c0f56f224a8f10c1aa705d377296d54afc526` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa62c20d077c31944048d7f5e5aa10ba3ef7663cc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa6992cdb132b50f558264bca4bf654c19a13986a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-384216 | `0xa69ac7779519f5cbcbc70940ebb1fd02623bc5f9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa74bdf59d77db445c4c3d5e4ff6f77d3254a2342` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa7cd4adf8bb9d6587a6cae40ba8ef70370ae4eeb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa8a9932dd88cac819937884846be52f09bb7a21b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa9242c601c8be6105cd16449772299913011ecf7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-384217 | `0xa9ea52d60111073e34fad966c03f70684e5b205d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xaa22b2e20dc628eabac3dcc2c6adfcb57ed7d991` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xaa95995a38d0e46a9231ae07bd9255c6f3809237` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xab7dfa2e8a09f05fc777ea4194c0dba0d35b0a8d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xabfe93b3fddfb39e92d2d169a668cfb9e5b9180b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xac3d39dec91d737ec4e46ff27faaa9b2649dc401` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xad3560535b1169cc5d7eed72d0447c2b26176c1b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xadd201771400783b465f550c1907713a8b839823` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xadea01c3d890852d90255daa42dcf4fd2826e33f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xae21a0010c2ceb5bace5b7b570ba01e4b8ea120c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xaf2af66c0e598c4545ffe676ca383feef5e0dc16` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb00a534dc015f5235b7770b554c827068a3843f2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb043a51b93eea6be9ac7f8b31f245c356e65af27` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb11fae6cdcc39ff0656e0f1f01136534c9277369` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb137ad690e2e0c40ea1abff9979737b85cfff3c3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb1ab964e6bd70e2331df9857d5d9b1b98096d1ea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb23b86502950a69b026220571bf8e2e699219256` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb2f0c73e7aa6369d9a8f16856f48d5635d3d6173` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb4fcc6bbc36e6c0a9c60de8edb22ce4ae697e96e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb5138c21dd015db36a24aee70698873f4162ea77` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-384218 | `0xb530d6258a217a3213b3865e2dce41905ddb4e5b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb57b086fd72b6f570f357a62fbfbdcf1702fe449` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb5a460eea38167f42db8d8f7d675d686954ff054` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb5feecdd6bfcdba588970c7c3a6319d27c801ffa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb60e43a230aa35cf44ed7fd36a58384289d16f04` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb61162c8bf32cac161c7b3bb93afb352a4897e21` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb669e82b42c4b8ef93cf9b20662d57d016d2e7c8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb6e26b90623b30232f5ac71315216c0c8091b74d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb715464399c45f5b67480cc87c34b895ec41c1bf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb7e2af7dd17213586e97e9a9229d718cfd83384d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb7e6a90c4c93f0f7edc0360820fbd6712a2a6127` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb87f2a53359a9058c84b143c54dc9226587684fd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb8e860fb85aa09ada3fef943dcfae8064e76fa24` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb992076f9d35b87dc6b30f95c6c69212db27b853` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xbaca151aca05abd8656cb4b35a5c215cc1e46f68` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xbb3b5b01d3ab4e4c94fb8cffb2e21ccb54e32ff0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xbe1076cd8ec044e8a75c53004e603cb7db2b377e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xbe559bc913a08a587020c9cffd4829bf4a095275` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xbe833d79c7bb4f309a787e1d3f487aa3878792e0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xbead22bf30039f308d460cd7daf6003fa2f2f167` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xbec2e252d42623f2e615c0378818c2562d14026e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xbee7d96fbbd8b8909739d973c6dd7d2ef20c3b20` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-384219 | `0xbf61173522aa0a2f819d8fed2c6025f5ad3bf68b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xbf9b0b44c4d46e9643ee6102417d1fe51c75504b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xbfd40ea95059548a8021ae559f138f4c0fba5f68` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xbff0e03920dba480afe3cee0d158ff209e345404` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc0b58f8bceb1b300216803924e4a41ddf25aa297` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc105980b921a46b949193251e03617d0b0f8bbf8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc11a259b7bd91afb0cd60b7a4d3705632b3e0dd1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc16438798c7d85058814f079e926c18303ed4102` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc171efdd88ac5344f68d21482d50923f2b411a7e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc1b3efda68159a1a5ff7f0c6231e479bca6603f4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-384220 | `0xc1f655118223f0aa87240c6aaa247ba6c6625410` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc31e79f4213826f30d5093ab08248a76e772353a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc376bc211bcc874669cdcc17772be12df3284910` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc38701c2194a82e1b8be505e181bb997aa65430a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc44a48172717549052868d0b118ed9b909956279` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc490a8b7e3882fe8571690866ab0cef32798665e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc4a66e2c02525b514aaa36aa2246ff9f3e53e594` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc53d3cdcc8f04787d38adf29620320b28ba50ef2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc570669b63750254edea6b453fc0690b5d96aa5b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc5ca857b6f28aad3b9200dbd35b0721f91d59cdb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc5f0049d3b1ed2c6a9ba4eb2d76dd5a84593bc3e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc6c431907f2a50ff5af3234cb52dae35f615b07c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc6fcbe8fd320c8a0e32389ce59e38c54329d9c5c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc70c67ec61bd63b52c25a97af06dc0b8fc05cf53` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc7781f0ecc8ff62c6db66ad6e99a1e3c0a274482` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc79ccb836199a67f6488ada5dda5b8c71fc0e324` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc7ca6abfe178ab3ae1b68fda54c5cfffbf4c5027` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc7d1612cada09f6d34b852ac2d65797c6df20a29` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc8993f68837fd4dabfbfe081495fbe9e75576a09` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xca0822f932b65d0300316d8d3161c43084b8e764` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xca93e4a9fb1458b14e8a9628fc07d8b653d9346f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xca9c6a818a00c7b09ed0710a00d1791f463dd1b3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xcb040981d94f5f2e1e66b8836c6258f1145814ef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xcc1dbf868e9788148ecb761b3cb8c3c9dbd7844d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xcc6c5baa9bdcf0c46c8b667bbe7facac2f5e5004` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xccbfdc7fdd8ce105321eded11b5cfdc6dd1d1c1e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xcd42d2478610584e786a98d2d6d94bc80a066218` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xcd4b4b69cb880fccf5e42b56d450cb26dc6df3db` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xce2bb4b4dc39f423d7ff9fe55b7b04e22291ea8e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xcfbefa05eb47d2bf3354191d8f42b12a71c22c4c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xcffd446efb7ac72c15da9283eb1638b5585e9acd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd0616c450ee427e263af68003b600ed7a31eb496` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd18bd112e820c05b4c695802639dc81360650eaa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd1bdf51d3a59d8bae7a9837123c1e2ea1d61884d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd24205b4ce96f011024106d4f7c0ace92a52b8a4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd2ad3e7f310e193da37e576b32765688570eefc4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd363eb85e48d6c6cd0f120791a0ffedcbcd13a2c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd5488b8ae37fc1cffd5173e45f3e2965b9b2e44e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd5aa46f9816e2df0c4d5def53da6757b832fc1fc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd649685e7ce349336f8b04eb033f82a4e98337e6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd6a6a110c33f6da749046e23a9a0265ef8ffeccf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd6df15d0b9080024bb22319a0b6ada8019d0fdb6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd7189f5000658401e2cdf0eabb5c3b1941a71e23` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd729f7f92e42175d2526c7bf5567dbd6e1019281` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd770a9b39ad4498a1de151010610337da6113c71` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd7cfcb831956a4eecdd5b361d8312f3574165f26` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd8575f2c8792128e49293f4afcf7b63fc12b92f7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd91a9d7882127d35567a5f2593aefb59c61ca7e7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd9e3d7940eb40ec7cfbf3fd33998b3c273dbc83f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xda9dd296e276ff64ca7852e72141a1cb439627c8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xdbb05fb2f61e62029711cd5989c70663e9704a60` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xdc015d70ca80a353851e12375cbad58c9f28e2a9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xdc860cdf0e7930408900a2e3eab43cfb1bbc301e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xdcea4c33cbbe281939acf99ba9e27b9830437929` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xdd10d77b462f958dd3101b88f51be82dd97f2603` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xdda8b8e973060215d1aee3839189cd42eaea8230` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xde5b3bd38b2b0bb695f6162ec0627b3412e064ca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xde823550b47d90387535039fdaec6cd520797688` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xdfbd01b52881f062b029409615380b7640f7cea9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe007af0ddfb056314f1b55a52f05defdd5a562a9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe0ae6a7aa7631e5f13ef096daf5604e367ce2917` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe1bafbe6a7e6b8c6bd6c9fc44ffa66d820d69038` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe1ee0cf0e500a52703eb7ff057f6f3beb71102a8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe216ff18fe4cae7f6bd101afd7dfa51b724dc975` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe2a41480bcdbf51b7174f542a447d3e0381c011d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe3d4fc55dc2792a91bb3618cd39da8d7bfb3df27` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe4a473bed85e15cfb59e8b527e4927ce0c962a52` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe5a4a7c8cd5428227d59a87b933b6b2a7759cd12` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe6d2d63c75a0ce6b22875d0be7e7e9d137f50a37` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe742cd32a351ba790d894741ee249173940b96de` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe7c9f9669088b7bff7151bc06a3f0e74dc800e76` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe853670722ad302f978949713b5245dc05f7b9b8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe8989240e7aaa732e6994a6f9b6247867914f099` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe8bdb42728ce871f6c1f7738493aee7a744e0adc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe8c5dfdf1aedab09499691698e44d480f41a20bf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe8d3d77ca37b26504f8b3006a9e1994c9dcdd0dd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe9a37595314f128206de95bcd76a1df2bb5c45c5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xea80c5b723a7bd5a6e736bac49c4800df0ac7280` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xeb2860a6eae1961254b785e49d1e0c3ff6fab283` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xeb28840fb64986c81b633e53dc7e5e0ce410b297` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xeb33230d9abe49c9ca1a7207b72e6547bb4b0617` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xeb7f7d9169cb3e31c82698045894e6b9414339fb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xec7cdc693196466714c3ff5d7eadb2cfa6117d98` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xecbac4345538c00b8cf4b068b1865b85aa1f96cb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xedc361e2566cbe35bb0c4a334b1c8e1ba2b83cbb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xee0aa2dade4f71b7ae78daefda19682c96a30646` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xee4f7591f680b5a28cb7ab1e7ee88c96239d61c9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xeeabb1ab7100fd6f3b14a8809d2960c2d0e48867` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xef61b8734fcda4dbedd25b76b0fe45eea2298de6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xefca13a5f45a0c5e17edd2198dcac48a5a1bd064` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf0412b6db7d09ba2325bd899c6c7859214378239` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf0b22272cb7bbeba49c353ed4d8eb7a25593a029` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf0c29e7bbc42e79bc3f4b489fecb005a1927017a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf0cd339d8262d1d2f751f5103854fca1c837017b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf0d920c19c13b87b3b55330ee9598cd0c9c5ca9b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf1042ee480e67f336b0f1d4d1fbfece66fa470b9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf11baa48b216642002f0817bf3a580d79871e7cb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf16a9942fa394c722e27a09e8a220927142258da` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf1825e71ae0456b06be9932ba85fef5a069e694d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf1d3a9f5646486ae3899c2b1f391db276d24141c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf2733043b6f1299a6f1420889a7144bf3ac5b4e6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf378902526d39fbf2325a62f86200dfc8e22a158` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf37ecc1ef79021c6c014d3f174c1e8aedc850336` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf3b3febc4ef3067fe191c4b68253746a3427c9a7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf58b8082b68f73086fb3fe100c3f823f41041ea5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf59d437a0057c8a45039cb59b65ccf504f01a04d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf5d0c4e1e95acc09c068db5e728e6f20d7fd5582` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf69845d957fad1ebe76d827f23b9b5f9feb6ffbe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf6bc18ad974e446ce03cfd41d87ffdf44aabb1fc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf6cf1a877ca3328824c21e7793241a3d0b104d49` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf6f0b5441064ef2fd1622397654148e8365bf23f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf755f5d45d76c9101cfc421d921084b75bd4d14e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf78f7c00b527d0ca630604dcde9fa2ed095d6d0d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf790524e5a4b2e839c34848a6e40bd0fb63ed479` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf79092521ed83cb0987254210b26b35b9690105d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf7a0c7770ebcb62b75c5b3297ac3d1d5d1565284` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf7a20637c3b88f0fc3ac6b3affe707a03d1a554d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf84b624168f5ce776e1f00ab34d47222c3ceeaf0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf986f7be738237cf3f4957b24518c4b31a31101c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf98925cc398ba10f27250e2667d3220a9e2c544c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xfa0ba73a1d004a40374a142407f8ba95583281bb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xfa41c3945957c1ea658e3884f583a29329ebaef9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xfa69a3ccb45525f581d659cc7e552f1ac3554f56` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xfaf95cb1b277fbc1e13cde75a0c761da8d09cb95` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xfc5f112a0f8f5c53883f9faceda49a015d5b6aca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xfc67df99cb156b666650bc0c0be86368d0ff89dd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xfd9e4893e1474d36251c1f646eb335c1c3d8c718` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xfe7a471e5e2f71fa2222686a83e332c1edb0abdb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xff53a8aa59aa68520dc0591138eafa1ad16652e8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xff6116985bf4223a6f52c4e1544c00f6a1be876f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xffc2e50769f62d5cbdc9ffe3aac3ab1e869929fe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xffcb20119db3a90f457ac323c95558d2173ea752` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xffd40ada607150b215eeec92c81ee79c8b8c283a` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 637
- Live contracts: 0
- Unknown liveness contracts: 637
- Source-verified contracts: 80
- Currently scope-matched contracts retained as-is: 0
- Classification counts: contamination review=3, source verified unclassified=77, unverified unclassified=557

Showing first 200 of 637 contracts. The complete deployer expansion list is in `brief.json`.

| Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|
| contamination review | MasterChefShiba<br>`0xb3251232890db32900101e1e4efce283b5b7f15b` | non_address_book | unknown | unknown | verified | n/a | `0x5cbb66cbd375b5f83f7a16e55c3db0bb0eae7ecb` |
| contamination review | Strategy<br>`0x02078cbc6724983d40dfd04968222adca1248a75` | non_address_book | unknown | unknown | verified | n/a | `0x5cbb66cbd375b5f83f7a16e55c3db0bb0eae7ecb` |
| contamination review | TeamRewardPool<br>`0x8b680af3c848764d998b92f5d26c5571c79ba33a` | non_address_book | unknown | unknown | verified | n/a | `0x5cbb66cbd375b5f83f7a16e55c3db0bb0eae7ecb` |
| source verified unclassified | Boardroom<br>`0x4284e9c74aa8a3bbcc75cd416a1d6741a2f6219a` | non_address_book | unknown | unknown | verified | n/a | `0x5cbb66cbd375b5f83f7a16e55c3db0bb0eae7ecb` |
| source verified unclassified | Boardroom<br>`0x61226b4945d8dfad43df48bbdbcc7cbf4b02c743` | non_address_book | unknown | unknown | verified | n/a | `0x5cbb66cbd375b5f83f7a16e55c3db0bb0eae7ecb` |
| source verified unclassified | Boardroom<br>`0x6b228898f3379affd8f8ee69926d1d53d26e8f65` | non_address_book | unknown | unknown | verified | n/a | `0x5cbb66cbd375b5f83f7a16e55c3db0bb0eae7ecb` |
| source verified unclassified | Boardroom<br>`0x79516b4f7382726b56384b018ec73b2b86811183` | non_address_book | unknown | unknown | verified | n/a | `0x5cbb66cbd375b5f83f7a16e55c3db0bb0eae7ecb` |
| source verified unclassified | Boardroom<br>`0x7a51c848babaeedc58dc89556583b06f6f7dbcf3` | non_address_book | unknown | unknown | verified | n/a | `0x5cbb66cbd375b5f83f7a16e55c3db0bb0eae7ecb` |
| source verified unclassified | Boardroom<br>`0xa0900aca38e2c0472722326349b79dc8cab55bcd` | non_address_book | unknown | unknown | verified | n/a | `0x5cbb66cbd375b5f83f7a16e55c3db0bb0eae7ecb` |
| source verified unclassified | Boardroom<br>`0xd90a4d22a3b406a7e9f59d2c295c2d8554cd88b0` | non_address_book | unknown | unknown | verified | n/a | `0x5cbb66cbd375b5f83f7a16e55c3db0bb0eae7ecb` |
| source verified unclassified | Boardroom<br>`0xf0f98729aeb7cf644156b5b2897195172c610a2c` | non_address_book | unknown | unknown | verified | n/a | `0x5cbb66cbd375b5f83f7a16e55c3db0bb0eae7ecb` |
| source verified unclassified | Boardroom<br>`0xf93c26ad3c7d22f42e7f403823a890492288a16e` | non_address_book | unknown | unknown | verified | n/a | `0x5cbb66cbd375b5f83f7a16e55c3db0bb0eae7ecb` |
| source verified unclassified | EBond<br>`0x162416703eb602e1d2ea73003d6d9a55b18c4a18` | non_address_book | unknown | unknown | verified | n/a | `0x5cbb66cbd375b5f83f7a16e55c3db0bb0eae7ecb` |
| source verified unclassified | EBond<br>`0x4350b29b8fde58dadf0bbaf6ad3e372d492ee08c` | non_address_book | unknown | unknown | verified | n/a | `0x5cbb66cbd375b5f83f7a16e55c3db0bb0eae7ecb` |
| source verified unclassified | EBond<br>`0x8a3f7dbb92e493027bac9b2120f1712aa150906f` | non_address_book | unknown | unknown | verified | n/a | `0x5cbb66cbd375b5f83f7a16e55c3db0bb0eae7ecb` |
| source verified unclassified | EBond<br>`0xe4ecc0e062ef3b1bebc854266b997c50930546dc` | non_address_book | unknown | unknown | verified | n/a | `0x5cbb66cbd375b5f83f7a16e55c3db0bb0eae7ecb` |
| source verified unclassified | EBond<br>`0xe7ff78f0bb8e739a8788d74ec02305b90d3319ae` | non_address_book | unknown | unknown | verified | n/a | `0x5cbb66cbd375b5f83f7a16e55c3db0bb0eae7ecb` |
| source verified unclassified | Emp<br>`0x5f65851b942235f7043283e4f1291926772d123e` | non_address_book | unknown | unknown | verified | n/a | `0x5cbb66cbd375b5f83f7a16e55c3db0bb0eae7ecb` |
| source verified unclassified | Emp<br>`0xd8d2764839b498ab757c0fa842af2c71e8e92e71` | non_address_book | unknown | unknown | verified | n/a | `0x5cbb66cbd375b5f83f7a16e55c3db0bb0eae7ecb` |
| source verified unclassified | Emp<br>`0xe70a5a026960ff79a534b48eda0bfa3a6b500ff0` | non_address_book | unknown | unknown | verified | n/a | `0x5cbb66cbd375b5f83f7a16e55c3db0bb0eae7ecb` |
| source verified unclassified | EmpGenesisRewardPool<br>`0x1f5659cda58b245ce19ddd499c81eb0c8a29da1f` | non_address_book | unknown | unknown | verified | n/a | `0x5cbb66cbd375b5f83f7a16e55c3db0bb0eae7ecb` |
| source verified unclassified | EmpGenesisRewardPool<br>`0x30394dd71210f77ae15261fd95903320facfb92a` | non_address_book | unknown | unknown | verified | n/a | `0x5cbb66cbd375b5f83f7a16e55c3db0bb0eae7ecb` |
| source verified unclassified | EmpGenesisRewardPool<br>`0x8fa16d968a9c12a75ab14cacdfbb3a56e6811ca9` | non_address_book | unknown | unknown | verified | n/a | `0x5cbb66cbd375b5f83f7a16e55c3db0bb0eae7ecb` |
| source verified unclassified | EmpGenesisRewardPool<br>`0x9b19d7cedf68804fd81e1abb42e2471443e8cbfa` | non_address_book | unknown | unknown | verified | n/a | `0x5cbb66cbd375b5f83f7a16e55c3db0bb0eae7ecb` |
| source verified unclassified | EmpGenesisRewardPool<br>`0xf587efad2705ef04f4439c728c6a9b42e07c0cb0` | non_address_book | unknown | unknown | verified | n/a | `0x5cbb66cbd375b5f83f7a16e55c3db0bb0eae7ecb` |
| source verified unclassified | EmpRewardPool<br>`0x5f5db542c1afe4eba70753a7942f8d63ee4a40fe` | non_address_book | unknown | unknown | verified | n/a | `0x5cbb66cbd375b5f83f7a16e55c3db0bb0eae7ecb` |
| source verified unclassified | EmpRewardPool<br>`0xa7097828dc57e50a5c83005906c3cf8c453dfa79` | non_address_book | unknown | unknown | verified | n/a | `0x5cbb66cbd375b5f83f7a16e55c3db0bb0eae7ecb` |
| source verified unclassified | EmpRewardPool<br>`0xa9d08ef741d36480ae2a69d77962d61dff0be0a9` | non_address_book | unknown | unknown | verified | n/a | `0x5cbb66cbd375b5f83f7a16e55c3db0bb0eae7ecb` |
| source verified unclassified | EmpRewardPool<br>`0xe4f5d6035db6678fb14b0448a60a9e4640914be4` | non_address_book | unknown | unknown | verified | n/a | `0x5cbb66cbd375b5f83f7a16e55c3db0bb0eae7ecb` |
| source verified unclassified | EShare<br>`0x588d6b4c754ff9fef01713e9254106def41694b8` | non_address_book | unknown | unknown | verified | n/a | `0x5cbb66cbd375b5f83f7a16e55c3db0bb0eae7ecb` |
| source verified unclassified | EShare<br>`0x6f0544f3de57c38a76bed7360cff56b44ca6df11` | non_address_book | unknown | unknown | verified | n/a | `0x5cbb66cbd375b5f83f7a16e55c3db0bb0eae7ecb` |
| source verified unclassified | EShareRewardPool<br>`0x16390346cacefe2498cde08a9b94baef25a0b58d` | non_address_book | unknown | unknown | verified | n/a | `0x5cbb66cbd375b5f83f7a16e55c3db0bb0eae7ecb` |
| source verified unclassified | EShareRewardPool<br>`0x21d10e797841993d59965401d30afb75593988b8` | non_address_book | unknown | unknown | verified | n/a | `0x5cbb66cbd375b5f83f7a16e55c3db0bb0eae7ecb` |
| source verified unclassified | EShareRewardPool<br>`0x5c3d056cb82a223f8baab83209b79645c9a4c27d` | non_address_book | unknown | unknown | verified | n/a | `0x5cbb66cbd375b5f83f7a16e55c3db0bb0eae7ecb` |
| source verified unclassified | EShareRewardPool<br>`0x69e08146b31f540d437c33171cce83e6f55591fe` | non_address_book | unknown | unknown | verified | n/a | `0x5cbb66cbd375b5f83f7a16e55c3db0bb0eae7ecb` |
| source verified unclassified | FlokiSwap<br>`0x18b6f86b7c51c902c737cb9123e1e4a1b7c01fd4` | non_address_book | unknown | unknown | verified | n/a | `0x5cbb66cbd375b5f83f7a16e55c3db0bb0eae7ecb` |
| source verified unclassified | FlokiSwap<br>`0x2fb09b8749a3a13eefa3fd4e643fc44dbdba5b39` | non_address_book | unknown | unknown | verified | n/a | `0x5cbb66cbd375b5f83f7a16e55c3db0bb0eae7ecb` |
| source verified unclassified | FlokiSwap<br>`0x6db2bd77946f5a37dc3334404f9cf1be95baf223` | non_address_book | unknown | unknown | verified | n/a | `0x5cbb66cbd375b5f83f7a16e55c3db0bb0eae7ecb` |
| source verified unclassified | FlokiSwap<br>`0x9e29325b9ab60a2ebc62f205d4194b4880ac4ce7` | non_address_book | unknown | unknown | verified | n/a | `0x5cbb66cbd375b5f83f7a16e55c3db0bb0eae7ecb` |
| source verified unclassified | FlokiSwap<br>`0xd8ea827486934d214ffc2d6220d01a31601259f1` | non_address_book | unknown | unknown | verified | n/a | `0x5cbb66cbd375b5f83f7a16e55c3db0bb0eae7ecb` |
| source verified unclassified | MasterChefFlokis<br>`0x0a904163a4a768983cdf289256bdf0292535ab96` | non_address_book | unknown | unknown | verified | n/a | `0x5cbb66cbd375b5f83f7a16e55c3db0bb0eae7ecb` |
| source verified unclassified | MasterChefFlokis<br>`0x81a02ecea91986d2fc6829bd920d0b18c78adebe` | non_address_book | unknown | unknown | verified | n/a | `0x5cbb66cbd375b5f83f7a16e55c3db0bb0eae7ecb` |
| source verified unclassified | MasterChefFlokis<br>`0xb01e4b56c93fe8c9f65b1d8cfa16d579272f1172` | non_address_book | unknown | unknown | verified | n/a | `0x5cbb66cbd375b5f83f7a16e55c3db0bb0eae7ecb` |
| source verified unclassified | MasterChefFlokis<br>`0xcb922512c48143e3685fb83d6c2ec2a0e28e38d3` | non_address_book | unknown | unknown | verified | n/a | `0x5cbb66cbd375b5f83f7a16e55c3db0bb0eae7ecb` |
| source verified unclassified | MasterChefShiba<br>`0xfd31c7560ec78f3f729c4496f1d877c47dc54be7` | non_address_book | unknown | unknown | verified | n/a | `0x5cbb66cbd375b5f83f7a16e55c3db0bb0eae7ecb` |
| source verified unclassified | Oracle<br>`0x0fe57361b0e3fc7f61972bd839ddaa8da3e691d2` | non_address_book | unknown | unknown | verified | n/a | `0x5cbb66cbd375b5f83f7a16e55c3db0bb0eae7ecb` |
| source verified unclassified | Oracle<br>`0x4d6894747335f79ed693f1e5ed03570bda094ac2` | non_address_book | unknown | unknown | verified | n/a | `0x5cbb66cbd375b5f83f7a16e55c3db0bb0eae7ecb` |
| source verified unclassified | Oracle<br>`0x4e5232bf283c15c8c423e86ca73ead98190c6ddf` | non_address_book | unknown | unknown | verified | n/a | `0x5cbb66cbd375b5f83f7a16e55c3db0bb0eae7ecb` |
| source verified unclassified | Oracle<br>`0x73c17a4e31720c5adb7701d55dd48fbf0e335590` | non_address_book | unknown | unknown | verified | n/a | `0x5cbb66cbd375b5f83f7a16e55c3db0bb0eae7ecb` |
| source verified unclassified | Oracle<br>`0xc8a48dbb253924dc1b2339616b004ca7c069543a` | non_address_book | unknown | unknown | verified | n/a | `0x5cbb66cbd375b5f83f7a16e55c3db0bb0eae7ecb` |
| source verified unclassified | Oracle<br>`0xc8ee84ad818f8c19391e0ee1b8231e93064f2651` | non_address_book | unknown | unknown | verified | n/a | `0x5cbb66cbd375b5f83f7a16e55c3db0bb0eae7ecb` |
| source verified unclassified | Oracle<br>`0xcfefb36f9172995a64460a56bd39b4bab2d2e3de` | non_address_book | unknown | unknown | verified | n/a | `0x5cbb66cbd375b5f83f7a16e55c3db0bb0eae7ecb` |
| source verified unclassified | Oracle<br>`0xd323f9bc024d5119d6485ea19714067010cdd2e6` | non_address_book | unknown | unknown | verified | n/a | `0x5cbb66cbd375b5f83f7a16e55c3db0bb0eae7ecb` |
| source verified unclassified | Oracle<br>`0xea5427b360c6697ace76fa23aad4b16ce6cbc2e9` | non_address_book | unknown | unknown | verified | n/a | `0x5cbb66cbd375b5f83f7a16e55c3db0bb0eae7ecb` |
| source verified unclassified | Strategy<br>`0x4676819c0677b1920b8e43194d93921c25c8cce1` | non_address_book | unknown | unknown | verified | n/a | `0x5cbb66cbd375b5f83f7a16e55c3db0bb0eae7ecb` |
| source verified unclassified | Strategy<br>`0x7bd7e7394b348226d1fb812e58de05ab5fe3909a` | non_address_book | unknown | unknown | verified | n/a | `0x5cbb66cbd375b5f83f7a16e55c3db0bb0eae7ecb` |
| source verified unclassified | TaxOffice<br>`0x35607cf9328f37477595b2357be7ef6ce9ffb517` | non_address_book | unknown | unknown | verified | n/a | `0x5cbb66cbd375b5f83f7a16e55c3db0bb0eae7ecb` |
| source verified unclassified | TaxOffice<br>`0xbcebf2b248dee2fb197a990f4fa431fb1791f9b0` | non_address_book | unknown | unknown | verified | n/a | `0x5cbb66cbd375b5f83f7a16e55c3db0bb0eae7ecb` |
| source verified unclassified | TaxOffice<br>`0xc34ac3fc955085ac23238f55a4c6a34f554c3b47` | non_address_book | unknown | unknown | verified | n/a | `0x5cbb66cbd375b5f83f7a16e55c3db0bb0eae7ecb` |
| source verified unclassified | TaxOffice<br>`0xe9cc47da5e01a584852e6f17c9e0906619a16eab` | non_address_book | unknown | unknown | verified | n/a | `0x5cbb66cbd375b5f83f7a16e55c3db0bb0eae7ecb` |
| source verified unclassified | TaxOffice<br>`0xeadca7f4a3bde45ee13ed8471193f1ca7438b4bc` | non_address_book | unknown | unknown | verified | n/a | `0x5cbb66cbd375b5f83f7a16e55c3db0bb0eae7ecb` |
| source verified unclassified | TaxOfficeV2<br>`0x12a9691b3bd61f0d235cf95676d6a7a555164768` | non_address_book | unknown | unknown | verified | n/a | `0x5cbb66cbd375b5f83f7a16e55c3db0bb0eae7ecb` |
| source verified unclassified | TaxOfficeV2<br>`0x7449b0c739db7cd3660995969e8ad4e886b1e619` | non_address_book | unknown | unknown | verified | n/a | `0x5cbb66cbd375b5f83f7a16e55c3db0bb0eae7ecb` |
| source verified unclassified | TaxOfficeV2<br>`0x930320610968f444dfb396091925439469311c60` | non_address_book | unknown | unknown | verified | n/a | `0x5cbb66cbd375b5f83f7a16e55c3db0bb0eae7ecb` |
| source verified unclassified | TaxOfficeV2<br>`0xa8afe806e3d1ad0e84d690ee0034b5f4861417af` | non_address_book | unknown | unknown | verified | n/a | `0x5cbb66cbd375b5f83f7a16e55c3db0bb0eae7ecb` |
| source verified unclassified | TaxOfficeV2<br>`0xbe3d754fa17cd178bf4ee31cb64bae69917795db` | non_address_book | unknown | unknown | verified | n/a | `0x5cbb66cbd375b5f83f7a16e55c3db0bb0eae7ecb` |
| source verified unclassified | Timelock<br>`0x6a8eb65997ba14f96b202b3b5e9afdd95f3bca82` | non_address_book | unknown | unknown | verified | n/a | `0x5cbb66cbd375b5f83f7a16e55c3db0bb0eae7ecb` |
| source verified unclassified | TimelockController<br>`0x185508c976889d08dc25b471c6f2feb55a09942c` | non_address_book | unknown | unknown | verified | n/a | `0x5cbb66cbd375b5f83f7a16e55c3db0bb0eae7ecb` |
| source verified unclassified | TimelockController<br>`0x18aa1f50701de3cfc164d84e0fff0ea370bb1aaa` | non_address_book | unknown | unknown | verified | n/a | `0x5cbb66cbd375b5f83f7a16e55c3db0bb0eae7ecb` |
| source verified unclassified | TimelockController<br>`0x50e2da77bb991f6082037655b4f59efeae2ff5b9` | non_address_book | unknown | unknown | verified | n/a | `0x5cbb66cbd375b5f83f7a16e55c3db0bb0eae7ecb` |
| source verified unclassified | TimelockController<br>`0x93522936e12cfc07d3880238acf0e69debbd4657` | non_address_book | unknown | unknown | verified | n/a | `0x5cbb66cbd375b5f83f7a16e55c3db0bb0eae7ecb` |
| source verified unclassified | TimelockController<br>`0xa1332bc13c3c2f43edee16cb977001a65efc94c0` | non_address_book | unknown | unknown | verified | n/a | `0x5cbb66cbd375b5f83f7a16e55c3db0bb0eae7ecb` |
| source verified unclassified | Zap<br>`0x02282bab1ba4140e48c3301aed3c0ce14a87fd8b` | non_address_book | unknown | unknown | verified | n/a | `0x5cbb66cbd375b5f83f7a16e55c3db0bb0eae7ecb` |
| source verified unclassified | Zap<br>`0x118e367103c74f3818dbd66662057e669629cdc1` | non_address_book | unknown | unknown | verified | n/a | `0x5cbb66cbd375b5f83f7a16e55c3db0bb0eae7ecb` |
| source verified unclassified | Zap<br>`0x1732bb86dcd3d29e041aa88ff8fee947c8abaed2` | non_address_book | unknown | unknown | verified | n/a | `0x5cbb66cbd375b5f83f7a16e55c3db0bb0eae7ecb` |
| source verified unclassified | Zap<br>`0x22c15de715c52540253773db92032f3d6a7fda39` | non_address_book | unknown | unknown | verified | n/a | `0x5cbb66cbd375b5f83f7a16e55c3db0bb0eae7ecb` |
| source verified unclassified | Zap<br>`0x67d0e451a4658a3518ba5b583cc53647ea212f7b` | non_address_book | unknown | unknown | verified | n/a | `0x5cbb66cbd375b5f83f7a16e55c3db0bb0eae7ecb` |
| source verified unclassified | Zap<br>`0xe3ffc5cf6bae906e1307e48e91f746dd5acf9cd8` | non_address_book | unknown | unknown | verified | n/a | `0x5cbb66cbd375b5f83f7a16e55c3db0bb0eae7ecb` |
| source verified unclassified | Zapper<br>`0x7d5eeb5218993eb1c8b8ddec6adf85bfdf6f96f0` | non_address_book | unknown | unknown | verified | n/a | `0x5cbb66cbd375b5f83f7a16e55c3db0bb0eae7ecb` |
| source verified unclassified | Zapper<br>`0xda52fae0ab679c81141c1452f6e4c7ce37dec4e0` | non_address_book | unknown | unknown | verified | n/a | `0x5cbb66cbd375b5f83f7a16e55c3db0bb0eae7ecb` |
| unverified unclassified | UnnamedContract<br>`0x0062dca513bdf2f01a6d8631241b3980838b753a` | non_address_book | unknown | unknown | unverified | n/a | `0x5cbb66cbd375b5f83f7a16e55c3db0bb0eae7ecb` |
| unverified unclassified | UnnamedContract<br>`0x006e4d022605effd62b7698a28318efbe8940bc7` | non_address_book | unknown | unknown | unverified | n/a | `0x3d38f97628117864f50dcb15323c4e949f516b94` |
| unverified unclassified | UnnamedContract<br>`0x00be20095ba787e4ed4ac1aa9805122c16c15a68` | non_address_book | unknown | unknown | unverified | n/a | `0x3d38f97628117864f50dcb15323c4e949f516b94` |
| unverified unclassified | UnnamedContract<br>`0x0121627c9c003f0513a249551749bbea657cf923` | non_address_book | unknown | unknown | unverified | n/a | `0x3d38f97628117864f50dcb15323c4e949f516b94` |
| unverified unclassified | UnnamedContract<br>`0x01b72287c7fc4335f25e61dd7e452feba36d2c14` | non_address_book | unknown | unknown | unverified | n/a | `0x3d38f97628117864f50dcb15323c4e949f516b94` |
| unverified unclassified | UnnamedContract<br>`0x02b00b22a1f12e319484347c89d27f9ba3308967` | non_address_book | unknown | unknown | unverified | n/a | `0x3d38f97628117864f50dcb15323c4e949f516b94` |
| unverified unclassified | UnnamedContract<br>`0x0357b4fe87e0b9b96ff9aedc4a82e675ca530cad` | non_address_book | unknown | unknown | unverified | n/a | `0x5cbb66cbd375b5f83f7a16e55c3db0bb0eae7ecb` |
| unverified unclassified | UnnamedContract<br>`0x03b3fe22de54e5ece9f5ad14414bc6cb1b97942f` | non_address_book | unknown | unknown | unverified | n/a | `0x5cbb66cbd375b5f83f7a16e55c3db0bb0eae7ecb` |
| unverified unclassified | UnnamedContract<br>`0x03d81051699a56ef0277a6b9bf130e467c32683a` | non_address_book | unknown | unknown | unverified | n/a | `0x3d38f97628117864f50dcb15323c4e949f516b94` |
| unverified unclassified | UnnamedContract<br>`0x0531afa2af10207108c6bf560271d4f0a3283ec1` | non_address_book | unknown | unknown | unverified | n/a | `0x3d38f97628117864f50dcb15323c4e949f516b94` |
| unverified unclassified | UnnamedContract<br>`0x05c2420c38da1b8de2ff6f271138e65be404e06c` | non_address_book | unknown | unknown | unverified | n/a | `0x3d38f97628117864f50dcb15323c4e949f516b94` |
| unverified unclassified | UnnamedContract<br>`0x05dabe490ec14dc42bdfb4384e69ae547c1407e0` | non_address_book | unknown | unknown | unverified | n/a | `0x3d38f97628117864f50dcb15323c4e949f516b94` |
| unverified unclassified | UnnamedContract<br>`0x064923fb5d8924693947303fbe31f74b965e013c` | non_address_book | unknown | unknown | unverified | n/a | `0x3d38f97628117864f50dcb15323c4e949f516b94` |
| unverified unclassified | UnnamedContract<br>`0x064950d8bb305525cc0521d470dd6055372c4bca` | non_address_book | unknown | unknown | unverified | n/a | `0x3d38f97628117864f50dcb15323c4e949f516b94` |
| unverified unclassified | UnnamedContract<br>`0x06664694250d68c4dff3c0708dd09569382f0afc` | non_address_book | unknown | unknown | unverified | n/a | `0x3d38f97628117864f50dcb15323c4e949f516b94` |
| unverified unclassified | UnnamedContract<br>`0x06708cf2630d7c33bac637db08278bc9cd2f85f2` | non_address_book | unknown | unknown | unverified | n/a | `0x3d38f97628117864f50dcb15323c4e949f516b94` |
| unverified unclassified | UnnamedContract<br>`0x067f858a97bd9857c18185a406233944a789d864` | non_address_book | unknown | unknown | unverified | n/a | `0x5cbb66cbd375b5f83f7a16e55c3db0bb0eae7ecb` |
| unverified unclassified | UnnamedContract<br>`0x06c060657971443011ba1a5664810ff702017ae6` | non_address_book | unknown | unknown | unverified | n/a | `0x3d38f97628117864f50dcb15323c4e949f516b94` |
| unverified unclassified | UnnamedContract<br>`0x073e65b1af38a324bef9983f3e55e312bb011918` | non_address_book | unknown | unknown | unverified | n/a | `0x5cbb66cbd375b5f83f7a16e55c3db0bb0eae7ecb` |
| unverified unclassified | UnnamedContract<br>`0x077e41335146ea1baab14fea20a006c86c0dbb82` | non_address_book | unknown | unknown | unverified | n/a | `0x3d38f97628117864f50dcb15323c4e949f516b94` |
| unverified unclassified | UnnamedContract<br>`0x07b1a6f271d9e41091921fab494fbcf1d7da0648` | non_address_book | unknown | unknown | unverified | n/a | `0x3d38f97628117864f50dcb15323c4e949f516b94` |
| unverified unclassified | UnnamedContract<br>`0x07ba52d3c0b96ec556f7d50692b185257b80d129` | non_address_book | unknown | unknown | unverified | n/a | `0x3d38f97628117864f50dcb15323c4e949f516b94` |
| unverified unclassified | UnnamedContract<br>`0x07e6e1c7802ae416a3acb7eff487cf5c06697b29` | non_address_book | unknown | unknown | unverified | n/a | `0xaeff790029debf3b956a65fa915097347ef63eb6` |
| unverified unclassified | UnnamedContract<br>`0x0855e69337cfc4b7610f428e4099eda9d2b798dc` | non_address_book | unknown | unknown | unverified | n/a | `0x3d38f97628117864f50dcb15323c4e949f516b94` |
| unverified unclassified | UnnamedContract<br>`0x0892a8fc50235b2b741f8778ead50ede1c7f5c0e` | non_address_book | unknown | unknown | unverified | n/a | `0x5cbb66cbd375b5f83f7a16e55c3db0bb0eae7ecb` |
| unverified unclassified | UnnamedContract<br>`0x096c3f7a9aba311b2eafcb099bfa69f61bac4992` | non_address_book | unknown | unknown | unverified | n/a | `0x3d38f97628117864f50dcb15323c4e949f516b94` |
| unverified unclassified | UnnamedContract<br>`0x0988f15988a543fc613bfaf24c6660b81834b31d` | non_address_book | unknown | unknown | unverified | n/a | `0x5cbb66cbd375b5f83f7a16e55c3db0bb0eae7ecb` |
| unverified unclassified | UnnamedContract<br>`0x0a0b5dba655d1cc8cea503e374eb3144a0d17eb0` | non_address_book | unknown | unknown | unverified | n/a | `0x3d38f97628117864f50dcb15323c4e949f516b94` |
| unverified unclassified | UnnamedContract<br>`0x0a415da3ca38214ff9f416e01a011f659727957a` | non_address_book | unknown | unknown | unverified | n/a | `0x3d38f97628117864f50dcb15323c4e949f516b94` |
| unverified unclassified | UnnamedContract<br>`0x0b66d1f2edeb7b40e180aa221a1108be35568fdf` | non_address_book | unknown | unknown | unverified | n/a | `0x3d38f97628117864f50dcb15323c4e949f516b94` |
| unverified unclassified | UnnamedContract<br>`0x0ba68ca5510829b29ad4bfced0377addabfa6ceb` | non_address_book | unknown | unknown | unverified | n/a | `0x3d38f97628117864f50dcb15323c4e949f516b94` |
| unverified unclassified | UnnamedContract<br>`0x0bc2e31107df56084700c4469e34f03b179741a4` | non_address_book | unknown | unknown | unverified | n/a | `0x3d38f97628117864f50dcb15323c4e949f516b94` |
| unverified unclassified | UnnamedContract<br>`0x0c1a2cb2e7cae15ad8e3447b84c4eaa81545687b` | non_address_book | unknown | unknown | unverified | n/a | `0x3d38f97628117864f50dcb15323c4e949f516b94` |
| unverified unclassified | UnnamedContract<br>`0x0dacff474867944bc436bd4bb196e117ed06d29c` | non_address_book | unknown | unknown | unverified | n/a | `0x3d38f97628117864f50dcb15323c4e949f516b94` |
| unverified unclassified | UnnamedContract<br>`0x0dc296824b0291f0f3601eb15f8b8a9e3cf83e21` | non_address_book | unknown | unknown | unverified | n/a | `0x5cbb66cbd375b5f83f7a16e55c3db0bb0eae7ecb` |
| unverified unclassified | UnnamedContract<br>`0x0df9defaca2a1e9a91387c3f9dce238c64bbee5e` | non_address_book | unknown | unknown | unverified | n/a | `0x3d38f97628117864f50dcb15323c4e949f516b94` |
| unverified unclassified | UnnamedContract<br>`0x0e547b928062f392c518d265114fa2f3bd04bac1` | non_address_book | unknown | unknown | unverified | n/a | `0x3d38f97628117864f50dcb15323c4e949f516b94` |
| unverified unclassified | UnnamedContract<br>`0x0e9f96e8e4a7793a4cec64540373f1483ae056cb` | non_address_book | unknown | unknown | unverified | n/a | `0x3d38f97628117864f50dcb15323c4e949f516b94` |
| unverified unclassified | UnnamedContract<br>`0x0f472ad677119ba20d6a142c8532d7425f4d380e` | non_address_book | unknown | unknown | unverified | n/a | `0x3d38f97628117864f50dcb15323c4e949f516b94` |
| unverified unclassified | UnnamedContract<br>`0x10a5d7778bdbd28cee491e2858b0318bdfd029e0` | non_address_book | unknown | unknown | unverified | n/a | `0xaeff790029debf3b956a65fa915097347ef63eb6` |
| unverified unclassified | UnnamedContract<br>`0x115670c831be17f31ba5f8f8e62da25c52796f1e` | non_address_book | unknown | unknown | unverified | n/a | `0x3d38f97628117864f50dcb15323c4e949f516b94` |
| unverified unclassified | UnnamedContract<br>`0x1183d51aec0d1f268e2fdab5ded8d325e3726bd5` | non_address_book | unknown | unknown | unverified | n/a | `0x3d38f97628117864f50dcb15323c4e949f516b94` |
| unverified unclassified | UnnamedContract<br>`0x1189d64ea0c8eae935dc66e01f5c291509858a84` | non_address_book | unknown | unknown | unverified | n/a | `0x3d38f97628117864f50dcb15323c4e949f516b94` |
| unverified unclassified | UnnamedContract<br>`0x11c2318b217f0356f2e6656d790e9d6b88125d45` | non_address_book | unknown | unknown | unverified | n/a | `0x3d38f97628117864f50dcb15323c4e949f516b94` |
| unverified unclassified | UnnamedContract<br>`0x12bf96668a9557a77bbbb3014bb51ac77fa95bd8` | non_address_book | unknown | unknown | unverified | n/a | `0x3d38f97628117864f50dcb15323c4e949f516b94` |
| unverified unclassified | UnnamedContract<br>`0x130a41d07cd0c13b2ff73574e68a4c12cc5764cd` | non_address_book | unknown | unknown | unverified | n/a | `0x3d38f97628117864f50dcb15323c4e949f516b94` |
| unverified unclassified | UnnamedContract<br>`0x13f1e6a52ba36d4380b58098ed8a410f9d4550a6` | non_address_book | unknown | unknown | unverified | n/a | `0x5cbb66cbd375b5f83f7a16e55c3db0bb0eae7ecb` |
| unverified unclassified | UnnamedContract<br>`0x14116551b74ad471d5e089875e8a4f980bd384f3` | non_address_book | unknown | unknown | unverified | n/a | `0x3d38f97628117864f50dcb15323c4e949f516b94` |
| unverified unclassified | UnnamedContract<br>`0x1443818a2a34f8be68797b32e1085652bff1f646` | non_address_book | unknown | unknown | unverified | n/a | `0x3d38f97628117864f50dcb15323c4e949f516b94` |
| unverified unclassified | UnnamedContract<br>`0x1483f91378eb8998e405c2b8c0f1fc92566b3c26` | non_address_book | unknown | unknown | unverified | n/a | `0x5cbb66cbd375b5f83f7a16e55c3db0bb0eae7ecb` |
| unverified unclassified | UnnamedContract<br>`0x158f2dda3adc32cc6eeb368ce41c667d7667b36e` | non_address_book | unknown | unknown | unverified | n/a | `0x3d38f97628117864f50dcb15323c4e949f516b94` |
| unverified unclassified | UnnamedContract<br>`0x15938c70b5157d0fa54ec448c7a2b92f07f1c22d` | non_address_book | unknown | unknown | unverified | n/a | `0xaeff790029debf3b956a65fa915097347ef63eb6` |
| unverified unclassified | UnnamedContract<br>`0x167200f5c9b478593cbc33fdb61efd2055dc16c1` | non_address_book | unknown | unknown | unverified | n/a | `0x3d38f97628117864f50dcb15323c4e949f516b94` |
| unverified unclassified | UnnamedContract<br>`0x1751e91eb31e38a0491928ca1648461d65f59670` | non_address_book | unknown | unknown | unverified | n/a | `0x3d38f97628117864f50dcb15323c4e949f516b94` |
| unverified unclassified | UnnamedContract<br>`0x18d1be9dd700272d51a13c55792d7901423cc8ac` | non_address_book | unknown | unknown | unverified | n/a | `0x5cbb66cbd375b5f83f7a16e55c3db0bb0eae7ecb` |
| unverified unclassified | UnnamedContract<br>`0x19bf78e559fe2ae976cb7374bd2eed0f00fb002c` | non_address_book | unknown | unknown | unverified | n/a | `0x3d38f97628117864f50dcb15323c4e949f516b94` |
| unverified unclassified | UnnamedContract<br>`0x1a8df8cffd786ad5ada8a3db439937f940d7c913` | non_address_book | unknown | unknown | unverified | n/a | `0xaeff790029debf3b956a65fa915097347ef63eb6` |
| unverified unclassified | UnnamedContract<br>`0x1aa4933b640a96f0352cad798c233eb07bb28ee3` | non_address_book | unknown | unknown | unverified | n/a | `0x3d38f97628117864f50dcb15323c4e949f516b94` |
| unverified unclassified | UnnamedContract<br>`0x1b2e5ca7631c5da2f18da0490980ac1cbe2de280` | non_address_book | unknown | unknown | unverified | n/a | `0x3d38f97628117864f50dcb15323c4e949f516b94` |
| unverified unclassified | UnnamedContract<br>`0x1b3cf1cc526925c3df68ed50902e443e8f7bbd70` | non_address_book | unknown | unknown | unverified | n/a | `0x3d38f97628117864f50dcb15323c4e949f516b94` |
| unverified unclassified | UnnamedContract<br>`0x1cae3d3f25ab60124d165fcb1aea1c31f8dc5121` | non_address_book | unknown | unknown | unverified | n/a | `0x3d38f97628117864f50dcb15323c4e949f516b94` |
| unverified unclassified | UnnamedContract<br>`0x1d078d537bf1fe7b4abf280617f109b07e593390` | non_address_book | unknown | unknown | unverified | n/a | `0x3d38f97628117864f50dcb15323c4e949f516b94` |
| unverified unclassified | UnnamedContract<br>`0x1e4a826b90124f69d56ebbb36baf1ee165c6626f` | non_address_book | unknown | unknown | unverified | n/a | `0x3d38f97628117864f50dcb15323c4e949f516b94` |
| unverified unclassified | UnnamedContract<br>`0x1e8debe01c7bd1319ecd05f3e5e467c60b26305a` | non_address_book | unknown | unknown | unverified | n/a | `0x3d38f97628117864f50dcb15323c4e949f516b94` |
| unverified unclassified | UnnamedContract<br>`0x1ee7884f17625d179b338c01b90a95d9da340138` | non_address_book | unknown | unknown | unverified | n/a | `0x3d38f97628117864f50dcb15323c4e949f516b94` |
| unverified unclassified | UnnamedContract<br>`0x1f02ccccc24761f2160f53096d18dd7615fcdd61` | non_address_book | unknown | unknown | unverified | n/a | `0xaeff790029debf3b956a65fa915097347ef63eb6` |
| unverified unclassified | UnnamedContract<br>`0x1f449cc5c64e5cdeacf4f67d636e47777de68df7` | non_address_book | unknown | unknown | unverified | n/a | `0x3d38f97628117864f50dcb15323c4e949f516b94` |
| unverified unclassified | UnnamedContract<br>`0x1f63f41c2db56bd42cdf7f889b25e16293cddf01` | non_address_book | unknown | unknown | unverified | n/a | `0x3d38f97628117864f50dcb15323c4e949f516b94` |
| unverified unclassified | UnnamedContract<br>`0x1f6f39ebcf877c2a2636bc45fca90226609c6d80` | non_address_book | unknown | unknown | unverified | n/a | `0x5cbb66cbd375b5f83f7a16e55c3db0bb0eae7ecb` |
| unverified unclassified | UnnamedContract<br>`0x1f9a6db024b4d14bcbeb3735bb70318f66ba52c6` | non_address_book | unknown | unknown | unverified | n/a | `0x3d38f97628117864f50dcb15323c4e949f516b94` |
| unverified unclassified | UnnamedContract<br>`0x20927fe1e39551ea7ebd4f3807f1fe5b1edd0a87` | non_address_book | unknown | unknown | unverified | n/a | `0x3d38f97628117864f50dcb15323c4e949f516b94` |
| unverified unclassified | UnnamedContract<br>`0x20a88046c7d1fc969a11f18dd748c32ff3097eff` | non_address_book | unknown | unknown | unverified | n/a | `0x5cbb66cbd375b5f83f7a16e55c3db0bb0eae7ecb` |
| unverified unclassified | UnnamedContract<br>`0x20e2a0374e9ba8b3f6e7df8dec3cbe4a96a492be` | non_address_book | unknown | unknown | unverified | n/a | `0x3d38f97628117864f50dcb15323c4e949f516b94` |
| unverified unclassified | UnnamedContract<br>`0x21a0f6bf6404be99ee162b661fdc7c4e5f79988a` | non_address_book | unknown | unknown | unverified | n/a | `0x3d38f97628117864f50dcb15323c4e949f516b94` |
| unverified unclassified | UnnamedContract<br>`0x21d4f3ef9318a6c256480fca730cd45b29fb275b` | non_address_book | unknown | unknown | unverified | n/a | `0x3d38f97628117864f50dcb15323c4e949f516b94` |
| unverified unclassified | UnnamedContract<br>`0x224617c11150e3282ab245b0c3c2d2bd30bc8b44` | non_address_book | unknown | unknown | unverified | n/a | `0xaeff790029debf3b956a65fa915097347ef63eb6` |
| unverified unclassified | UnnamedContract<br>`0x2266160cbd533017311156bfa6300adac5bf3e81` | non_address_book | unknown | unknown | unverified | n/a | `0x3d38f97628117864f50dcb15323c4e949f516b94` |
| unverified unclassified | UnnamedContract<br>`0x227bb7a997cd0b0d3c9f3ef89495c51a0fdf0256` | non_address_book | unknown | unknown | unverified | n/a | `0x5cbb66cbd375b5f83f7a16e55c3db0bb0eae7ecb` |
| unverified unclassified | UnnamedContract<br>`0x23f1af132ec28d0a74eee9cb0a4b0007665e72f4` | non_address_book | unknown | unknown | unverified | n/a | `0x3d38f97628117864f50dcb15323c4e949f516b94` |
| unverified unclassified | UnnamedContract<br>`0x249daad4a8af828caf575badf693924db28eaa97` | non_address_book | unknown | unknown | unverified | n/a | `0x3d38f97628117864f50dcb15323c4e949f516b94` |
| unverified unclassified | UnnamedContract<br>`0x24c8cb1c21f6954ee8d8c00da164188d6e66e02c` | non_address_book | unknown | unknown | unverified | n/a | `0x3d38f97628117864f50dcb15323c4e949f516b94` |
| unverified unclassified | UnnamedContract<br>`0x24e2a1aa921c8d503279552f6ec30d024ea9178d` | non_address_book | unknown | unknown | unverified | n/a | `0x3d38f97628117864f50dcb15323c4e949f516b94` |
| unverified unclassified | UnnamedContract<br>`0x24f8ee6e7f84965b6d25f6056b03d15dda8bb1fb` | non_address_book | unknown | unknown | unverified | n/a | `0x3d38f97628117864f50dcb15323c4e949f516b94` |
| unverified unclassified | UnnamedContract<br>`0x2549f981d5deb2184b56c3e839847cbdb351de91` | non_address_book | unknown | unknown | unverified | n/a | `0x3d38f97628117864f50dcb15323c4e949f516b94` |
| unverified unclassified | UnnamedContract<br>`0x25d8d45955fbffa0692dcda831a5184d76c23c73` | non_address_book | unknown | unknown | unverified | n/a | `0x5cbb66cbd375b5f83f7a16e55c3db0bb0eae7ecb` |
| unverified unclassified | UnnamedContract<br>`0x26c20ce6e82e484b423f9e823229bd599b6b002f` | non_address_book | unknown | unknown | unverified | n/a | `0x5cbb66cbd375b5f83f7a16e55c3db0bb0eae7ecb` |
| unverified unclassified | UnnamedContract<br>`0x270a6ac638a552fe2fa3865feeb50a2c681fc08a` | non_address_book | unknown | unknown | unverified | n/a | `0x3d38f97628117864f50dcb15323c4e949f516b94` |
| unverified unclassified | UnnamedContract<br>`0x272192b732cee1d2acff4d8e41f2d115c555b39d` | non_address_book | unknown | unknown | unverified | n/a | `0x3d38f97628117864f50dcb15323c4e949f516b94` |
| unverified unclassified | UnnamedContract<br>`0x2729d15dce906e94018f1300a9b35fcea8758019` | non_address_book | unknown | unknown | unverified | n/a | `0x3d38f97628117864f50dcb15323c4e949f516b94` |
| unverified unclassified | UnnamedContract<br>`0x274027496fcb21aa9c9f1c095885fad96d5d548f` | non_address_book | unknown | unknown | unverified | n/a | `0x3d38f97628117864f50dcb15323c4e949f516b94` |
| unverified unclassified | UnnamedContract<br>`0x27469ca4409d3a5d183204d9f46dbb8a5b5c94f6` | non_address_book | unknown | unknown | unverified | n/a | `0x3d38f97628117864f50dcb15323c4e949f516b94` |
| unverified unclassified | UnnamedContract<br>`0x277284d93a0013fe157b988796ce36ca317fcb05` | non_address_book | unknown | unknown | unverified | n/a | `0x3d38f97628117864f50dcb15323c4e949f516b94` |
| unverified unclassified | UnnamedContract<br>`0x28227698fb1c92acf949dd5cd52c9c11d588617f` | non_address_book | unknown | unknown | unverified | n/a | `0x5cbb66cbd375b5f83f7a16e55c3db0bb0eae7ecb` |
| unverified unclassified | UnnamedContract<br>`0x285e4be7ebbf596833870c81326e89bcd4472c19` | non_address_book | unknown | unknown | unverified | n/a | `0x3d38f97628117864f50dcb15323c4e949f516b94` |
| unverified unclassified | UnnamedContract<br>`0x291df277d4767b77f4b2782d80a397e798426b45` | non_address_book | unknown | unknown | unverified | n/a | `0x3d38f97628117864f50dcb15323c4e949f516b94` |
| unverified unclassified | UnnamedContract<br>`0x2a55caac38d338537669acb36234b1b2dedbe266` | non_address_book | unknown | unknown | unverified | n/a | `0x5cbb66cbd375b5f83f7a16e55c3db0bb0eae7ecb` |
| unverified unclassified | UnnamedContract<br>`0x2a7e01d24a9a2760940b176af0f5af18b75dcc41` | non_address_book | unknown | unknown | unverified | n/a | `0x5cbb66cbd375b5f83f7a16e55c3db0bb0eae7ecb` |
| unverified unclassified | UnnamedContract<br>`0x2b2be9b18fb8dd5bbab9e312646803f2caf8c1e7` | non_address_book | unknown | unknown | unverified | n/a | `0x5cbb66cbd375b5f83f7a16e55c3db0bb0eae7ecb` |
| unverified unclassified | UnnamedContract<br>`0x2bf0d92181232cac5058334a552b6f287de725d4` | non_address_book | unknown | unknown | unverified | n/a | `0x3d38f97628117864f50dcb15323c4e949f516b94` |
| unverified unclassified | UnnamedContract<br>`0x2bf2df9fec51121828ee6d2617fc36a975fc0fb3` | non_address_book | unknown | unknown | unverified | n/a | `0x3d38f97628117864f50dcb15323c4e949f516b94` |
| unverified unclassified | UnnamedContract<br>`0x2c29c51162a40d357a67abd56c6437e5e1b7fa63` | non_address_book | unknown | unknown | unverified | n/a | `0x3d38f97628117864f50dcb15323c4e949f516b94` |
| unverified unclassified | UnnamedContract<br>`0x2c47904288f8ee8859cefd453f41450767033991` | non_address_book | unknown | unknown | unverified | n/a | `0x3d38f97628117864f50dcb15323c4e949f516b94` |
| unverified unclassified | UnnamedContract<br>`0x2c5a29c8cef44c2b65c3532485a3022fe69b3c14` | non_address_book | unknown | unknown | unverified | n/a | `0xaeff790029debf3b956a65fa915097347ef63eb6` |
| unverified unclassified | UnnamedContract<br>`0x2c727ca977b9bd20147b931e33e3096e4325863e` | non_address_book | unknown | unknown | unverified | n/a | `0x3d38f97628117864f50dcb15323c4e949f516b94` |
| unverified unclassified | UnnamedContract<br>`0x2ca513aa0bf629b596c69cc98dd3fca00b1a0824` | non_address_book | unknown | unknown | unverified | n/a | `0xaeff790029debf3b956a65fa915097347ef63eb6` |
| unverified unclassified | UnnamedContract<br>`0x2dd9387504f0086a6024c7a7cbb50130cea2f7fb` | non_address_book | unknown | unknown | unverified | n/a | `0x3d38f97628117864f50dcb15323c4e949f516b94` |
| unverified unclassified | UnnamedContract<br>`0x2eb8ee4db4022588b1b0d34637ff513b025c8935` | non_address_book | unknown | unknown | unverified | n/a | `0x3d38f97628117864f50dcb15323c4e949f516b94` |
| unverified unclassified | UnnamedContract<br>`0x2edacb9a1acc98b4255edfcc21218eb5216902ba` | non_address_book | unknown | unknown | unverified | n/a | `0x3d38f97628117864f50dcb15323c4e949f516b94` |
| unverified unclassified | UnnamedContract<br>`0x2f5c3e511210fa5a543034035a240a47c3e1326d` | non_address_book | unknown | unknown | unverified | n/a | `0x3d38f97628117864f50dcb15323c4e949f516b94` |
| unverified unclassified | UnnamedContract<br>`0x2ffe49d03188160588806555c6ee509e7f2dae4d` | non_address_book | unknown | unknown | unverified | n/a | `0x3d38f97628117864f50dcb15323c4e949f516b94` |
| unverified unclassified | UnnamedContract<br>`0x30151705d808f83133506b0539cd2c2b1494d0b5` | non_address_book | unknown | unknown | unverified | n/a | `0x3d38f97628117864f50dcb15323c4e949f516b94` |
| unverified unclassified | UnnamedContract<br>`0x301f1725c3a3cc5d9e826ea2fbdbc07bb7c0ed9a` | non_address_book | unknown | unknown | unverified | n/a | `0x5cbb66cbd375b5f83f7a16e55c3db0bb0eae7ecb` |
| unverified unclassified | UnnamedContract<br>`0x305c4e9e71e9dd796c882c20c64cd3828e880738` | non_address_book | unknown | unknown | unverified | n/a | `0x3d38f97628117864f50dcb15323c4e949f516b94` |
| unverified unclassified | UnnamedContract<br>`0x30cd2520f89b9805233c62cf259c5b09b94c9d8c` | non_address_book | unknown | unknown | unverified | n/a | `0x3d38f97628117864f50dcb15323c4e949f516b94` |
| unverified unclassified | UnnamedContract<br>`0x3143b26930e5f923d5e28479d18cba6219b79ce2` | non_address_book | unknown | unknown | unverified | n/a | `0x3d38f97628117864f50dcb15323c4e949f516b94` |
| unverified unclassified | UnnamedContract<br>`0x319e79cd86d8e135ac6fde37907c3069ad843bd2` | non_address_book | unknown | unknown | unverified | n/a | `0x3d38f97628117864f50dcb15323c4e949f516b94` |
| unverified unclassified | UnnamedContract<br>`0x31ca83632534a8ce9f0994c24c24acbdc7c882d5` | non_address_book | unknown | unknown | unverified | n/a | `0x3d38f97628117864f50dcb15323c4e949f516b94` |
| unverified unclassified | UnnamedContract<br>`0x33cc517c8d944dba1ea022a1505e6f466f19e397` | non_address_book | unknown | unknown | unverified | n/a | `0x5cbb66cbd375b5f83f7a16e55c3db0bb0eae7ecb` |
| unverified unclassified | UnnamedContract<br>`0x33ff4ea0865dd80e0e6f57bec3f87336183bcca4` | non_address_book | unknown | unknown | unverified | n/a | `0x5cbb66cbd375b5f83f7a16e55c3db0bb0eae7ecb` |
| unverified unclassified | UnnamedContract<br>`0x3411124ede2c53424c792c1d17c2ca1de1d02d2b` | non_address_book | unknown | unknown | unverified | n/a | `0x3d38f97628117864f50dcb15323c4e949f516b94` |

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
| needs_review | 572 |

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
