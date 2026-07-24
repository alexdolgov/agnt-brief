# Agentic Audit Brief: Chainflip

## Export Authority

- Production state: **published scope**
- Raw selected rows: 2 across 2 audit(s)
- Eligible audit results: 4 (2 matched; 2 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e40c73181a386361babecc6895e0f6c5587548f92814db09f88491f8b4a38d92`

## Project Overview

- Project: Chainflip (`chainflip`)
- Website: [https://chainflip.io/](https://chainflip.io/)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: arbitrum, ethereum
- Contract surface: 23 unique implementations (120 raw deployments)
- Coverage basis: 1/11 confirmed own live verified implementations (9.1%); conservative 9.1% with 0 needs-review implementation(s)
- DeFi Llama TVL: $33,405,700.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Chainflip. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 11 contract row(s) across arbitrum, ethereum. Structural roles: 7 core, 2 supporting, 2 unclassified. 2 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 11
- Structural roles: core (7), supporting (2), unclassified (2)
- Contract kinds: contract (11)
- Detected standards: erc1967proxy (2), erc20 (2)
- Frameworks: openzeppelin (5)
- Upgradeable-pattern rows: 2

## Fork Analysis

0 of 13 contracts are derived from known codebases. 13 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x2260fac5e5542a773aa44fbcfedf7c193bc2c599`, chain 1)
- UnnamedContract (`0xfd086bc7cd5c481dcc9c85ebe478a1c0b69fcbb9`, chain 42161)
- AddressChecker (`0x79001a5e762f3befc8e5871b42f6734e00498920`, chain 1)
- AddressChecker (`0xc1b12993f760b654897f0257573202fba13d5481`, chain 42161)
- FiatTokenProxy (`0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48`, chain 1)
- FiatTokenProxy (`0xaf88d065e77c8cc2239327c5edb3a432268e5831`, chain 42161)
- FLIP (`0x826180541412d574cf1336d22c0c0a287822678a`, chain 1)
- KeyManager (`0xcd351d3626dc244730796a3168d315168ebf08be`, chain 1)
- KeyManager (`0xbfe612c77c2807ac5a6a41f84436287578000275`, chain 42161)
- StateChainGateway (`0x6995ab7c4d7f4b03f467cf4c8e920427d9621dbd`, chain 1)
- TetherToken (`0xdac17f958d2ee523a2206206994597c13d831ec7`, chain 1)
- Vault (`0xf5e10380213880111522dd0efd3dbb45b9f62bcc`, chain 1)
- Vault (`0x79001a5e762f3befc8e5871b42f6734e00498920`, chain 42161)

## Contract Surface Quality

- Logic-topography rows: 11; live-surface rows included: 11 (11 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 13/26 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 1/11 (9.1%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 13 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 10 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 2
- Confirmed-live implementations: 13 of 23 unique; 10 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 1/17
- Verified + Unaudited implementations: 16
- Verified by bytecode match: 0
- Unverified implementations: 6
- Unique implementations: 23
- Raw deployments: 120
- Audits discovered: 4 (4 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 2
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-12 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 4 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 1 match-unverified
- Tier 1 coverage: 9.1% (Trail of Bits)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Trail of Bits | Tier 1 | 1 | 5.9% | 2023-04 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| FLIP | unknown | project_anchor | own_supporting | 0 | ethereum | unit-231754 | `0x826180541412d574cf1336d22c0c0a287822678a` | ✅ Audited |

### ⚠️ Verified + Unaudited (16)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AddressChecker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x1562ad6bb0e68980a3111f24531c964c7e155611`; arbitrum `0x69c700a0debab9e349dd1f52ed62eb253a3c9892` | ⚠️ Unaudited |
| AddressChecker | unknown | project_anchor | own_supporting | 0 | ethereum | unit-231753 | `0x79001a5e762f3befc8e5871b42f6734e00498920` | ⚠️ Unaudited |
| AddressChecker | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-231768 | `0xc1b12993f760b654897f0257573202fba13d5481` | ⚠️ Unaudited |
| AddressHolder | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb3797a0f2d2a55eb058277c1fe4ba052a97d2136` | ⚠️ Unaudited |
| EACAggregatorProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5f4ec3df9cbd43714fe2740f5e3616155c5b8419` | ⚠️ Unaudited |
| FiatTokenV2_2 | token | project_anchor | own_supporting | 1 | ethereum | unit-231770 | `0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48` | ⚠️ Unaudited |
| FiatTokenV2_2 | token | project_anchor | own_supporting | 1 | arbitrum | unit-231771 | `0xaf88d065e77c8cc2239327c5edb3a432268e5831` | ⚠️ Unaudited |
| KeyManager | governance | project_anchor | own_supporting | 0 | ethereum | unit-231757 | `0xcd351d3626dc244730796a3168d315168ebf08be` | ⚠️ Unaudited |
| KeyManager | governance | project_anchor | own_supporting | 0 | arbitrum | unit-231767 | `0xbfe612c77c2807ac5a6a41f84436287578000275` | ⚠️ Unaudited |
| ScUtils | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x13ad793e7b75eaacee34b69792552f086b301380` | ⚠️ Unaudited |
| StateChainGateway | unknown | project_anchor | own_supporting | 0 | ethereum | unit-231752 | `0x6995ab7c4d7f4b03f467cf4c8e920427d9621dbd` | ⚠️ Unaudited |
| TetherToken | token | project_anchor | own_supporting | 0 | ethereum | unit-231758 | `0xdac17f958d2ee523a2206206994597c13d831ec7` | ⚠️ Unaudited |
| TokenVestingNoStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 58 deployments: ethereum `0x0300a77772640d81843dc33198bde8798857b03f`; ethereum `0x04c0b19e33d8f28efd770772c5d05d07190f4df9`; ethereum `0x0c359353c351ad7c0689bfc6cf7858baceb2de29`; ethereum `0x0e7975d724cf535430357b88d9b08ea191a4a2b1`; ethereum `0x1037eaba8feefe615ae317cbfecec504eb559541`; ethereum `0x120aa78aee0a1d0d964221e1c25dad56d3a963fd`; ethereum `0x18151c1b9dfdd5f6c17bf184a5679202cecae943`; ethereum `0x1917fd807af27170a9c94a55e8526c0090129982`; ethereum `0x1aaa037bfbbe56995db04b30298f9a7ccc43e887`; ethereum `0x231863eedcb54a66682dbc740643d99a07c199d2`; ethereum `0x2d1fabdc0493a2ac477fbba2b91649b2f43d7c55`; ethereum `0x2d3b1b3bec76cdb0de8c8176cb970ca51785b367`; ethereum `0x31992547e694a9d2fe2dae263a39216848dc8a93`; ethereum `0x34d4735350a0072e098688ab71147546bc63d7d9`; ethereum `0x3878596fd15215cca83c204e69d598462a387e58`; ethereum `0x393c7c49f0b2b55e1d741ed0768f50be7dcd2196`; ethereum `0x3aca5e839ff1ea1f0693472a47aec4fadb5cc966`; ethereum `0x3eedae91bd9fa957fef50cfc089fbaaae0b05ca7`; ethereum `0x3f495f7608f3636f13b8cd4f773a07660035bb6d`; ethereum `0x4003c054924aa57e88fb93593670c8792ee9fa66`; ethereum `0x453ace530ab9bf57815f28fafaacfaf3b21acfba`; ethereum `0x4a1a429f386b2c456b6a5835ce769c792bffe979`; ethereum `0x4ce0266763afdaf62e127597c8a6bddfeb65de53`; ethereum `0x4dd60954824356dfeae7cdd860def26071e39956`; ethereum `0x55ec5cf325cdae83f9fa4d6091e691f0bcdd29e9`; ethereum `0x5df5e9f92bec15c786029e1f5d1f1ae0ba2b3773`; ethereum `0x5eb30810a82ea50667b45320e47061ef652f2bdc`; ethereum `0x63d481e3a57a2cef99e1eccc4e0a7f8c4d1aa4dd`; ethereum `0x695eb6a891263779bc76e58849e891df13808161`; ethereum `0x6a52a4306c54818b8fc2124ad57612047643e66a`; ethereum `0x71b7a813ae58b3c2ed3a8d9cdbe6f59bb52fc71b`; ethereum `0x766ece7e6033d0f4b73c2b55aa878df8635ffad8`; ethereum `0x7a5068ecd79b7b82d6146c52e092aceb46f69ebf`; ethereum `0x7eb1b82d111fb0ebe8f9bab8f3fbda6f7d4b7e75`; ethereum `0x838e978b019ec074b0ade7938d426d6454b5aed4`; ethereum `0x84bc9532282d9a6b1886586e6979184edbba74be`; ethereum `0x867fe827374ab08b40ce2eafdb693b3c548ce7bf`; ethereum `0x87aba8c6ce4b23660cba31d41bb7db28aa0eeb05`; ethereum `0x87fa9852f5f2e59301a6e1c3b738a0ca35db26c2`; ethereum `0x8b5aaa24ac2b7178eab5c1dbfe15a58423dc06d5`; ethereum `0x8b8af720c632cb715b307271002f2c799f015a73`; ethereum `0x8d1ecf1a5f082e9fe806adff6bc8a3f11a736e3a`; ethereum `0x9abdbf7dfafb5b55100cf28120f80954145ffa4c`; ethereum `0x9efca98afdd0f1ee514ced4d255da3715fdb677f`; ethereum `0xa1dd670fca744355d47ec9a6d7cd578eebe53a44`; ethereum `0xacddca008de7ea5936941143b944681d84f4f998`; ethereum `0xb409e9e799f21f2bdc65730d5fb2cead9c63ec00`; ethereum `0xb994e49d279130c4d6169e59bc37c66cdca94ae0`; ethereum `0xbb634eff1408d3a56986e77a2e917833ef1a5d00`; ethereum `0xbcc69bcc31067980f4b9002e8f30b26cdc9090a3`; ethereum `0xce35e965ea6c5748903b2cef5b277ea806355f0e`; ethereum `0xd80a4a24ab2df822c16cc6220ca0627547828f10`; ethereum `0xe2cfdbe49b9702dcb92db1aa1a38d502ea929f4f`; ethereum `0xe7a90663ede51a30e26ea5e508f0a1d808530774`; ethereum `0xe904d449407dd7fd240232361b77b52faae0b08e`; ethereum `0xead5f668ac011b24b474f24878d17321f0cf8c70`; ethereum `0xeddd18708cfded659e102e0260e6e567677cd668`; ethereum `0xfa743157557ea7ecf359733a0b7325bf7f361507` | ⚠️ Unaudited |
| TokenVestingStaking | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 40 deployments: ethereum `0x00b2849f4bdb572858ac144f83340a3f472830b9`; ethereum `0x04805263da365cc5284fcce29e1fdf7966454d27`; ethereum `0x05f7393d0bb54b2421483732449a5704c0aaf65e`; ethereum `0x08f097d6aeb931a57b08144d2dff6215a595e31e`; ethereum `0x0ba803a7e1662a358a4686832ee34f3fcf412293`; ethereum `0x0e04c6ecec471a17cae26503b96feceb9e2c1125`; ethereum `0x159cd13d05ae9be47b6bc4589879f4281c8699ed`; ethereum `0x1728e5d34eea55260e3e94f3f63d41bbf6bc0861`; ethereum `0x27689efa8dacad9c2167d5433aefc3c3aeaa0e7d`; ethereum `0x2cd644d53f65fc0dba12eca49a6b238b85df2b33`; ethereum `0x2f0a877cecc237c418c6fa4e21d753bf843f9f0f`; ethereum `0x302a35cb68733635beea69118b738c03ccf1eb9e`; ethereum `0x3426ede94d7935dae5b79cef2c8226d244682afb`; ethereum `0x36541c775106970e522fcf254f9181ca1ce2ba8e`; ethereum `0x365609e2b97017358fe529b12aba1b202fa59cb5`; ethereum `0x3bfe744c302b4bfa04e9fa5c9063e3de3d5bf858`; ethereum `0x3c463c27b3f54f957b39a57f982fef5a3818e014`; ethereum `0x49d9c4d897e26a142eb7dd01f5cdeb92ea0fef37`; ethereum `0x4c1b4e85fdbe992270d31a0637e4cdc228c3de23`; ethereum `0x634683e1bce9e2abea111e3a0db3671c5d391d49`; ethereum `0x751a7301d04340a207a2e0f06b54e6f0633e85cc`; ethereum `0x7e62591cd1bd0744894dfdfda0bfb0533e97df95`; ethereum `0x7fe0eb9b0fab2c091ab8a029c3649403fe0bee7c`; ethereum `0x835012efffe34fabf82f26a9712d3eff1b2d5145`; ethereum `0x83c3850e9532dd5dadafe3c7838d44dd6f2d1234`; ethereum `0x884f1bc775ac9e06b43ab0b6ce9c1cdf7cd4db35`; ethereum `0x8c3c5f48eb3377c4337d07ff5469c6b907d46c4d`; ethereum `0x8f0f6e4f063b37e5f623355f88898c3384c05218`; ethereum `0x8f9fec2768fd052e61ee7dc67cc980155ae9164d`; ethereum `0xbdefa55f85c1930b7322ebc9c32e27ae2e3c2f45`; ethereum `0xc19185449be6730ec4ebc9cca8d9ea1bf4e90dda`; ethereum `0xc1f8d8d5c6753bc24f65bc6c5b183373cbf4c20a`; ethereum `0xc73e1dfb559b9f53fd3f812aacf642d93e920d32`; ethereum `0xc9b4a2a935dceddf2e62f7acdb815ec5bd74948d`; ethereum `0xda674612982af14ef09486a023369cfc6359a86e`; ethereum `0xde4c128e9865fe82294143f34038099c95c67d38`; ethereum `0xe05254688976a48d364a41957fd5c8676c24707e`; ethereum `0xf361c439266b7ca7cf739ae379aa1813b84fe474`; ethereum `0xf38039b0afe89e2f36831935204c1da6776d2a08`; ethereum `0xf7fb8e3652f5268bc7dcabf895fc994defbe8813` | ⚠️ Unaudited |
| Vault | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-231760 | `0xf5e10380213880111522dd0efd3dbb45b9f62bcc` | ⚠️ Unaudited |
| Vault | core_logic | project_anchor | own_supporting | 0 | arbitrum | unit-231766 | `0x79001a5e762f3befc8e5871b42f6734e00498920` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (6)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-231747 | `0x2260fac5e5542a773aa44fbcfedf7c193bc2c599` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3e8640574aa764763291ed733672d3a105107ac5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbfe612c77c2807ac5a6a41f84436287578000275` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xca06411bd7a7296d7dbdd0050dfc846e95febeb7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe5a5f138005e19a3e6d0fe68b039397eeef2322b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-231769 | `0xfd086bc7cd5c481dcc9c85ebe478a1c0b69fcbb9` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 94
- Live contracts: 2
- Unknown liveness contracts: 92
- Source-verified contracts: 90
- Currently scope-matched contracts retained as-is: 0
- Classification counts: contamination review=2, exact address book overlap=2, source verified unclassified=86, unverified unclassified=4

| Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|
| contamination review | AddressChecker<br>`0x1562ad6bb0e68980a3111f24531c964c7e155611` | non_address_book | unknown | unknown | verified | n/a | `0xb9e6ef6fdb106bc8e1a001b9d7e8feaf8bebbc36` |
| contamination review | AddressHolder<br>`0xb3797a0f2d2a55eb058277c1fe4ba052a97d2136` | non_address_book | unknown | unknown | verified | n/a | `0xb9e6ef6fdb106bc8e1a001b9d7e8feaf8bebbc36` |
| exact address book overlap | AddressChecker<br>`0x79001a5e762f3befc8e5871b42f6734e00498920` | project_anchor | unknown | live | verified | n/a | `0xb9e6ef6fdb106bc8e1a001b9d7e8feaf8bebbc36` |
| exact address book overlap | AddressChecker<br>`0xc1b12993f760b654897f0257573202fba13d5481` | project_anchor | unknown | live | verified | n/a | `0xb9e6ef6fdb106bc8e1a001b9d7e8feaf8bebbc36` |
| source verified unclassified | TokenVestingNoStaking<br>`0x0300a77772640d81843dc33198bde8798857b03f` | non_address_book | unknown | unknown | verified | n/a | `0xb9e6ef6fdb106bc8e1a001b9d7e8feaf8bebbc36` |
| source verified unclassified | TokenVestingNoStaking<br>`0x04c0b19e33d8f28efd770772c5d05d07190f4df9` | non_address_book | unknown | unknown | verified | n/a | `0xb9e6ef6fdb106bc8e1a001b9d7e8feaf8bebbc36` |
| source verified unclassified | TokenVestingNoStaking<br>`0x0c359353c351ad7c0689bfc6cf7858baceb2de29` | non_address_book | unknown | unknown | verified | n/a | `0xb9e6ef6fdb106bc8e1a001b9d7e8feaf8bebbc36` |
| source verified unclassified | TokenVestingNoStaking<br>`0x0e7975d724cf535430357b88d9b08ea191a4a2b1` | non_address_book | unknown | unknown | verified | n/a | `0xb9e6ef6fdb106bc8e1a001b9d7e8feaf8bebbc36` |
| source verified unclassified | TokenVestingNoStaking<br>`0x1037eaba8feefe615ae317cbfecec504eb559541` | non_address_book | unknown | unknown | verified | n/a | `0xb9e6ef6fdb106bc8e1a001b9d7e8feaf8bebbc36` |
| source verified unclassified | TokenVestingNoStaking<br>`0x120aa78aee0a1d0d964221e1c25dad56d3a963fd` | non_address_book | unknown | unknown | verified | n/a | `0xb9e6ef6fdb106bc8e1a001b9d7e8feaf8bebbc36` |
| source verified unclassified | TokenVestingNoStaking<br>`0x18151c1b9dfdd5f6c17bf184a5679202cecae943` | non_address_book | unknown | unknown | verified | n/a | `0xb9e6ef6fdb106bc8e1a001b9d7e8feaf8bebbc36` |
| source verified unclassified | TokenVestingNoStaking<br>`0x1917fd807af27170a9c94a55e8526c0090129982` | non_address_book | unknown | unknown | verified | n/a | `0xb9e6ef6fdb106bc8e1a001b9d7e8feaf8bebbc36` |
| source verified unclassified | TokenVestingNoStaking<br>`0x231863eedcb54a66682dbc740643d99a07c199d2` | non_address_book | unknown | unknown | verified | n/a | `0xb9e6ef6fdb106bc8e1a001b9d7e8feaf8bebbc36` |
| source verified unclassified | TokenVestingNoStaking<br>`0x2d1fabdc0493a2ac477fbba2b91649b2f43d7c55` | non_address_book | unknown | unknown | verified | n/a | `0xb9e6ef6fdb106bc8e1a001b9d7e8feaf8bebbc36` |
| source verified unclassified | TokenVestingNoStaking<br>`0x2d3b1b3bec76cdb0de8c8176cb970ca51785b367` | non_address_book | unknown | unknown | verified | n/a | `0xb9e6ef6fdb106bc8e1a001b9d7e8feaf8bebbc36` |
| source verified unclassified | TokenVestingNoStaking<br>`0x31992547e694a9d2fe2dae263a39216848dc8a93` | non_address_book | unknown | unknown | verified | n/a | `0xb9e6ef6fdb106bc8e1a001b9d7e8feaf8bebbc36` |
| source verified unclassified | TokenVestingNoStaking<br>`0x34d4735350a0072e098688ab71147546bc63d7d9` | non_address_book | unknown | unknown | verified | n/a | `0xb9e6ef6fdb106bc8e1a001b9d7e8feaf8bebbc36` |
| source verified unclassified | TokenVestingNoStaking<br>`0x3878596fd15215cca83c204e69d598462a387e58` | non_address_book | unknown | unknown | verified | n/a | `0xb9e6ef6fdb106bc8e1a001b9d7e8feaf8bebbc36` |
| source verified unclassified | TokenVestingNoStaking<br>`0x393c7c49f0b2b55e1d741ed0768f50be7dcd2196` | non_address_book | unknown | unknown | verified | n/a | `0xb9e6ef6fdb106bc8e1a001b9d7e8feaf8bebbc36` |
| source verified unclassified | TokenVestingNoStaking<br>`0x3aca5e839ff1ea1f0693472a47aec4fadb5cc966` | non_address_book | unknown | unknown | verified | n/a | `0xb9e6ef6fdb106bc8e1a001b9d7e8feaf8bebbc36` |
| source verified unclassified | TokenVestingNoStaking<br>`0x3eedae91bd9fa957fef50cfc089fbaaae0b05ca7` | non_address_book | unknown | unknown | verified | n/a | `0xb9e6ef6fdb106bc8e1a001b9d7e8feaf8bebbc36` |
| source verified unclassified | TokenVestingNoStaking<br>`0x3f495f7608f3636f13b8cd4f773a07660035bb6d` | non_address_book | unknown | unknown | verified | n/a | `0xb9e6ef6fdb106bc8e1a001b9d7e8feaf8bebbc36` |
| source verified unclassified | TokenVestingNoStaking<br>`0x4003c054924aa57e88fb93593670c8792ee9fa66` | non_address_book | unknown | unknown | verified | n/a | `0xb9e6ef6fdb106bc8e1a001b9d7e8feaf8bebbc36` |
| source verified unclassified | TokenVestingNoStaking<br>`0x453ace530ab9bf57815f28fafaacfaf3b21acfba` | non_address_book | unknown | unknown | verified | n/a | `0xb9e6ef6fdb106bc8e1a001b9d7e8feaf8bebbc36` |
| source verified unclassified | TokenVestingNoStaking<br>`0x4a1a429f386b2c456b6a5835ce769c792bffe979` | non_address_book | unknown | unknown | verified | n/a | `0xb9e6ef6fdb106bc8e1a001b9d7e8feaf8bebbc36` |
| source verified unclassified | TokenVestingNoStaking<br>`0x4ce0266763afdaf62e127597c8a6bddfeb65de53` | non_address_book | unknown | unknown | verified | n/a | `0xb9e6ef6fdb106bc8e1a001b9d7e8feaf8bebbc36` |
| source verified unclassified | TokenVestingNoStaking<br>`0x4dd60954824356dfeae7cdd860def26071e39956` | non_address_book | unknown | unknown | verified | n/a | `0xb9e6ef6fdb106bc8e1a001b9d7e8feaf8bebbc36` |
| source verified unclassified | TokenVestingNoStaking<br>`0x55ec5cf325cdae83f9fa4d6091e691f0bcdd29e9` | non_address_book | unknown | unknown | verified | n/a | `0xb9e6ef6fdb106bc8e1a001b9d7e8feaf8bebbc36` |
| source verified unclassified | TokenVestingNoStaking<br>`0x5eb30810a82ea50667b45320e47061ef652f2bdc` | non_address_book | unknown | unknown | verified | n/a | `0xb9e6ef6fdb106bc8e1a001b9d7e8feaf8bebbc36` |
| source verified unclassified | TokenVestingNoStaking<br>`0x63d481e3a57a2cef99e1eccc4e0a7f8c4d1aa4dd` | non_address_book | unknown | unknown | verified | n/a | `0xb9e6ef6fdb106bc8e1a001b9d7e8feaf8bebbc36` |
| source verified unclassified | TokenVestingNoStaking<br>`0x695eb6a891263779bc76e58849e891df13808161` | non_address_book | unknown | unknown | verified | n/a | `0xb9e6ef6fdb106bc8e1a001b9d7e8feaf8bebbc36` |
| source verified unclassified | TokenVestingNoStaking<br>`0x6a52a4306c54818b8fc2124ad57612047643e66a` | non_address_book | unknown | unknown | verified | n/a | `0xb9e6ef6fdb106bc8e1a001b9d7e8feaf8bebbc36` |
| source verified unclassified | TokenVestingNoStaking<br>`0x71b7a813ae58b3c2ed3a8d9cdbe6f59bb52fc71b` | non_address_book | unknown | unknown | verified | n/a | `0xb9e6ef6fdb106bc8e1a001b9d7e8feaf8bebbc36` |
| source verified unclassified | TokenVestingNoStaking<br>`0x766ece7e6033d0f4b73c2b55aa878df8635ffad8` | non_address_book | unknown | unknown | verified | n/a | `0xb9e6ef6fdb106bc8e1a001b9d7e8feaf8bebbc36` |
| source verified unclassified | TokenVestingNoStaking<br>`0x7a5068ecd79b7b82d6146c52e092aceb46f69ebf` | non_address_book | unknown | unknown | verified | n/a | `0xb9e6ef6fdb106bc8e1a001b9d7e8feaf8bebbc36` |
| source verified unclassified | TokenVestingNoStaking<br>`0x838e978b019ec074b0ade7938d426d6454b5aed4` | non_address_book | unknown | unknown | verified | n/a | `0xb9e6ef6fdb106bc8e1a001b9d7e8feaf8bebbc36` |
| source verified unclassified | TokenVestingNoStaking<br>`0x84bc9532282d9a6b1886586e6979184edbba74be` | non_address_book | unknown | unknown | verified | n/a | `0xb9e6ef6fdb106bc8e1a001b9d7e8feaf8bebbc36` |
| source verified unclassified | TokenVestingNoStaking<br>`0x867fe827374ab08b40ce2eafdb693b3c548ce7bf` | non_address_book | unknown | unknown | verified | n/a | `0xb9e6ef6fdb106bc8e1a001b9d7e8feaf8bebbc36` |
| source verified unclassified | TokenVestingNoStaking<br>`0x87aba8c6ce4b23660cba31d41bb7db28aa0eeb05` | non_address_book | unknown | unknown | verified | n/a | `0xb9e6ef6fdb106bc8e1a001b9d7e8feaf8bebbc36` |
| source verified unclassified | TokenVestingNoStaking<br>`0x87fa9852f5f2e59301a6e1c3b738a0ca35db26c2` | non_address_book | unknown | unknown | verified | n/a | `0xb9e6ef6fdb106bc8e1a001b9d7e8feaf8bebbc36` |
| source verified unclassified | TokenVestingNoStaking<br>`0x8b5aaa24ac2b7178eab5c1dbfe15a58423dc06d5` | non_address_book | unknown | unknown | verified | n/a | `0xb9e6ef6fdb106bc8e1a001b9d7e8feaf8bebbc36` |
| source verified unclassified | TokenVestingNoStaking<br>`0x8b8af720c632cb715b307271002f2c799f015a73` | non_address_book | unknown | unknown | verified | n/a | `0xb9e6ef6fdb106bc8e1a001b9d7e8feaf8bebbc36` |
| source verified unclassified | TokenVestingNoStaking<br>`0x9abdbf7dfafb5b55100cf28120f80954145ffa4c` | non_address_book | unknown | unknown | verified | n/a | `0xb9e6ef6fdb106bc8e1a001b9d7e8feaf8bebbc36` |
| source verified unclassified | TokenVestingNoStaking<br>`0x9efca98afdd0f1ee514ced4d255da3715fdb677f` | non_address_book | unknown | unknown | verified | n/a | `0xb9e6ef6fdb106bc8e1a001b9d7e8feaf8bebbc36` |
| source verified unclassified | TokenVestingNoStaking<br>`0xa1dd670fca744355d47ec9a6d7cd578eebe53a44` | non_address_book | unknown | unknown | verified | n/a | `0xb9e6ef6fdb106bc8e1a001b9d7e8feaf8bebbc36` |
| source verified unclassified | TokenVestingNoStaking<br>`0xacddca008de7ea5936941143b944681d84f4f998` | non_address_book | unknown | unknown | verified | n/a | `0xb9e6ef6fdb106bc8e1a001b9d7e8feaf8bebbc36` |
| source verified unclassified | TokenVestingNoStaking<br>`0xb409e9e799f21f2bdc65730d5fb2cead9c63ec00` | non_address_book | unknown | unknown | verified | n/a | `0xb9e6ef6fdb106bc8e1a001b9d7e8feaf8bebbc36` |
| source verified unclassified | TokenVestingNoStaking<br>`0xb994e49d279130c4d6169e59bc37c66cdca94ae0` | non_address_book | unknown | unknown | verified | n/a | `0xb9e6ef6fdb106bc8e1a001b9d7e8feaf8bebbc36` |
| source verified unclassified | TokenVestingNoStaking<br>`0xbb634eff1408d3a56986e77a2e917833ef1a5d00` | non_address_book | unknown | unknown | verified | n/a | `0xb9e6ef6fdb106bc8e1a001b9d7e8feaf8bebbc36` |
| source verified unclassified | TokenVestingNoStaking<br>`0xbcc69bcc31067980f4b9002e8f30b26cdc9090a3` | non_address_book | unknown | unknown | verified | n/a | `0xb9e6ef6fdb106bc8e1a001b9d7e8feaf8bebbc36` |
| source verified unclassified | TokenVestingNoStaking<br>`0xce35e965ea6c5748903b2cef5b277ea806355f0e` | non_address_book | unknown | unknown | verified | n/a | `0xb9e6ef6fdb106bc8e1a001b9d7e8feaf8bebbc36` |
| source verified unclassified | TokenVestingNoStaking<br>`0xd80a4a24ab2df822c16cc6220ca0627547828f10` | non_address_book | unknown | unknown | verified | n/a | `0xb9e6ef6fdb106bc8e1a001b9d7e8feaf8bebbc36` |
| source verified unclassified | TokenVestingNoStaking<br>`0xe2cfdbe49b9702dcb92db1aa1a38d502ea929f4f` | non_address_book | unknown | unknown | verified | n/a | `0xb9e6ef6fdb106bc8e1a001b9d7e8feaf8bebbc36` |
| source verified unclassified | TokenVestingNoStaking<br>`0xe7a90663ede51a30e26ea5e508f0a1d808530774` | non_address_book | unknown | unknown | verified | n/a | `0xb9e6ef6fdb106bc8e1a001b9d7e8feaf8bebbc36` |
| source verified unclassified | TokenVestingNoStaking<br>`0xe904d449407dd7fd240232361b77b52faae0b08e` | non_address_book | unknown | unknown | verified | n/a | `0xb9e6ef6fdb106bc8e1a001b9d7e8feaf8bebbc36` |
| source verified unclassified | TokenVestingNoStaking<br>`0xead5f668ac011b24b474f24878d17321f0cf8c70` | non_address_book | unknown | unknown | verified | n/a | `0xb9e6ef6fdb106bc8e1a001b9d7e8feaf8bebbc36` |
| source verified unclassified | TokenVestingNoStaking<br>`0xeddd18708cfded659e102e0260e6e567677cd668` | non_address_book | unknown | unknown | verified | n/a | `0xb9e6ef6fdb106bc8e1a001b9d7e8feaf8bebbc36` |
| source verified unclassified | TokenVestingStaking<br>`0x04805263da365cc5284fcce29e1fdf7966454d27` | non_address_book | unknown | unknown | verified | n/a | `0xb9e6ef6fdb106bc8e1a001b9d7e8feaf8bebbc36` |
| source verified unclassified | TokenVestingStaking<br>`0x05f7393d0bb54b2421483732449a5704c0aaf65e` | non_address_book | unknown | unknown | verified | n/a | `0xb9e6ef6fdb106bc8e1a001b9d7e8feaf8bebbc36` |
| source verified unclassified | TokenVestingStaking<br>`0x08f097d6aeb931a57b08144d2dff6215a595e31e` | non_address_book | unknown | unknown | verified | n/a | `0xb9e6ef6fdb106bc8e1a001b9d7e8feaf8bebbc36` |
| source verified unclassified | TokenVestingStaking<br>`0x0ba803a7e1662a358a4686832ee34f3fcf412293` | non_address_book | unknown | unknown | verified | n/a | `0xb9e6ef6fdb106bc8e1a001b9d7e8feaf8bebbc36` |
| source verified unclassified | TokenVestingStaking<br>`0x0e04c6ecec471a17cae26503b96feceb9e2c1125` | non_address_book | unknown | unknown | verified | n/a | `0xb9e6ef6fdb106bc8e1a001b9d7e8feaf8bebbc36` |
| source verified unclassified | TokenVestingStaking<br>`0x27689efa8dacad9c2167d5433aefc3c3aeaa0e7d` | non_address_book | unknown | unknown | verified | n/a | `0xb9e6ef6fdb106bc8e1a001b9d7e8feaf8bebbc36` |
| source verified unclassified | TokenVestingStaking<br>`0x2cd644d53f65fc0dba12eca49a6b238b85df2b33` | non_address_book | unknown | unknown | verified | n/a | `0xb9e6ef6fdb106bc8e1a001b9d7e8feaf8bebbc36` |
| source verified unclassified | TokenVestingStaking<br>`0x2f0a877cecc237c418c6fa4e21d753bf843f9f0f` | non_address_book | unknown | unknown | verified | n/a | `0xb9e6ef6fdb106bc8e1a001b9d7e8feaf8bebbc36` |
| source verified unclassified | TokenVestingStaking<br>`0x302a35cb68733635beea69118b738c03ccf1eb9e` | non_address_book | unknown | unknown | verified | n/a | `0xb9e6ef6fdb106bc8e1a001b9d7e8feaf8bebbc36` |
| source verified unclassified | TokenVestingStaking<br>`0x3426ede94d7935dae5b79cef2c8226d244682afb` | non_address_book | unknown | unknown | verified | n/a | `0xb9e6ef6fdb106bc8e1a001b9d7e8feaf8bebbc36` |
| source verified unclassified | TokenVestingStaking<br>`0x365609e2b97017358fe529b12aba1b202fa59cb5` | non_address_book | unknown | unknown | verified | n/a | `0xb9e6ef6fdb106bc8e1a001b9d7e8feaf8bebbc36` |
| source verified unclassified | TokenVestingStaking<br>`0x3c463c27b3f54f957b39a57f982fef5a3818e014` | non_address_book | unknown | unknown | verified | n/a | `0xb9e6ef6fdb106bc8e1a001b9d7e8feaf8bebbc36` |
| source verified unclassified | TokenVestingStaking<br>`0x4c1b4e85fdbe992270d31a0637e4cdc228c3de23` | non_address_book | unknown | unknown | verified | n/a | `0xb9e6ef6fdb106bc8e1a001b9d7e8feaf8bebbc36` |
| source verified unclassified | TokenVestingStaking<br>`0x634683e1bce9e2abea111e3a0db3671c5d391d49` | non_address_book | unknown | unknown | verified | n/a | `0xb9e6ef6fdb106bc8e1a001b9d7e8feaf8bebbc36` |
| source verified unclassified | TokenVestingStaking<br>`0x751a7301d04340a207a2e0f06b54e6f0633e85cc` | non_address_book | unknown | unknown | verified | n/a | `0xb9e6ef6fdb106bc8e1a001b9d7e8feaf8bebbc36` |
| source verified unclassified | TokenVestingStaking<br>`0x7e62591cd1bd0744894dfdfda0bfb0533e97df95` | non_address_book | unknown | unknown | verified | n/a | `0xb9e6ef6fdb106bc8e1a001b9d7e8feaf8bebbc36` |
| source verified unclassified | TokenVestingStaking<br>`0x7fe0eb9b0fab2c091ab8a029c3649403fe0bee7c` | non_address_book | unknown | unknown | verified | n/a | `0xb9e6ef6fdb106bc8e1a001b9d7e8feaf8bebbc36` |
| source verified unclassified | TokenVestingStaking<br>`0x835012efffe34fabf82f26a9712d3eff1b2d5145` | non_address_book | unknown | unknown | verified | n/a | `0xb9e6ef6fdb106bc8e1a001b9d7e8feaf8bebbc36` |
| source verified unclassified | TokenVestingStaking<br>`0x83c3850e9532dd5dadafe3c7838d44dd6f2d1234` | non_address_book | unknown | unknown | verified | n/a | `0xb9e6ef6fdb106bc8e1a001b9d7e8feaf8bebbc36` |
| source verified unclassified | TokenVestingStaking<br>`0x884f1bc775ac9e06b43ab0b6ce9c1cdf7cd4db35` | non_address_book | unknown | unknown | verified | n/a | `0xb9e6ef6fdb106bc8e1a001b9d7e8feaf8bebbc36` |
| source verified unclassified | TokenVestingStaking<br>`0x8c3c5f48eb3377c4337d07ff5469c6b907d46c4d` | non_address_book | unknown | unknown | verified | n/a | `0xb9e6ef6fdb106bc8e1a001b9d7e8feaf8bebbc36` |
| source verified unclassified | TokenVestingStaking<br>`0x8f0f6e4f063b37e5f623355f88898c3384c05218` | non_address_book | unknown | unknown | verified | n/a | `0xb9e6ef6fdb106bc8e1a001b9d7e8feaf8bebbc36` |
| source verified unclassified | TokenVestingStaking<br>`0x8f9fec2768fd052e61ee7dc67cc980155ae9164d` | non_address_book | unknown | unknown | verified | n/a | `0xb9e6ef6fdb106bc8e1a001b9d7e8feaf8bebbc36` |
| source verified unclassified | TokenVestingStaking<br>`0xbdefa55f85c1930b7322ebc9c32e27ae2e3c2f45` | non_address_book | unknown | unknown | verified | n/a | `0xb9e6ef6fdb106bc8e1a001b9d7e8feaf8bebbc36` |
| source verified unclassified | TokenVestingStaking<br>`0xc19185449be6730ec4ebc9cca8d9ea1bf4e90dda` | non_address_book | unknown | unknown | verified | n/a | `0xb9e6ef6fdb106bc8e1a001b9d7e8feaf8bebbc36` |
| source verified unclassified | TokenVestingStaking<br>`0xc1f8d8d5c6753bc24f65bc6c5b183373cbf4c20a` | non_address_book | unknown | unknown | verified | n/a | `0xb9e6ef6fdb106bc8e1a001b9d7e8feaf8bebbc36` |
| source verified unclassified | TokenVestingStaking<br>`0xc73e1dfb559b9f53fd3f812aacf642d93e920d32` | non_address_book | unknown | unknown | verified | n/a | `0xb9e6ef6fdb106bc8e1a001b9d7e8feaf8bebbc36` |
| source verified unclassified | TokenVestingStaking<br>`0xc9b4a2a935dceddf2e62f7acdb815ec5bd74948d` | non_address_book | unknown | unknown | verified | n/a | `0xb9e6ef6fdb106bc8e1a001b9d7e8feaf8bebbc36` |
| source verified unclassified | TokenVestingStaking<br>`0xda674612982af14ef09486a023369cfc6359a86e` | non_address_book | unknown | unknown | verified | n/a | `0xb9e6ef6fdb106bc8e1a001b9d7e8feaf8bebbc36` |
| source verified unclassified | TokenVestingStaking<br>`0xe05254688976a48d364a41957fd5c8676c24707e` | non_address_book | unknown | unknown | verified | n/a | `0xb9e6ef6fdb106bc8e1a001b9d7e8feaf8bebbc36` |
| source verified unclassified | TokenVestingStaking<br>`0xf38039b0afe89e2f36831935204c1da6776d2a08` | non_address_book | unknown | unknown | verified | n/a | `0xb9e6ef6fdb106bc8e1a001b9d7e8feaf8bebbc36` |
| source verified unclassified | TokenVestingStaking<br>`0xf7fb8e3652f5268bc7dcabf895fc994defbe8813` | non_address_book | unknown | unknown | verified | n/a | `0xb9e6ef6fdb106bc8e1a001b9d7e8feaf8bebbc36` |
| source verified unclassified | AddressChecker<br>`0x69c700a0debab9e349dd1f52ed62eb253a3c9892` | non_address_book | unknown | unknown | verified | n/a | `0xb9e6ef6fdb106bc8e1a001b9d7e8feaf8bebbc36` |
| unverified unclassified | UnnamedContract<br>`0x3e8640574aa764763291ed733672d3a105107ac5` | non_address_book | unknown | unknown | unverified | n/a | `0x8b41783ad99fcbeb8d575fa7a7b5a04fa0b8d80b` |
| unverified unclassified | UnnamedContract<br>`0xbfe612c77c2807ac5a6a41f84436287578000275` | non_address_book | unknown | unknown | unverified | n/a | `0xb9e6ef6fdb106bc8e1a001b9d7e8feaf8bebbc36` |
| unverified unclassified | UnnamedContract<br>`0xca06411bd7a7296d7dbdd0050dfc846e95febeb7` | non_address_book | unknown | unknown | unverified | n/a | `0x8b41783ad99fcbeb8d575fa7a7b5a04fa0b8d80b` |
| unverified unclassified | UnnamedContract<br>`0xe5a5f138005e19a3e6d0fe68b039397eeef2322b` | non_address_book | unknown | unknown | unverified | n/a | `0x8b41783ad99fcbeb8d575fa7a7b5a04fa0b8d80b` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [2023-04-TrailOfBits-securityreview.pdf](https://github.com/chainflip-io/chainflip-backend/blob/main/audits/2023-04-TrailOfBits-securityreview.pdf) | Trail of Bits | Audit | 2023-04 | stale | Direct | contract_name | matched | 1 | 0 | 0 | 16 | high |
| [Chainflip_Backend_-_Zellic_Audit_Report.pdf](https://github.com/chainflip-io/chainflip-backend/blob/main/audits/Chainflip_Backend_-_Zellic_Audit_Report.pdf) | Zellic | Audit | 2023-12 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |
| [Multisig-Kudelski-Q1-2022.pdf](https://github.com/chainflip-io/chainflip-backend/blob/main/audits/Multisig-Kudelski-Q1-2022.pdf) | Kudelski Security | Audit | 2022-05 | stale | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [2023-04-chainflip-securityreview.pdf](https://github.com/trailofbits/publications/blob/master/reviews/2023-04-chainflip-securityreview.pdf) | Trail of Bits | Audit | 2023-04 | stale | Direct | contract_name | matched | 1 | 0 | 0 | 16 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [3973] 2023-04-TrailOfBits-securityreview.pdf — matched: Extracted contract names from Project Targets section and coverage descriptions. Audit date from final report delivery date.
- [3974] Chainflip_Backend_-_Zellic_Audit_Report.pdf — no match: Extracted 5 pallets/components from scope section. Audit date from cover page.
- [3975] Multisig-Kudelski-Q1-2022.pdf — no match: The audit report is for a Rust implementation of the FROST cryptographic protocol, not for smart contracts. No smart contract names were found in scope.
- [14744] 2023-04-chainflip-securityreview.pdf — matched: Extracted contract names from Project Targets and Project Coverage sections. Audit date from cover page and final report delivery date.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| 2023-04-TrailOfBits-securityreview.pdf | StakeManager | unmatched — not counted | — | listed in scope | no |
| 2023-04-TrailOfBits-securityreview.pdf | FLIP | own contract | FLIP (selected) `0x826180541412d574cf1336d22c0c0a287822678a` — deployed 2023-10-04 15:13:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2023-04-TrailOfBits-securityreview.pdf | TokenVesting | unmatched — not counted | — | listed in scope | no |
| 2023-04-TrailOfBits-securityreview.pdf | Vault | ambiguous — not counted | Vault (alternative) `0x79001a5e762f3befc8e5871b42f6734e00498920` — deployed 2024-05-06 17:25:38+03 — liveness: live (current_address_book_code)<br>Vault (alternative) `0xf5e10380213880111522dd0efd3dbb45b9f62bcc` — deployed 2023-10-04 15:13:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| 2023-04-TrailOfBits-securityreview.pdf | Deposit | unmatched — not counted | — | listed in scope | no |
| 2023-04-TrailOfBits-securityreview.pdf | KeyManager | ambiguous — not counted | KeyManager (alternative) `0xcd351d3626dc244730796a3168d315168ebf08be` — deployed 2023-10-04 15:13:23+03 — liveness: live (current_address_book_code)<br>KeyManager (alternative) `0xbfe612c77c2807ac5a6a41f84436287578000275` — deployed 2024-05-06 17:25:31+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| 2023-04-TrailOfBits-securityreview.pdf | GovernanceCommunityGuarded | unmatched — not counted | — | listed in scope | no |
| 2023-04-TrailOfBits-securityreview.pdf | cf-witnesser | unmatched — not counted | — | listed in scope | no |
| 2023-04-TrailOfBits-securityreview.pdf | cf-staking | unmatched — not counted | — | listed in scope | no |
| 2023-04-TrailOfBits-securityreview.pdf | cf-governance | unmatched — not counted | — | listed in scope | no |
| 2023-04-TrailOfBits-securityreview.pdf | cf-threshold-signature | unmatched — not counted | — | listed in scope | no |
| 2023-04-TrailOfBits-securityreview.pdf | cf-broadcast | unmatched — not counted | — | listed in scope | no |
| 2023-04-TrailOfBits-securityreview.pdf | cf-validator | unmatched — not counted | — | listed in scope | no |
| 2023-04-TrailOfBits-securityreview.pdf | cf-vaults | unmatched — not counted | — | listed in scope | no |
| 2023-04-TrailOfBits-securityreview.pdf | cf-ingress-egress | unmatched — not counted | — | listed in scope | no |
| 2023-04-TrailOfBits-securityreview.pdf | cf-lp | unmatched — not counted | — | listed in scope | no |
| 2023-04-TrailOfBits-securityreview.pdf | cf-tokenholder-governance | unmatched — not counted | — | listed in scope | no |
| Chainflip_Backend_-_Zellic_Audit_Report.pdf | cf-lp | unmatched — not counted | — | listed in scope | no |
| Chainflip_Backend_-_Zellic_Audit_Report.pdf | cf-pools | unmatched — not counted | — | listed in scope | no |
| Chainflip_Backend_-_Zellic_Audit_Report.pdf | cf-swapping | unmatched — not counted | — | listed in scope | no |
| Chainflip_Backend_-_Zellic_Audit_Report.pdf | cf-witnesser | unmatched — not counted | — | listed in scope | no |
| Chainflip_Backend_-_Zellic_Audit_Report.pdf | Engine | unmatched — not counted | — | listed in scope | no |
| 2023-04-chainflip-securityreview.pdf | StakeManager | unmatched — not counted | — | listed in Project Coverage and Detailed Findings | no |
| 2023-04-chainflip-securityreview.pdf | FLIP | own contract | FLIP (selected) `0x826180541412d574cf1336d22c0c0a287822678a` — deployed 2023-10-04 15:13:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2023-04-chainflip-securityreview.pdf | TokenVesting | unmatched — not counted | — | listed in Project Coverage | no |
| 2023-04-chainflip-securityreview.pdf | Vault | ambiguous — not counted | Vault (alternative) `0x79001a5e762f3befc8e5871b42f6734e00498920` — deployed 2024-05-06 17:25:38+03 — liveness: live (current_address_book_code)<br>Vault (alternative) `0xf5e10380213880111522dd0efd3dbb45b9f62bcc` — deployed 2023-10-04 15:13:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| 2023-04-chainflip-securityreview.pdf | Deposit | unmatched — not counted | — | listed in Project Coverage and Detailed Findings | no |
| 2023-04-chainflip-securityreview.pdf | KeyManager | ambiguous — not counted | KeyManager (alternative) `0xcd351d3626dc244730796a3168d315168ebf08be` — deployed 2023-10-04 15:13:23+03 — liveness: live (current_address_book_code)<br>KeyManager (alternative) `0xbfe612c77c2807ac5a6a41f84436287578000275` — deployed 2024-05-06 17:25:31+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| 2023-04-chainflip-securityreview.pdf | GovernanceCommunityGuarded | unmatched — not counted | — | listed in Project Coverage | no |
| 2023-04-chainflip-securityreview.pdf | cf-witnesser | unmatched — not counted | — | listed in Project Coverage | no |
| 2023-04-chainflip-securityreview.pdf | cf-staking | unmatched — not counted | — | listed in Project Coverage and Detailed Findings | no |
| 2023-04-chainflip-securityreview.pdf | cf-governance | unmatched — not counted | — | listed in Project Coverage | no |
| 2023-04-chainflip-securityreview.pdf | cf-threshold-signature | unmatched — not counted | — | listed in Project Coverage and Detailed Findings | no |
| 2023-04-chainflip-securityreview.pdf | cf-broadcast | unmatched — not counted | — | listed in Project Coverage and Detailed Findings | no |
| 2023-04-chainflip-securityreview.pdf | cf-vaults | unmatched — not counted | — | listed in Project Coverage and Detailed Findings | no |
| 2023-04-chainflip-securityreview.pdf | cf-validator | unmatched — not counted | — | listed in Project Coverage | no |
| 2023-04-chainflip-securityreview.pdf | cf-ingress-egress | unmatched — not counted | — | listed in Project Coverage | no |
| 2023-04-chainflip-securityreview.pdf | cf-lp | unmatched — not counted | — | listed in Project Coverage | no |
| 2023-04-chainflip-securityreview.pdf | cf-tokenholder-governance | unmatched — not counted | — | listed in Project Coverage | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0x79001a5e762f3befc8e5871b42f6734e00498920` | AddressChecker | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xc1b12993f760b654897f0257573202fba13d5481` | AddressChecker | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48` | FiatTokenV2_2 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xaf88d065e77c8cc2239327c5edb3a432268e5831` | FiatTokenV2_2 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xcd351d3626dc244730796a3168d315168ebf08be` | KeyManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xbfe612c77c2807ac5a6a41f84436287578000275` | KeyManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x6995ab7c4d7f4b03f467cf4c8e920427d9621dbd` | StateChainGateway | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xdac17f958d2ee523a2206206994597c13d831ec7` | TetherToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xf5e10380213880111522dd0efd3dbb45b9f62bcc` | Vault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x79001a5e762f3befc8e5871b42f6734e00498920` | Vault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 17 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 6 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Address-book scope dispositions: 2 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 4 ambiguous, 33 unmatched
- Matched-own operational status: 2 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=3, low=1
- Match method counts: unique_name=2

Zero-match audit list:

- [3974] Chainflip_Backend_-_Zellic_Audit_Report.pdf
- [3975] Multisig-Kudelski-Q1-2022.pdf

Fork inheritance lineage and inherited audits are included when available.
