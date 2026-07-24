# Agentic Audit Brief: Sperax

## Export Authority

- Production state: **published scope**
- Raw selected rows: 24 across 5 audit(s)
- Eligible audit results: 9 (5 matched; 4 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `f59b0c07e38ecec2d34eb2896e4262470519ed280e5a0a28b0f46fc69c79a374`

## Project Overview

- Project: Sperax (`sperax`)
- Website: [http://sperax.io](http://sperax.io)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: arbitrum, bsc, ethereum
- Contract surface: 152 unique implementations (163 raw deployments)
- Coverage basis: 3/9 confirmed own live verified implementations (33.3%); conservative 33.3% with 0 needs-review implementation(s)
- DeFi Llama TVL: $1,765,659.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Sperax. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 9 contract row(s) across arbitrum, bsc, ethereum. Structural roles: 6 core, 2 supporting, 1 unclassified. 5 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 9
- Structural roles: core (6), supporting (2), unclassified (1)
- Contract kinds: contract (9)
- Detected standards: ownable (6), erc20 (3), erc1967proxy (2), pausable (2)
- Frameworks: openzeppelin (6), openzeppelin-upgradeable (4)
- Upgradeable-pattern rows: 5

## Fork Analysis

0 of 23 contracts are derived from known codebases. 23 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0xbf82a3212e13b2d407d10f5107b5c8404de7f403`, chain 1)
- UnnamedContract (`0x1a9fd6ec3144da3dd6ea13ec1c25c58423a379b1`, chain 56)
- UnnamedContract (`0x14d99412dab1878dc01fe7a1664cde85896e8e50`, chain 42161)
- UnnamedContract (`0x212208daf12d7612e65fb39ee9a07172b08226b8`, chain 42161)
- UnnamedContract (`0x297331a0155b1e30bbfa85cf3609ec0ff037beec`, chain 42161)
- UnnamedContract (`0x45bc6b44107837e7abb21e2cacbe7612fce222e0`, chain 42161)
- UnnamedContract (`0x6bbc476ee35cba9e9c3a59fc5b10d7a0bc6f74ca`, chain 42161)
- UnnamedContract (`0x926477baf60c25857419cc9bf52e914881e1bdd3`, chain 42161)
- UnnamedContract (`0x974993ee8df7f5c4f3f9aa4eb5b4534f359f3388`, chain 42161)
- UnnamedContract (`0xb9c9100720d8c6e35eb8dd0f9c1abef320daa136`, chain 42161)
- UnnamedContract (`0xbceb48625771e35420076f79ec6921e783a82442`, chain 42161)
- UnnamedContract (`0xd122840fa5b48b2ddb723ccc5928f88dcb558afc`, chain 42161)
- UnnamedContract (`0xd50193e8ffb00bea274bd2b11d0a7ea08da044c1`, chain 42161)
- UnnamedContract (`0xda423bfa1e196598190deefbafc28adb36faedf0`, chain 42161)
- UnnamedContract (`0xfbc0d3ca777722d234fe01dba94dededb277afe3`, chain 42161)
- SperaxToken (`0xb4a3b0faf0ab53df58001804dda5bfc6a3d59008`, chain 1)
- SperaxTokenL1 (`0x2a95fe4c7e64e09856989f9ea0b57b9ab5f770cb`, chain 1)
- SperaxTokenL2 (`0x5575552988a3a80504bbaeb1311674fcfd40ad4b`, chain 42161)
- TransparentUpgradeableProxy (`0x2e2071180682ce6c247b1ef93d382d509f5f6a17`, chain 42161)
- TUP (`0x0966e72256d6055145902f72f9d3b6a194b9ccc3`, chain 42161)
- veSPA_v1 (`0xa3f8745548a98ee67545abcb0cc8ed3129b8ff8d`, chain 1)
- veSPA_v1 (`0xd16f5343fddd2dcf6a8791e302a204c13069d165`, chain 42161)
- YieldReserve (`0xfd14c8ef0993fd9409f7820ba8ba80370529d861`, chain 42161)

## Contract Surface Quality

- Logic-topography rows: 9; live-surface rows included: 9 (9 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 24/24 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 3/9 (33.3%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 24 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 128 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 5 standard proxy/library)
- Proxy deployments represented within implementation groups: 16
- Confirmed-live implementations: 24 of 152 unique; 128 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 3/30
- Verified + Unaudited implementations: 27
- Verified by bytecode match: 0
- Unverified implementations: 122
- Unique implementations: 152
- Raw deployments: 163
- Audits discovered: 9 (9 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 5
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-06 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 9 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 13 match-unverified
- Tier 1 coverage: 11.1% (SlowMist)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Quantstamp | Tier 2 | 2 | 6.7% | 2023-12 |
| unknown | Tier 2 | 2 | 6.7% | 2024-06 |
| SlowMist | Tier 1 | 1 | 3.3% | 2021-12 |

## Contract Surface

### ✅ Verified + Audited (3)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| SperaxTokenL2 | token | project_anchor | own_supporting | 0 | arbitrum | unit-256338 | `0x5575552988a3a80504bbaeb1311674fcfd40ad4b` | ✅ Audited |
| USDs | unknown | project_anchor | own_supporting | 1 | arbitrum | unit-256350 | `0xd74f5255d557944cf7dd0e45ff521520002d5748` | ✅ Audited |
| YieldReserve | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-256348 | `0xfd14c8ef0993fd9409f7820ba8ba80370529d861` | ✅ Audited |

### ⚠️ Verified + Unaudited (27)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AirdropBlockHeight | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc9e6cfd004b86856505f1aa5305273daf4ba3747` | ⚠️ Unaudited |
| Buyback | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb560c08bd0a0a57b7056612f556a71fd53ef3429` | ⚠️ Unaudited |
| Demeter_UniV3FarmDeployer_v2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0b680a3bfc16fc0d72f2a36157ca939a047dc4d2` | ⚠️ Unaudited |
| Dynamic_APR_Farm | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7775cd662acf952101ace08a7144c8bb7d5ef2be` | ⚠️ Unaudited |
| Farm | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x39eb38cf2cc8b4ff77817e2ada6ba64e40a4d8ea` | ⚠️ Unaudited |
| GnosisSafeL2 | governance | non_address_book | standard_proxy_or_library (excluded) | 2 | arbitrum | n/a | 2 deployments: arbitrum `0x5b12d9846f8612e439730d18e1c12634753b1bf1`; arbitrum `0x6d5240f086637fb408c7f727010a10cf57d51b62` | ⚠️ Unaudited |
| ProxyAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: arbitrum `0x00f2a6a5c20152afa76c05627a224af8fc96a825`; arbitrum `0x3e49925a79cbfb68baa5bc9dfb4f7d955d1ddf25` | ⚠️ Unaudited |
| RewardDistributor_v1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: ethereum `0xa61dd4480be2582283afa54e461a1d3643b36040`; arbitrum `0x2c07bc934974bbf413a4a4ceda98713dcb8d9e16` | ⚠️ Unaudited |
| RewardDistributor_v2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 3 deployments: ethereum `0x080f26e2fcdb2398bf289378892b5b330c3411db`; arbitrum `0x01bfd592b754169bba095663093678d3900a0c2e`; arbitrum `0xc9869e40e36a18546df54a941b28af21674ae512` | ⚠️ Unaudited |
| SPA_USDs_Farm | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x84f7f3246fd8beaac8af4ab08a2161506cb97174` | ⚠️ Unaudited |
| SperaxToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x9631483f28b7f5cbf7d435ab249be8f709215bc3`; ethereum `0xfb931d41a744be590e8b51e2e343bbe030ac4f93` | ⚠️ Unaudited |
| SperaxToken | token | project_anchor | own_supporting | 0 | ethereum | unit-256332 | `0xb4a3b0faf0ab53df58001804dda5bfc6a3d59008` | ⚠️ Unaudited |
| SperaxTokenL1 | token | project_anchor | own_supporting | 0 | ethereum | unit-256330 | `0x2a95fe4c7e64e09856989f9ea0b57b9ab5f770cb` | ⚠️ Unaudited |
| Staking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc150cbddc5932258fac768beb4d2352d127039fd` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | arbitrum | n/a | `0x0390c6c7c320e41fce0e6f0b982d20a88660f473` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x457fa70f53f1e088f768c0c93a389b4c229c215b`; arbitrum `0xf3f98086f7b61a32be4edf8d8a4b964ec886bbcd` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x9b8b924a2b95f9681a6445c839ff1429159850a4`; arbitrum `0xc93f8a2c0c574c741190ea4f33639054d5e4ac42` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | arbitrum | n/a | `0xbf82a3212e13b2d407d10f5107b5c8404de7f403` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | arbitrum | n/a | `0xdc118f2f00812326fe0de5c9c74c1c0c609d1eb4` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | arbitrum | n/a | `0xf783dd830a4650d2a8594423f123250652340e3f` | ⚠️ Unaudited |
| USDsL2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: arbitrum `0x2d715a14d0577964f9dd7956c9a369b26afa55dc`; arbitrum `0xa78d7b5c4e50b1ccabc5de123db5083b24232f8c` | ⚠️ Unaudited |
| USDTswapStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe45af3389384e29a9d698a89f1d97e61b30095c8` | ⚠️ Unaudited |
| VaultCore | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe0a1f2ed69a739b52a493b244d8ac27f555e0b55` | ⚠️ Unaudited |
| veSPA | unknown | project_anchor | own_supporting | 1 | arbitrum | unit-256352 | `0x2e2071180682ce6c247b1ef93d382d509f5f6a17` | ⚠️ Unaudited |
| veSPA_v1 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-256331 | `0xa3f8745548a98ee67545abcb0cc8ed3129b8ff8d` | ⚠️ Unaudited |
| veSPA_v1 | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-256345 | `0xd16f5343fddd2dcf6a8791e302a204c13069d165` | ⚠️ Unaudited |
| xSPA | unknown | project_anchor | own_supporting | 1 | arbitrum | unit-256353 | `0x0966e72256d6055145902f72f9d3b6a194b9ccc3` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (122)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Proxy (impl: 0x3703a01804f05a3cf84be69627ce32f8c2b84151) | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | `0x886f2d09909caa489c745927e200afd5af198444` | ❓ Unverified |
| Proxy (impl: 0xb172d61f8682b977cf0888ce9337c41b50f94910) | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | `0xbc683dee915313b01deff10d29342e59e1d75c09` | ❓ Unverified |
| Proxy (impl: 0xed0544dea3300cebc5dff25cd9a189abde1862be) | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x61dec207bb0deedcd7a56d7b76b2692580692fd5`; arbitrum `0xed0544dea3300cebc5dff25cd9a189abde1862be` | ❓ Unverified |
| SPABuyback | unknown | project_anchor | own_supporting | 1 | arbitrum | unit-256351 | `0xfbc0d3ca777722d234fe01dba94dededb277afe3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x318d98237cab56d7c84b7ba27e8acdbaa9403847` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7ed4fded967d163efef7294c99a84534d61c8f56` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-256333 | `0xbf82a3212e13b2d407d10f5107b5c8404de7f403` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe81574d75e94eac3701c65dd848a2c511e888ea9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x09614d7520be83baec78c21bcabf574a0a274a22` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x10f5976a532340bf402c471d736873a33907626b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-256349 | `0x1a9fd6ec3144da3dd6ea13ec1c25c58423a379b1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2b6bd6c795554600f50a306166d13b2dc4201564` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4ac88805a3272686a4f492b499143063346851f1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8ae739f6cf178211b24bf76642f9d410fbac1e0e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xdb3c487c0c589f0e5590893f070abb534c1fb08c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x00b30951ec53903d8e6b98d8ab98635a4aa2894d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0247d4f8b7bd18eb21ca6aa90f0215f2d6da924b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x03b35477cfd400dedfac06f40422491500cbc663` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x06910bd3ea422e6d6d8ebb4f9afe8302dc506b65` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x06bba0902b1c08d16df36ba3f4626a0ee88677ca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x09983ff59f5e4831883f73ed0f6bd3738309bbc1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x09fcea2a535ca9c5f757c2ad8ac394d66f5be5f8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0addfb771e36a1d2c1691cf3131635a0462868d2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0fb294f0fe05c186142811c3e17713bff987e7d5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x11629104766d83989dd7317827da837c0a38a3fb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1285276889a226a6d4b1c18b85082db4dd51251e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x145ac78d46f64e793c0f11c664f699cdcab58e4a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-256334 | `0x14d99412dab1878dc01fe7a1664cde85896e8e50` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x176dcf539fd1f263b3674a6f218eed42bfc5a57e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1820c075dba82a51a10a8deae98e34654aa61af9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1a613166fd0dfe31824ff05cca41e56bbcc4ecc2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1f6803ed9df57d664297186575d53648616aba26` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-256335 | `0x212208daf12d7612e65fb39ee9a07172b08226b8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x240db761844f5c68fb9cabb52dbc98a6bfadf2fe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x29524627cfd2cd27321513f1538a25e5151142c8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-256336 | `0x297331a0155b1e30bbfa85cf3609ec0ff037beec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2b00efdfca499c75d0bd8d6e51c6455c352aaa10` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2d4b8afd0b28954abdb6bbe87990c8738c27c275` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3050269626b2ac515939c80ddaf80a88cb8760a7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x322057f16e624a19226cbd3077e3e014e28e72a5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3333a135f4d969eb9bb8b07c1014905edb9ecd41` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x356d794b308311765399b22fb8d4e0c225236ab8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x374219676e859e8dd83e4408049c70f12264bd20` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x386a295504403955a0d04597e0cd643b9ff83ec1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x43dccbca39d8e84980f6bf735a0b0df38c291be1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-256337 | `0x45bc6b44107837e7abb21e2cacbe7612fce222e0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x46728c5b55ccb6f15d1865cb8cec62f44b0071b9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4bc6be8d8d79720467127ca30b958753828e138a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4c58845bef21e772eee8b370e378df64fa660cd3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4fcbfc8c75f559e490162dc42549ad66c7dc1da1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x511c1b68bdc3b7a0650ae357661b3d6dabd14172` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x524b114e2c2f5f10e6244fc903abe9bffeaf8899` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x544350adf167914641200c7a03e8dbfa86cd4cab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x58464337ec4c3e016bb5869ac4e58334a3aef487` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x58735edec492bf49f115a40d769767d4f0804c9a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5a96b1913c96f6848defb53c17b1c5b299764848` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5b2da0d0b4ab38bbdef314bcb91f045e016a8a2d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5d2a5d67fd5c970a4a4ab60ba6cf9b438f869fb9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5f6ac8c75e3ce38b5d803f67da2cd1fdd231185b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x638d76763de9492b609b0d8830d8f626c5933a4d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x645ebedac530ac0b6ee99d7e3237ba84d5eae1af` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x67a798ba6d734dbdd3aa09002f5c2fecb1982ed9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x6ada84b88ba38eace0b574d9623ec2a31d6f039d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-256339 | `0x6bbc476ee35cba9e9c3a59fc5b10d7a0bc6f74ca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x754db85828a50335affd855552c92ef1e844da9c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x75ab2d8f109ca88268b0778f1b9b370d2f3b203d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x77b6e3cbbc2ce5ba1ec11ed8cc17355e5d159714` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x78b2a3a0b9af050daf2d5ffacc3e41c05f33d5bf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7b952a0f27c12b1b3ad8028b03e86d0d08d66047` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7c859923d26e1ff8013fcd9d018b607a129635d9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x81fb6454362a411a4ec6a19119264f90893a6d31` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x83db29edaed374076c2bed2cd8c4c04d59a10224` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x83fa5f636628697d2d612a6c6cc25a79969c354f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8dbfa19750d43497785e41f73132feab5dedebed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8e5562724bccdb8e6df5749927ec28c2123e7d76` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8fa1e51a4a7f74e411c986f6ac5d7cf322bbba6d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-256340 | `0x926477baf60c25857419cc9bf52e914881e1bdd3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x9741d4605b6f16b7840e01ff6d279df0de30aed3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-256341 | `0x974993ee8df7f5c4f3f9aa4eb5b4534f359f3388` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x974bf7cfc2a160048ce620a28b2dbf8d3e1de4c4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x97a7e6cf949114fe4711018485d757b9c4962307` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x97b3e302b9c27338149fd5e59c6e194c499dc7c7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x983fcc972f44fec62dd7d63aca743271f7eba210` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x992bcbbfaa70e920bc385daf6b6a8f5ba18babe2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x9b90802d7cc584e50a29c81dccde6d8ba3fc3b43` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x9d89796366e49477fc5a18a21062abfb1c6828e1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa2255e689d1e4cc82a7cdc1f01cae603c93fd92d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xaa4d101efd2f57dd9e3767f2b850417e7744367e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xaa748711c7e5e28fbbcc8be58ac358c9bdbe05b8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xae3232490723132d260fdebcc659cbbf629eb5be` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb1056ae1bffe94817dc8661da126b1b94cdf9430` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb3647b68d02ade635735daeeb98b5a68c924eff0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb38629b476ecbb6eb2d767cb6b4cad0b17b68944` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb4a3b0faf0ab53df58001804dda5bfc6a3d59008` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb4f9a869fcfdc8d301e5a8f2fcdb655addee3bcb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb6b989a9647cfedc7d61ef494424a88777cb0b28` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb74401ce681fc619c334a8dfd2e0cb99d5b9b4a4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-256342 | `0xb9c9100720d8c6e35eb8dd0f9c1abef320daa136` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-256343 | `0xbceb48625771e35420076f79ec6921e783a82442` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xbe51b646bfc066e201d68f1768f1cf612650307d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc0f0484a216aff20e0ead1a1513ce40fe0afe0fe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc92acb8d39dfbda26ec954f471979d8175c3633b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xcb9b91716185d42f77ad9681b234fba8159e688c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xcbac4bb5e5008a8e86546f665262de76db627d75` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xcc12beac79143eef501181c7dd73f7b4d8e99fa8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xcf9761e950e51b8599256154a0f868d9a31e8004` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd0497f22e55bd457cda2712379883c678e61c370` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd06eca6b1c7f47f8848e96fd9c9ecb17c54e650c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-256344 | `0xd122840fa5b48b2ddb723ccc5928f88dcb558afc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd4e33aa638947b064cfdc781e783c7f535492cf3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-256346 | `0xd50193e8ffb00bea274bd2b11d0a7ea08da044c1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-256347 | `0xda423bfa1e196598190deefbafc28adb36faedf0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xdb46bfd53b7e2da347c2ff96fe35f933c16fa9b7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe64ced03fdeaea1ab7756d6058a7e8d9915f45ba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe7b284c08f3361a85775c8d0748543dafad423a7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe8f75706f8d1811f87b2a42d372aa531e6e75c94` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe91b6da105d1856f9211cd2282e60bf41f9169a3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xecc7fcfad6b9ec82892aaed1971892218d79f81b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0xf1565d7e3a151632f9bca20dc8655542a9ab82b2`; arbitrum `0xf2badbb9817a40d29393fa88951415a4a334a898` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf30db0f56674b51050630e53043c403f8e162bf2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf403a6e15b42e8edf03546f73b971a0b28527e7f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xfc074bd32f84add6fcf08abb380d67736fd791a0` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 137
- Live contracts: 3
- Unknown liveness contracts: 134
- Source-verified contracts: 26
- Currently scope-matched contracts retained as-is: 2
- Contract rows sorted by chain, deployer, classification, contract name, then address.
- Classification counts: currently scope matched=2, candidate review=9, contamination review=1, exact address book overlap=1, source verified unclassified=14, unverified unclassified=110

| Chain | Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|---|
| arbitrum | currently scope matched | TransparentUpgradeableProxy<br>`0xd74f5255d557944cf7dd0e45ff521520002d5748` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0x42d2f9f84eeb86574aa4e9fcccfd74066d809600` |
| arbitrum | candidate review | ProxyAdmin<br>`0x00f2a6a5c20152afa76c05627a224af8fc96a825` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x42d2f9f84eeb86574aa4e9fcccfd74066d809600` |
| arbitrum | candidate review | ProxyAdmin<br>`0x3e49925a79cbfb68baa5bc9dfb4f7d955d1ddf25` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0x42d2f9f84eeb86574aa4e9fcccfd74066d809600` |
| arbitrum | candidate review | TransparentUpgradeableProxy<br>`0x0390c6c7c320e41fce0e6f0b982d20a88660f473` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x42d2f9f84eeb86574aa4e9fcccfd74066d809600` |
| arbitrum | candidate review | TransparentUpgradeableProxy<br>`0x9b8b924a2b95f9681a6445c839ff1429159850a4` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x42d2f9f84eeb86574aa4e9fcccfd74066d809600` |
| arbitrum | candidate review | TransparentUpgradeableProxy<br>`0xbf82a3212e13b2d407d10f5107b5c8404de7f403` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0x42d2f9f84eeb86574aa4e9fcccfd74066d809600` |
| arbitrum | candidate review | TransparentUpgradeableProxy<br>`0xdc118f2f00812326fe0de5c9c74c1c0c609d1eb4` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0x42d2f9f84eeb86574aa4e9fcccfd74066d809600` |
| arbitrum | candidate review | TransparentUpgradeableProxy<br>`0xf3f98086f7b61a32be4edf8d8a4b964ec886bbcd` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x42d2f9f84eeb86574aa4e9fcccfd74066d809600` |
| arbitrum | candidate review | TransparentUpgradeableProxy<br>`0xf783dd830a4650d2a8594423f123250652340e3f` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0x42d2f9f84eeb86574aa4e9fcccfd74066d809600` |
| arbitrum | unverified unclassified | 0xf1565d7e3a151632f9bca20dc8655542a9ab82b2<br>`0xf2badbb9817a40d29393fa88951415a4a334a898` | non_address_book | unknown | unknown | unverified | n/a | `0x42d2f9f84eeb86574aa4e9fcccfd74066d809600` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x06910bd3ea422e6d6d8ebb4f9afe8302dc506b65` | non_address_book | unknown | unknown | unverified | n/a | `0x42d2f9f84eeb86574aa4e9fcccfd74066d809600` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x145ac78d46f64e793c0f11c664f699cdcab58e4a` | non_address_book | unknown | unknown | unverified | n/a | `0x42d2f9f84eeb86574aa4e9fcccfd74066d809600` |
| arbitrum | currently scope matched | SPABuyback<br>`0xfbc0d3ca777722d234fe01dba94dededb277afe3` | project_anchor | unknown | live | unverified | n/a | `0xc28c6970d8a345988e8335b1c229dea3c802e0a6` |
| arbitrum | candidate review | Farm<br>`0x39eb38cf2cc8b4ff77817e2ada6ba64e40a4d8ea` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc28c6970d8a345988e8335b1c229dea3c802e0a6` |
| arbitrum | source verified unclassified | Buyback<br>`0xb560c08bd0a0a57b7056612f556a71fd53ef3429` | non_address_book | unknown | unknown | verified | n/a | `0xc28c6970d8a345988e8335b1c229dea3c802e0a6` |
| arbitrum | source verified unclassified | Demeter_UniV3FarmDeployer_v2<br>`0x0b680a3bfc16fc0d72f2a36157ca939a047dc4d2` | non_address_book | unknown | unknown | verified | n/a | `0xc28c6970d8a345988e8335b1c229dea3c802e0a6` |
| arbitrum | source verified unclassified | RewardDistributor_v1<br>`0x2c07bc934974bbf413a4a4ceda98713dcb8d9e16` | non_address_book | unknown | unknown | verified | n/a | `0xc28c6970d8a345988e8335b1c229dea3c802e0a6` |
| arbitrum | source verified unclassified | RewardDistributor_v2<br>`0x01bfd592b754169bba095663093678d3900a0c2e` | non_address_book | unknown | unknown | verified | n/a | `0xc28c6970d8a345988e8335b1c229dea3c802e0a6` |
| arbitrum | source verified unclassified | RewardDistributor_v2<br>`0xc9869e40e36a18546df54a941b28af21674ae512` | non_address_book | unknown | unknown | verified | n/a | `0xc28c6970d8a345988e8335b1c229dea3c802e0a6` |
| arbitrum | source verified unclassified | SPA_USDs_Farm<br>`0x84f7f3246fd8beaac8af4ab08a2161506cb97174` | non_address_book | unknown | unknown | verified | n/a | `0xc28c6970d8a345988e8335b1c229dea3c802e0a6` |
| arbitrum | source verified unclassified | Staking<br>`0xc150cbddc5932258fac768beb4d2352d127039fd` | non_address_book | unknown | unknown | verified | n/a | `0xc28c6970d8a345988e8335b1c229dea3c802e0a6` |
| arbitrum | source verified unclassified | USDsL2<br>`0x2d715a14d0577964f9dd7956c9a369b26afa55dc` | non_address_book | unknown | unknown | verified | n/a | `0xc28c6970d8a345988e8335b1c229dea3c802e0a6` |
| arbitrum | source verified unclassified | USDsL2<br>`0xa78d7b5c4e50b1ccabc5de123db5083b24232f8c` | non_address_book | unknown | unknown | verified | n/a | `0xc28c6970d8a345988e8335b1c229dea3c802e0a6` |
| arbitrum | source verified unclassified | USDTswapStrategy<br>`0xe45af3389384e29a9d698a89f1d97e61b30095c8` | non_address_book | unknown | unknown | verified | n/a | `0xc28c6970d8a345988e8335b1c229dea3c802e0a6` |
| arbitrum | source verified unclassified | VaultCore<br>`0xe0a1f2ed69a739b52a493b244d8ac27f555e0b55` | non_address_book | unknown | unknown | verified | n/a | `0xc28c6970d8a345988e8335b1c229dea3c802e0a6` |
| arbitrum | unverified unclassified | 0x3703a01804f05a3cf84be69627ce32f8c2b84151<br>`0x886f2d09909caa489c745927e200afd5af198444` | non_address_book | unknown | unknown | unverified | n/a | `0xc28c6970d8a345988e8335b1c229dea3c802e0a6` |
| arbitrum | unverified unclassified | 0xb172d61f8682b977cf0888ce9337c41b50f94910<br>`0xbc683dee915313b01deff10d29342e59e1d75c09` | non_address_book | unknown | unknown | unverified | n/a | `0xc28c6970d8a345988e8335b1c229dea3c802e0a6` |
| arbitrum | unverified unclassified | 0xed0544dea3300cebc5dff25cd9a189abde1862be<br>`0x61dec207bb0deedcd7a56d7b76b2692580692fd5` | non_address_book | unknown | unknown | unverified | n/a | `0xc28c6970d8a345988e8335b1c229dea3c802e0a6` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x00b30951ec53903d8e6b98d8ab98635a4aa2894d` | non_address_book | unknown | unknown | unverified | n/a | `0xc28c6970d8a345988e8335b1c229dea3c802e0a6` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x0247d4f8b7bd18eb21ca6aa90f0215f2d6da924b` | non_address_book | unknown | unknown | unverified | n/a | `0xc28c6970d8a345988e8335b1c229dea3c802e0a6` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x03b35477cfd400dedfac06f40422491500cbc663` | non_address_book | unknown | unknown | unverified | n/a | `0xc28c6970d8a345988e8335b1c229dea3c802e0a6` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x06bba0902b1c08d16df36ba3f4626a0ee88677ca` | non_address_book | unknown | unknown | unverified | n/a | `0xc28c6970d8a345988e8335b1c229dea3c802e0a6` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x09983ff59f5e4831883f73ed0f6bd3738309bbc1` | non_address_book | unknown | unknown | unverified | n/a | `0xc28c6970d8a345988e8335b1c229dea3c802e0a6` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x09fcea2a535ca9c5f757c2ad8ac394d66f5be5f8` | non_address_book | unknown | unknown | unverified | n/a | `0xc28c6970d8a345988e8335b1c229dea3c802e0a6` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x0addfb771e36a1d2c1691cf3131635a0462868d2` | non_address_book | unknown | unknown | unverified | n/a | `0xc28c6970d8a345988e8335b1c229dea3c802e0a6` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x0fb294f0fe05c186142811c3e17713bff987e7d5` | non_address_book | unknown | unknown | unverified | n/a | `0xc28c6970d8a345988e8335b1c229dea3c802e0a6` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x11629104766d83989dd7317827da837c0a38a3fb` | non_address_book | unknown | unknown | unverified | n/a | `0xc28c6970d8a345988e8335b1c229dea3c802e0a6` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x1285276889a226a6d4b1c18b85082db4dd51251e` | non_address_book | unknown | unknown | unverified | n/a | `0xc28c6970d8a345988e8335b1c229dea3c802e0a6` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x176dcf539fd1f263b3674a6f218eed42bfc5a57e` | non_address_book | unknown | unknown | unverified | n/a | `0xc28c6970d8a345988e8335b1c229dea3c802e0a6` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x1820c075dba82a51a10a8deae98e34654aa61af9` | non_address_book | unknown | unknown | unverified | n/a | `0xc28c6970d8a345988e8335b1c229dea3c802e0a6` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x1a613166fd0dfe31824ff05cca41e56bbcc4ecc2` | non_address_book | unknown | unknown | unverified | n/a | `0xc28c6970d8a345988e8335b1c229dea3c802e0a6` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x1f6803ed9df57d664297186575d53648616aba26` | non_address_book | unknown | unknown | unverified | n/a | `0xc28c6970d8a345988e8335b1c229dea3c802e0a6` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x240db761844f5c68fb9cabb52dbc98a6bfadf2fe` | non_address_book | unknown | unknown | unverified | n/a | `0xc28c6970d8a345988e8335b1c229dea3c802e0a6` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x29524627cfd2cd27321513f1538a25e5151142c8` | non_address_book | unknown | unknown | unverified | n/a | `0xc28c6970d8a345988e8335b1c229dea3c802e0a6` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x2b00efdfca499c75d0bd8d6e51c6455c352aaa10` | non_address_book | unknown | unknown | unverified | n/a | `0xc28c6970d8a345988e8335b1c229dea3c802e0a6` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x2d4b8afd0b28954abdb6bbe87990c8738c27c275` | non_address_book | unknown | unknown | unverified | n/a | `0xc28c6970d8a345988e8335b1c229dea3c802e0a6` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x3050269626b2ac515939c80ddaf80a88cb8760a7` | non_address_book | unknown | unknown | unverified | n/a | `0xc28c6970d8a345988e8335b1c229dea3c802e0a6` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x322057f16e624a19226cbd3077e3e014e28e72a5` | non_address_book | unknown | unknown | unverified | n/a | `0xc28c6970d8a345988e8335b1c229dea3c802e0a6` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x3333a135f4d969eb9bb8b07c1014905edb9ecd41` | non_address_book | unknown | unknown | unverified | n/a | `0xc28c6970d8a345988e8335b1c229dea3c802e0a6` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x356d794b308311765399b22fb8d4e0c225236ab8` | non_address_book | unknown | unknown | unverified | n/a | `0xc28c6970d8a345988e8335b1c229dea3c802e0a6` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x374219676e859e8dd83e4408049c70f12264bd20` | non_address_book | unknown | unknown | unverified | n/a | `0xc28c6970d8a345988e8335b1c229dea3c802e0a6` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x386a295504403955a0d04597e0cd643b9ff83ec1` | non_address_book | unknown | unknown | unverified | n/a | `0xc28c6970d8a345988e8335b1c229dea3c802e0a6` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x43dccbca39d8e84980f6bf735a0b0df38c291be1` | non_address_book | unknown | unknown | unverified | n/a | `0xc28c6970d8a345988e8335b1c229dea3c802e0a6` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x457fa70f53f1e088f768c0c93a389b4c229c215b` | non_address_book | unknown | unknown | unverified | n/a | `0xc28c6970d8a345988e8335b1c229dea3c802e0a6` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x46728c5b55ccb6f15d1865cb8cec62f44b0071b9` | non_address_book | unknown | unknown | unverified | n/a | `0xc28c6970d8a345988e8335b1c229dea3c802e0a6` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x4bc6be8d8d79720467127ca30b958753828e138a` | non_address_book | unknown | unknown | unverified | n/a | `0xc28c6970d8a345988e8335b1c229dea3c802e0a6` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x4c58845bef21e772eee8b370e378df64fa660cd3` | non_address_book | unknown | unknown | unverified | n/a | `0xc28c6970d8a345988e8335b1c229dea3c802e0a6` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x4fcbfc8c75f559e490162dc42549ad66c7dc1da1` | non_address_book | unknown | unknown | unverified | n/a | `0xc28c6970d8a345988e8335b1c229dea3c802e0a6` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x511c1b68bdc3b7a0650ae357661b3d6dabd14172` | non_address_book | unknown | unknown | unverified | n/a | `0xc28c6970d8a345988e8335b1c229dea3c802e0a6` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x524b114e2c2f5f10e6244fc903abe9bffeaf8899` | non_address_book | unknown | unknown | unverified | n/a | `0xc28c6970d8a345988e8335b1c229dea3c802e0a6` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x544350adf167914641200c7a03e8dbfa86cd4cab` | non_address_book | unknown | unknown | unverified | n/a | `0xc28c6970d8a345988e8335b1c229dea3c802e0a6` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x58464337ec4c3e016bb5869ac4e58334a3aef487` | non_address_book | unknown | unknown | unverified | n/a | `0xc28c6970d8a345988e8335b1c229dea3c802e0a6` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x58735edec492bf49f115a40d769767d4f0804c9a` | non_address_book | unknown | unknown | unverified | n/a | `0xc28c6970d8a345988e8335b1c229dea3c802e0a6` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x5a96b1913c96f6848defb53c17b1c5b299764848` | non_address_book | unknown | unknown | unverified | n/a | `0xc28c6970d8a345988e8335b1c229dea3c802e0a6` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x5b2da0d0b4ab38bbdef314bcb91f045e016a8a2d` | non_address_book | unknown | unknown | unverified | n/a | `0xc28c6970d8a345988e8335b1c229dea3c802e0a6` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x5d2a5d67fd5c970a4a4ab60ba6cf9b438f869fb9` | non_address_book | unknown | unknown | unverified | n/a | `0xc28c6970d8a345988e8335b1c229dea3c802e0a6` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x5f6ac8c75e3ce38b5d803f67da2cd1fdd231185b` | non_address_book | unknown | unknown | unverified | n/a | `0xc28c6970d8a345988e8335b1c229dea3c802e0a6` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x638d76763de9492b609b0d8830d8f626c5933a4d` | non_address_book | unknown | unknown | unverified | n/a | `0xc28c6970d8a345988e8335b1c229dea3c802e0a6` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x645ebedac530ac0b6ee99d7e3237ba84d5eae1af` | non_address_book | unknown | unknown | unverified | n/a | `0xc28c6970d8a345988e8335b1c229dea3c802e0a6` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x67a798ba6d734dbdd3aa09002f5c2fecb1982ed9` | non_address_book | unknown | unknown | unverified | n/a | `0xc28c6970d8a345988e8335b1c229dea3c802e0a6` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x6ada84b88ba38eace0b574d9623ec2a31d6f039d` | non_address_book | unknown | unknown | unverified | n/a | `0xc28c6970d8a345988e8335b1c229dea3c802e0a6` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x754db85828a50335affd855552c92ef1e844da9c` | non_address_book | unknown | unknown | unverified | n/a | `0xc28c6970d8a345988e8335b1c229dea3c802e0a6` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x75ab2d8f109ca88268b0778f1b9b370d2f3b203d` | non_address_book | unknown | unknown | unverified | n/a | `0xc28c6970d8a345988e8335b1c229dea3c802e0a6` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x77b6e3cbbc2ce5ba1ec11ed8cc17355e5d159714` | non_address_book | unknown | unknown | unverified | n/a | `0xc28c6970d8a345988e8335b1c229dea3c802e0a6` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x78b2a3a0b9af050daf2d5ffacc3e41c05f33d5bf` | non_address_book | unknown | unknown | unverified | n/a | `0xc28c6970d8a345988e8335b1c229dea3c802e0a6` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x7b952a0f27c12b1b3ad8028b03e86d0d08d66047` | non_address_book | unknown | unknown | unverified | n/a | `0xc28c6970d8a345988e8335b1c229dea3c802e0a6` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x7c859923d26e1ff8013fcd9d018b607a129635d9` | non_address_book | unknown | unknown | unverified | n/a | `0xc28c6970d8a345988e8335b1c229dea3c802e0a6` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x81fb6454362a411a4ec6a19119264f90893a6d31` | non_address_book | unknown | unknown | unverified | n/a | `0xc28c6970d8a345988e8335b1c229dea3c802e0a6` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x83db29edaed374076c2bed2cd8c4c04d59a10224` | non_address_book | unknown | unknown | unverified | n/a | `0xc28c6970d8a345988e8335b1c229dea3c802e0a6` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x83fa5f636628697d2d612a6c6cc25a79969c354f` | non_address_book | unknown | unknown | unverified | n/a | `0xc28c6970d8a345988e8335b1c229dea3c802e0a6` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x8dbfa19750d43497785e41f73132feab5dedebed` | non_address_book | unknown | unknown | unverified | n/a | `0xc28c6970d8a345988e8335b1c229dea3c802e0a6` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x8e5562724bccdb8e6df5749927ec28c2123e7d76` | non_address_book | unknown | unknown | unverified | n/a | `0xc28c6970d8a345988e8335b1c229dea3c802e0a6` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x8fa1e51a4a7f74e411c986f6ac5d7cf322bbba6d` | non_address_book | unknown | unknown | unverified | n/a | `0xc28c6970d8a345988e8335b1c229dea3c802e0a6` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x9741d4605b6f16b7840e01ff6d279df0de30aed3` | non_address_book | unknown | unknown | unverified | n/a | `0xc28c6970d8a345988e8335b1c229dea3c802e0a6` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x974bf7cfc2a160048ce620a28b2dbf8d3e1de4c4` | non_address_book | unknown | unknown | unverified | n/a | `0xc28c6970d8a345988e8335b1c229dea3c802e0a6` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x97a7e6cf949114fe4711018485d757b9c4962307` | non_address_book | unknown | unknown | unverified | n/a | `0xc28c6970d8a345988e8335b1c229dea3c802e0a6` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x97b3e302b9c27338149fd5e59c6e194c499dc7c7` | non_address_book | unknown | unknown | unverified | n/a | `0xc28c6970d8a345988e8335b1c229dea3c802e0a6` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x983fcc972f44fec62dd7d63aca743271f7eba210` | non_address_book | unknown | unknown | unverified | n/a | `0xc28c6970d8a345988e8335b1c229dea3c802e0a6` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x992bcbbfaa70e920bc385daf6b6a8f5ba18babe2` | non_address_book | unknown | unknown | unverified | n/a | `0xc28c6970d8a345988e8335b1c229dea3c802e0a6` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x9b90802d7cc584e50a29c81dccde6d8ba3fc3b43` | non_address_book | unknown | unknown | unverified | n/a | `0xc28c6970d8a345988e8335b1c229dea3c802e0a6` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x9d89796366e49477fc5a18a21062abfb1c6828e1` | non_address_book | unknown | unknown | unverified | n/a | `0xc28c6970d8a345988e8335b1c229dea3c802e0a6` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xa2255e689d1e4cc82a7cdc1f01cae603c93fd92d` | non_address_book | unknown | unknown | unverified | n/a | `0xc28c6970d8a345988e8335b1c229dea3c802e0a6` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xaa4d101efd2f57dd9e3767f2b850417e7744367e` | non_address_book | unknown | unknown | unverified | n/a | `0xc28c6970d8a345988e8335b1c229dea3c802e0a6` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xaa748711c7e5e28fbbcc8be58ac358c9bdbe05b8` | non_address_book | unknown | unknown | unverified | n/a | `0xc28c6970d8a345988e8335b1c229dea3c802e0a6` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xae3232490723132d260fdebcc659cbbf629eb5be` | non_address_book | unknown | unknown | unverified | n/a | `0xc28c6970d8a345988e8335b1c229dea3c802e0a6` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xb1056ae1bffe94817dc8661da126b1b94cdf9430` | non_address_book | unknown | unknown | unverified | n/a | `0xc28c6970d8a345988e8335b1c229dea3c802e0a6` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xb3647b68d02ade635735daeeb98b5a68c924eff0` | non_address_book | unknown | unknown | unverified | n/a | `0xc28c6970d8a345988e8335b1c229dea3c802e0a6` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xb38629b476ecbb6eb2d767cb6b4cad0b17b68944` | non_address_book | unknown | unknown | unverified | n/a | `0xc28c6970d8a345988e8335b1c229dea3c802e0a6` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xb4a3b0faf0ab53df58001804dda5bfc6a3d59008` | non_address_book | unknown | unknown | unverified | n/a | `0xc28c6970d8a345988e8335b1c229dea3c802e0a6` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xb4f9a869fcfdc8d301e5a8f2fcdb655addee3bcb` | non_address_book | unknown | unknown | unverified | n/a | `0xc28c6970d8a345988e8335b1c229dea3c802e0a6` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xb6b989a9647cfedc7d61ef494424a88777cb0b28` | non_address_book | unknown | unknown | unverified | n/a | `0xc28c6970d8a345988e8335b1c229dea3c802e0a6` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xb74401ce681fc619c334a8dfd2e0cb99d5b9b4a4` | non_address_book | unknown | unknown | unverified | n/a | `0xc28c6970d8a345988e8335b1c229dea3c802e0a6` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xbe51b646bfc066e201d68f1768f1cf612650307d` | non_address_book | unknown | unknown | unverified | n/a | `0xc28c6970d8a345988e8335b1c229dea3c802e0a6` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xc0f0484a216aff20e0ead1a1513ce40fe0afe0fe` | non_address_book | unknown | unknown | unverified | n/a | `0xc28c6970d8a345988e8335b1c229dea3c802e0a6` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xc92acb8d39dfbda26ec954f471979d8175c3633b` | non_address_book | unknown | unknown | unverified | n/a | `0xc28c6970d8a345988e8335b1c229dea3c802e0a6` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xc93f8a2c0c574c741190ea4f33639054d5e4ac42` | non_address_book | unknown | unknown | unverified | n/a | `0xc28c6970d8a345988e8335b1c229dea3c802e0a6` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xcb9b91716185d42f77ad9681b234fba8159e688c` | non_address_book | unknown | unknown | unverified | n/a | `0xc28c6970d8a345988e8335b1c229dea3c802e0a6` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xcbac4bb5e5008a8e86546f665262de76db627d75` | non_address_book | unknown | unknown | unverified | n/a | `0xc28c6970d8a345988e8335b1c229dea3c802e0a6` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xcc12beac79143eef501181c7dd73f7b4d8e99fa8` | non_address_book | unknown | unknown | unverified | n/a | `0xc28c6970d8a345988e8335b1c229dea3c802e0a6` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xcf9761e950e51b8599256154a0f868d9a31e8004` | non_address_book | unknown | unknown | unverified | n/a | `0xc28c6970d8a345988e8335b1c229dea3c802e0a6` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xd06eca6b1c7f47f8848e96fd9c9ecb17c54e650c` | non_address_book | unknown | unknown | unverified | n/a | `0xc28c6970d8a345988e8335b1c229dea3c802e0a6` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xd4e33aa638947b064cfdc781e783c7f535492cf3` | non_address_book | unknown | unknown | unverified | n/a | `0xc28c6970d8a345988e8335b1c229dea3c802e0a6` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xdb46bfd53b7e2da347c2ff96fe35f933c16fa9b7` | non_address_book | unknown | unknown | unverified | n/a | `0xc28c6970d8a345988e8335b1c229dea3c802e0a6` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xe64ced03fdeaea1ab7756d6058a7e8d9915f45ba` | non_address_book | unknown | unknown | unverified | n/a | `0xc28c6970d8a345988e8335b1c229dea3c802e0a6` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xe7b284c08f3361a85775c8d0748543dafad423a7` | non_address_book | unknown | unknown | unverified | n/a | `0xc28c6970d8a345988e8335b1c229dea3c802e0a6` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xe8f75706f8d1811f87b2a42d372aa531e6e75c94` | non_address_book | unknown | unknown | unverified | n/a | `0xc28c6970d8a345988e8335b1c229dea3c802e0a6` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xe91b6da105d1856f9211cd2282e60bf41f9169a3` | non_address_book | unknown | unknown | unverified | n/a | `0xc28c6970d8a345988e8335b1c229dea3c802e0a6` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xecc7fcfad6b9ec82892aaed1971892218d79f81b` | non_address_book | unknown | unknown | unverified | n/a | `0xc28c6970d8a345988e8335b1c229dea3c802e0a6` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xed0544dea3300cebc5dff25cd9a189abde1862be` | non_address_book | unknown | unknown | unverified | n/a | `0xc28c6970d8a345988e8335b1c229dea3c802e0a6` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xf1565d7e3a151632f9bca20dc8655542a9ab82b2` | non_address_book | unknown | unknown | unverified | n/a | `0xc28c6970d8a345988e8335b1c229dea3c802e0a6` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xf30db0f56674b51050630e53043c403f8e162bf2` | non_address_book | unknown | unknown | unverified | n/a | `0xc28c6970d8a345988e8335b1c229dea3c802e0a6` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xf403a6e15b42e8edf03546f73b971a0b28527e7f` | non_address_book | unknown | unknown | unverified | n/a | `0xc28c6970d8a345988e8335b1c229dea3c802e0a6` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xfc074bd32f84add6fcf08abb380d67736fd791a0` | non_address_book | unknown | unknown | unverified | n/a | `0xc28c6970d8a345988e8335b1c229dea3c802e0a6` |
| bsc | unverified unclassified | UnnamedContract<br>`0x09614d7520be83baec78c21bcabf574a0a274a22` | non_address_book | unknown | unknown | unverified | n/a | `0x12dbb60bad909e6d9139abd61d0c9aa11eb49d51` |
| bsc | unverified unclassified | UnnamedContract<br>`0x10f5976a532340bf402c471d736873a33907626b` | non_address_book | unknown | unknown | unverified | n/a | `0x12dbb60bad909e6d9139abd61d0c9aa11eb49d51` |
| bsc | unverified unclassified | UnnamedContract<br>`0x2b6bd6c795554600f50a306166d13b2dc4201564` | non_address_book | unknown | unknown | unverified | n/a | `0x12dbb60bad909e6d9139abd61d0c9aa11eb49d51` |
| bsc | unverified unclassified | UnnamedContract<br>`0x4ac88805a3272686a4f492b499143063346851f1` | non_address_book | unknown | unknown | unverified | n/a | `0x12dbb60bad909e6d9139abd61d0c9aa11eb49d51` |
| bsc | unverified unclassified | UnnamedContract<br>`0x8ae739f6cf178211b24bf76642f9d410fbac1e0e` | non_address_book | unknown | unknown | unverified | n/a | `0x12dbb60bad909e6d9139abd61d0c9aa11eb49d51` |
| bsc | unverified unclassified | UnnamedContract<br>`0xdb3c487c0c589f0e5590893f070abb534c1fb08c` | non_address_book | unknown | unknown | unverified | n/a | `0x12dbb60bad909e6d9139abd61d0c9aa11eb49d51` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x318d98237cab56d7c84b7ba27e8acdbaa9403847` | non_address_book | unknown | unknown | unverified | n/a | `0x42d2f9f84eeb86574aa4e9fcccfd74066d809600` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x7ed4fded967d163efef7294c99a84534d61c8f56` | non_address_book | unknown | unknown | unverified | n/a | `0x42d2f9f84eeb86574aa4e9fcccfd74066d809600` |
| ethereum | contamination review | AirdropBlockHeight<br>`0xc9e6cfd004b86856505f1aa5305273daf4ba3747` | non_address_book | unknown | unknown | verified | n/a | `0xc28c6970d8a345988e8335b1c229dea3c802e0a6` |
| ethereum | exact address book overlap | veSPA_v1<br>`0xa3f8745548a98ee67545abcb0cc8ed3129b8ff8d` | project_anchor | unknown | live | verified | n/a | `0xc28c6970d8a345988e8335b1c229dea3c802e0a6` |
| ethereum | source verified unclassified | RewardDistributor_v1<br>`0xa61dd4480be2582283afa54e461a1d3643b36040` | non_address_book | unknown | unknown | verified | n/a | `0xc28c6970d8a345988e8335b1c229dea3c802e0a6` |
| ethereum | source verified unclassified | RewardDistributor_v2<br>`0x080f26e2fcdb2398bf289378892b5b330c3411db` | non_address_book | unknown | unknown | verified | n/a | `0xc28c6970d8a345988e8335b1c229dea3c802e0a6` |
| ethereum | source verified unclassified | SperaxToken<br>`0xfb931d41a744be590e8b51e2e343bbe030ac4f93` | non_address_book | unknown | unknown | verified | n/a | `0xc28c6970d8a345988e8335b1c229dea3c802e0a6` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xe81574d75e94eac3701c65dd848a2c511e888ea9` | non_address_book | unknown | unknown | unverified | n/a | `0xc28c6970d8a345988e8335b1c229dea3c802e0a6` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [Demeter_PeckShield_1.pdf](https://github.com/Sperax/Audit_Reports/blob/main/Demeter_PeckShield_1.pdf) | PeckShield | Audit | 2022-09 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | medium |
| [Sperax - USDs - Report (1).pdf](https://github.com/Sperax/Audit_Reports/blob/main/Sperax%20-%20USDs%20-%20Report%20(1).pdf) | unknown | Audit | 2023-12 | stale | Direct | n/a | matched | 10 | 2 | 0 | 10 | n/a |
| [Demeter Audit Final Report.pdf](https://github.com/Sperax/Audit_Reports/blob/main/Demeter%20Audit%20Final%20Report.pdf) | Unknown | Audit | 2024-06 | stale | Direct | contract_name | matched | 2 | 0 | 0 | 13 | high |
| [LM_Certik_1.pdf](https://github.com/Sperax/Audit_Reports/blob/main/LM_Certik_1.pdf) | CertiK | Audit | 2021-12 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [SPA_Certik_2.pdf](https://github.com/Sperax/Audit_Reports/blob/main/SPA_Certik_2.pdf) | CertiK | Audit | 2021-11 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [USDs_Quantstamp.pdf](https://github.com/Sperax/Audit_Reports/blob/main/USDs_Quantstamp.pdf) | Quantstamp | Audit | 2023-12 | stale | Direct | n/a | matched | 10 | 2 | 0 | 8 | n/a |
| [USDs_Slowmist_1.pdf](https://github.com/Sperax/Audit_Reports/blob/main/USDs_Slowmist_1.pdf) | SlowMist | Audit | 2021-12 | stale | Direct | n/a | matched | 1 | 0 | 0 | 10 | n/a |
| [USDs_Slowmist_2.pdf](https://github.com/Sperax/Audit_Reports/blob/main/USDs_Slowmist_2.pdf) | SlowMist | Audit | 2021-12 | stale | Direct | n/a | matched | 1 | 0 | 0 | 10 | n/a |
| [veSPA_PeckShield_1.pdf](https://github.com/Sperax/Audit_Reports/blob/main/veSPA_PeckShield_1.pdf) | PeckShield | Audit | 2022-04 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [2888] Demeter_PeckShield_1.pdf — no match: Only one contract name 'Farm' is explicitly mentioned as a target in findings. No scope table or file listing provided.
- [2889] Sperax - USDs - Report (1).pdf — matched: No reason recorded
- [2890] Demeter Audit Final Report.pdf — matched: Extracted 15 contract names from the Scope Files Included section. Audit date from timeline: 2024-06-05 through 2024-06-12, using end date.
- [2891] LM_Certik_1.pdf — no match: Only one contract file is listed in the scope table: farm_SPA_USDs.sol. The report also mentions LPVesting and LPStaking as contracts but they are not in the scope table; they are referenced in findings. The audit date is from the delivery date.
- [2892] SPA_Certik_2.pdf — no match: Only one contract file is in scope: SPA_ERC20_new.sol. The audit date is explicitly stated as 'Delivery Date Nov 18, 2021'.
- [2893] USDs_Quantstamp.pdf — matched: No reason recorded
- [2894] USDs_Slowmist_1.pdf — matched: No reason recorded
- [2895] USDs_Slowmist_2.pdf — matched: No reason recorded
- [2896] veSPA_PeckShield_1.pdf — no match: Contracts identified from findings targets; no explicit scope section found.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| Demeter_PeckShield_1.pdf | Farm | unmatched — not counted | — | Target of findings PVE-001 and PVE-002 | no |
| Sperax - USDs - Report (1).pdf | AaveStrategy | own contract | 0x974993… (selected) `0x974993ee8df7f5c4f3f9aa4eb5b4534f359f3388` — deployed 2024-01-12 16:10:55+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Sperax - USDs - Report (1).pdf | BaseUniOracle | unmatched — not counted | — | — | no |
| Sperax - USDs - Report (1).pdf | ChainlinkOracle | unmatched — not counted | — | — | no |
| Sperax - USDs - Report (1).pdf | CollateralManager | own contract | 0xda423b… (selected) `0xda423bfa1e196598190deefbafc28adb36faedf0` — deployed 2024-01-11 16:24:33+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Sperax - USDs - Report (1).pdf | CompoundStrategy | own contract | 0xbceb48… (selected) `0xbceb48625771e35420076f79ec6921e783a82442` — deployed 2024-01-15 08:40:21+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Sperax - USDs - Report (1).pdf | Dripper | own contract | 0xd50193… (selected) `0xd50193e8ffb00bea274bd2b11d0a7ea08da044c1` — deployed 2024-01-11 16:24:46+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Sperax - USDs - Report (1).pdf | FeeCalculator | own contract | 0xd12284… (selected) `0xd122840fa5b48b2ddb723ccc5928f88dcb558afc` — deployed 2024-01-11 16:24:40+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Sperax - USDs - Report (1).pdf | Helpers | unmatched — not counted | — | — | no |
| Sperax - USDs - Report (1).pdf | InitializableAbstractStrategy | unmatched — not counted | — | — | no |
| Sperax - USDs - Report (1).pdf | MasterPriceOracle | unmatched — not counted | — | — | no |
| Sperax - USDs - Report (1).pdf | RebaseManager | own contract | 0x297331… (selected) `0x297331a0155b1e30bbfa85cf3609ec0ff037beec` — deployed 2024-01-11 16:24:54+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Sperax - USDs - Report (1).pdf | SPABuyback | own proxy deployment | SPABuyback (proxy) (selected) `0xfbc0d3ca777722d234fe01dba94dededb277afe3` — deployed 2022-10-04 16:32:48+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Sperax - USDs - Report (1).pdf | SPAOracle | unmatched — not counted | — | — | no |
| Sperax - USDs - Report (1).pdf | StableMath | unmatched — not counted | — | — | no |
| Sperax - USDs - Report (1).pdf | StargateStrategy | own contract | 0xb9c910… (selected) `0xb9c9100720d8c6e35eb8dd0f9c1abef320daa136` — deployed 2024-01-15 08:39:09+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Sperax - USDs - Report (1).pdf | USDs | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0xd74f5255d557944cf7dd0e45ff521520002d5748` — deployed 2021-12-23 05:42:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Sperax - USDs - Report (1).pdf | USDsOracle | unmatched — not counted | — | — | no |
| Sperax - USDs - Report (1).pdf | VSTOracle | unmatched — not counted | — | — | no |
| Sperax - USDs - Report (1).pdf | VaultCore | unmatched — not counted | — | — | no |
| Sperax - USDs - Report (1).pdf | YieldReserve | own contract | YieldReserve (selected) `0xfd14c8ef0993fd9409f7820ba8ba80370529d861` — deployed 2024-01-11 16:25:05+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Demeter Audit Final Report.pdf | Farm | unmatched — not counted | — | listed in scope | no |
| Demeter Audit Final Report.pdf | FarmStorage | unmatched — not counted | — | listed in scope | no |
| Demeter Audit Final Report.pdf | FarmDeployer | unmatched — not counted | — | listed in scope | no |
| Demeter Audit Final Report.pdf | FarmRegistry | own contract | 0x45bc6b… (selected) `0x45bc6b44107837e7abb21e2cacbe7612fce222e0` — deployed 2024-07-04 18:45:02+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Demeter Audit Final Report.pdf | ExpirableFarm | unmatched — not counted | — | listed in scope | no |
| Demeter Audit Final Report.pdf | OperableDeposit | unmatched — not counted | — | listed in scope | no |
| Demeter Audit Final Report.pdf | Rewarder | unmatched — not counted | — | listed in scope | no |
| Demeter Audit Final Report.pdf | RewarderFactory | own contract | 0x926477… (selected) `0x926477baf60c25857419cc9bf52e914881e1bdd3` — deployed 2024-07-13 14:00:28+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Demeter Audit Final Report.pdf | TokenUtils | unmatched — not counted | — | listed in scope | no |
| Demeter Audit Final Report.pdf | E20Farm | unmatched — not counted | — | listed in scope | no |
| Demeter Audit Final Report.pdf | E721Farm | unmatched — not counted | — | listed in scope | no |
| Demeter Audit Final Report.pdf | CamelotV2Farm | unmatched — not counted | — | listed in scope | no |
| Demeter Audit Final Report.pdf | CamelotV3Farm | unmatched — not counted | — | listed in scope | no |
| Demeter Audit Final Report.pdf | UniV3ActiveLiquidityFarm | unmatched — not counted | — | listed in scope | no |
| Demeter Audit Final Report.pdf | UniV3Farm | unmatched — not counted | — | listed in scope | no |
| LM_Certik_1.pdf | farm_SPA_USDs | unmatched — not counted | — | listed in Audit Scope table | no |
| SPA_Certik_2.pdf | SPA_ERC20_new | unmatched — not counted | — | listed in Audit Scope table with SHA256 checksum | no |
| USDs_Quantstamp.pdf | AaveStrategy | own contract | 0x974993… (selected) `0x974993ee8df7f5c4f3f9aa4eb5b4534f359f3388` — deployed 2024-01-12 16:10:55+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| USDs_Quantstamp.pdf | BaseUniOracle | unmatched — not counted | — | — | no |
| USDs_Quantstamp.pdf | ChainlinkOracle | unmatched — not counted | — | — | no |
| USDs_Quantstamp.pdf | CollateralManager | own contract | 0xda423b… (selected) `0xda423bfa1e196598190deefbafc28adb36faedf0` — deployed 2024-01-11 16:24:33+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| USDs_Quantstamp.pdf | CompoundStrategy | own contract | 0xbceb48… (selected) `0xbceb48625771e35420076f79ec6921e783a82442` — deployed 2024-01-15 08:40:21+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| USDs_Quantstamp.pdf | Dripper | own contract | 0xd50193… (selected) `0xd50193e8ffb00bea274bd2b11d0a7ea08da044c1` — deployed 2024-01-11 16:24:46+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| USDs_Quantstamp.pdf | FeeCalculator | own contract | 0xd12284… (selected) `0xd122840fa5b48b2ddb723ccc5928f88dcb558afc` — deployed 2024-01-11 16:24:40+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| USDs_Quantstamp.pdf | InitializableAbstractStrategy | unmatched — not counted | — | — | no |
| USDs_Quantstamp.pdf | MasterPriceOracle | unmatched — not counted | — | — | no |
| USDs_Quantstamp.pdf | RebaseManager | own contract | 0x297331… (selected) `0x297331a0155b1e30bbfa85cf3609ec0ff037beec` — deployed 2024-01-11 16:24:54+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| USDs_Quantstamp.pdf | SPABuyback | own proxy deployment | SPABuyback (proxy) (selected) `0xfbc0d3ca777722d234fe01dba94dededb277afe3` — deployed 2022-10-04 16:32:48+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| USDs_Quantstamp.pdf | SPAOracle | unmatched — not counted | — | — | no |
| USDs_Quantstamp.pdf | StargateStrategy | own contract | 0xb9c910… (selected) `0xb9c9100720d8c6e35eb8dd0f9c1abef320daa136` — deployed 2024-01-15 08:39:09+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| USDs_Quantstamp.pdf | USDs | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0xd74f5255d557944cf7dd0e45ff521520002d5748` — deployed 2021-12-23 05:42:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| USDs_Quantstamp.pdf | USDsOracle | unmatched — not counted | — | — | no |
| USDs_Quantstamp.pdf | VSTOracle | unmatched — not counted | — | — | no |
| USDs_Quantstamp.pdf | VaultCore | unmatched — not counted | — | — | no |
| USDs_Quantstamp.pdf | YieldReserve | own contract | YieldReserve (selected) `0xfd14c8ef0993fd9409f7820ba8ba80370529d861` — deployed 2024-01-11 16:25:05+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| USDs_Slowmist_1.pdf | BancorFormula | unmatched — not counted | — | — | no |
| USDs_Slowmist_1.pdf | BuybackMultihop | unmatched — not counted | — | — | no |
| USDs_Slowmist_1.pdf | BuybackSingle | unmatched — not counted | — | — | no |
| USDs_Slowmist_1.pdf | InitializableAbstractStrategy | unmatched — not counted | — | — | no |
| USDs_Slowmist_1.pdf | Oracle | unmatched — not counted | — | — | no |
| USDs_Slowmist_1.pdf | SperaxTokenL2 | own contract | SperaxTokenL2 (selected) `0x5575552988a3a80504bbaeb1311674fcfd40ad4b` — deployed 2021-12-18 09:18:55+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| USDs_Slowmist_1.pdf | ThreePoolStrategy | unmatched — not counted | — | — | no |
| USDs_Slowmist_1.pdf | USDsL1 | unmatched — not counted | — | — | no |
| USDs_Slowmist_1.pdf | USDsL2 | unmatched — not counted | — | — | no |
| USDs_Slowmist_1.pdf | VaultCore | unmatched — not counted | — | — | no |
| USDs_Slowmist_1.pdf | VaultCoreTools | unmatched — not counted | — | — | no |
| USDs_Slowmist_2.pdf | BancorFormula | unmatched — not counted | — | — | no |
| USDs_Slowmist_2.pdf | BuybackMultihop | unmatched — not counted | — | — | no |
| USDs_Slowmist_2.pdf | BuybackSingle | unmatched — not counted | — | — | no |
| USDs_Slowmist_2.pdf | InitializableAbstractStrategy | unmatched — not counted | — | — | no |
| USDs_Slowmist_2.pdf | Oracle | unmatched — not counted | — | — | no |
| USDs_Slowmist_2.pdf | SperaxTokenL2 | own contract | SperaxTokenL2 (selected) `0x5575552988a3a80504bbaeb1311674fcfd40ad4b` — deployed 2021-12-18 09:18:55+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| USDs_Slowmist_2.pdf | ThreePoolStrategy | unmatched — not counted | — | — | no |
| USDs_Slowmist_2.pdf | USDsL1 | unmatched — not counted | — | — | no |
| USDs_Slowmist_2.pdf | USDsL2 | unmatched — not counted | — | — | no |
| USDs_Slowmist_2.pdf | VaultCore | unmatched — not counted | — | — | no |
| USDs_Slowmist_2.pdf | VaultCoreTools | unmatched — not counted | — | — | no |
| veSPA_PeckShield_1.pdf | veSPA_v1 | ambiguous — not counted | veSPA_v1 (alternative) `0xa3f8745548a98ee67545abcb0cc8ed3129b8ff8d` — deployed 2022-04-05 19:37:51+03 — liveness: live (current_address_book_code)<br>veSPA_v1 (alternative) `0xd16f5343fddd2dcf6a8791e302a204c13069d165` — deployed 2022-04-05 18:45:49+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| veSPA_PeckShield_1.pdf | RewardDistributor | unmatched — not counted | — | Target in finding PVE-003 | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0xb4a3b0faf0ab53df58001804dda5bfc6a3d59008` | SperaxToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x2a95fe4c7e64e09856989f9ea0b57b9ab5f770cb` | SperaxTokenL1 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x2e2071180682ce6c247b1ef93d382d509f5f6a17` | veSPA | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xa3f8745548a98ee67545abcb0cc8ed3129b8ff8d` | veSPA_v1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xd16f5343fddd2dcf6a8791e302a204c13069d165` | veSPA_v1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x0966e72256d6055145902f72f9d3b6a194b9ccc3` | xSPA | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 22 |
| upstream | 0 |
| standard_library | 7 |
| needs_review | 123 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 4
- Inherited remapped matches: 0
- Address-book scope dispositions: 24 own (4 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 1 ambiguous, 55 unmatched
- Matched-own operational status: 24 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=4, medium=1
- Match method counts: unique_name=24

Zero-match audit list:

- [2888] Demeter_PeckShield_1.pdf
- [2891] LM_Certik_1.pdf
- [2892] SPA_Certik_2.pdf
- [2896] veSPA_PeckShield_1.pdf

Fork inheritance lineage and inherited audits are included when available.
