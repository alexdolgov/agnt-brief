# Agentic Audit Brief: Toucan Protocol

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 1 (0 matched; 1 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e40c73181a386361babecc6895e0f6c5587548f92814db09f88491f8b4a38d92`

## Project Overview

- Project: Toucan Protocol (`toucan-protocol`)
- Website: [https://toucan.earth](https://toucan.earth)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: base, celo, polygon
- Contract surface: 96 unique implementations (97 raw deployments)
- Coverage basis: 0/5 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $527,428.21
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Toucan Protocol. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 5 contract row(s) across base, celo, polygon. Structural roles: 4 infra, 1 core. 4 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 5
- Structural roles: infra (4), core (1)
- Contract kinds: contract (5)
- Detected standards: erc1967proxy (4), ownable (1)
- Frameworks: openzeppelin (5), openzeppelin-upgradeable (3), prb-math (1)
- Upgradeable-pattern rows: 4

## Fork Analysis

0 of 15 contracts are derived from known codebases. 15 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x320d86e14a9c54e11d05e1e0d88e2c824504c108`, chain 8453)
- UnnamedContract (`0x5bcb07db6d3f55eef03ffdd14a571da35a9ca401`, chain 8453)
- UnnamedContract (`0x6bcad56fe6621d57c4254b70a6d057942842c9a0`, chain 8453)
- UnnamedContract (`0x7bc01aff86e64949f39de616c950a1f094695ec4`, chain 8453)
- UnnamedContract (`0x9ad2aa3c4a50c35d62b35718cd391c172d6659da`, chain 8453)
- UnnamedContract (`0xb8178d44a945a42644782d20cce59477897d0de1`, chain 8453)
- UnnamedContract (`0xd096b0271064dffcb7cde699b25850dddbfd71d1`, chain 8453)
- UnnamedContract (`0xdc2187ef2832a450bc06778cfc01028afb6397cc`, chain 8453)
- UnnamedContract (`0xf22929a43bff92e2303a55b2a88e3fcbc7b6b1ef`, chain 8453)
- UnnamedContract (`0xf49f899d70db6518e3d65eaf1c5d742c205eca83`, chain 8453)
- Biochar (`0x20b048fa035d5763685d695e66adf62c5d9f5055`, chain 8453)
- FeeCalculator (`0x6a4549759c475d845d4ae074b3656dc257490da5`, chain 8453)
- RetirementCertificates (`0x09da61144b05c4a80b2d3c67bd72d740922cb186`, chain 8453)
- ToucanCarbonOffsetsFactory (`0x20b00ac9c365b33b4d5ba5e7c075f2f94df11ca0`, chain 8453)
- UpgradeableBeacon (`0x3476bfb58a03cafb6f7b7b02c21fc6597e5e78ec`, chain 8453)

## Contract Surface Quality

- Logic-topography rows: 5; live-surface rows included: 5 (5 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 15/30 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/5 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 15 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 81 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 2 standard proxy/library)
- Proxy deployments represented within implementation groups: 7
- Confirmed-live implementations: 15 of 96 unique; 81 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/20
- Verified + Unaudited implementations: 20
- Verified by bytecode match: 0
- Unverified implementations: 76
- Unique implementations: 96
- Raw deployments: 97
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022-07 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (20)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Biochar | unknown | project_anchor | own_supporting | 1 | base | unit-394152 | `0x20b048fa035d5763685d695e66adf62c5d9f5055` | ⚠️ Unaudited |
| BiocharFilter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x21866905ae7da3769b96dcdd3506013a733884b9` | ⚠️ Unaudited |
| CarbonOffsetBatches | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x66b1b59f9d59413ddc1539122d7d5f6b70869717` | ⚠️ Unaudited |
| CarbonProjectVintages | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x09d14737300a3dcaaa3c6e9aeb4e666122f5d345` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x0fead3f81b35e133f9d78f9029950cf1f6056ea1`; polygon `0xc83dc91b3cd45d65f981c0018b3eb1c43a468381` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | celo | n/a | `0x02de4766c272abc10bc88c220d214a26960a7e92` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | celo | n/a | `0x0ccb0071e8b8b716a2a5998ab4d97b83790873fe` | ⚠️ Unaudited |
| FeeCalculator | unknown | project_anchor | own_supporting | 0 | base | unit-394143 | `0x6a4549759c475d845d4ae074b3656dc257490da5` | ⚠️ Unaudited |
| FxHashNFTCarbonExtension | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x1d1cd730fcb1e89b387d67dbe48f5d5bbae6b083` | ⚠️ Unaudited |
| OffsetHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x4242829d15434fea6606cf995f1bed68a18c37d1` | ⚠️ Unaudited |
| PuroToucanCarbonOffsets | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x05de010c6187a8bb3232176674f7492b5a7de399` | ⚠️ Unaudited |
| RetirementCertificates | unknown | project_anchor | own_supporting | 1 | base | unit-394154 | `0x09da61144b05c4a80b2d3c67bd72d740922cb186` | ⚠️ Unaudited |
| ToucanCarbonOffsets | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x1671a112fd50870b45d1d44f5aaff8de50229f44` | ⚠️ Unaudited |
| ToucanCarbonOffsetsEscrow | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x027553435c2373f49e9cdfe3b50a25326242792a` | ⚠️ Unaudited |
| ToucanCarbonOffsetsFactory | unknown | project_anchor | own_supporting | 1 | base | unit-394153 | `0x20b00ac9c365b33b4d5ba5e7c075f2f94df11ca0` | ⚠️ Unaudited |
| ToucanContractRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x04a3f298e88e54d3672a94136886ff9cd285e59e` | ⚠️ Unaudited |
| ToucanCrosschainMessenger | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x882adea1a3b875fc776cac94541ccb1275c38654` | ⚠️ Unaudited |
| ToucanRegenBridge | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x35d7426fb9069b99bb36bad30eb804e8fd924056` | ⚠️ Unaudited |
| UpgradeableBeacon | unknown | project_anchor | own_supporting | 0 | base | unit-394141 | `0x3476bfb58a03cafb6f7b7b02c21fc6597e5e78ec` | ⚠️ Unaudited |
| UUPSProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | `0x599a978c43f5cea1b26a399d28869ad4690dc07d` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (76)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x2299de1e9b010607e06d790fdbe002e23e7026d1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x2359677e513bc83106268514c5b2de3c29c849ea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x263fa1c180889b3a3f46330f32a4a23287e99fc9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x273f7d7e84d3cd5f54c3aff28647e8e340189e4c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x2d2b8a154efe0e5dd9e8e923ead9abb7e5d770c3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x2f800db0fdb5223b3c3f354886d907a671414a7f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x3853ca11338c23c3e1d6a5606e251728bac08af8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x46a4373c42042c90245c665dec81a6f2d0c78cc6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x46de45b749c2ebb01363369481408990935dc456` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x54a3ac0628bc8af714ec1725d216aa19658ec791` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x586f8df56f2d067cbe8d67658663781a51cf88f0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x639dfea994b139a3d6c3750d4c4e24daec039bd7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x6b1e44e38823e8e412f214817526af5903c7f6a3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x7cb7c0484d4f2324f51d81e2368823c20aef8072` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x8a4d7458dde3023a3b24225d62087701a88b09dd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x98a7840c33a9aa42ffe16f7da9a0e6dd6ea5f98f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xa23db84c72faa6d5c0cdd0017c0e8e4edd99fa72` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xa59762cd8580f7b23d1e64820c455ee7ef3f881c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xa81f17ead463b0c5b4cbd00386b99469f6fcc20a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xa90daf1975ba13c26f63976e0fd73a21f966ee0d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xaebd117b013a1d5850ab207efcc59f03937b6048` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xb08b92aa7e9bdac12e61ff7b2556252882178b03` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xb69f9f803cec728db503d7e37c1723241281a8a7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xbb64ed0a91824405ce6a36472b08c310d07a95ee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xca734327315cb3bcab16212c2b6ed7afc58db579` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xcbe338837261475f088831061216ade09c587dcd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xd46ee8815f141749834af0df21e744459efec75f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xdc1dfa22824af4e423a558bbb6c53a31c3c11dcc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xddb857badb65657ebc766c90045403875fc29d27` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xdf789e510c147287038816fb9fab46c1ff52f96c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xdfc09a09c25bfb9c9aeef5799d1ed049a590e80c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xf5857ddfbfe411191e640b4b73b1ddf6143cae42` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xf7a6366bba74a3de67a447f6a8642b472225e6b5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x23da31aa73720f770c21e9ec0a8382ec279e0c85` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x26e5cf7c90e5d882b59bd36f960a650546aa083b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-394140 | `0x320d86e14a9c54e11d05e1e0d88e2c824504c108` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x332044ba6a195dd889b12a3c15f7381bba7d059a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-394142 | `0x5bcb07db6d3f55eef03ffdd14a571da35a9ca401` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x6ba39f795e10a4b51651d35b9659d1a33ab8ec27` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-394144 | `0x6bcad56fe6621d57c4254b70a6d057942842c9a0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x6cc2b6317881ab245c7a74dd0f6bb2467669ad9f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-394145 | `0x7bc01aff86e64949f39de616c950a1f094695ec4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x7d8f3cc6ade4bb0448d649e0e0ba3016815addda` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x8981631f7e539659f15563fda32b1c4822cccd5d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x8b2e63ac7be3a1ce58f0e0b212e14bec5c977b8c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x8dd0f5905e94d07258b0a61109402985bfbb1eda` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-394146 | `0x9ad2aa3c4a50c35d62b35718cd391c172d6659da` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x9e40435783cf2e84136f4b9b6032b5d0f13f506f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x9ff64906ccdb0fb6fe5707bcbe7bb151a74556ab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xaf7057b82a8bbc21e64d4df7d078c8fd5f25b69e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xb43358d18484a97a3c509accfbc0d5f57013d4d3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xb61763cf40e53df924856925461d5914c274ecd8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-394147 | `0xb8178d44a945a42644782d20cce59477897d0de1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xbd7f62c3a14ddec356847f6a9ec38554ca114921` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xcee3d14c8ba89cb0ebefe26853fa4c4748ce6daf` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-394148 | `0xd096b0271064dffcb7cde699b25850dddbfd71d1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-394149 | `0xdc2187ef2832a450bc06778cfc01028afb6397cc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xdff447065d89543c94a58dc91805d669e42c89bd` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-394150 | `0xf22929a43bff92e2303a55b2a88e3fcbc7b6b1ef` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-394151 | `0xf49f899d70db6518e3d65eaf1c5d742c205eca83` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x0be973e0becf60d6c13e36c38aac6c3faf821fd8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x27bb829b2f7197630df7191e6e4d14dac984fc33` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x2f8a0c0671846544dda07256efceb646628b56f2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x4eddb7970d63a0769cdcd19d6cc8e2e59cd51269` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x4f036a97e13dfa39bb25d563dc1a73325829ddab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x50e85c754929840b58614f48e29c64bc78c58345` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x6ff9929356d8cfa2a7fb1b76b52d005d7d8eabd3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x80833299c5df98413cd020eab570d302984e772c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x815274e272ad3275a36037a0500ea24921a5abed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x84f5ad76bafbe04ce2fa673a5354525cb83b49f3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xabac3d6b281bbe0fc0f67b26247cb27994eaacaf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xb33ec96c31a6dd589ecf6e6e0460a2b1f28de975` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xb6d1d9b110ccbf9df7d14b7d38748cf8cbfd85ad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xd1745488d588e1bf3deda5a40a84d7e9187448c4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xe9f6786bfaa185357ccd2cb03483a27eaf0931f2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xf5c3d35c14dbc1fb7c977061a2bc679e32be168d` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 67
- Live contracts: 0
- Unknown liveness contracts: 67
- Source-verified contracts: 0
- Currently scope-matched contracts retained as-is: 0
- Classification counts: unverified unclassified=67

| Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|
| unverified unclassified | UnnamedContract<br>`0x2299de1e9b010607e06d790fdbe002e23e7026d1` | non_address_book | unknown | unknown | unverified | n/a | `0xaeb6eda99c37589667e4ded9e1081a93307ecc7a` |
| unverified unclassified | UnnamedContract<br>`0x2359677e513bc83106268514c5b2de3c29c849ea` | non_address_book | unknown | unknown | unverified | n/a | `0xaeb6eda99c37589667e4ded9e1081a93307ecc7a` |
| unverified unclassified | UnnamedContract<br>`0x263fa1c180889b3a3f46330f32a4a23287e99fc9` | non_address_book | unknown | unknown | unverified | n/a | `0xaeb6eda99c37589667e4ded9e1081a93307ecc7a` |
| unverified unclassified | UnnamedContract<br>`0x273f7d7e84d3cd5f54c3aff28647e8e340189e4c` | non_address_book | unknown | unknown | unverified | n/a | `0xaeb6eda99c37589667e4ded9e1081a93307ecc7a` |
| unverified unclassified | UnnamedContract<br>`0x2d2b8a154efe0e5dd9e8e923ead9abb7e5d770c3` | non_address_book | unknown | unknown | unverified | n/a | `0xaeb6eda99c37589667e4ded9e1081a93307ecc7a` |
| unverified unclassified | UnnamedContract<br>`0x2f800db0fdb5223b3c3f354886d907a671414a7f` | non_address_book | unknown | unknown | unverified | n/a | `0xaeb6eda99c37589667e4ded9e1081a93307ecc7a` |
| unverified unclassified | UnnamedContract<br>`0x3853ca11338c23c3e1d6a5606e251728bac08af8` | non_address_book | unknown | unknown | unverified | n/a | `0xaeb6eda99c37589667e4ded9e1081a93307ecc7a` |
| unverified unclassified | UnnamedContract<br>`0x46a4373c42042c90245c665dec81a6f2d0c78cc6` | non_address_book | unknown | unknown | unverified | n/a | `0xaeb6eda99c37589667e4ded9e1081a93307ecc7a` |
| unverified unclassified | UnnamedContract<br>`0x46de45b749c2ebb01363369481408990935dc456` | non_address_book | unknown | unknown | unverified | n/a | `0xaeb6eda99c37589667e4ded9e1081a93307ecc7a` |
| unverified unclassified | UnnamedContract<br>`0x54a3ac0628bc8af714ec1725d216aa19658ec791` | non_address_book | unknown | unknown | unverified | n/a | `0xaeb6eda99c37589667e4ded9e1081a93307ecc7a` |
| unverified unclassified | UnnamedContract<br>`0x586f8df56f2d067cbe8d67658663781a51cf88f0` | non_address_book | unknown | unknown | unverified | n/a | `0xaeb6eda99c37589667e4ded9e1081a93307ecc7a` |
| unverified unclassified | UnnamedContract<br>`0x639dfea994b139a3d6c3750d4c4e24daec039bd7` | non_address_book | unknown | unknown | unverified | n/a | `0xaeb6eda99c37589667e4ded9e1081a93307ecc7a` |
| unverified unclassified | UnnamedContract<br>`0x6b1e44e38823e8e412f214817526af5903c7f6a3` | non_address_book | unknown | unknown | unverified | n/a | `0xaeb6eda99c37589667e4ded9e1081a93307ecc7a` |
| unverified unclassified | UnnamedContract<br>`0x7cb7c0484d4f2324f51d81e2368823c20aef8072` | non_address_book | unknown | unknown | unverified | n/a | `0xaeb6eda99c37589667e4ded9e1081a93307ecc7a` |
| unverified unclassified | UnnamedContract<br>`0x8a4d7458dde3023a3b24225d62087701a88b09dd` | non_address_book | unknown | unknown | unverified | n/a | `0xaeb6eda99c37589667e4ded9e1081a93307ecc7a` |
| unverified unclassified | UnnamedContract<br>`0x98a7840c33a9aa42ffe16f7da9a0e6dd6ea5f98f` | non_address_book | unknown | unknown | unverified | n/a | `0xaeb6eda99c37589667e4ded9e1081a93307ecc7a` |
| unverified unclassified | UnnamedContract<br>`0xa23db84c72faa6d5c0cdd0017c0e8e4edd99fa72` | non_address_book | unknown | unknown | unverified | n/a | `0xaeb6eda99c37589667e4ded9e1081a93307ecc7a` |
| unverified unclassified | UnnamedContract<br>`0xa59762cd8580f7b23d1e64820c455ee7ef3f881c` | non_address_book | unknown | unknown | unverified | n/a | `0xaeb6eda99c37589667e4ded9e1081a93307ecc7a` |
| unverified unclassified | UnnamedContract<br>`0xa81f17ead463b0c5b4cbd00386b99469f6fcc20a` | non_address_book | unknown | unknown | unverified | n/a | `0xaeb6eda99c37589667e4ded9e1081a93307ecc7a` |
| unverified unclassified | UnnamedContract<br>`0xa90daf1975ba13c26f63976e0fd73a21f966ee0d` | non_address_book | unknown | unknown | unverified | n/a | `0xaeb6eda99c37589667e4ded9e1081a93307ecc7a` |
| unverified unclassified | UnnamedContract<br>`0xaebd117b013a1d5850ab207efcc59f03937b6048` | non_address_book | unknown | unknown | unverified | n/a | `0xaeb6eda99c37589667e4ded9e1081a93307ecc7a` |
| unverified unclassified | UnnamedContract<br>`0xb08b92aa7e9bdac12e61ff7b2556252882178b03` | non_address_book | unknown | unknown | unverified | n/a | `0xaeb6eda99c37589667e4ded9e1081a93307ecc7a` |
| unverified unclassified | UnnamedContract<br>`0xb69f9f803cec728db503d7e37c1723241281a8a7` | non_address_book | unknown | unknown | unverified | n/a | `0xaeb6eda99c37589667e4ded9e1081a93307ecc7a` |
| unverified unclassified | UnnamedContract<br>`0xbb64ed0a91824405ce6a36472b08c310d07a95ee` | non_address_book | unknown | unknown | unverified | n/a | `0xaeb6eda99c37589667e4ded9e1081a93307ecc7a` |
| unverified unclassified | UnnamedContract<br>`0xc83dc91b3cd45d65f981c0018b3eb1c43a468381` | non_address_book | unknown | unknown | unverified | n/a | `0xaeb6eda99c37589667e4ded9e1081a93307ecc7a` |
| unverified unclassified | UnnamedContract<br>`0xca734327315cb3bcab16212c2b6ed7afc58db579` | non_address_book | unknown | unknown | unverified | n/a | `0xaeb6eda99c37589667e4ded9e1081a93307ecc7a` |
| unverified unclassified | UnnamedContract<br>`0xcbe338837261475f088831061216ade09c587dcd` | non_address_book | unknown | unknown | unverified | n/a | `0xaeb6eda99c37589667e4ded9e1081a93307ecc7a` |
| unverified unclassified | UnnamedContract<br>`0xd46ee8815f141749834af0df21e744459efec75f` | non_address_book | unknown | unknown | unverified | n/a | `0xaeb6eda99c37589667e4ded9e1081a93307ecc7a` |
| unverified unclassified | UnnamedContract<br>`0xdc1dfa22824af4e423a558bbb6c53a31c3c11dcc` | non_address_book | unknown | unknown | unverified | n/a | `0xaeb6eda99c37589667e4ded9e1081a93307ecc7a` |
| unverified unclassified | UnnamedContract<br>`0xddb857badb65657ebc766c90045403875fc29d27` | non_address_book | unknown | unknown | unverified | n/a | `0xaeb6eda99c37589667e4ded9e1081a93307ecc7a` |
| unverified unclassified | UnnamedContract<br>`0xdf789e510c147287038816fb9fab46c1ff52f96c` | non_address_book | unknown | unknown | unverified | n/a | `0xaeb6eda99c37589667e4ded9e1081a93307ecc7a` |
| unverified unclassified | UnnamedContract<br>`0xdfc09a09c25bfb9c9aeef5799d1ed049a590e80c` | non_address_book | unknown | unknown | unverified | n/a | `0xaeb6eda99c37589667e4ded9e1081a93307ecc7a` |
| unverified unclassified | UnnamedContract<br>`0xf5857ddfbfe411191e640b4b73b1ddf6143cae42` | non_address_book | unknown | unknown | unverified | n/a | `0xaeb6eda99c37589667e4ded9e1081a93307ecc7a` |
| unverified unclassified | UnnamedContract<br>`0xf7a6366bba74a3de67a447f6a8642b472225e6b5` | non_address_book | unknown | unknown | unverified | n/a | `0xaeb6eda99c37589667e4ded9e1081a93307ecc7a` |
| unverified unclassified | UnnamedContract<br>`0x23da31aa73720f770c21e9ec0a8382ec279e0c85` | non_address_book | unknown | unknown | unverified | n/a | `0xbc262aab439dec6eb805ee6ca11495cb906ca32c` |
| unverified unclassified | UnnamedContract<br>`0x26e5cf7c90e5d882b59bd36f960a650546aa083b` | non_address_book | unknown | unknown | unverified | n/a | `0xbc262aab439dec6eb805ee6ca11495cb906ca32c` |
| unverified unclassified | UnnamedContract<br>`0x332044ba6a195dd889b12a3c15f7381bba7d059a` | non_address_book | unknown | unknown | unverified | n/a | `0xbc262aab439dec6eb805ee6ca11495cb906ca32c` |
| unverified unclassified | UnnamedContract<br>`0x6ba39f795e10a4b51651d35b9659d1a33ab8ec27` | non_address_book | unknown | unknown | unverified | n/a | `0xbc262aab439dec6eb805ee6ca11495cb906ca32c` |
| unverified unclassified | UnnamedContract<br>`0x6cc2b6317881ab245c7a74dd0f6bb2467669ad9f` | non_address_book | unknown | unknown | unverified | n/a | `0xbc262aab439dec6eb805ee6ca11495cb906ca32c` |
| unverified unclassified | UnnamedContract<br>`0x7d8f3cc6ade4bb0448d649e0e0ba3016815addda` | non_address_book | unknown | unknown | unverified | n/a | `0xbc262aab439dec6eb805ee6ca11495cb906ca32c` |
| unverified unclassified | UnnamedContract<br>`0x8981631f7e539659f15563fda32b1c4822cccd5d` | non_address_book | unknown | unknown | unverified | n/a | `0xbc262aab439dec6eb805ee6ca11495cb906ca32c` |
| unverified unclassified | UnnamedContract<br>`0x8b2e63ac7be3a1ce58f0e0b212e14bec5c977b8c` | non_address_book | unknown | unknown | unverified | n/a | `0xbc262aab439dec6eb805ee6ca11495cb906ca32c` |
| unverified unclassified | UnnamedContract<br>`0x8dd0f5905e94d07258b0a61109402985bfbb1eda` | non_address_book | unknown | unknown | unverified | n/a | `0xbc262aab439dec6eb805ee6ca11495cb906ca32c` |
| unverified unclassified | UnnamedContract<br>`0x9e40435783cf2e84136f4b9b6032b5d0f13f506f` | non_address_book | unknown | unknown | unverified | n/a | `0xbc262aab439dec6eb805ee6ca11495cb906ca32c` |
| unverified unclassified | UnnamedContract<br>`0x9ff64906ccdb0fb6fe5707bcbe7bb151a74556ab` | non_address_book | unknown | unknown | unverified | n/a | `0xbc262aab439dec6eb805ee6ca11495cb906ca32c` |
| unverified unclassified | UnnamedContract<br>`0xaf7057b82a8bbc21e64d4df7d078c8fd5f25b69e` | non_address_book | unknown | unknown | unverified | n/a | `0xbc262aab439dec6eb805ee6ca11495cb906ca32c` |
| unverified unclassified | UnnamedContract<br>`0xb43358d18484a97a3c509accfbc0d5f57013d4d3` | non_address_book | unknown | unknown | unverified | n/a | `0xbc262aab439dec6eb805ee6ca11495cb906ca32c` |
| unverified unclassified | UnnamedContract<br>`0xb61763cf40e53df924856925461d5914c274ecd8` | non_address_book | unknown | unknown | unverified | n/a | `0xbc262aab439dec6eb805ee6ca11495cb906ca32c` |
| unverified unclassified | UnnamedContract<br>`0xbd7f62c3a14ddec356847f6a9ec38554ca114921` | non_address_book | unknown | unknown | unverified | n/a | `0xbc262aab439dec6eb805ee6ca11495cb906ca32c` |
| unverified unclassified | UnnamedContract<br>`0xcee3d14c8ba89cb0ebefe26853fa4c4748ce6daf` | non_address_book | unknown | unknown | unverified | n/a | `0xbc262aab439dec6eb805ee6ca11495cb906ca32c` |
| unverified unclassified | UnnamedContract<br>`0xdff447065d89543c94a58dc91805d669e42c89bd` | non_address_book | unknown | unknown | unverified | n/a | `0xbc262aab439dec6eb805ee6ca11495cb906ca32c` |
| unverified unclassified | UnnamedContract<br>`0x0be973e0becf60d6c13e36c38aac6c3faf821fd8` | non_address_book | unknown | unknown | unverified | n/a | `0xd632d38ae05b2b760f5793b57c69246c26bf7e8d` |
| unverified unclassified | UnnamedContract<br>`0x27bb829b2f7197630df7191e6e4d14dac984fc33` | non_address_book | unknown | unknown | unverified | n/a | `0xd632d38ae05b2b760f5793b57c69246c26bf7e8d` |
| unverified unclassified | UnnamedContract<br>`0x2f8a0c0671846544dda07256efceb646628b56f2` | non_address_book | unknown | unknown | unverified | n/a | `0xd632d38ae05b2b760f5793b57c69246c26bf7e8d` |
| unverified unclassified | UnnamedContract<br>`0x4eddb7970d63a0769cdcd19d6cc8e2e59cd51269` | non_address_book | unknown | unknown | unverified | n/a | `0xd632d38ae05b2b760f5793b57c69246c26bf7e8d` |
| unverified unclassified | UnnamedContract<br>`0x4f036a97e13dfa39bb25d563dc1a73325829ddab` | non_address_book | unknown | unknown | unverified | n/a | `0xd632d38ae05b2b760f5793b57c69246c26bf7e8d` |
| unverified unclassified | UnnamedContract<br>`0x50e85c754929840b58614f48e29c64bc78c58345` | non_address_book | unknown | unknown | unverified | n/a | `0xd632d38ae05b2b760f5793b57c69246c26bf7e8d` |
| unverified unclassified | UnnamedContract<br>`0x6ff9929356d8cfa2a7fb1b76b52d005d7d8eabd3` | non_address_book | unknown | unknown | unverified | n/a | `0xd632d38ae05b2b760f5793b57c69246c26bf7e8d` |
| unverified unclassified | UnnamedContract<br>`0x80833299c5df98413cd020eab570d302984e772c` | non_address_book | unknown | unknown | unverified | n/a | `0xd632d38ae05b2b760f5793b57c69246c26bf7e8d` |
| unverified unclassified | UnnamedContract<br>`0x815274e272ad3275a36037a0500ea24921a5abed` | non_address_book | unknown | unknown | unverified | n/a | `0xd632d38ae05b2b760f5793b57c69246c26bf7e8d` |
| unverified unclassified | UnnamedContract<br>`0x84f5ad76bafbe04ce2fa673a5354525cb83b49f3` | non_address_book | unknown | unknown | unverified | n/a | `0xd632d38ae05b2b760f5793b57c69246c26bf7e8d` |
| unverified unclassified | UnnamedContract<br>`0xabac3d6b281bbe0fc0f67b26247cb27994eaacaf` | non_address_book | unknown | unknown | unverified | n/a | `0xd632d38ae05b2b760f5793b57c69246c26bf7e8d` |
| unverified unclassified | UnnamedContract<br>`0xb33ec96c31a6dd589ecf6e6e0460a2b1f28de975` | non_address_book | unknown | unknown | unverified | n/a | `0xd632d38ae05b2b760f5793b57c69246c26bf7e8d` |
| unverified unclassified | UnnamedContract<br>`0xb6d1d9b110ccbf9df7d14b7d38748cf8cbfd85ad` | non_address_book | unknown | unknown | unverified | n/a | `0xd632d38ae05b2b760f5793b57c69246c26bf7e8d` |
| unverified unclassified | UnnamedContract<br>`0xd1745488d588e1bf3deda5a40a84d7e9187448c4` | non_address_book | unknown | unknown | unverified | n/a | `0xd632d38ae05b2b760f5793b57c69246c26bf7e8d` |
| unverified unclassified | UnnamedContract<br>`0xe9f6786bfaa185357ccd2cb03483a27eaf0931f2` | non_address_book | unknown | unknown | unverified | n/a | `0xd632d38ae05b2b760f5793b57c69246c26bf7e8d` |
| unverified unclassified | UnnamedContract<br>`0xf5c3d35c14dbc1fb7c977061a2bc679e32be168d` | non_address_book | unknown | unknown | unverified | n/a | `0xd632d38ae05b2b760f5793b57c69246c26bf7e8d` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [Cross-Chain Pool Bridge, Team Omega, July 2022](https://gateway.pinata.cloud/ipfs/QmYBKAjhcvuPKyxCnsmC2ArfXUkfHj8wT76wV8BuJP3E1Z) | Team Omega | Audit | 2022-07 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [28288] Cross-Chain Pool Bridge, Team Omega, July 2022 — no match: Audit report dated July 11, 2022. Scope explicitly lists four contracts: ToucanCrosschainMessenger, ToucanCrosschainMessengerStorage, BaseCarbonTonne, and NCT.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| Cross-Chain Pool Bridge, Team Omega, July 2022 | ToucanCrosschainMessenger | unmatched — not counted | — | listed in scope | no |
| Cross-Chain Pool Bridge, Team Omega, July 2022 | ToucanCrosschainMessengerStorage | unmatched — not counted | — | listed in scope | no |
| Cross-Chain Pool Bridge, Team Omega, July 2022 | BaseCarbonTonne | unmatched — not counted | — | listed in scope | no |
| Cross-Chain Pool Bridge, Team Omega, July 2022 | NCT | unmatched — not counted | — | listed in scope | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| base | `0x20b048fa035d5763685d695e66adf62c5d9f5055` | Biochar | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x6a4549759c475d845d4ae074b3656dc257490da5` | FeeCalculator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x09da61144b05c4a80b2d3c67bd72d740922cb186` | RetirementCertificates | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x20b00ac9c365b33b4d5ba5e7c075f2f94df11ca0` | ToucanCarbonOffsetsFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 16 |
| upstream | 0 |
| standard_library | 4 |
| needs_review | 76 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 4 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=1
- Match method counts: n/a

Zero-match audit list:

- [28288] Cross-Chain Pool Bridge, Team Omega, July 2022

Fork inheritance lineage and inherited audits are included when available.
