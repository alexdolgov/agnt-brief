# Agentic Audit Brief: Ellipsis Finance

## Export Authority

- Production state: **published scope**
- Raw selected rows: 2 across 1 audit(s)
- Eligible audit results: 3 (1 matched; 2 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Ellipsis Finance (`ellipsis-finance`)
- Website: [https://ellipsis.finance/](https://ellipsis.finance/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: bsc
- Contract surface: 28 unique implementations (141 raw deployments)
- Coverage basis: 2/5 confirmed own live verified implementations (40.0%); conservative 40.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $1,070,786.44
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Ellipsis Finance. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 5 contract row(s) across bsc. Structural roles: 4 core, 1 supporting. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 5
- Structural roles: core (4), supporting (1)
- Contract kinds: contract (5)
- Detected standards: ownable (2), erc20 (1)
- Frameworks: openzeppelin (5)
- Upgradeable-pattern rows: 0

## Fork Analysis

2 of 5 contracts are derived from known codebases. 3 contracts have no detected origin.

### Forked Contracts

**IncentiveVoting** (`0x4695e50a38e33ea09d1f623ba8a8db24219bb06a`, chain 56)
Origin: dot-dot-finance (`0x4695e50a38e33ea09d1f623ba8a8db24219bb06a`)
Containment: 100.0% - 15 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**TokenLocker** (`0x22a93f53a0a3e6847d05dd504283e8e296a49aae`, chain 56)
Origin: dot-dot-finance (`0x22a93f53a0a3e6847d05dd504283e8e296a49aae`)
Containment: 100.0% - 16 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

### Original Contracts (no fork detected - full audit scope)

- EllipsisLpStaking (`0x5b74c99aa2356b4eaa7b85dc486843edff8dfdbe`, chain 56)
- EllipsisToken2 (`0xaf41054c1487b0e5e2b9250c0332ecbce6ce9d71`, chain 56)
- FeeDistributor (`0x3670c10c6a4994ec8926edcf54bf53092217ee1b`, chain 56)

## Contract Surface Quality

- Logic-topography rows: 5; live-surface rows included: 5 (5 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 5/5 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 2/5 (40.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 5 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 23 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Confirmed-live implementations: 5 of 28 unique; 23 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 2/23
- Verified + Unaudited implementations: 21
- Verified by bytecode match: 0
- Unverified implementations: 5
- Unique implementations: 28
- Raw deployments: 141
- Audits discovered: 3 (3 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022-03 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 2 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 2 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| PeckShield | Tier 2 | 2 | 8.7% | 2022-03 |

## Contract Surface

### ✅ Verified + Audited (2)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| EllipsisToken2 | token | project_anchor | own_supporting | 0 | bsc | unit-384177 | `0xaf41054c1487b0e5e2b9250c0332ecbce6ce9d71` | ✅ Audited |
| IncentiveVoting | unknown | project_anchor | own_supporting | 0 | bsc | unit-384175 | `0x4695e50a38e33ea09d1f623ba8a8db24219bb06a` | ✅ Audited |

### ⚠️ Verified + Unaudited (21)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| CryptoFeeConverter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1bd9d93c074d64eafa2fbd8f11e11aa0a488ec56` | ⚠️ Unaudited |
| CryptoSwapRewardsToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x19301e0a5cb34d0e665af745b1056d43926b9f99` | ⚠️ Unaudited |
| CurveStableSwapNG | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe6e2905f54baf7625f4943b74c50338362741cd4` | ⚠️ Unaudited |
| EllipsisLpStaking | unknown | project_anchor | own_supporting | 0 | bsc | unit-384176 | `0x5b74c99aa2356b4eaa7b85dc486843edff8dfdbe` | ⚠️ Unaudited |
| FeeClaimer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 3 deployments: bsc `0x2412bee313737ce7ab5ea9558fdfe24d918c5160`; bsc `0x9ab99d1de7fe907581061f240f2c13a552a2356c`; bsc `0xde40f043a8461cb36e9a3bedcefbd5af084d6e3d` | ⚠️ Unaudited |
| FeeConverter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x604348a7e98113e14c318605c458fbfb3b0dd3f6` | ⚠️ Unaudited |
| FeeDistributor | operational_periphery | project_anchor | own_supporting | 0 | bsc | unit-384174 | `0x3670c10c6a4994ec8926edcf54bf53092217ee1b` | ⚠️ Unaudited |
| FixedRewardsToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 3 deployments: bsc `0x6a7354a81a5fa0895d7e70a24027ce3cbb6f6b99`; bsc `0x89db372969c526ff9e90215712a070c9d2d77eb4`; bsc `0xe284c164c391bf4e556f3e280c914a4d9fc9df8c` | ⚠️ Unaudited |
| LegacyPoolFeeConverter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc24855a485c36f32e890580f673c295e208dd191` | ⚠️ Unaudited |
| LpTokenStaker | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xcce949de564fe60e7f96c85e55177f8b9e4cf61b` | ⚠️ Unaudited |
| MerkleDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x60a8ad8470189033789c1053b0c6f89eb27bca18`; bsc `0xa7bd1fb19d0af2739431dd1d318a8a04cd52b9ff` | ⚠️ Unaudited |
| MetapoolFeeConverter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x46e0193fd33ea52f1232b0da201f7a8c46d5379e`; bsc `0xdd6df5ffed7b770355de53a9b60577b795a27b66` | ⚠️ Unaudited |
| MultiFeeDistribution | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4076cc26efee47825917d0fec3a79d0bb9a6bb5c` | ⚠️ Unaudited |
| PancakeFeeConverter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0xbe97f9f1992b5bdb42f3b91172225b2d982ca542`; bsc `0xd7571f3e67b553ecd344a713785399471b627a4f` | ⚠️ Unaudited |
| PancakeStableSwap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x169f653a54acd441ab34b73da9946e2c451787ef`; bsc `0xc2f5b9a3d9138ab2b74d581fc11346219ebf43fe` | ⚠️ Unaudited |
| PancakeStableSwapTwoPool | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x85259443fad3dc9ecfafe62f043a020992f0e4fc` | ⚠️ Unaudited |
| RewardsToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 20 deployments: bsc `0x052e566a25ace8934dcc52c41a27b04a7c7eccbe`; bsc `0x143d702bc7bfa46c17129bd751f7c6cf2f1ded79`; bsc `0x151f1611b2e304ded36661f65506f9d7d172beba`; bsc `0x18796c878f6b38b1f1bf31bc2dfeed4e1d8e033a`; bsc `0x2a435ecb3fcc0e316492dc1cdd62d0f189be5640`; bsc `0x2bad2820016aa85a6042ce7911033dc93f096b7d`; bsc `0x373410a99b64b089dfe16f1088526d399252dace`; bsc `0x4c29159af03aca9a8381abc9bccb64b2ec9a10b2`; bsc `0x4d3e8827f2d063f3565b81b08bd405b1b0482f5d`; bsc `0x5781041f9cf18484533f433cb2ea9ad42e117b3a`; bsc `0x679dbb5afb45c3f3881fd386cba3c331d84ffa24`; bsc `0x8339156534e2d7354eed097a6fb4a5820d8d0d27`; bsc `0x9f99b2bf52ac76365b0729c8fff2606742f1f5ac`; bsc `0xa2520f3596449105bfe899f3d573c4353917eaf8`; bsc `0xbc5b583347f2ad91b4ad3bd8d5b76092748edc2d`; bsc `0xbcf37dd4e87c9c9ddd265f473a9a80539dc72793`; bsc `0xcd5b31fc04d12b9c7e94c5dee2500b4955529aea`; bsc `0xd86bf23f3481f20106e37af052d3aedf683244e2`; bsc `0xe69b03b13c5d8f1182a1a73335d3d118c30173ad`; bsc `0xf1e7f81671aeb2f559b147b6a91c4d25be882c48` | ⚠️ Unaudited |
| TokenLocker | token | project_anchor | own_supporting | 0 | bsc | unit-384173 | `0x22a93f53a0a3e6847d05dd504283e8e296a49aae` | ⚠️ Unaudited |
| ValasMetapoolRewardsToken | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x8087a94ffe6bcf08dc4b4ebb3d28b4ed75a792ac`; bsc `0xf6be0f52be5e68df4ed3ea7ccd569c16024c250d` | ⚠️ Unaudited |
| ValasRewardsToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 3 deployments: bsc `0x5b5bd8913d766d005859ce002533d4838b0ebbb5`; bsc `0xdc7f3e34c43f8700b0eb58890add03aa84f7b0e1`; bsc `0xe1c7c46b666506c6690dce134fcba3f09456e4a9` | ⚠️ Unaudited |
| Vyper_contract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 84 deployments: bsc `0x00d09eed98a8d603d23ba07f9dc87cc0b2191c8c`; bsc `0x07d9e29d42c8043822353a4691d637c448fc03c4`; bsc `0x081c55a5c9d078d6162de730459c75840cc7071d`; bsc `0x0bc3a8239b0a63e945ea1bd6722ba747b9557e56`; bsc `0x119ccf0d7041d42a969a26a07e4a3a8de1b8c9e4`; bsc `0x147597c6cb8afca6228d95d6493d312858ddb5fd`; bsc `0x1583e54eb3a3f0dc19058f0c4950784a4c4e5727`; bsc `0x160caed03795365f3a589f10c379ffa7d75d4e76`; bsc `0x19ec9e3f7b21dd27598e7ad5aae7dc0db00a806d`; bsc `0x1c78169e61fbfc4e9baa6d1540340cff3d1df1e6`; bsc `0x1e97685aa5b1f9c6dc44af52a1bba8049f43226c`; bsc `0x245e8bb5427822fb8fd6ce062d8dd853fbcfabf5`; bsc `0x2477fb288c5b4118315714ad3c7fd7cc69b00bf9`; bsc `0x266bb386252347b03c7b6eb37f950f476d7c3e63`; bsc `0x269782e396a17c0b3de2f79a56a87347af20bbcb`; bsc `0x2d0a931dd088ea108a73901f83065dca81ca474c`; bsc `0x2f8e25c21a17bd9d0c337e1b409e73bc959b41be`; bsc `0x313bbb9379ba23883db312936c8297386b8ce28c`; bsc `0x31d236483a15f9b9dd60b36d4013d75e9dbf852b`; bsc `0x32db028640cb1278f4e58bb0eb3846c7162a83cd`; bsc `0x38b34532cb3294132fe0914ae4f4e8e627fb0af0`; bsc `0x39467805c83b5d598e70ab64ff2e3d66225a3ccb`; bsc `0x3d2f8ff649a113eb74b2a240d68719eda4a5a8f7`; bsc `0x3e15311b75656342a3ade8c46f8d6c60bfa41009`; bsc `0x41871a4c63d8fae4855848cd1790ed237454a5c4`; bsc `0x4763e5ad014f84c4b87e048f24ba490720f1eecb`; bsc `0x541383ebf4729e732611473441ab703a7e75d989`; bsc `0x556ea0b4c06d043806859c9490072faadc104b63`; bsc `0x5a96061cc4fa96c7f7ad5b7d712894bae47fd988`; bsc `0x605676f3266a03b9a81bfa25186e2a40ebb30154`; bsc `0x60e4ed61c6f17972559e86f2125bf8a30f249088`; bsc `0x707e833679e0d74d653f30c826f9dc4e6a91e7c0`; bsc `0x7203d1cc5614b91f368b5c85c8cddf040255cfd0`; bsc `0x72b7c17a5b427b59e8b6e8b21c46aa0fd930ed01`; bsc `0x780de1a0e4613da6b65cef7f5fb63d14cbdcfb72`; bsc `0x7b834ac16f58fd2d2929fc985ae31bd5c9db6296`; bsc `0x7db7715b4c2e6389f484c28d3547ca31539c5e66`; bsc `0x8433533c5b67c4e18fa06935f73891b28a10932b`; bsc `0x85fdc3ca0578e2bc6a358a45c449c92bea274fa5`; bsc `0x8866c9f1cea0dd633e41208f23dd19430d1ed306`; bsc `0x8b24a383cc788827665eecfea220410c114d9a29`; bsc `0x8d7408c2b3154f9f97fc6dd24cd36143908d1e52`; bsc `0x8f2d0c79b14846bf4d26611b98016e46341824ba`; bsc `0x90c375facbafab40294b253cff22d949e36122a5`; bsc `0x958c8b3f74c79b60378b057292a35da77acf3d96`; bsc `0x972df002c8bf1141306a5943329d41d24d541fff`; bsc `0x9e80f1f6e1297bf6916ab6dad2ed4780797da648`; bsc `0xa0fdc7fcf5223f4f9edaed78b206d53919a4916d`; bsc `0xa43a1f35dd0024584b6d7df47aacaf8235c2fea5`; bsc `0xa5d748a3234a81120df7f23c9ea665587dc8d871`; bsc `0xa6f532d5c580976c05a9ff346a7822b161bb3397`; bsc `0xa71ecd2b1e3e97e0603a1a1183d2ad98006e7541`; bsc `0xa7f552078dcc247c2684336020c03648500c6d9f`; bsc `0xa94090229c38d3c51079a81b88361e0b64e108f6`; bsc `0xab38213cb4400f19b1b28bfc4f8b00792ac164a7`; bsc `0xab499095961516f058245c1395f9c0410764b6cd`; bsc `0xaf4de8e872131ae328ce21d909c74705d3aaf452`; bsc `0xb4c0a71bfa5a5a4b1a096a7addb5025eafada122`; bsc `0xb8383286d7b5dbed7362ac7a35adba9da9e1b442`; bsc `0xba7faaa8c552442ef86d84bfb7086ba4aad27a49`; bsc `0xba8c7f61af77d13198782867694a120d8960c727`; bsc `0xc0cd22471f7e923b10672a98793f68f041f607eb`; bsc `0xc214501e18606c85b0ff20848a0102416fe186c9`; bsc `0xc377e2648e5add3f1cb51a8b77dbeb63bd52c874`; bsc `0xc6a752948627becab5474a10821df73ff4771a49`; bsc `0xc86d7113620a3b28a042b6a78fa045c6ad0981ed`; bsc `0xd11f796e7eb1dc47ebde927cf58059f83a9f90f6`; bsc `0xd78f341b9c6f56a01bc9ab5cfa3c49ea6e15775b`; bsc `0xdb900f2c53077459e2e472fe359521e7fa1fe0f3`; bsc `0xdd4da48b4be0f7f19411fbda7cc3f90f173fae88`; bsc `0xdd9227b12596e6f91f31ecd2502856a5df5f6e25`; bsc `0xe32eb7680bad225c87e62640610459a3436860dc`; bsc `0xe6537a16e505541a9d1cbbe1cb1f384bde0bacad`; bsc `0xe9c648544c95b74203fd5e1af1d9fb41bcaf45d4`; bsc `0xea0cbeb9e0083e9d7b920019d0bfdb39b37d3e2f`; bsc `0xea55a3546a6c75864e77da6e3df8f0571cd33211`; bsc `0xedbb3f63c0901ba500e4525da0c2cbd27ac8ffdc`; bsc `0xf17814d515d3128753befd56ccecec2a0a41015f`; bsc `0xf65bed27e96a367c61e0e06c54e14b16b84a5870`; bsc `0xf707df3e4c70e40c2f26c660338dd0c81ad280f1`; bsc `0xf9ac2eec08faac28cd8d7621edb6cfbcc749eb3f`; bsc `0xfa715e7c8fa704cf425dd7769f4a77b81420fbf2`; bsc `0xfd4afeac39da03a05f61844095a75c4fb7d766da`; bsc `0xfd62a9f54c7970a1448e6e2f0836c804519f8325` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (5)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1037f82a4e0b4038aba73137f7474e0550086925` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8a2d34989838ecf4fdec82c1a6f381e5a4a7dda9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x98cfa2e66f366a88160f1342fde1da7db35ba049` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xca9090fa24e0adfb54d0a38d0b28ca34cfd383e7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe8552e631a3a3f4949913b3b2cea85307e475d9f` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [010421_Hacken_Ellipsis_SC_Audit_Report.pdf](https://github.com/ellipsis-finance/ellipsis-audits/blob/master/010421_Hacken_Ellipsis_SC_Audit_Report.pdf) | Hacken | Audit | 2021-04 | stale | Direct | n/a | no match | 0 | 0 | 0 | 4 | n/a |
| [PeckShield-Audit-Report-EllipsisV2Staking-v1.0.pdf](https://github.com/ellipsis-finance/ellipsis-audits/blob/master/PeckShield-Audit-Report-EllipsisV2Staking-v1.0.pdf) | PeckShield | Audit | 2022-03 | stale | Direct | n/a | matched | 2 | 0 | 0 | 1 | n/a |
| [www.curve.finance/audits](https://www.curve.finance/audits) | Curve Finance | Audit | n/a | unknown | Direct | contract_name | no match | 0 | 0 | 0 | 1 | low |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [3131] 010421_Hacken_Ellipsis_SC_Audit_Report.pdf — no match: No reason recorded
- [3132] PeckShield-Audit-Report-EllipsisV2Staking-v1.0.pdf — matched: No reason recorded
- [11900] www.curve.finance/audits — no match: Only the name 'Curve' appears in the title; no scope section or file paths found.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| 010421_Hacken_Ellipsis_SC_Audit_Report.pdf | EpsStaker | unmatched — not counted | — | — | no |
| 010421_Hacken_Ellipsis_SC_Audit_Report.pdf | FeeConverter | unmatched — not counted | — | — | no |
| 010421_Hacken_Ellipsis_SC_Audit_Report.pdf | LpTokenStaker | unmatched — not counted | — | — | no |
| 010421_Hacken_Ellipsis_SC_Audit_Report.pdf | MerkleDistributor | unmatched — not counted | — | — | no |
| PeckShield-Audit-Report-EllipsisV2Staking-v1.0.pdf | EllipsisToken2 | own contract | EllipsisToken2 (selected) `0xaf41054c1487b0e5e2b9250c0332ecbce6ce9d71` — deployed 2022-03-30 22:43:24+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| PeckShield-Audit-Report-EllipsisV2Staking-v1.0.pdf | IncentiveVoting | own contract | IncentiveVoting (selected) `0x4695e50a38e33ea09d1f623ba8a8db24219bb06a` — deployed 2022-04-12 03:20:05+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| PeckShield-Audit-Report-EllipsisV2Staking-v1.0.pdf | LPStaking | unmatched — not counted | — | — | no |
| www.curve.finance/audits | Curve | unmatched — not counted | — | title | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | `0x5b74c99aa2356b4eaa7b85dc486843edff8dfdbe` | EllipsisLpStaking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x3670c10c6a4994ec8926edcf54bf53092217ee1b` | FeeDistributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x22a93f53a0a3e6847d05dd504283e8e296a49aae` | TokenLocker | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 22 |
| upstream | 1 |
| standard_library | 0 |
| needs_review | 5 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Address-book scope dispositions: 2 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 6 unmatched
- Matched-own operational status: 2 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: low=1
- Match method counts: unique_name=2

Zero-match audit list:

- [3131] 010421_Hacken_Ellipsis_SC_Audit_Report.pdf
- [11900] www.curve.finance/audits

Fork inheritance lineage and inherited audits are included when available.
