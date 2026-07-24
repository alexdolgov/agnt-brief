# Agentic Audit Brief: Steakhouse Financial

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

- Project: Steakhouse Financial (`steakhouse-financial`)
- Website: [https://www.steakhouse.financial/](https://www.steakhouse.financial/)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: arbitrum, base, ethereum, polygon, unichain
- Contract surface: 67 unique implementations (67 raw deployments)
- Coverage basis: 0/1 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $2,136,320,358.35
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

The closed normalized authority records no EVM contract logic or eligible security audit for this project. This is an explicit cohort state, not a skipped export.

## Project Description

No contract logic was present for Steakhouse Financial in the closed normalized topography run; this brief does not infer a protocol purpose from missing code.

### Architecture

The activated project remains an explicit cohort member with an empty normalized logic-topography closure.

## Logic Topography

- Exact-run contract rows: 0
- Structural roles: none
- Contract kinds: none
- Detected standards: none
- Frameworks: none
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 1 contracts are derived from known codebases. 1 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- MorphoMarketFactory (`0xd8c846cee3d5efddeda4d36784a2d88858901220`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 0; live-surface rows included: 0 (0 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 1/1 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/1 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 1 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 66 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Confirmed-live implementations: 1 of 67 unique; 66 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/1
- Verified + Unaudited implementations: 1
- Verified by bytecode match: 0
- Unverified implementations: 66
- Unique implementations: 67
- Raw deployments: 67
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

### ⚠️ Verified + Unaudited (1)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| MorphoMarketFactory | unknown | project_anchor | own_supporting | 0 | ethereum | unit-393155 | `0xd8c846cee3d5efddeda4d36784a2d88858901220` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (66)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0076af860630ea0337d4c932b986d68f32a41254` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0f2ceadda587491dd513a82cd0fecb896e2880f4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0f6b59f54087ace95cb1fdcb3d2af1aca7c87df4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x102fe4c8d6549ef5581685895f84ed06d5225ae9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1193888325a82ff22603bd316ed7b5398c080e26` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1964b189030da037d7ee66206246b840f1847816` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1c0a069d8ec08f02358ae3072909a9d9316c037e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x213f30e50892dc90d8893618c656316b769ffb23` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x242db4438ba1686050d679680478da876a9dacee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x24bf211b9d805bac6c00991dea474d3f4bab5770` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2540ff76ebd375691528665634fb15b118e73b3e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2d5057a4deaa452c2241b6dec04670410e29ffd3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x363fffe9e293df351fec24bde69954c472c52321` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3858266579f2913cbba5eaa6381cddfc684728ce` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3d970a30659db0316f1f30b02b8b52afac6b3474` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3e33c1e80cf8fd074da6eb408f2059c2a9900c03` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x44d049eed4ad33807859c45bbd3a8eb47917a9f4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x45241b97afbe5b9883b8439615d9f7e28033d54a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x470aa5547ed3c95a757eab2d1d29b024e94a6724` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x497bac0746cd23d2c65388defd85f8d543cf784c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4e8644d7e0c185f07ab33535ca73a8d3880d592e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5436243d9026b3ecf47935a52b004c06d3034206` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5ae8f508b3e3c69142e771ca35235a99c077463f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x657fe42954ca6e57d2657049745dcc86b58ce6ea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6907f97236bd5e1c2e8a345936b8a1346f2dc06d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6d32736220291d20e927b891aba976c6fc89891f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6ec687ea05ab6791710f07dd198a5770ca5a7385` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x71aafd4afe214d9d44d87481a26d6ad294b078c7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x721aaeabbf5de6fe07de8a6e8b26bc2e4b78423b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x72d2277c7242a4464d9b277cf682e350205e6938` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x72da6daedbf4cec07ad04d8ba2170473bc45a27a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7694fa1a6c736f85f9ee14f79be6b95259a69200` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x772d25142b66bc31b94726faf11f66157e8028d0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8458ea952f406bf49d90447c664615a30f31c9bf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x84e51a0c8dac953f37bc72a43fd3a008345efcb8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8e0ae6543513c997934e7e4453eb8eb5f0fd333e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8e7ae4b4de2650b68dc8213e390319548ff67b4d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8fa4443df3989ed5c51a4e6f436f1f51129dc868` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8fd7b58d0d26168b5d85026a0923d19cc059e47e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8feccb8c77948db2d29d669ac6439301304b1342` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x97bb0e08b664f65f05e0cff03b68bc1238b2e21e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x99ce8de8737a1b05affd9539750c23255e29c873` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9c34f0d2a1621a3dc25d5d6c82736627cb72bb3d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9f075e127a0533fb9181712070a800ba0b1121ff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa3603ca3ad85bdc3dbeb9023604c393551270985` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa5f1a4250955c33b9f2476fd4751a69565f459d1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa6d9d39d87949441a73c6929ae5a15eff9524310` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa7f36c9a9865de020d90ee6ce26bc8a6998ec75c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xab137e8a6ca28459bc9b063380ea5c607e16f893` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb0611580efcb49131d447ba74e8cf0a47bb45bb7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb3a074fd5abd89369ec25f4ddddb976869256c51` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc2d777ca4bc6941ac7c04fcd54d17cf4a53efe00` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc73a7437d889f864f3b67c6b384568adaf7ebf97` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc741f63a1cf0793a6b18820e8d7a5b05e0935e3b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc8002b0b15521b8fb7f4d4fd6c2b0ca3691bbc22` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc88058aa7c210e23e6cc54baba7ba6c51479dd4d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcd0066ec3f96afe3f6015539d16def2ce648ab77` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcef0ccd2e9ea13356324f53a5f26308e6c3298c7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcfc5de5dd9a0f7c17bf094550fc638421abd285d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd0b34caa4daae7457966df7baac4c2a64b527f36` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdee402fdb843ac55ae112a7f7b979d4a77e450ff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe4417592bc04a2ebd561d6a79180343c1a4f15f1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xeafd235f8db48242b85dbf9b20922c5aa1d5882a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xebbb2bbc9e5accc282dbb3249d6772c6360e0e55` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf14dc5bdfa8050a3ebf330092f71c54d3febd16b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf5ef31308f7556028b8f4e65ac486082c37b98eb` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 66
- Live contracts: 0
- Unknown liveness contracts: 66
- Source-verified contracts: 0
- Currently scope-matched contracts retained as-is: 0
- Classification counts: unverified unclassified=66

| Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|
| unverified unclassified | UnnamedContract<br>`0x0076af860630ea0337d4c932b986d68f32a41254` | non_address_book | unknown | unknown | unverified | n/a | `0xfeed46c11f57b7126a773eec6ae9ca7ae1c03c9a` |
| unverified unclassified | UnnamedContract<br>`0x0f2ceadda587491dd513a82cd0fecb896e2880f4` | non_address_book | unknown | unknown | unverified | n/a | `0xfeed46c11f57b7126a773eec6ae9ca7ae1c03c9a` |
| unverified unclassified | UnnamedContract<br>`0x0f6b59f54087ace95cb1fdcb3d2af1aca7c87df4` | non_address_book | unknown | unknown | unverified | n/a | `0xfeed46c11f57b7126a773eec6ae9ca7ae1c03c9a` |
| unverified unclassified | UnnamedContract<br>`0x102fe4c8d6549ef5581685895f84ed06d5225ae9` | non_address_book | unknown | unknown | unverified | n/a | `0xfeed46c11f57b7126a773eec6ae9ca7ae1c03c9a` |
| unverified unclassified | UnnamedContract<br>`0x1193888325a82ff22603bd316ed7b5398c080e26` | non_address_book | unknown | unknown | unverified | n/a | `0xfeed46c11f57b7126a773eec6ae9ca7ae1c03c9a` |
| unverified unclassified | UnnamedContract<br>`0x1964b189030da037d7ee66206246b840f1847816` | non_address_book | unknown | unknown | unverified | n/a | `0xfeed46c11f57b7126a773eec6ae9ca7ae1c03c9a` |
| unverified unclassified | UnnamedContract<br>`0x1c0a069d8ec08f02358ae3072909a9d9316c037e` | non_address_book | unknown | unknown | unverified | n/a | `0xfeed46c11f57b7126a773eec6ae9ca7ae1c03c9a` |
| unverified unclassified | UnnamedContract<br>`0x213f30e50892dc90d8893618c656316b769ffb23` | non_address_book | unknown | unknown | unverified | n/a | `0xfeed46c11f57b7126a773eec6ae9ca7ae1c03c9a` |
| unverified unclassified | UnnamedContract<br>`0x242db4438ba1686050d679680478da876a9dacee` | non_address_book | unknown | unknown | unverified | n/a | `0xfeed46c11f57b7126a773eec6ae9ca7ae1c03c9a` |
| unverified unclassified | UnnamedContract<br>`0x24bf211b9d805bac6c00991dea474d3f4bab5770` | non_address_book | unknown | unknown | unverified | n/a | `0xfeed46c11f57b7126a773eec6ae9ca7ae1c03c9a` |
| unverified unclassified | UnnamedContract<br>`0x2540ff76ebd375691528665634fb15b118e73b3e` | non_address_book | unknown | unknown | unverified | n/a | `0xfeed46c11f57b7126a773eec6ae9ca7ae1c03c9a` |
| unverified unclassified | UnnamedContract<br>`0x2d5057a4deaa452c2241b6dec04670410e29ffd3` | non_address_book | unknown | unknown | unverified | n/a | `0xfeed46c11f57b7126a773eec6ae9ca7ae1c03c9a` |
| unverified unclassified | UnnamedContract<br>`0x363fffe9e293df351fec24bde69954c472c52321` | non_address_book | unknown | unknown | unverified | n/a | `0xfeed46c11f57b7126a773eec6ae9ca7ae1c03c9a` |
| unverified unclassified | UnnamedContract<br>`0x3858266579f2913cbba5eaa6381cddfc684728ce` | non_address_book | unknown | unknown | unverified | n/a | `0xfeed46c11f57b7126a773eec6ae9ca7ae1c03c9a` |
| unverified unclassified | UnnamedContract<br>`0x3d970a30659db0316f1f30b02b8b52afac6b3474` | non_address_book | unknown | unknown | unverified | n/a | `0xfeed46c11f57b7126a773eec6ae9ca7ae1c03c9a` |
| unverified unclassified | UnnamedContract<br>`0x3e33c1e80cf8fd074da6eb408f2059c2a9900c03` | non_address_book | unknown | unknown | unverified | n/a | `0xfeed46c11f57b7126a773eec6ae9ca7ae1c03c9a` |
| unverified unclassified | UnnamedContract<br>`0x44d049eed4ad33807859c45bbd3a8eb47917a9f4` | non_address_book | unknown | unknown | unverified | n/a | `0xfeed46c11f57b7126a773eec6ae9ca7ae1c03c9a` |
| unverified unclassified | UnnamedContract<br>`0x45241b97afbe5b9883b8439615d9f7e28033d54a` | non_address_book | unknown | unknown | unverified | n/a | `0xfeed46c11f57b7126a773eec6ae9ca7ae1c03c9a` |
| unverified unclassified | UnnamedContract<br>`0x470aa5547ed3c95a757eab2d1d29b024e94a6724` | non_address_book | unknown | unknown | unverified | n/a | `0xfeed46c11f57b7126a773eec6ae9ca7ae1c03c9a` |
| unverified unclassified | UnnamedContract<br>`0x497bac0746cd23d2c65388defd85f8d543cf784c` | non_address_book | unknown | unknown | unverified | n/a | `0xfeed46c11f57b7126a773eec6ae9ca7ae1c03c9a` |
| unverified unclassified | UnnamedContract<br>`0x4e8644d7e0c185f07ab33535ca73a8d3880d592e` | non_address_book | unknown | unknown | unverified | n/a | `0xfeed46c11f57b7126a773eec6ae9ca7ae1c03c9a` |
| unverified unclassified | UnnamedContract<br>`0x5436243d9026b3ecf47935a52b004c06d3034206` | non_address_book | unknown | unknown | unverified | n/a | `0xfeed46c11f57b7126a773eec6ae9ca7ae1c03c9a` |
| unverified unclassified | UnnamedContract<br>`0x5ae8f508b3e3c69142e771ca35235a99c077463f` | non_address_book | unknown | unknown | unverified | n/a | `0xfeed46c11f57b7126a773eec6ae9ca7ae1c03c9a` |
| unverified unclassified | UnnamedContract<br>`0x657fe42954ca6e57d2657049745dcc86b58ce6ea` | non_address_book | unknown | unknown | unverified | n/a | `0xfeed46c11f57b7126a773eec6ae9ca7ae1c03c9a` |
| unverified unclassified | UnnamedContract<br>`0x6907f97236bd5e1c2e8a345936b8a1346f2dc06d` | non_address_book | unknown | unknown | unverified | n/a | `0xfeed46c11f57b7126a773eec6ae9ca7ae1c03c9a` |
| unverified unclassified | UnnamedContract<br>`0x6d32736220291d20e927b891aba976c6fc89891f` | non_address_book | unknown | unknown | unverified | n/a | `0xfeed46c11f57b7126a773eec6ae9ca7ae1c03c9a` |
| unverified unclassified | UnnamedContract<br>`0x6ec687ea05ab6791710f07dd198a5770ca5a7385` | non_address_book | unknown | unknown | unverified | n/a | `0xfeed46c11f57b7126a773eec6ae9ca7ae1c03c9a` |
| unverified unclassified | UnnamedContract<br>`0x71aafd4afe214d9d44d87481a26d6ad294b078c7` | non_address_book | unknown | unknown | unverified | n/a | `0xfeed46c11f57b7126a773eec6ae9ca7ae1c03c9a` |
| unverified unclassified | UnnamedContract<br>`0x721aaeabbf5de6fe07de8a6e8b26bc2e4b78423b` | non_address_book | unknown | unknown | unverified | n/a | `0xfeed46c11f57b7126a773eec6ae9ca7ae1c03c9a` |
| unverified unclassified | UnnamedContract<br>`0x72d2277c7242a4464d9b277cf682e350205e6938` | non_address_book | unknown | unknown | unverified | n/a | `0xfeed46c11f57b7126a773eec6ae9ca7ae1c03c9a` |
| unverified unclassified | UnnamedContract<br>`0x72da6daedbf4cec07ad04d8ba2170473bc45a27a` | non_address_book | unknown | unknown | unverified | n/a | `0xfeed46c11f57b7126a773eec6ae9ca7ae1c03c9a` |
| unverified unclassified | UnnamedContract<br>`0x7694fa1a6c736f85f9ee14f79be6b95259a69200` | non_address_book | unknown | unknown | unverified | n/a | `0xfeed46c11f57b7126a773eec6ae9ca7ae1c03c9a` |
| unverified unclassified | UnnamedContract<br>`0x772d25142b66bc31b94726faf11f66157e8028d0` | non_address_book | unknown | unknown | unverified | n/a | `0xfeed46c11f57b7126a773eec6ae9ca7ae1c03c9a` |
| unverified unclassified | UnnamedContract<br>`0x8458ea952f406bf49d90447c664615a30f31c9bf` | non_address_book | unknown | unknown | unverified | n/a | `0xfeed46c11f57b7126a773eec6ae9ca7ae1c03c9a` |
| unverified unclassified | UnnamedContract<br>`0x84e51a0c8dac953f37bc72a43fd3a008345efcb8` | non_address_book | unknown | unknown | unverified | n/a | `0xfeed46c11f57b7126a773eec6ae9ca7ae1c03c9a` |
| unverified unclassified | UnnamedContract<br>`0x8e0ae6543513c997934e7e4453eb8eb5f0fd333e` | non_address_book | unknown | unknown | unverified | n/a | `0xfeed46c11f57b7126a773eec6ae9ca7ae1c03c9a` |
| unverified unclassified | UnnamedContract<br>`0x8e7ae4b4de2650b68dc8213e390319548ff67b4d` | non_address_book | unknown | unknown | unverified | n/a | `0xfeed46c11f57b7126a773eec6ae9ca7ae1c03c9a` |
| unverified unclassified | UnnamedContract<br>`0x8fa4443df3989ed5c51a4e6f436f1f51129dc868` | non_address_book | unknown | unknown | unverified | n/a | `0xfeed46c11f57b7126a773eec6ae9ca7ae1c03c9a` |
| unverified unclassified | UnnamedContract<br>`0x8fd7b58d0d26168b5d85026a0923d19cc059e47e` | non_address_book | unknown | unknown | unverified | n/a | `0xfeed46c11f57b7126a773eec6ae9ca7ae1c03c9a` |
| unverified unclassified | UnnamedContract<br>`0x8feccb8c77948db2d29d669ac6439301304b1342` | non_address_book | unknown | unknown | unverified | n/a | `0xfeed46c11f57b7126a773eec6ae9ca7ae1c03c9a` |
| unverified unclassified | UnnamedContract<br>`0x97bb0e08b664f65f05e0cff03b68bc1238b2e21e` | non_address_book | unknown | unknown | unverified | n/a | `0xfeed46c11f57b7126a773eec6ae9ca7ae1c03c9a` |
| unverified unclassified | UnnamedContract<br>`0x99ce8de8737a1b05affd9539750c23255e29c873` | non_address_book | unknown | unknown | unverified | n/a | `0xfeed46c11f57b7126a773eec6ae9ca7ae1c03c9a` |
| unverified unclassified | UnnamedContract<br>`0x9c34f0d2a1621a3dc25d5d6c82736627cb72bb3d` | non_address_book | unknown | unknown | unverified | n/a | `0xfeed46c11f57b7126a773eec6ae9ca7ae1c03c9a` |
| unverified unclassified | UnnamedContract<br>`0x9f075e127a0533fb9181712070a800ba0b1121ff` | non_address_book | unknown | unknown | unverified | n/a | `0xfeed46c11f57b7126a773eec6ae9ca7ae1c03c9a` |
| unverified unclassified | UnnamedContract<br>`0xa3603ca3ad85bdc3dbeb9023604c393551270985` | non_address_book | unknown | unknown | unverified | n/a | `0xfeed46c11f57b7126a773eec6ae9ca7ae1c03c9a` |
| unverified unclassified | UnnamedContract<br>`0xa5f1a4250955c33b9f2476fd4751a69565f459d1` | non_address_book | unknown | unknown | unverified | n/a | `0xfeed46c11f57b7126a773eec6ae9ca7ae1c03c9a` |
| unverified unclassified | UnnamedContract<br>`0xa6d9d39d87949441a73c6929ae5a15eff9524310` | non_address_book | unknown | unknown | unverified | n/a | `0xfeed46c11f57b7126a773eec6ae9ca7ae1c03c9a` |
| unverified unclassified | UnnamedContract<br>`0xa7f36c9a9865de020d90ee6ce26bc8a6998ec75c` | non_address_book | unknown | unknown | unverified | n/a | `0xfeed46c11f57b7126a773eec6ae9ca7ae1c03c9a` |
| unverified unclassified | UnnamedContract<br>`0xab137e8a6ca28459bc9b063380ea5c607e16f893` | non_address_book | unknown | unknown | unverified | n/a | `0xfeed46c11f57b7126a773eec6ae9ca7ae1c03c9a` |
| unverified unclassified | UnnamedContract<br>`0xb0611580efcb49131d447ba74e8cf0a47bb45bb7` | non_address_book | unknown | unknown | unverified | n/a | `0xfeed46c11f57b7126a773eec6ae9ca7ae1c03c9a` |
| unverified unclassified | UnnamedContract<br>`0xb3a074fd5abd89369ec25f4ddddb976869256c51` | non_address_book | unknown | unknown | unverified | n/a | `0xfeed46c11f57b7126a773eec6ae9ca7ae1c03c9a` |
| unverified unclassified | UnnamedContract<br>`0xc2d777ca4bc6941ac7c04fcd54d17cf4a53efe00` | non_address_book | unknown | unknown | unverified | n/a | `0xfeed46c11f57b7126a773eec6ae9ca7ae1c03c9a` |
| unverified unclassified | UnnamedContract<br>`0xc73a7437d889f864f3b67c6b384568adaf7ebf97` | non_address_book | unknown | unknown | unverified | n/a | `0xfeed46c11f57b7126a773eec6ae9ca7ae1c03c9a` |
| unverified unclassified | UnnamedContract<br>`0xc741f63a1cf0793a6b18820e8d7a5b05e0935e3b` | non_address_book | unknown | unknown | unverified | n/a | `0xfeed46c11f57b7126a773eec6ae9ca7ae1c03c9a` |
| unverified unclassified | UnnamedContract<br>`0xc8002b0b15521b8fb7f4d4fd6c2b0ca3691bbc22` | non_address_book | unknown | unknown | unverified | n/a | `0xfeed46c11f57b7126a773eec6ae9ca7ae1c03c9a` |
| unverified unclassified | UnnamedContract<br>`0xc88058aa7c210e23e6cc54baba7ba6c51479dd4d` | non_address_book | unknown | unknown | unverified | n/a | `0xfeed46c11f57b7126a773eec6ae9ca7ae1c03c9a` |
| unverified unclassified | UnnamedContract<br>`0xcd0066ec3f96afe3f6015539d16def2ce648ab77` | non_address_book | unknown | unknown | unverified | n/a | `0xfeed46c11f57b7126a773eec6ae9ca7ae1c03c9a` |
| unverified unclassified | UnnamedContract<br>`0xcef0ccd2e9ea13356324f53a5f26308e6c3298c7` | non_address_book | unknown | unknown | unverified | n/a | `0xfeed46c11f57b7126a773eec6ae9ca7ae1c03c9a` |
| unverified unclassified | UnnamedContract<br>`0xcfc5de5dd9a0f7c17bf094550fc638421abd285d` | non_address_book | unknown | unknown | unverified | n/a | `0xfeed46c11f57b7126a773eec6ae9ca7ae1c03c9a` |
| unverified unclassified | UnnamedContract<br>`0xd0b34caa4daae7457966df7baac4c2a64b527f36` | non_address_book | unknown | unknown | unverified | n/a | `0xfeed46c11f57b7126a773eec6ae9ca7ae1c03c9a` |
| unverified unclassified | UnnamedContract<br>`0xdee402fdb843ac55ae112a7f7b979d4a77e450ff` | non_address_book | unknown | unknown | unverified | n/a | `0xfeed46c11f57b7126a773eec6ae9ca7ae1c03c9a` |
| unverified unclassified | UnnamedContract<br>`0xe4417592bc04a2ebd561d6a79180343c1a4f15f1` | non_address_book | unknown | unknown | unverified | n/a | `0xfeed46c11f57b7126a773eec6ae9ca7ae1c03c9a` |
| unverified unclassified | UnnamedContract<br>`0xeafd235f8db48242b85dbf9b20922c5aa1d5882a` | non_address_book | unknown | unknown | unverified | n/a | `0xfeed46c11f57b7126a773eec6ae9ca7ae1c03c9a` |
| unverified unclassified | UnnamedContract<br>`0xebbb2bbc9e5accc282dbb3249d6772c6360e0e55` | non_address_book | unknown | unknown | unverified | n/a | `0xfeed46c11f57b7126a773eec6ae9ca7ae1c03c9a` |
| unverified unclassified | UnnamedContract<br>`0xf14dc5bdfa8050a3ebf330092f71c54d3febd16b` | non_address_book | unknown | unknown | unverified | n/a | `0xfeed46c11f57b7126a773eec6ae9ca7ae1c03c9a` |
| unverified unclassified | UnnamedContract<br>`0xf5ef31308f7556028b8f4e65ac486082c37b98eb` | non_address_book | unknown | unknown | unverified | n/a | `0xfeed46c11f57b7126a773eec6ae9ca7ae1c03c9a` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

- No persisted address-book scope analysis is available.

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 67 |

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
