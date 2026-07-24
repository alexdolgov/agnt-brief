# Agentic Audit Brief: Avalaunch

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 13 (0 matched; 13 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `badfb69ca75b1f24c1a11ab95b6fafb44eb35f63eed2bc554b58d06f531dd5bd`

⚠️ Lifecycle status: UNKNOWN - TVL trajectory indicates non-active lifecycle.

## Project Overview

- Project: Avalaunch (`avalaunch`)
- Website: [https://avalaunch.app](https://avalaunch.app)
- Lifecycle: unknown (Tier 0, TVL trajectory)
- Generated: 2026-07-24T07:45:00.000Z
- Pipeline run: brief-priority-deployer-expansion-20260724-v1
- Chains: avalanche
- Contract surface: 41 unique implementations (149 raw deployments)
- Coverage basis: not assessable — No eligible owned address-book contracts are available for an operational-liveness denominator.
- DeFi Llama TVL: $6,161,087.01
- On-chain TVL (included contracts): $28,695,461.29
- TVL by chain: Avalanche $28,695,461.29

## ⚠️ Limited Contract Surface

This brief covers only 0 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

No contract logic was present for Avalaunch in the closed normalized topography run; this brief does not infer a protocol purpose from missing code.

### Architecture

The activated project remains an explicit cohort member with an empty normalized logic-topography closure.

## Logic Topography

- Exact-run contract rows: 0
- Structural roles: none
- Contract kinds: none
- Detected standards: none
- Frameworks: none
- Upgradeable-pattern rows: 0

## Contract Surface Quality

- Operational liveness prerequisite: not_applicable; 0/0 eligible owned address-book contracts resolved from completed operational-liveness snapshots.
- Logic-topography rows: 0; live/inactive and live-deployment-unit totals are withheld until liveness completes.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No eligible owned address-book contracts are available for an operational-liveness denominator.
- Address-book implementation classification: 0 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 41 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 6
- Operational liveness: not_applicable; 0/0 eligible owned address-book contracts resolved. Deployed-live counts are withheld from coverage.
- All block-explorer-verified implementations audited (incl. non-live): 0/16
- Verified + Unaudited implementations: 16
- Verified by bytecode match: 0
- Unverified implementations: 25
- Unique implementations: 41
- Raw deployments: 149
- Audits discovered: 13 (13 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-01 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 13 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [unknown]. ASD of n/a represents exposure in a protocol with unknown activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (16)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| XavaToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 6 deployments: avalanche `0x1a7931de2b1ca136d54bd46f51892e0f0e23fde8`; avalanche `0x897ee1505958067c343ec6993398995f477ace17`; avalanche `0x90ee87f15ab3f5929513db072aec28a32222e2cc`; avalanche `0xc8d81593318e07d8aabe5ae1619f9e37888c4433`; avalanche `0xd1c3f94de7e5b45fa4edbba472491a9f4b166fc4`; avalanche `0xfbd59ab2c29bfbd5f37c587fb4ed1366d7b7be2b` | ⚠️ Unaudited |
| Admin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 2 deployments: avalanche `0x0ce58b15874cb9aa3e64c0ae95615c6112004a32`; avalanche `0x68c58e1107bce9be240af941151d42101086af56` | ⚠️ Unaudited |
| Airdrop | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 74 deployments: avalanche `0x00d43f69fab8860c2362a96478447256c2a3daff`; avalanche `0x017f0f2747953bdc30decd1603d26d491ef24718`; avalanche `0x08fc7ca108ff179fc381cdbb551385a1dafc3f20`; avalanche `0x0a3db483d289545990b67a9ac6205385755129d3`; avalanche `0x0b8efd8174398222d3f922eb6ebe9375d71c23de`; avalanche `0x0c40fd87d4ac71bb88b76b23a680f91efa4b6616`; avalanche `0x16108a6ee1c45a0e7d12af0f934d110ea11d43e5`; avalanche `0x20f795bc4f916891e9c6c02edb59055aa782ea08`; avalanche `0x25f1c595cd8aa9a9e1eb16ac970b94e13637f1f0`; avalanche `0x30007027a2316714859a853fd2638cd39d6f2e87`; avalanche `0x306a7750f0a861214a4f1413822b6f3a12767e89`; avalanche `0x339cf62cb6a2e4f87eb1b6b3661f3f6c3a130328`; avalanche `0x364e232d9880e4a3e8505debbc2f93c6a896233f`; avalanche `0x3938246c3f0e614e834b9f63a7c2e540f5c573e2`; avalanche `0x3e1a1f5a9dc367a82ed2b868e2122c9d48c3f3d7`; avalanche `0x3f58d93477e6b555f2fe2808b787bf69380ac8a7`; avalanche `0x3ff9ae983d73ff044ae7f1bb48ec0489287c9b00`; avalanche `0x410c62978a8784709906a084834a71e07e9572d4`; avalanche `0x46654f2553039c4380c48e74cc697e59db494525`; avalanche `0x47b89df0cc711d286177588562337f30237c88be`; avalanche `0x49760d434fe42cb0379edc5d04fbbe3909acc482`; avalanche `0x49ca181191897e10e15930097d6ac44592f45b58`; avalanche `0x5318d1490ffe7ef83a1b63e2bb1533378906dfea`; avalanche `0x5c3d31104036f890195ea380662aca9a1f8ed70c`; avalanche `0x5de5bdaf5f673bd01d91379b0fc9386e41f0b177`; avalanche `0x5e1c8c3e8a256f414b4731cc11b796cbc10c7d00`; avalanche `0x5e2f141bb237e71f045a497c431144a72b5077a5`; avalanche `0x65cedf2516b822a30ccee271db9d248e0a9d9b86`; avalanche `0x67a776ce18c5e71abb01273a2971e32469f5bbe1`; avalanche `0x6818edffa6367e7ee365047bb711af2e180e9dd3`; avalanche `0x6d1c24cfc33e2df39223e6bd4d7fa000e3cca450`; avalanche `0x6f1c0d40aba87fcb7e38fc2ed46080e562497c6e`; avalanche `0x76b9e19eba8e4cd90dd46e642d642813723d626e`; avalanche `0x79c17438d833ba43aea2ef4e8c9afd22f8dea870`; avalanche `0x7b72fcc48ff3e534659b74d95b57141e1174fb59`; avalanche `0x7d53d45b6d929662b5586db2dbd52068c5176655`; avalanche `0x7f9ec1de861f16fb9218e6fe86b83359b8b9c294`; avalanche `0x7fb3d0b92adf411b3bc1aadae0670ea641b0b9bc`; avalanche `0x8016ecd1303ea7ca5ec9d1827bbbc30b2935b394`; avalanche `0x80bbeaaf3bdd029ac6bb7d8df02635e07c225187`; avalanche `0x82fc023b1dece6217d7ed1870a8eb45fe2c88286`; avalanche `0x8408656b59758f1bb8dec232c5f62ee7bfa9a017`; avalanche `0x846d02b89ceb49d70c6df3e1ac53afb3dbb137a7`; avalanche `0x90e996de9843ac8d6b69ce9a7c97bfc301e3e8a2`; avalanche `0x9218e2b14a09cf707a2980f303b967eee0bc3890`; avalanche `0x98873638a695dc8b5443bdfc704191387d788c9d`; avalanche `0x9b4cc486d610091ed05a73bab22b94bb5b2c0b57`; avalanche `0x9f764059a65d08d8269920e26b5fd3d8a81d9054`; avalanche `0xa4ff8f36e5bd5b1df9f1fe261bd68f45db1a1b9e`; avalanche `0xa57e3dde79298ade6d2ca66032bd7d636e2387a2`; avalanche `0xa664a4abe3e9c0b90789f8dbb185c0d0cbcb59e2`; avalanche `0xacba2f42b7fa9124f119d7a9e7ac02b58bf9204d`; avalanche `0xaed406313f216dcd1892bdd68540364bb2ddb9a9`; avalanche `0xaf4dff2ba4234f02bfe187ec55eb58b6bfa630e5`; avalanche `0xb4c92006cefe40e0bfd57cee81a3a95b06ffa5ff`; avalanche `0xbfb6a1425fda2b09cfc761a40efe536fe0bef842`; avalanche `0xc21534b586bb29e5005efe8c2361b774e4027521`; avalanche `0xc56cab075b12c26c74029069d95b49d145c4ab52`; avalanche `0xc86c61654f3176fde88963fc62ebe73324e04412`; avalanche `0xc8ea6fb14d82f88a8a5075774571d1d4cd1af00e`; avalanche `0xc90d206768131767e3e56ecd8fb352d4c3f25060`; avalanche `0xcb846bde83918cc48759899e6d5cd79fff14440f`; avalanche `0xd520e4a94c271ff176b03dfb512af17f178156f7`; avalanche `0xd98b7ec2cf985edff3959de5de5a4bc1f151d70a`; avalanche `0xde9b91f04c7db47fe74ba5cdfd01fb3c45078892`; avalanche `0xecee8b16c6e24f3c8eafb460c99f62208cb18b39`; avalanche `0xf001d3fe81f45cc47e6cd94c8ea130ddd128a68f`; avalanche `0xf0843402ffbd94be626ac26328d5decfbfb25990`; avalanche `0xf3aa6b4a79e6cab92b80b6866147d0e775a700a4`; avalanche `0xf42111f50cfc35f072115c082280653be0a6f5fb`; avalanche `0xfa5d23292f1d6bcc3c4c0a698417a6479b5303bf`; avalanche `0xfaa5ec315eeea382830414ea4cc02262289394d6`; avalanche `0xfb42e80921013200413deccdba07c30a39b9d17e`; avalanche `0xfff19c280566be8fd6528f23938af8d34bced3f6` | ⚠️ Unaudited |
| AirdropAVAX | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 4 deployments: avalanche `0x4f7dd657037e6ea7cdad6eafdd20a8a336935b94`; avalanche `0xa3dddcf122f259d297f10ee68dbd8ae428b1e7a1`; avalanche `0xb1b6b9ce5fcb7a207b85c1a3ed3085618ace65eb`; avalanche `0xb7af8d63f4809231768bfb8222ab9388069b6c9b` | ⚠️ Unaudited |
| AllocationStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | avalanche | n/a | 9 deployments: avalanche `0x027d6ea70bc4904c2bfc00b014571c6c4edf0dd6`; avalanche `0x897e8265454fd44cac7d739827d6b46bf1d6a8ff`; avalanche `0xa6eb49f89a4eb6ec9f2165637d852dc61d065410`; avalanche `0xb0ef1a6fa8856ffbc7bf2c5ce434d232be4d00de`; avalanche `0xb364d7965b1e99b862bca2565cbaa62d85c0ae40`; avalanche `0xb380566edde68617c652d452102b8eda9fd3a403`; avalanche `0xcae948ee3ee6fa6c0521ef7c5c6f0bee444b9a81`; avalanche `0xe4e68408dccf7775f8f429c97ebbd3c3fac0b116`; avalanche `0xfbcea5af909e798cffc7653968ddf01b9cb1a6ea` | ⚠️ Unaudited |
| AllocationStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | 2 deployments: avalanche `0xa6a01f4b494243d84cf8030d982d7eeb2aecd329`; avalanche `0xcce0130263fda75e1c87b844a49db7066fa28c77` | ⚠️ Unaudited |
| AvalaunchCollateral | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | 2 deployments: avalanche `0x7e5f6ab97eef4f28900dc0f713eb99d3c077bbda`; avalanche `0x8b1966e6383958395c52d3e8d49fadfe6d9c42b4` | ⚠️ Unaudited |
| AvalaunchCollateral | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa95da4598d509f621f45d8b97283928bd0815ca4` | ⚠️ Unaudited |
| AvalaunchMarketplace | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | 2 deployments: avalanche `0x863c5aad62c8086746d03e10a7b327504e154f08`; avalanche `0xb6d16bd6872a67b285853664ef1f1149ba6f223a` | ⚠️ Unaudited |
| AvalaunchNFT | token | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe29561fdc8a759742403d537dd1fadcaba0b346a` | ⚠️ Unaudited |
| AvalaunchSale | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 4 deployments: avalanche `0x0a1a9eb0d984f1c194c85bace2070724101272e3`; avalanche `0x16bc59978851012ada4843e49df2a314ea38665a`; avalanche `0x6168bbf5ef2001981c8b300723d7f300f01871ff`; avalanche `0xea3283f19a56abb2640b704b2905606c9577f75a` | ⚠️ Unaudited |
| AvalaunchSaleV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 5 deployments: avalanche `0x4e05033e96ecb624507835ffccb451ecea1e7156`; avalanche `0x60d57fe620dbcf7d8d96b8bcfbf504fd3135ec42`; avalanche `0x74bafbb89b4dd318d399bf748fede0df262de47d`; avalanche `0xc354d85c24a724fda55084075fdf25c9e9cf35aa`; avalanche `0xeef28e34ed3d0f64a01ecbfa3f7757014be8548b` | ⚠️ Unaudited |
| FarmingXava | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 2 deployments: avalanche `0x6e125b68f0f1963b09add1b755049e66f53cc1ea`; avalanche `0xe82aae7fc62547bdfc36689d0a83de36ff034a68` | ⚠️ Unaudited |
| PangolinPair | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x42152bdd72de8d6767fe3b4e17a221d6985e8b25` | ⚠️ Unaudited |
| ProxyAdmin | governance | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 3 deployments: avalanche `0x796ec8bee2871dd820f176730669848d909914c0`; avalanche `0x951aa264d7e6a1c267c24c250293e901b89d29e3`; avalanche `0xc21a5248e0fd90c16a9835735687b8f96a1916bb` | ⚠️ Unaudited |
| SalesFactory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 5 deployments: avalanche `0x29f351cdd647195553263924cc3abb017cb7fc7b`; avalanche `0x2d37e5d424cd24d374253e58e54ba8ee395b0e2f`; avalanche `0x4c858df3bebba1cdb73f49b002f095bb15df4542`; avalanche `0x9eb3fef2963b359562694c391a6daf18322fb2c6`; avalanche `0xd124d278ad66e383dc789d593fc719f7d416d172` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (25)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Proxy (impl: 0x4c7ccd59df34f6f86311c4ad5ce922f9c83c6c3c) | proxy | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | 2 deployments: avalanche `0x3c629ac8709edfcd98f1ea36e763bb25e909dc11`; avalanche `0x4c7ccd59df34f6f86311c4ad5ce922f9c83c6c3c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x089a3f7e7afc96d73e57edd1aa456e1c99b1f539` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0e5505404c0bfc6fc9f70bb1e7d015b7daac2fc6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x17fdfd58ecc53ff79e46cb617346004ebf22173e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x19f039f18f7f1996dcab3b0b74f4597d1d96fc05` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x23a391bfc5599f8c02ae121125536e3d72d19179` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x281e9179ce50b951b77d3b0d92456bd3e4f5430a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x36a5d76f58d297cf40723771e82009c76b4f95ca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x4f579b76b9413d3c4a7981a7ea0bbbb7a0d54332` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x61214cf4c134709dcfcb7f47e9fff22217cbe9d5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x635db067bbd00ede40f47614e65bdb65bb8715a3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x8498a16b04e754f873198434063c8684d506a967` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x86f0942d25859f0791cc3d568ba0a099bbe1ee69` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x87b1beaab6f7a40b28a2def896c50e57061c3b36` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa30a84b75aeefa54b8d19afd77c8e39953d6ae8b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb3e0526b3a942ddd3ef1fd0da6808d41418ffcae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb53e0fa6898c97a477f9c05733bdc10b78e10d6a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb650346d08a0a01ba08f7023c6b6d761b69f1430` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb9db9e6a5943e3a21ce87d61a1f5d0b59a2c3af6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xbd27ece0637518c519aa4323d93281ad179ca65b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xbf838ffffd86805933d8c1f971acfd59bbae5026` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc750773926ab42081395aa1b2e3b6b1414892b4f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe7bdfaa29653082e53c564fc849a1e5fa49086e8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xf73be8d83320399e5899ebed193f91a2098284ae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xfede8cdd7d8c2cc0824f1f7d1b6ca6c0996ea54b` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 77
- Live contracts: 0
- Unknown liveness contracts: 77
- Source-verified contracts: 55
- Currently scope-matched contracts retained as-is: 0
- Classification counts: candidate review=5, source verified unclassified=50, unverified unclassified=22

| Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|
| candidate review | AvalaunchCollateral<br>`0x8b1966e6383958395c52d3e8d49fadfe6d9c42b4` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xd0cae2309f322e24fbbc7e9d5f4995b02ef901e4` |
| candidate review | AvalaunchCollateral<br>`0xa95da4598d509f621f45d8b97283928bd0815ca4` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xd0cae2309f322e24fbbc7e9d5f4995b02ef901e4` |
| candidate review | AvalaunchSale<br>`0x0a1a9eb0d984f1c194c85bace2070724101272e3` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xd0cae2309f322e24fbbc7e9d5f4995b02ef901e4` |
| candidate review | AvalaunchSale<br>`0xea3283f19a56abb2640b704b2905606c9577f75a` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xd0cae2309f322e24fbbc7e9d5f4995b02ef901e4` |
| candidate review | TransparentUpgradeableProxy<br>`0x7e5f6ab97eef4f28900dc0f713eb99d3c077bbda` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xd0cae2309f322e24fbbc7e9d5f4995b02ef901e4` |
| source verified unclassified | Admin<br>`0x0ce58b15874cb9aa3e64c0ae95615c6112004a32` | non_address_book | unknown | unknown | verified | n/a | `0xd0cae2309f322e24fbbc7e9d5f4995b02ef901e4` |
| source verified unclassified | Admin<br>`0x68c58e1107bce9be240af941151d42101086af56` | non_address_book | unknown | unknown | verified | n/a | `0xd0cae2309f322e24fbbc7e9d5f4995b02ef901e4` |
| source verified unclassified | Airdrop<br>`0x00d43f69fab8860c2362a96478447256c2a3daff` | non_address_book | operational_periphery | unknown | verified | n/a | `0xd0cae2309f322e24fbbc7e9d5f4995b02ef901e4` |
| source verified unclassified | Airdrop<br>`0x0a3db483d289545990b67a9ac6205385755129d3` | non_address_book | operational_periphery | unknown | verified | n/a | `0xd0cae2309f322e24fbbc7e9d5f4995b02ef901e4` |
| source verified unclassified | Airdrop<br>`0x0c40fd87d4ac71bb88b76b23a680f91efa4b6616` | non_address_book | operational_periphery | unknown | verified | n/a | `0xd0cae2309f322e24fbbc7e9d5f4995b02ef901e4` |
| source verified unclassified | Airdrop<br>`0x30007027a2316714859a853fd2638cd39d6f2e87` | non_address_book | operational_periphery | unknown | verified | n/a | `0xd0cae2309f322e24fbbc7e9d5f4995b02ef901e4` |
| source verified unclassified | Airdrop<br>`0x3938246c3f0e614e834b9f63a7c2e540f5c573e2` | non_address_book | operational_periphery | unknown | verified | n/a | `0xd0cae2309f322e24fbbc7e9d5f4995b02ef901e4` |
| source verified unclassified | Airdrop<br>`0x3ff9ae983d73ff044ae7f1bb48ec0489287c9b00` | non_address_book | operational_periphery | unknown | verified | n/a | `0xd0cae2309f322e24fbbc7e9d5f4995b02ef901e4` |
| source verified unclassified | Airdrop<br>`0x47b89df0cc711d286177588562337f30237c88be` | non_address_book | operational_periphery | unknown | verified | n/a | `0xd0cae2309f322e24fbbc7e9d5f4995b02ef901e4` |
| source verified unclassified | Airdrop<br>`0x65cedf2516b822a30ccee271db9d248e0a9d9b86` | non_address_book | operational_periphery | unknown | verified | n/a | `0xd0cae2309f322e24fbbc7e9d5f4995b02ef901e4` |
| source verified unclassified | Airdrop<br>`0x80bbeaaf3bdd029ac6bb7d8df02635e07c225187` | non_address_book | operational_periphery | unknown | verified | n/a | `0xd0cae2309f322e24fbbc7e9d5f4995b02ef901e4` |
| source verified unclassified | Airdrop<br>`0x846d02b89ceb49d70c6df3e1ac53afb3dbb137a7` | non_address_book | operational_periphery | unknown | verified | n/a | `0xd0cae2309f322e24fbbc7e9d5f4995b02ef901e4` |
| source verified unclassified | Airdrop<br>`0x9b4cc486d610091ed05a73bab22b94bb5b2c0b57` | non_address_book | operational_periphery | unknown | verified | n/a | `0xd0cae2309f322e24fbbc7e9d5f4995b02ef901e4` |
| source verified unclassified | Airdrop<br>`0xc21534b586bb29e5005efe8c2361b774e4027521` | non_address_book | operational_periphery | unknown | verified | n/a | `0xd0cae2309f322e24fbbc7e9d5f4995b02ef901e4` |
| source verified unclassified | Airdrop<br>`0xc56cab075b12c26c74029069d95b49d145c4ab52` | non_address_book | operational_periphery | unknown | verified | n/a | `0xd0cae2309f322e24fbbc7e9d5f4995b02ef901e4` |
| source verified unclassified | Airdrop<br>`0xcb846bde83918cc48759899e6d5cd79fff14440f` | non_address_book | operational_periphery | unknown | verified | n/a | `0xd0cae2309f322e24fbbc7e9d5f4995b02ef901e4` |
| source verified unclassified | Airdrop<br>`0xd520e4a94c271ff176b03dfb512af17f178156f7` | non_address_book | operational_periphery | unknown | verified | n/a | `0xd0cae2309f322e24fbbc7e9d5f4995b02ef901e4` |
| source verified unclassified | Airdrop<br>`0xf42111f50cfc35f072115c082280653be0a6f5fb` | non_address_book | operational_periphery | unknown | verified | n/a | `0xd0cae2309f322e24fbbc7e9d5f4995b02ef901e4` |
| source verified unclassified | Airdrop<br>`0xfaa5ec315eeea382830414ea4cc02262289394d6` | non_address_book | operational_periphery | unknown | verified | n/a | `0xd0cae2309f322e24fbbc7e9d5f4995b02ef901e4` |
| source verified unclassified | AirdropAVAX<br>`0x4f7dd657037e6ea7cdad6eafdd20a8a336935b94` | non_address_book | operational_periphery | unknown | verified | n/a | `0xd0cae2309f322e24fbbc7e9d5f4995b02ef901e4` |
| source verified unclassified | AirdropAVAX<br>`0xa3dddcf122f259d297f10ee68dbd8ae428b1e7a1` | non_address_book | operational_periphery | unknown | verified | n/a | `0xd0cae2309f322e24fbbc7e9d5f4995b02ef901e4` |
| source verified unclassified | AirdropAVAX<br>`0xb1b6b9ce5fcb7a207b85c1a3ed3085618ace65eb` | non_address_book | operational_periphery | unknown | verified | n/a | `0xd0cae2309f322e24fbbc7e9d5f4995b02ef901e4` |
| source verified unclassified | AirdropAVAX<br>`0xb7af8d63f4809231768bfb8222ab9388069b6c9b` | non_address_book | operational_periphery | unknown | verified | n/a | `0xd0cae2309f322e24fbbc7e9d5f4995b02ef901e4` |
| source verified unclassified | AllocationStaking<br>`0x027d6ea70bc4904c2bfc00b014571c6c4edf0dd6` | non_address_book | unknown | unknown | verified | n/a | `0xd0cae2309f322e24fbbc7e9d5f4995b02ef901e4` |
| source verified unclassified | AllocationStaking<br>`0x897e8265454fd44cac7d739827d6b46bf1d6a8ff` | non_address_book | unknown | unknown | verified | n/a | `0xd0cae2309f322e24fbbc7e9d5f4995b02ef901e4` |
| source verified unclassified | AllocationStaking<br>`0xa6eb49f89a4eb6ec9f2165637d852dc61d065410` | non_address_book | unknown | unknown | verified | n/a | `0xd0cae2309f322e24fbbc7e9d5f4995b02ef901e4` |
| source verified unclassified | AllocationStaking<br>`0xb364d7965b1e99b862bca2565cbaa62d85c0ae40` | non_address_book | unknown | unknown | verified | n/a | `0xd0cae2309f322e24fbbc7e9d5f4995b02ef901e4` |
| source verified unclassified | AllocationStaking<br>`0xb380566edde68617c652d452102b8eda9fd3a403` | non_address_book | unknown | unknown | verified | n/a | `0xd0cae2309f322e24fbbc7e9d5f4995b02ef901e4` |
| source verified unclassified | AllocationStaking<br>`0xcce0130263fda75e1c87b844a49db7066fa28c77` | non_address_book | unknown | unknown | verified | n/a | `0xd0cae2309f322e24fbbc7e9d5f4995b02ef901e4` |
| source verified unclassified | AllocationStaking<br>`0xe4e68408dccf7775f8f429c97ebbd3c3fac0b116` | non_address_book | unknown | unknown | verified | n/a | `0xd0cae2309f322e24fbbc7e9d5f4995b02ef901e4` |
| source verified unclassified | AllocationStaking<br>`0xfbcea5af909e798cffc7653968ddf01b9cb1a6ea` | non_address_book | unknown | unknown | verified | n/a | `0xd0cae2309f322e24fbbc7e9d5f4995b02ef901e4` |
| source verified unclassified | AvalaunchMarketplace<br>`0xb6d16bd6872a67b285853664ef1f1149ba6f223a` | non_address_book | unknown | unknown | verified | n/a | `0xd0cae2309f322e24fbbc7e9d5f4995b02ef901e4` |
| source verified unclassified | AvalaunchNFT<br>`0xe29561fdc8a759742403d537dd1fadcaba0b346a` | non_address_book | token | unknown | verified | n/a | `0xd0cae2309f322e24fbbc7e9d5f4995b02ef901e4` |
| source verified unclassified | AvalaunchSaleV2<br>`0x4e05033e96ecb624507835ffccb451ecea1e7156` | non_address_book | unknown | unknown | verified | n/a | `0xd0cae2309f322e24fbbc7e9d5f4995b02ef901e4` |
| source verified unclassified | AvalaunchSaleV2<br>`0x74bafbb89b4dd318d399bf748fede0df262de47d` | non_address_book | unknown | unknown | verified | n/a | `0xd0cae2309f322e24fbbc7e9d5f4995b02ef901e4` |
| source verified unclassified | ProxyAdmin<br>`0x796ec8bee2871dd820f176730669848d909914c0` | non_address_book | governance | unknown | verified | n/a | `0xd0cae2309f322e24fbbc7e9d5f4995b02ef901e4` |
| source verified unclassified | ProxyAdmin<br>`0x951aa264d7e6a1c267c24c250293e901b89d29e3` | non_address_book | governance | unknown | verified | n/a | `0xd0cae2309f322e24fbbc7e9d5f4995b02ef901e4` |
| source verified unclassified | ProxyAdmin<br>`0xc21a5248e0fd90c16a9835735687b8f96a1916bb` | non_address_book | governance | unknown | verified | n/a | `0xd0cae2309f322e24fbbc7e9d5f4995b02ef901e4` |
| source verified unclassified | SalesFactory<br>`0x29f351cdd647195553263924cc3abb017cb7fc7b` | non_address_book | registry | unknown | verified | n/a | `0xd0cae2309f322e24fbbc7e9d5f4995b02ef901e4` |
| source verified unclassified | SalesFactory<br>`0x4c858df3bebba1cdb73f49b002f095bb15df4542` | non_address_book | registry | unknown | verified | n/a | `0xd0cae2309f322e24fbbc7e9d5f4995b02ef901e4` |
| source verified unclassified | SalesFactory<br>`0x9eb3fef2963b359562694c391a6daf18322fb2c6` | non_address_book | registry | unknown | verified | n/a | `0xd0cae2309f322e24fbbc7e9d5f4995b02ef901e4` |
| source verified unclassified | SalesFactory<br>`0xd124d278ad66e383dc789d593fc719f7d416d172` | non_address_book | registry | unknown | verified | n/a | `0xd0cae2309f322e24fbbc7e9d5f4995b02ef901e4` |
| source verified unclassified | TransparentUpgradeableProxy<br>`0x863c5aad62c8086746d03e10a7b327504e154f08` | non_address_book | unknown | unknown | verified | n/a | `0xd0cae2309f322e24fbbc7e9d5f4995b02ef901e4` |
| source verified unclassified | TransparentUpgradeableProxy<br>`0xb0ef1a6fa8856ffbc7bf2c5ce434d232be4d00de` | non_address_book | unknown | unknown | verified | n/a | `0xd0cae2309f322e24fbbc7e9d5f4995b02ef901e4` |
| source verified unclassified | TransparentUpgradeableProxy<br>`0xcae948ee3ee6fa6c0521ef7c5c6f0bee444b9a81` | non_address_book | unknown | unknown | verified | n/a | `0xd0cae2309f322e24fbbc7e9d5f4995b02ef901e4` |
| source verified unclassified | XavaToken<br>`0x1a7931de2b1ca136d54bd46f51892e0f0e23fde8` | non_address_book | unknown | unknown | verified | n/a | `0xadea14a2f5ffa5016f34141d00c249e691ae300e` |
| source verified unclassified | XavaToken<br>`0x897ee1505958067c343ec6993398995f477ace17` | non_address_book | token | unknown | verified | n/a | `0xd0cae2309f322e24fbbc7e9d5f4995b02ef901e4` |
| source verified unclassified | XavaToken<br>`0x90ee87f15ab3f5929513db072aec28a32222e2cc` | non_address_book | token | unknown | verified | n/a | `0xd0cae2309f322e24fbbc7e9d5f4995b02ef901e4` |
| source verified unclassified | XavaToken<br>`0xc8d81593318e07d8aabe5ae1619f9e37888c4433` | non_address_book | token | unknown | verified | n/a | `0xd0cae2309f322e24fbbc7e9d5f4995b02ef901e4` |
| source verified unclassified | XavaToken<br>`0xfbd59ab2c29bfbd5f37c587fb4ed1366d7b7be2b` | non_address_book | token | unknown | verified | n/a | `0xd0cae2309f322e24fbbc7e9d5f4995b02ef901e4` |
| unverified unclassified | 0x4c7ccd59df34f6f86311c4ad5ce922f9c83c6c3c<br>`0x3c629ac8709edfcd98f1ea36e763bb25e909dc11` | non_address_book | proxy | unknown | unverified | n/a | `0xd0cae2309f322e24fbbc7e9d5f4995b02ef901e4` |
| unverified unclassified | UnnamedContract<br>`0x089a3f7e7afc96d73e57edd1aa456e1c99b1f539` | non_address_book | unknown | unknown | unverified | n/a | `0xd0cae2309f322e24fbbc7e9d5f4995b02ef901e4` |
| unverified unclassified | UnnamedContract<br>`0x0e5505404c0bfc6fc9f70bb1e7d015b7daac2fc6` | non_address_book | unknown | unknown | unverified | n/a | `0xd0cae2309f322e24fbbc7e9d5f4995b02ef901e4` |
| unverified unclassified | UnnamedContract<br>`0x17fdfd58ecc53ff79e46cb617346004ebf22173e` | non_address_book | unknown | unknown | unverified | n/a | `0xd0cae2309f322e24fbbc7e9d5f4995b02ef901e4` |
| unverified unclassified | UnnamedContract<br>`0x19f039f18f7f1996dcab3b0b74f4597d1d96fc05` | non_address_book | unknown | unknown | unverified | n/a | `0xd0cae2309f322e24fbbc7e9d5f4995b02ef901e4` |
| unverified unclassified | UnnamedContract<br>`0x23a391bfc5599f8c02ae121125536e3d72d19179` | non_address_book | unknown | unknown | unverified | n/a | `0xd0cae2309f322e24fbbc7e9d5f4995b02ef901e4` |
| unverified unclassified | UnnamedContract<br>`0x281e9179ce50b951b77d3b0d92456bd3e4f5430a` | non_address_book | unknown | unknown | unverified | n/a | `0xd0cae2309f322e24fbbc7e9d5f4995b02ef901e4` |
| unverified unclassified | UnnamedContract<br>`0x36a5d76f58d297cf40723771e82009c76b4f95ca` | non_address_book | unknown | unknown | unverified | n/a | `0xd0cae2309f322e24fbbc7e9d5f4995b02ef901e4` |
| unverified unclassified | UnnamedContract<br>`0x4c7ccd59df34f6f86311c4ad5ce922f9c83c6c3c` | non_address_book | unknown | unknown | unverified | n/a | `0xd0cae2309f322e24fbbc7e9d5f4995b02ef901e4` |
| unverified unclassified | UnnamedContract<br>`0x61214cf4c134709dcfcb7f47e9fff22217cbe9d5` | non_address_book | unknown | unknown | unverified | n/a | `0xd0cae2309f322e24fbbc7e9d5f4995b02ef901e4` |
| unverified unclassified | UnnamedContract<br>`0x635db067bbd00ede40f47614e65bdb65bb8715a3` | non_address_book | unknown | unknown | unverified | n/a | `0xd0cae2309f322e24fbbc7e9d5f4995b02ef901e4` |
| unverified unclassified | UnnamedContract<br>`0x86f0942d25859f0791cc3d568ba0a099bbe1ee69` | non_address_book | unknown | unknown | unverified | n/a | `0xd0cae2309f322e24fbbc7e9d5f4995b02ef901e4` |
| unverified unclassified | UnnamedContract<br>`0x87b1beaab6f7a40b28a2def896c50e57061c3b36` | non_address_book | unknown | unknown | unverified | n/a | `0xd0cae2309f322e24fbbc7e9d5f4995b02ef901e4` |
| unverified unclassified | UnnamedContract<br>`0xa30a84b75aeefa54b8d19afd77c8e39953d6ae8b` | non_address_book | unknown | unknown | unverified | n/a | `0xd0cae2309f322e24fbbc7e9d5f4995b02ef901e4` |
| unverified unclassified | UnnamedContract<br>`0xb3e0526b3a942ddd3ef1fd0da6808d41418ffcae` | non_address_book | unknown | unknown | unverified | n/a | `0xd0cae2309f322e24fbbc7e9d5f4995b02ef901e4` |
| unverified unclassified | UnnamedContract<br>`0xb650346d08a0a01ba08f7023c6b6d761b69f1430` | non_address_book | unknown | unknown | unverified | n/a | `0xd0cae2309f322e24fbbc7e9d5f4995b02ef901e4` |
| unverified unclassified | UnnamedContract<br>`0xb9db9e6a5943e3a21ce87d61a1f5d0b59a2c3af6` | non_address_book | unknown | unknown | unverified | n/a | `0xd0cae2309f322e24fbbc7e9d5f4995b02ef901e4` |
| unverified unclassified | UnnamedContract<br>`0xbd27ece0637518c519aa4323d93281ad179ca65b` | non_address_book | unknown | unknown | unverified | n/a | `0xd0cae2309f322e24fbbc7e9d5f4995b02ef901e4` |
| unverified unclassified | UnnamedContract<br>`0xbf838ffffd86805933d8c1f971acfd59bbae5026` | non_address_book | unknown | unknown | unverified | n/a | `0xadea14a2f5ffa5016f34141d00c249e691ae300e` |
| unverified unclassified | UnnamedContract<br>`0xc750773926ab42081395aa1b2e3b6b1414892b4f` | non_address_book | unknown | unknown | unverified | n/a | `0xd0cae2309f322e24fbbc7e9d5f4995b02ef901e4` |
| unverified unclassified | UnnamedContract<br>`0xe7bdfaa29653082e53c564fc849a1e5fa49086e8` | non_address_book | unknown | unknown | unverified | n/a | `0xd0cae2309f322e24fbbc7e9d5f4995b02ef901e4` |
| unverified unclassified | UnnamedContract<br>`0xfede8cdd7d8c2cc0824f1f7d1b6ca6c0996ea54b` | non_address_book | unknown | unknown | unverified | n/a | `0xd0cae2309f322e24fbbc7e9d5f4995b02ef901e4` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [2021-11 Avalaunch AllocationStaking.pdf](https://github.com/avalaunch-app/xava-protocol/blob/master/audit/2021-11%20Avalaunch%20AllocationStaking.pdf) | unknown | Audit | 2021-11 | stale | Direct | n/a | no match | 0 | 0 | 0 | 3 | n/a |
| [2022-01 Avalaunch XAVA Protocol Audit Final.pdf](https://github.com/avalaunch-app/xava-protocol/blob/master/audit/2022-01%20Avalaunch%20XAVA%20Protocol%20Audit%20Final.pdf) | unknown | Audit | 2022-01 | stale | Direct | n/a | no match | 0 | 0 | 0 | 7 | n/a |
| [20220225_Paladin_Avalaunch_Final_Report.pdf](https://github.com/avalaunch-app/xava-protocol/blob/master/audit/20220225_Paladin_Avalaunch_Final_Report.pdf) | Paladin | Audit | 2022-02 | stale | Direct | n/a | no match | 0 | 0 | 0 | 10 | n/a |
| [20220324_Paladin_AvalaunchScopeExtension_Final_Report.pdf](https://github.com/avalaunch-app/xava-protocol/blob/master/audit/20220324_Paladin_AvalaunchScopeExtension_Final_Report.pdf) | Paladin | Audit | 2022-03 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [Avalaunch Audit 2021-08-v2.pdf](https://github.com/avalaunch-app/xava-protocol/blob/master/audit/Avalaunch%20Audit%202021-08-v2.pdf) | unknown | Audit | 2021-08 | stale | Direct | n/a | no match | 0 | 0 | 0 | 3 | n/a |
| [Avalaunch Launchpad Final.pdf](https://github.com/avalaunch-app/xava-protocol/blob/master/audit/Avalaunch%20Launchpad%20Final.pdf) | unknown | Audit | 2021-09 | stale | Direct | n/a | no match | 0 | 0 | 0 | 9 | n/a |
| [20230123_Paladin_AvalaunchSalev2_Final_Report.pdf](https://avalaunch.app/assets/audits/20230123_Paladin_AvalaunchSalev2_Final_Report.pdf) | Paladin | Audit | 2023-01 | stale | Direct | n/a | no match | 0 | 0 | 0 | 3 | n/a |
| [2022_03_Avalaunch_XAVA_Protocol_Audit.pdf](https://avalaunch.app/assets/audits/2022_03_Avalaunch_XAVA_Protocol_Audit.pdf) | CoinFabrik | Audit | 2022-03 | stale | Direct | n/a | no match | 0 | 0 | 0 | 20 | n/a |
| [2022_01_Avalaunch_XAVA_Protocol_Audit.pdf](https://avalaunch.app/assets/audits/2022_01_Avalaunch_XAVA_Protocol_Audit.pdf) | CoinFabrik | Audit | 2022-01 | stale | Direct | n/a | no match | 0 | 0 | 0 | 7 | n/a |
| [2021_11_Avalaunch_AllocationStaking.pdf](https://avalaunch.app/assets/audits/2021_11_Avalaunch_AllocationStaking.pdf) | CoinFabrik | Audit | 2021-11 | stale | Direct | n/a | no match | 0 | 0 | 0 | 3 | n/a |
| [Avalaunch_Launchpad_Final.pdf](https://avalaunch.app/assets/audits/Avalaunch_Launchpad_Final.pdf) | HashEx | Audit | 2021-09 | stale | Direct | n/a | no match | 0 | 0 | 0 | 9 | n/a |
| [Avalaunch_Audit_2021_08_v2.pdf](https://avalaunch.app/assets/audits/Avalaunch_Audit_2021_08_v2.pdf) | CoinFabrik | Audit | 2021-08 | stale | Direct | n/a | no match | 0 | 0 | 0 | 3 | n/a |
| [PRE_Avalaunch_Xava_Protocol_31_05_2021.pdf](https://avalaunch.app/assets/audits/PRE_Avalaunch_Xava_Protocol_31_05_2021.pdf) | CertiK | Audit | 2021-05 | stale | Direct | n/a | no match | 0 | 0 | 0 | 2 | n/a |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [2223] 2021-11 Avalaunch AllocationStaking.pdf — no match: No reason recorded
- [2224] 2022-01 Avalaunch XAVA Protocol Audit Final.pdf — no match: No reason recorded
- [2225] 20220225_Paladin_Avalaunch_Final_Report.pdf — no match: No reason recorded
- [2226] 20220324_Paladin_AvalaunchScopeExtension_Final_Report.pdf — no match: Two contracts in scope: AvalaunchCollateral and AvalaunchSale. Audit date from cover page.
- [2227] Avalaunch Audit 2021-08-v2.pdf — no match: No reason recorded
- [2228] Avalaunch Launchpad Final.pdf — no match: No reason recorded
- [2229] 20230123_Paladin_AvalaunchSalev2_Final_Report.pdf — no match: No reason recorded
- [2230] 2022_03_Avalaunch_XAVA_Protocol_Audit.pdf — no match: No reason recorded
- [2233] 2022_01_Avalaunch_XAVA_Protocol_Audit.pdf — no match: No reason recorded
- [2234] 2021_11_Avalaunch_AllocationStaking.pdf — no match: No reason recorded
- [2235] Avalaunch_Launchpad_Final.pdf — no match: No reason recorded
- [2236] Avalaunch_Audit_2021_08_v2.pdf — no match: No reason recorded
- [2237] PRE_Avalaunch_Xava_Protocol_31_05_2021.pdf — no match: No reason recorded

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| 2021-11 Avalaunch AllocationStaking.pdf | AllocationStaking | unmatched — not counted | — | — | no |
| 2021-11 Avalaunch AllocationStaking.pdf | AvalaunchSale | unmatched — not counted | — | — | no |
| 2021-11 Avalaunch AllocationStaking.pdf | SalesFactory | unmatched — not counted | — | — | no |
| 2022-01 Avalaunch XAVA Protocol Audit Final.pdf | Airdrop | unmatched — not counted | — | — | no |
| 2022-01 Avalaunch XAVA Protocol Audit Final.pdf | AirdropAVAX | unmatched — not counted | — | — | no |
| 2022-01 Avalaunch XAVA Protocol Audit Final.pdf | AirdropSale | unmatched — not counted | — | — | no |
| 2022-01 Avalaunch XAVA Protocol Audit Final.pdf | AllocationStaking | unmatched — not counted | — | — | no |
| 2022-01 Avalaunch XAVA Protocol Audit Final.pdf | AvalaunchBadgeFactory | unmatched — not counted | — | — | no |
| 2022-01 Avalaunch XAVA Protocol Audit Final.pdf | AvalaunchSales | unmatched — not counted | — | — | no |
| 2022-01 Avalaunch XAVA Protocol Audit Final.pdf | SalesFactory | unmatched — not counted | — | — | no |
| 20220225_Paladin_Avalaunch_Final_Report.pdf | Admin | unmatched — not counted | — | — | no |
| 20220225_Paladin_Avalaunch_Final_Report.pdf | Airdrop | unmatched — not counted | — | — | no |
| 20220225_Paladin_Avalaunch_Final_Report.pdf | AirdropAvax | unmatched — not counted | — | — | no |
| 20220225_Paladin_Avalaunch_Final_Report.pdf | AirdropSale | unmatched — not counted | — | — | no |
| 20220225_Paladin_Avalaunch_Final_Report.pdf | AllocationStaking | unmatched — not counted | — | — | no |
| 20220225_Paladin_Avalaunch_Final_Report.pdf | AvalaunchBadgeFactory | unmatched — not counted | — | — | no |
| 20220225_Paladin_Avalaunch_Final_Report.pdf | AvalaunchSale | unmatched — not counted | — | — | no |
| 20220225_Paladin_Avalaunch_Final_Report.pdf | DevToken | unmatched — not counted | — | — | no |
| 20220225_Paladin_Avalaunch_Final_Report.pdf | SalesFactory | unmatched — not counted | — | — | no |
| 20220225_Paladin_Avalaunch_Final_Report.pdf | XavaToken | unmatched — not counted | — | — | no |
| 20220324_Paladin_AvalaunchScopeExtension_Final_Report.pdf | AvalaunchCollateral | unmatched — not counted | — | listed in scope table | no |
| 20220324_Paladin_AvalaunchScopeExtension_Final_Report.pdf | AvalaunchSale | unmatched — not counted | — | listed in scope table | no |
| Avalaunch Audit 2021-08-v2.pdf | AllocationStaking | unmatched — not counted | — | — | no |
| Avalaunch Audit 2021-08-v2.pdf | AvalaunchSale | unmatched — not counted | — | — | no |
| Avalaunch Audit 2021-08-v2.pdf | SalesFactory | unmatched — not counted | — | — | no |
| Avalaunch Launchpad Final.pdf | AllocationStaking | unmatched — not counted | — | — | no |
| Avalaunch Launchpad Final.pdf | AvalaunchSale | unmatched — not counted | — | — | no |
| Avalaunch Launchpad Final.pdf | DevToken | unmatched — not counted | — | — | no |
| Avalaunch Launchpad Final.pdf | FarminXava | unmatched — not counted | — | — | no |
| Avalaunch Launchpad Final.pdf | KuCoinVestingContract | unmatched — not counted | — | — | no |
| Avalaunch Launchpad Final.pdf | ParticipationVestingPrivate | unmatched — not counted | — | — | no |
| Avalaunch Launchpad Final.pdf | ParticipationVestingSeed | unmatched — not counted | — | — | no |
| Avalaunch Launchpad Final.pdf | SaleFactory | unmatched — not counted | — | — | no |
| Avalaunch Launchpad Final.pdf | XavaToken | unmatched — not counted | — | — | no |
| 20230123_Paladin_AvalaunchSalev2_Final_Report.pdf | AvalaunchMarketplace | unmatched — not counted | — | — | no |
| 20230123_Paladin_AvalaunchSalev2_Final_Report.pdf | AvalaunchSaleV2 | unmatched — not counted | — | — | no |
| 20230123_Paladin_AvalaunchSalev2_Final_Report.pdf | SalesFactory | unmatched — not counted | — | — | no |
| 2022_03_Avalaunch_XAVA_Protocol_Audit.pdf | Admin | unmatched — not counted | — | — | no |
| 2022_03_Avalaunch_XAVA_Protocol_Audit.pdf | Airdrop | unmatched — not counted | — | — | no |
| 2022_03_Avalaunch_XAVA_Protocol_Audit.pdf | AirdropAVAX | unmatched — not counted | — | — | no |
| 2022_03_Avalaunch_XAVA_Protocol_Audit.pdf | AirdropSale | unmatched — not counted | — | — | no |
| 2022_03_Avalaunch_XAVA_Protocol_Audit.pdf | AllocationStaking | unmatched — not counted | — | — | no |
| 2022_03_Avalaunch_XAVA_Protocol_Audit.pdf | AvalaunchColateral | unmatched — not counted | — | — | no |
| 2022_03_Avalaunch_XAVA_Protocol_Audit.pdf | AvalaunchSale | unmatched — not counted | — | — | no |
| 2022_03_Avalaunch_XAVA_Protocol_Audit.pdf | Context | unmatched — not counted | — | — | no |
| 2022_03_Avalaunch_XAVA_Protocol_Audit.pdf | DevToken | unmatched — not counted | — | — | no |
| 2022_03_Avalaunch_XAVA_Protocol_Audit.pdf | FarmingXava | unmatched — not counted | — | — | no |
| 2022_03_Avalaunch_XAVA_Protocol_Audit.pdf | IAdmin | unmatched — not counted | — | — | no |
| 2022_03_Avalaunch_XAVA_Protocol_Audit.pdf | IAllocationStaking | unmatched — not counted | — | — | no |
| 2022_03_Avalaunch_XAVA_Protocol_Audit.pdf | IAvalaunchSale | unmatched — not counted | — | — | no |
| 2022_03_Avalaunch_XAVA_Protocol_Audit.pdf | ICollateral | unmatched — not counted | — | — | no |
| 2022_03_Avalaunch_XAVA_Protocol_Audit.pdf | IDexalotPortfolio | unmatched — not counted | — | — | no |
| 2022_03_Avalaunch_XAVA_Protocol_Audit.pdf | IERC20 | unmatched — not counted | — | — | no |
| 2022_03_Avalaunch_XAVA_Protocol_Audit.pdf | IERC20Metadata | unmatched — not counted | — | — | no |
| 2022_03_Avalaunch_XAVA_Protocol_Audit.pdf | ISalesFactory | unmatched — not counted | — | — | no |
| 2022_03_Avalaunch_XAVA_Protocol_Audit.pdf | SalesFactory | unmatched — not counted | — | — | no |
| 2022_03_Avalaunch_XAVA_Protocol_Audit.pdf | XavaToken | unmatched — not counted | — | — | no |
| 2022_01_Avalaunch_XAVA_Protocol_Audit.pdf | Airdrop | unmatched — not counted | — | — | no |
| 2022_01_Avalaunch_XAVA_Protocol_Audit.pdf | AirdropAVAX | unmatched — not counted | — | — | no |
| 2022_01_Avalaunch_XAVA_Protocol_Audit.pdf | AirdropSale | unmatched — not counted | — | — | no |
| 2022_01_Avalaunch_XAVA_Protocol_Audit.pdf | AllocationStaking | unmatched — not counted | — | — | no |
| 2022_01_Avalaunch_XAVA_Protocol_Audit.pdf | AvalaunchBadgeFactory | unmatched — not counted | — | — | no |
| 2022_01_Avalaunch_XAVA_Protocol_Audit.pdf | AvalaunchSales | unmatched — not counted | — | — | no |
| 2022_01_Avalaunch_XAVA_Protocol_Audit.pdf | SalesFactory | unmatched — not counted | — | — | no |
| 2021_11_Avalaunch_AllocationStaking.pdf | AllocationStaking | unmatched — not counted | — | — | no |
| 2021_11_Avalaunch_AllocationStaking.pdf | AvalaunchSale | unmatched — not counted | — | — | no |
| 2021_11_Avalaunch_AllocationStaking.pdf | SalesFactory | unmatched — not counted | — | — | no |
| Avalaunch_Launchpad_Final.pdf | AllocationStaking | unmatched — not counted | — | — | no |
| Avalaunch_Launchpad_Final.pdf | AvalaunchSale | unmatched — not counted | — | — | no |
| Avalaunch_Launchpad_Final.pdf | DevToken | unmatched — not counted | — | — | no |
| Avalaunch_Launchpad_Final.pdf | FarminXava | unmatched — not counted | — | — | no |
| Avalaunch_Launchpad_Final.pdf | KuCoinVestingContract | unmatched — not counted | — | — | no |
| Avalaunch_Launchpad_Final.pdf | ParticipationVestingPrivate | unmatched — not counted | — | — | no |
| Avalaunch_Launchpad_Final.pdf | ParticipationVestingSeed | unmatched — not counted | — | — | no |
| Avalaunch_Launchpad_Final.pdf | SaleFactory | unmatched — not counted | — | — | no |
| Avalaunch_Launchpad_Final.pdf | XavaToken | unmatched — not counted | — | — | no |
| Avalaunch_Audit_2021_08_v2.pdf | AllocationStaking | unmatched — not counted | — | — | no |
| Avalaunch_Audit_2021_08_v2.pdf | AvalaunchSale | unmatched — not counted | — | — | no |
| Avalaunch_Audit_2021_08_v2.pdf | SalesFactory | unmatched — not counted | — | — | no |
| PRE_Avalaunch_Xava_Protocol_31_05_2021.pdf | FarmingXava | unmatched — not counted | — | — | no |
| PRE_Avalaunch_Xava_Protocol_31_05_2021.pdf | XavaToken | unmatched — not counted | — | — | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 29 |
| upstream | 1 |
| standard_library | 4 |
| needs_review | 7 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 13
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 81 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=1
- Match method counts: n/a

Zero-match audit list:

- [2223] 2021-11 Avalaunch AllocationStaking.pdf
- [2224] 2022-01 Avalaunch XAVA Protocol Audit Final.pdf
- [2225] 20220225_Paladin_Avalaunch_Final_Report.pdf
- [2226] 20220324_Paladin_AvalaunchScopeExtension_Final_Report.pdf
- [2227] Avalaunch Audit 2021-08-v2.pdf
- [2228] Avalaunch Launchpad Final.pdf
- [2229] 20230123_Paladin_AvalaunchSalev2_Final_Report.pdf
- [2230] 2022_03_Avalaunch_XAVA_Protocol_Audit.pdf
- [2233] 2022_01_Avalaunch_XAVA_Protocol_Audit.pdf
- [2234] 2021_11_Avalaunch_AllocationStaking.pdf
- [2235] Avalaunch_Launchpad_Final.pdf
- [2236] Avalaunch_Audit_2021_08_v2.pdf
- [2237] PRE_Avalaunch_Xava_Protocol_31_05_2021.pdf

Fork inheritance lineage and inherited audits are included when available.
