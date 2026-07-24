# Agentic Audit Brief: Hera Finance

## Export Authority

- Production state: **published scope**
- Raw selected rows: 7 across 4 audit(s)
- Eligible audit results: 5 (4 matched; 1 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `f59b0c07e38ecec2d34eb2896e4262470519ed280e5a0a28b0f46fc69c79a374`

## Project Overview

- Project: Hera Finance (`hera-finance`)
- Website: [https://staking.hera.finance](https://staking.hera.finance)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: arbitrum, ethereum, metis
- Contract surface: 288 unique implementations (292 raw deployments)
- Coverage basis: 3/9 confirmed own live verified implementations (33.3%); conservative 33.3% with 0 needs-review implementation(s)
- DeFi Llama TVL: $5,501,677.75
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Hera Finance. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 9 contract row(s) across arbitrum, ethereum, metis. Structural roles: 6 core, 2 supporting, 1 infra. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 9
- Structural roles: core (6), supporting (2), infra (1)
- Contract kinds: contract (9)
- Detected standards: ownable (4), accesscontrol (2), erc165 (2), erc20 (1)
- Frameworks: openzeppelin (8)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 18 contracts are derived from known codebases. 18 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x2508965ec75498c451b9e325b7a09288f27762d8`, chain 1088)
- UnnamedContract (`0x852d1fdd3982d8e21145845af74db7ae37d1f383`, chain 1088)
- UnnamedContract (`0x9abb8642ab4b184f2a56340c2766cdc0f357500e`, chain 1088)
- UnnamedContract (`0x9c598da94c840147c9a1eabe1ae8df750674ddf6`, chain 1088)
- UnnamedContract (`0xb4801c4407d0d967eaf10981fb689c9da50a7127`, chain 1088)
- UnnamedContract (`0xd51732b8a666831688d0bb20c7907f11119729bf`, chain 1088)
- UnnamedContract (`0x1bd717c5cdd133e1985628e1e194b0ed9c9047e7`, chain 42161)
- UnnamedContract (`0x699127412ac7304f3897f410974677f747f2e9df`, chain 42161)
- UnnamedContract (`0xce3759244610fc69f95db143338c9ed0dc356fd0`, chain 42161)
- GnosisSafeProxy (`0xe089a4efa2da690f21a3ea682cb36dc4ac007995`, chain 1088)
- GnosisSafeProxy (`0xca0dfc4e1935ffa0019aa760db0564b8cdd96e6e`, chain 42161)
- HeraAggregatorV1 (`0xafcb0803f96dc1e9768d14ce55b1a46b26deb24c`, chain 1088)
- HeraAggregatorV2 (`0x0000000000924fb1969e719eded2fed54afb183a`, chain 1088)
- HeraAggregatorV2 (`0x0000000000924fb1969e719eded2fed54afb183a`, chain 42161)
- HeraFeeSequencer (`0x000000fee322aaa0a5772e7f92de10180f9fab15`, chain 1088)
- HeraPublicSaleV2 (`0x1a404ca2f355141eb9ef1d5fe872bfc8511f19e1`, chain 1088)
- HeraSecurity (`0x6da6317e819d6a19c28f0a59291f85fb41b02225`, chain 1088)
- HeraToken (`0x6f05709bc91bad933346f9e159f0d3fdbc2c9dce`, chain 1088)

## Contract Surface Quality

- Logic-topography rows: 9; live-surface rows included: 9 (9 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 18/18 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 3/9 (33.3%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 18 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 270 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 1
- Confirmed-live implementations: 18 of 288 unique; 270 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 3/18
- Verified + Unaudited implementations: 15
- Verified by bytecode match: 0
- Unverified implementations: 270
- Unique implementations: 288
- Raw deployments: 292
- Audits discovered: 5 (5 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 4
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022-10 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 4 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 2 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 2 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| HashEx | Tier 2 | 2 | 11.1% | 2022-10 |
| unknown | Tier 2 | 2 | 11.1% | 2022-03 |

## Contract Surface

### ✅ Verified + Audited (3)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| HeraAggregatorV1 | unknown | project_anchor | own_supporting | 0 | metis | unit-241973 | `0xafcb0803f96dc1e9768d14ce55b1a46b26deb24c` | ✅ Audited |
| HeraFeeSequencer | unknown | project_anchor | own_supporting | 0 | metis | unit-241965 | `0x000000fee322aaa0a5772e7f92de10180f9fab15` | ✅ Audited |
| HeraSecurity | unknown | project_anchor | own_supporting | 0 | metis | unit-241968 | `0x6da6317e819d6a19c28f0a59291f85fb41b02225` | ✅ Audited |

### ⚠️ Verified + Unaudited (15)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Disperse | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x5a87bf17066a749c794163af160d52a466ae4154` | ⚠️ Unaudited |
| GnosisSafeL2 | governance | project_anchor | own_supporting | 1 | arbitrum | unit-241981 | `0xca0dfc4e1935ffa0019aa760db0564b8cdd96e6e` | ⚠️ Unaudited |
| GnosisSafeProxy | governance | project_anchor | own_supporting | 0 | metis | unit-241976 | `0xe089a4efa2da690f21a3ea682cb36dc4ac007995` | ⚠️ Unaudited |
| HeraAggregator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | 3 deployments: metis `0x0a601071e0a89b706b494a2c1931eb961b8684a9`; metis `0xce3759244610fc69f95db143338c9ed0dc356fd0`; metis `0xdfb2c656a263f0ad028b276469325aa6dd2ba68e` | ⚠️ Unaudited |
| HeraAggregatorV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xc1aa2332d7577320f581b83414de26f6f6db94a9` | ⚠️ Unaudited |
| HeraAggregatorV2 | unknown | project_anchor | own_supporting | 0 | metis | unit-241964 | `0x0000000000924fb1969e719eded2fed54afb183a` | ⚠️ Unaudited |
| HeraAggregatorV2 | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-241977 | `0x0000000000924fb1969e719eded2fed54afb183a` | ⚠️ Unaudited |
| HeraFeeOrganizer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | 2 deployments: metis `0xdcf40457b0f83ee1f82b573dc58db7d47826a877`; metis `0xff2e95d887c426d724b3a873fe33d554a10f2fa5` | ⚠️ Unaudited |
| HeraOFT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0xa2c2c937333165d4c5f2dc5f31a43e1239fecfeb`; ethereum `0xce3759244610fc69f95db143338c9ed0dc356fd0` | ⚠️ Unaudited |
| HeraPublicSale | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x1bd717c5cdd133e1985628e1e194b0ed9c9047e7` | ⚠️ Unaudited |
| HeraPublicSaleV2 | unknown | project_anchor | own_supporting | 0 | metis | unit-241966 | `0x1a404ca2f355141eb9ef1d5fe872bfc8511f19e1` | ⚠️ Unaudited |
| HeraToken | token | project_anchor | own_supporting | 0 | metis | unit-241969 | `0x6f05709bc91bad933346f9e159f0d3fdbc2c9dce` | ⚠️ Unaudited |
| Multicall2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xfc6a61c085e7831f66c35e9c3c5b75c558407353` | ⚠️ Unaudited |
| ProxyAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x61861d91e73d9cbc5e4893df0e85f442dd2b658b` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xc92f8e6d6c68f63cbf4af439ff0d12f7a9333ef7` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (270)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1a404ca2f355141eb9ef1d5fe872bfc8511f19e1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x00b34c12722d324f621d1ec51f39772f7bdd81b7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x00c37b0f22ba53fc360346c411236c53db1a73e8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x01b1bc50e9a53bef2d32f880802147b946420b0e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x025b15abb616fd9b9cf3eb7d47c2c84d97fa8df0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x02e6e5201a23892dfec85196e0f2d92ff0c2a5b3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x0352946409ce230fcc332638d124620c678f78e3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x03734c753114080f7614a099177cd0fcb8e6832c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x05322d161e586af5cea8af0dfea9c9e764b8e4f5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x05ab5eaa4553b49653030bb6560fefa3abcc2762` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x05b7f05fa2a388cb910bee6791b2a7df772ca221` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x0656c98544908cbfbe473f1d15f37876eb7dca6f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x06d511801de917ae5e9a67c98594481418418ff1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x079534999b7b3c65fb0ee685c3d6137bd4f62e9a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x0b03889e240eac1efdf66d389b8d12bbf8ef7c3d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x0b0794df0e42eecc958ebb11beb74dc5a333fb45` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x0b2ab5d9505a1a1a520b6eef035b119092576ce2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x0c5cf00bd42ee4d07d4dfe76dbea52605d24a0dd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x0eeff051f5fb79ccabce907c42d1419fc19102e4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x0f236b54bd24ac0c347feb7bcf6ca3d8d57d8da7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x1015a52df76f720e3a9652ca6f636ba4b8936ce9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x10164642bac8e58c20066e9d68739f374c38a4f5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x1096718376306a707cd0359bcef76ec77db27ce3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x10d405fe699e30bd5bec998f541789b4b89ec0cf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x12487e95c1f43a7a91e49ae51ac91806dfe62ab1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x127a2fd2e00ac886e4d1b4127ce6e8e982631d0c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x13a61465fa7ac45f3d74be4d85aef6c1eb061c0c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x14a5e43f130f81d2b3e492b19436a027aa6bb46d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x1535bf2a9be2559198846d13b4bfe79f838c5280` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x158ee8554e173e0b4c097f3401d3c23f7b1b8059` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x15fdd42a31eccfb2b8a3bca688210b5238dd46fd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x17ce3157636516374bcf597c0e0be5efca7adeaa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x17fae31dfc6ee4f36fe25042fe231460da198708` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x187bbad972b452f6dbe6d3bd8dcbc7bb2f1af123` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x1881baabb4043f02cf3f6b3572459864fc63f01e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x18a0cb9aedf4210b8b1d9b88bad0a8c25c75a1c5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x19e205fa43830e0da9a3ac3208208133e5c4cd3a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x1ad8d35a49f9a5b45027fd85918663c78b8a6205` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x1b24197717918575f45cef72510782b2829f11c2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x1b92e5c3c59db69efbd91265528ad8eb5717d2c1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x1c609f306f02f6c872dd45317da4f6ca5cf6d7ad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x1e74fbbc106df6e1af83f7b31ff229d0fc92f24a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x1e97fdea7e9417144838e09befdd9950a961b92c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x2117f1e5f6166b10f65d683cb2abec088f083c06` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x2125768e33d5409a1ce5fd8cff75503e36017f09` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x2154b2fa7083de2220e380fd42dbea13797d7d0f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x21688b6067a83cef07d2677ca53a6cb4891a8609` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x22205915d8d5b36e1a8217f837d59eb2e37090dc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x22b9ddec99fca327d099c7e50745f2fa76d83158` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | metis | unit-241967 | `0x2508965ec75498c451b9e325b7a09288f27762d8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x260f2350a214a51bde94f71d27dc9a0b64f151b9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x275b438363d155898f4b9e787093399e68b3ee23` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x2763b26bf423f07a6224811948e6ef3a08a0e19e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x27f0d5542e77f26bc50fd44b3bcce53368253187` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x28050e119e8170b3c6079da8fb2ef36f991e2c45` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x281ed5793887d293561c1d49338cb1e20bfa3bba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x28227ef5c66853630d3cef0226481c32811f970d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x291a4df654fafa349616231124cd0d12a4acc63d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x2a33c5a305cc11cbb170b629558b9fe8fb2ca49f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x2aa7c6c29c7c008eb967234e908f4701376d1b55` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x2d6b48afc59b0b2b8ec1fffc54e6c12513479efa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x2d707e2a949bdbb8ed52492602ce17d4e1a5b788` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x2ec37306801cb2dce6526c71b28916a70a835c03` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x2fb84b1dc8c3ac78640aae425cb7cb91883f6bb7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x303723bfcb763399fae75e0d9be9f092c2843579` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x30828848cb722344ae39aca32916e1559c8fa00d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x31900ba382abd35d3c505cd852f36c68056bf581` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x32c8f6f0201941334354a89581d0ead5d39072cf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x33983d8f95f6ba32c22262c09ebb58bc8eb18098` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x351d8c2e2ad98fa4d2bf50450f5d82ac639dca4c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x35472e1d1528810739b4e7b7ae8236dfcaf62dd4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x35d9ace286cd1c2fe9bb79618d8d098bcb8ee5f8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x375b9ff274927db9061b637f2a4ab0892fe3b890` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x3842a9d123729e83867f631b821eb068100f399d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x39084557e50c05bbc4d5e88699687263445882db` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x3a03c2b8ad021e3fc665a790312804dc79761f31` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x3a1c3b04f4bd048911e3f346e9182b29cd82a8c0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x3acfb73e2b0acc3587b630fa5e9c5cd843a205d8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x3b9a54f53701f0e04e544b456a073edb44bbf7a1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x3c8a8e8a44e09c6c4a4b17c665bce31d04471783` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x3d1e83b94caec89d6d33815c61a08f6d3c8aaa7a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x3e3c36f0dc051bf03d3fdc1e83e2680b46e73f2e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x43584e5a639cb1191c4fa64e7229eba66832a80d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x451b18ae22f47b5014ffff9e9ff37c5add0ce3d2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x46a003d8386f12cc37e80568dda9d2522adb9bde` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x4885a2f07e823ad70e6d3739368a35efcd15d25c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x48aed441db59c94de3a078ee820da54105249570` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x4956cd9072a9d7726ab7cc37257ef01ce94e1ffb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x4c478f463ec2b8ebd46b39fe7c0d2ff3d17c57f2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x4e162c34ca53701af8d5b138136e0a0308d1c7cf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x522acabcc3e19cbb05066e20d4a8ca59b15abd16` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x52f772d8c56f5636a74ef66f89036199974520e6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x532435a55d8df5685b9f1b329245b1bbd461d3f1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x5564870f1bce99bbc1bc46b11bc3e6cbb2b9c987` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x556ca216899f48199c7b82ec8c4b8f4d9f98a692` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x56200976b8383802307831b9b261750f1f9f9173` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x57dd2f66dfcbee66328a45f44842708af9d6fbcd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x5a442c01f34d2135fe4c90de54c56a1523861a4d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x5ad67ad3e865cd61ed65d1869abe72a6100ec35e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x5b60aa059574f7ee0d997224843d56d015788077` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x5e6c9f1ae15387260464804c0680f306b1dc6bd3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x60466868b0d038a1dc778b070e96240f93514f2f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x6059be165ce710a986a52f1fd3a26adc23e6a4ca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x620633fd248a19eb625a6d697c0146e377d5294a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x63ffc95a37fe7fa86e7757deabe8758a98f5f9fc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x645f298be6659a5bd73a4894402d646cb29e129d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x669f986edb6649c39b8579ff3a700bf43181075b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x6704bdb2592145df40a04770e12f4f27e75c530e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x67500ff2389fac61b58cd05dbc4177e010282f33` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x6758013ff4bc50eed13346e2dca8701ff108540e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x68e736e4e989c5916c51a6ba643637ba5231e036` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x6ab9e9bdd3680a37e0df0b3ecbb75ad705c95fed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x6adf666c0f05481c42f33d099d6fd7f1db585dbe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x6b7430aa7501826db549c2f2dc13dcdfb86b2669` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x6b862d1ef67ea066376a3381b24cfc6c3a09d8ca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x6bc4f884877cb5fa2ce1a85ef3c0203908bd74da` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x6c1875c0a5793e956be1021135a87f268e0716a3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x6dc9bb1f8c75ce7441edbfcdcd6fbaf3122e93d3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x6e50040323ce0bb3fbbcd7fab4437d62b244a95d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x6f5e6bd1439f9361639ff9b8719e075eb69bb5a0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x748a89dd05b62d876d95e74ab2952ad2f587e3de` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x750a6bae39b77a612600957212390fcd0c6752e3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x759d9a5fc802d969fad9a51f12a2cde885fcfa25` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x765fa67b25fc801f7802604f7326c215c3a973a0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x76a7063989e671fd09f44ba37e624a909ce70b3b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x79393e83b864205ea0101f1cec6d0de07bd3a663` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x7b009be9c184fb613ee884ad323e64b66cfdb58a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x7dbdf119ee7c931b532694f4de35fd00c78e421c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x7ec835315497c8f7530d37bc9c3da0d1930ac1cb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x8272fe0ad8910c3b733f767b0b552ed2ee3ba1e8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x83a9580cccd67273abd9ada9a072e478875539ca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x8508cd4dda8ac7062304c1994124a6ed4b2939a0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x852beab5a779bcb48fd7358f0fe052ce09352223` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | metis | unit-241970 | `0x852d1fdd3982d8e21145845af74db7ae37d1f383` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x863077c2ba3e1c728dfe9257ad25f6a5a1e9b57c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x863361ce7bf04fdf375dc8134f139ad5435ca041` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x865ec7064befcfdaf2ee25caffd5a68b48b7778b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x869e995c715c42a538b6045f7b1ead5484f638af` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x89c6acdd480ebebe465bf1dff10bb3a7abf4f7fc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x89e3604b167a6e1ebfc6259a26ab068e627e1a5b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x8a43e898c00c55ce5b640e8153eea23063bbc7c9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x8a48cad2b9f25a8854e9316da307e27ec2a2430c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x8a4d9e7b6f484e8e2db0f12cd4c3d4de9cee76b2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x8a719ee29e60b75638ebbb3edbc5ffb95ffddda8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x8a8201d1cd5237bbabf059c5282c0774ee9509af` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x8aa628247d62f82ae5a7f1fd30e1d3238e290cf0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x8b35ff47b5b8591c4a070546f810207c5f7d1663` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x8cb26519e57cc93a0ddbf545f3507b1123dc3c98` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x8d0b76ebd19f5f954834c83c1331bf1fd4a337df` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x8d19926e2994c814f85096fd0e08c35799266f5b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x8fed60b4d1c43aa99e614522ebc1764fde446a32` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x9177b3264808746bca4f02b55402e14c0b701ef0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x9341ed4cfc042da1ec60aebc4596edcc12a0b95b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x93bf91c83b55c4daa37c4b3e9a6e6f9770de56f0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x94317d3ac91e10f71e0c6023e3d1bffc2e9947c6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x9453008f6ecdf51004e64d79afadf19dbb05186a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x948e1e737cb26f15a37559e1281585d10b45e9e8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x949ba06a0ab415ecacfafd6ae4eb070563e7e16c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x94fbfb522451bf8bd1768094585972242e59ec36` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x962d67b56c28bba4ed75390869d5d3dc9e72eb4d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x96b0104e7018eb1f4f909ba77938993c5a7b63e5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x979424097a64a189f8418a3d5316069f965279e1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x982d8011f543294beb135e8b9c1e131fdd883c6a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x98b88947c001906446950cc71ec175465d724b70` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x99d5079dc621c949cabe3642390cb48f3ea80aa6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | metis | unit-241971 | `0x9abb8642ab4b184f2a56340c2766cdc0f357500e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | metis | unit-241972 | `0x9c598da94c840147c9a1eabe1ae8df750674ddf6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x9cebef712a495145719d638ebc66256f117d503c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x9fbf118cb402bf43b87abde309d60127a3d3bb6a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xa037dd857e94071442b4b6dd9dc53e48ffbb9334` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xa0cf237e61dfa08fcd3786baad7d4acf0321518c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xa0e8ec1cce3fb97e87c68ce860d76c4257100713` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xa1e555d1f21e2f43ecaa74b88ece6edb87a2f0d9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xa2b8c717e8ab4d681050e905fa6580a456099c1e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xa305a9cca008731ae674414597ffaff4dfac2f88` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xa4061c2dc1ef051a1b713716379d8aacde6ac6df` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xa4a052a9c731dee314d4f112aecb30c91a7a1ab6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xa6d7e4884237b56293b5bac0db7b489290083b5a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xa73ea8aa541954631bfd4b2c0d46fe44f1487cdc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xa77956d4ffaea326912ad77d83c1322f21c8ebac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xa8266628f6f6d9037e2aaa4183947b99f522b731` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xa8cde80b9004ebca2a7540e08214d203258499e1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xaa604f46d1b983e39937551d4880aa50a2655517` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xab61ea1017edd4a4d26dcd9b04a6fbdd527d34f3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xae8f71ea4676bb219f2c20ea811d2cc02069fd2d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xaefbc58c5e22124a9c35a2a66c8acaafd87d891b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xafcec40051d9c8f3d5cafae23f3f86ea352c2520` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xb0f82ba786fbb75b038315696de63be97e21b23a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xb2b5e410b7d5f9af0c2a8931d06ea3b0eb9568d1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | metis | unit-241974 | `0xb4801c4407d0d967eaf10981fb689c9da50a7127` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xb4e1096050089bb3ca3a59382c0a580a703e5dde` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xb656040d20e97b25ec12c46f8495108f4b3863bd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xb6756e07765fa0a6235029830d2eeed75640dbd0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xb8379eb2179588e2249468ee534798c990edc16b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xb91a44e1cc8389ddc296d84d16714aab848424ed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xb9ed423b9d03c9d7899987b0f9d8c14dbbd15a15` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xbc493f59613ab874cfacd5836902e8751d121226` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xbdd07e7fc82b814535789b8a269897eddcc84dbf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xbe705e41c3bbbc83d88f0677845d1728fd60399a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xbf6ca1b002e7d6d03a96907a6fb401fef6eb47b4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xc06a30b9ae624ec31cb1fd3f44bcac42d4bb988a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xc279ce1e334beb3c81d37648e432d527b61d8847` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xc27dd4030a59556d6d5e4e18dfacea23510d30fe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xc323afeeeff855e8a43e17fb9536230df164bf24` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xc60fbbf5ea689f442aa39742d8e4d6ae9325c2d2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xc6b9aa09081ac42ae924796ae06785117c874571` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xc7277787fdbfaaeebbc56a6dc186e583780365e9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xc748630d44302e1df9e4b252e1f1c24ad408f455` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xc7880bf3216d0b7cb830a9ebd2db5dbf90d567fb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xc8ec71e41af44f0149d2df5cb6d6470eff58ac2d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xc9c6699fe48351159bd9eb1b8c9071073f413797` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xcb10b80412976f517d974c075366c69f2f823ad0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xcd24bd5b94320bbc12eb27e436a34c4263a7e85f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xd07cc2d8f183dc7cb2398e71349bcda807eb27fa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xd1f5bc59c672bd3235dba9c1d8d0031c07dd441a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xd209906a2b7034acb184e0c869a7b67851b7aa70` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xd3436d48d2014b22c13b219cfc480efff73fd67c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xd42cee686e38c75cfdfeb0aeb5d09f4bbffd1fc1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | metis | unit-241975 | `0xd51732b8a666831688d0bb20c7907f11119729bf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xd5723d7622ef97aa8d16fc3757b6d24d66fb41d6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xd652e0a83ea5a0166de3d050b893b64cd7b7cec5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xd778b90c8b836a2075fc3973fe5c50e0a04c87a9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xd7f0385310e4ccc857b699b149342f04580a6047` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xd867f18680951a03a0a055c515d062e4b27f23e8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xd892bd7ad0b0fce2c031d353082fc57406599a15` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xd92cbd5e84f21cd19b2075129c8b467b3e7b6b5f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xdae80232574e3992a217cc287214f5056775d6b9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xdbb7333893ebda3a9d11140e6df2e94aea200195` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xdbd21a1043bf271d43e802488120964848412855` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xdd434b534230602f32a70aefee6b35542980f5b8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xdd61a02b256b055dd69e8f32736706b732d7d708` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xddfbeb8a084add34ca3d30d8026fb9d2ffb400ad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xde22e905b7d32bed9d53fbade961ca506bd4da1f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xde53dc90bde86486ce10758a44710b38d4d7ce57` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xde656d5de1053e7c13021beb4edf840d344c09a2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xdfe70e49638587d7aef3e3b462a8e65eb71a38fb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xe0099e761965e6e61da455fe280a70745b8308d3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xe04a9567742d7c15d9a0a6ef51c19eaec625b861` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xe18589e1124112f4db401afd3964c07d8aa632a5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xe3e6f27b7136d5ea251f7176cd7ae21f841e045c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xe435dcfc772d018fdff87461b16a6fb8dbe8ac47` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xe5378a18b00dcdd35a96d738f4e80d11a2901372` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xe5855cb61d97aea5b72f908f98f04f7882bd98a7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xe76b97934d95a8e08d4144bee95a00a45f535076` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xe7ba320d0533aa5a3b7a8e4ddcd119ee4397e6f4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xe9998e4909d4cce4a11bf37fc14f1858c7c6a840` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xea99e39ef2dbd71cbdbdd2e1f2049516795c4ae7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xebdf92048ed0ad8ae6c2af9274d8271034b11946` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xec389e164f910d0d597abf154c346d1a4ddc1402` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xee10dbbff59513fdea8211638cde5ef4828c7eca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xee14168c0e95a5f32426f5a6de7527d106ec9267` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xef2cf8f7b5b84b2f1955f6a9832c9e4f5959c9b3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xef7b626532770d462ebac08c335f22b7708e6f85` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xf4c0d67b0de06d09f35c479a5222b7cc70ebb9b8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xf5377d494b478bf6757243ed45579c24a4b6ede5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xf56961341df6a8269c97ab0003db78311a34330b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xf62aa3870822ef618087dfde3a9cf73932700316` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xf877930677340b933c0c0bbc79f6d2a3f39661e8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xf999f968ea1106dde6aaeb8af9fec8e1ef04a103` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xfa3e5b2d28d715d04276ffa7ab4f39a30f383fd0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xfb7db2a640489621f8b36bcf7699dcf309c2df28` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xfd246613628fa1eb189adeb25a2011ff721d0695` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xfd97bbb1b59465d3fc4f953e61682b43b1e76f36` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xfdc464d0e8ccee1bb906e740955706d2de895b63` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xfdfddf12ecc99dee309b8c0d8ae3ae4ba1c2d03e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xff5a857f16247cd79b09a8e228755bea7a68bcf7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-241978 | `0x1bd717c5cdd133e1985628e1e194b0ed9c9047e7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-241979 | `0x699127412ac7304f3897f410974677f747f2e9df` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x6f05709bc91bad933346f9e159f0d3fdbc2c9dce` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-241980 | `0xce3759244610fc69f95db143338c9ed0dc356fd0` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 254
- Live contracts: 0
- Unknown liveness contracts: 254
- Source-verified contracts: 10
- Currently scope-matched contracts retained as-is: 0
- Contract rows sorted by chain, deployer, classification, contract name, then address.
- Classification counts: candidate review=8, source verified unclassified=2, unverified unclassified=244

Showing first 200 of 254 contracts. The complete deployer expansion list is in `brief.json`.

| Chain | Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|---|
| arbitrum | unverified unclassified | UnnamedContract<br>`0x6f05709bc91bad933346f9e159f0d3fdbc2c9dce` | non_address_book | unknown | unknown | unverified | n/a | `0x000000d1c7b1f6730cf854c0185748f1e132ea2e` |
| ethereum | source verified unclassified | HeraOFT<br>`0xa2c2c937333165d4c5f2dc5f31a43e1239fecfeb` | non_address_book | unknown | unknown | verified | n/a | `0x000000d1c7b1f6730cf854c0185748f1e132ea2e` |
| ethereum | source verified unclassified | HeraOFT<br>`0xce3759244610fc69f95db143338c9ed0dc356fd0` | non_address_book | unknown | unknown | verified | n/a | `0x000000d1c7b1f6730cf854c0185748f1e132ea2e` |
| metis | candidate review | Disperse<br>`0x5a87bf17066a749c794163af160d52a466ae4154` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x000000d1c7b1f6730cf854c0185748f1e132ea2e` |
| metis | candidate review | HeraAggregator<br>`0x0a601071e0a89b706b494a2c1931eb961b8684a9` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xffe7062de1943a3cbc695d50b186d277b6b0b048` |
| metis | candidate review | HeraAggregator<br>`0xdfb2c656a263f0ad028b276469325aa6dd2ba68e` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xffe7062de1943a3cbc695d50b186d277b6b0b048` |
| metis | candidate review | HeraAggregatorV1<br>`0xc1aa2332d7577320f581b83414de26f6f6db94a9` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xffe7062de1943a3cbc695d50b186d277b6b0b048` |
| metis | candidate review | HeraFeeOrganizer<br>`0xdcf40457b0f83ee1f82b573dc58db7d47826a877` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xffe7062de1943a3cbc695d50b186d277b6b0b048` |
| metis | candidate review | Multicall2<br>`0xfc6a61c085e7831f66c35e9c3c5b75c558407353` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xffe7062de1943a3cbc695d50b186d277b6b0b048` |
| metis | candidate review | ProxyAdmin<br>`0x61861d91e73d9cbc5e4893df0e85f442dd2b658b` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xffe7062de1943a3cbc695d50b186d277b6b0b048` |
| metis | candidate review | TransparentUpgradeableProxy<br>`0xc92f8e6d6c68f63cbf4af439ff0d12f7a9333ef7` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xffe7062de1943a3cbc695d50b186d277b6b0b048` |
| metis | unverified unclassified | UnnamedContract<br>`0x00b34c12722d324f621d1ec51f39772f7bdd81b7` | non_address_book | unknown | unknown | unverified | n/a | `0xffe7062de1943a3cbc695d50b186d277b6b0b048` |
| metis | unverified unclassified | UnnamedContract<br>`0x00c37b0f22ba53fc360346c411236c53db1a73e8` | non_address_book | unknown | unknown | unverified | n/a | `0xffe7062de1943a3cbc695d50b186d277b6b0b048` |
| metis | unverified unclassified | UnnamedContract<br>`0x01b1bc50e9a53bef2d32f880802147b946420b0e` | non_address_book | unknown | unknown | unverified | n/a | `0xffe7062de1943a3cbc695d50b186d277b6b0b048` |
| metis | unverified unclassified | UnnamedContract<br>`0x025b15abb616fd9b9cf3eb7d47c2c84d97fa8df0` | non_address_book | unknown | unknown | unverified | n/a | `0xffe7062de1943a3cbc695d50b186d277b6b0b048` |
| metis | unverified unclassified | UnnamedContract<br>`0x02e6e5201a23892dfec85196e0f2d92ff0c2a5b3` | non_address_book | unknown | unknown | unverified | n/a | `0xffe7062de1943a3cbc695d50b186d277b6b0b048` |
| metis | unverified unclassified | UnnamedContract<br>`0x0352946409ce230fcc332638d124620c678f78e3` | non_address_book | unknown | unknown | unverified | n/a | `0xffe7062de1943a3cbc695d50b186d277b6b0b048` |
| metis | unverified unclassified | UnnamedContract<br>`0x03734c753114080f7614a099177cd0fcb8e6832c` | non_address_book | unknown | unknown | unverified | n/a | `0xffe7062de1943a3cbc695d50b186d277b6b0b048` |
| metis | unverified unclassified | UnnamedContract<br>`0x05322d161e586af5cea8af0dfea9c9e764b8e4f5` | non_address_book | unknown | unknown | unverified | n/a | `0xffe7062de1943a3cbc695d50b186d277b6b0b048` |
| metis | unverified unclassified | UnnamedContract<br>`0x05ab5eaa4553b49653030bb6560fefa3abcc2762` | non_address_book | unknown | unknown | unverified | n/a | `0xffe7062de1943a3cbc695d50b186d277b6b0b048` |
| metis | unverified unclassified | UnnamedContract<br>`0x05b7f05fa2a388cb910bee6791b2a7df772ca221` | non_address_book | unknown | unknown | unverified | n/a | `0xffe7062de1943a3cbc695d50b186d277b6b0b048` |
| metis | unverified unclassified | UnnamedContract<br>`0x0656c98544908cbfbe473f1d15f37876eb7dca6f` | non_address_book | unknown | unknown | unverified | n/a | `0xffe7062de1943a3cbc695d50b186d277b6b0b048` |
| metis | unverified unclassified | UnnamedContract<br>`0x06d511801de917ae5e9a67c98594481418418ff1` | non_address_book | unknown | unknown | unverified | n/a | `0xffe7062de1943a3cbc695d50b186d277b6b0b048` |
| metis | unverified unclassified | UnnamedContract<br>`0x079534999b7b3c65fb0ee685c3d6137bd4f62e9a` | non_address_book | unknown | unknown | unverified | n/a | `0xffe7062de1943a3cbc695d50b186d277b6b0b048` |
| metis | unverified unclassified | UnnamedContract<br>`0x0b03889e240eac1efdf66d389b8d12bbf8ef7c3d` | non_address_book | unknown | unknown | unverified | n/a | `0xffe7062de1943a3cbc695d50b186d277b6b0b048` |
| metis | unverified unclassified | UnnamedContract<br>`0x0b0794df0e42eecc958ebb11beb74dc5a333fb45` | non_address_book | unknown | unknown | unverified | n/a | `0xffe7062de1943a3cbc695d50b186d277b6b0b048` |
| metis | unverified unclassified | UnnamedContract<br>`0x0b2ab5d9505a1a1a520b6eef035b119092576ce2` | non_address_book | unknown | unknown | unverified | n/a | `0xffe7062de1943a3cbc695d50b186d277b6b0b048` |
| metis | unverified unclassified | UnnamedContract<br>`0x0c5cf00bd42ee4d07d4dfe76dbea52605d24a0dd` | non_address_book | unknown | unknown | unverified | n/a | `0xffe7062de1943a3cbc695d50b186d277b6b0b048` |
| metis | unverified unclassified | UnnamedContract<br>`0x0eeff051f5fb79ccabce907c42d1419fc19102e4` | non_address_book | unknown | unknown | unverified | n/a | `0xffe7062de1943a3cbc695d50b186d277b6b0b048` |
| metis | unverified unclassified | UnnamedContract<br>`0x1015a52df76f720e3a9652ca6f636ba4b8936ce9` | non_address_book | unknown | unknown | unverified | n/a | `0xffe7062de1943a3cbc695d50b186d277b6b0b048` |
| metis | unverified unclassified | UnnamedContract<br>`0x10164642bac8e58c20066e9d68739f374c38a4f5` | non_address_book | unknown | unknown | unverified | n/a | `0xffe7062de1943a3cbc695d50b186d277b6b0b048` |
| metis | unverified unclassified | UnnamedContract<br>`0x1096718376306a707cd0359bcef76ec77db27ce3` | non_address_book | unknown | unknown | unverified | n/a | `0xffe7062de1943a3cbc695d50b186d277b6b0b048` |
| metis | unverified unclassified | UnnamedContract<br>`0x10d405fe699e30bd5bec998f541789b4b89ec0cf` | non_address_book | unknown | unknown | unverified | n/a | `0xffe7062de1943a3cbc695d50b186d277b6b0b048` |
| metis | unverified unclassified | UnnamedContract<br>`0x12487e95c1f43a7a91e49ae51ac91806dfe62ab1` | non_address_book | unknown | unknown | unverified | n/a | `0xffe7062de1943a3cbc695d50b186d277b6b0b048` |
| metis | unverified unclassified | UnnamedContract<br>`0x127a2fd2e00ac886e4d1b4127ce6e8e982631d0c` | non_address_book | unknown | unknown | unverified | n/a | `0xffe7062de1943a3cbc695d50b186d277b6b0b048` |
| metis | unverified unclassified | UnnamedContract<br>`0x13a61465fa7ac45f3d74be4d85aef6c1eb061c0c` | non_address_book | unknown | unknown | unverified | n/a | `0xffe7062de1943a3cbc695d50b186d277b6b0b048` |
| metis | unverified unclassified | UnnamedContract<br>`0x14a5e43f130f81d2b3e492b19436a027aa6bb46d` | non_address_book | unknown | unknown | unverified | n/a | `0xffe7062de1943a3cbc695d50b186d277b6b0b048` |
| metis | unverified unclassified | UnnamedContract<br>`0x1535bf2a9be2559198846d13b4bfe79f838c5280` | non_address_book | unknown | unknown | unverified | n/a | `0xffe7062de1943a3cbc695d50b186d277b6b0b048` |
| metis | unverified unclassified | UnnamedContract<br>`0x158ee8554e173e0b4c097f3401d3c23f7b1b8059` | non_address_book | unknown | unknown | unverified | n/a | `0xffe7062de1943a3cbc695d50b186d277b6b0b048` |
| metis | unverified unclassified | UnnamedContract<br>`0x15fdd42a31eccfb2b8a3bca688210b5238dd46fd` | non_address_book | unknown | unknown | unverified | n/a | `0xffe7062de1943a3cbc695d50b186d277b6b0b048` |
| metis | unverified unclassified | UnnamedContract<br>`0x17ce3157636516374bcf597c0e0be5efca7adeaa` | non_address_book | unknown | unknown | unverified | n/a | `0xffe7062de1943a3cbc695d50b186d277b6b0b048` |
| metis | unverified unclassified | UnnamedContract<br>`0x17fae31dfc6ee4f36fe25042fe231460da198708` | non_address_book | unknown | unknown | unverified | n/a | `0xffe7062de1943a3cbc695d50b186d277b6b0b048` |
| metis | unverified unclassified | UnnamedContract<br>`0x187bbad972b452f6dbe6d3bd8dcbc7bb2f1af123` | non_address_book | unknown | unknown | unverified | n/a | `0xffe7062de1943a3cbc695d50b186d277b6b0b048` |
| metis | unverified unclassified | UnnamedContract<br>`0x1881baabb4043f02cf3f6b3572459864fc63f01e` | non_address_book | unknown | unknown | unverified | n/a | `0xffe7062de1943a3cbc695d50b186d277b6b0b048` |
| metis | unverified unclassified | UnnamedContract<br>`0x18a0cb9aedf4210b8b1d9b88bad0a8c25c75a1c5` | non_address_book | unknown | unknown | unverified | n/a | `0xffe7062de1943a3cbc695d50b186d277b6b0b048` |
| metis | unverified unclassified | UnnamedContract<br>`0x19e205fa43830e0da9a3ac3208208133e5c4cd3a` | non_address_book | unknown | unknown | unverified | n/a | `0xffe7062de1943a3cbc695d50b186d277b6b0b048` |
| metis | unverified unclassified | UnnamedContract<br>`0x1ad8d35a49f9a5b45027fd85918663c78b8a6205` | non_address_book | unknown | unknown | unverified | n/a | `0xffe7062de1943a3cbc695d50b186d277b6b0b048` |
| metis | unverified unclassified | UnnamedContract<br>`0x1b24197717918575f45cef72510782b2829f11c2` | non_address_book | unknown | unknown | unverified | n/a | `0xffe7062de1943a3cbc695d50b186d277b6b0b048` |
| metis | unverified unclassified | UnnamedContract<br>`0x1b92e5c3c59db69efbd91265528ad8eb5717d2c1` | non_address_book | unknown | unknown | unverified | n/a | `0xffe7062de1943a3cbc695d50b186d277b6b0b048` |
| metis | unverified unclassified | UnnamedContract<br>`0x1c609f306f02f6c872dd45317da4f6ca5cf6d7ad` | non_address_book | unknown | unknown | unverified | n/a | `0xffe7062de1943a3cbc695d50b186d277b6b0b048` |
| metis | unverified unclassified | UnnamedContract<br>`0x1e74fbbc106df6e1af83f7b31ff229d0fc92f24a` | non_address_book | unknown | unknown | unverified | n/a | `0xffe7062de1943a3cbc695d50b186d277b6b0b048` |
| metis | unverified unclassified | UnnamedContract<br>`0x1e97fdea7e9417144838e09befdd9950a961b92c` | non_address_book | unknown | unknown | unverified | n/a | `0xffe7062de1943a3cbc695d50b186d277b6b0b048` |
| metis | unverified unclassified | UnnamedContract<br>`0x2125768e33d5409a1ce5fd8cff75503e36017f09` | non_address_book | unknown | unknown | unverified | n/a | `0xffe7062de1943a3cbc695d50b186d277b6b0b048` |
| metis | unverified unclassified | UnnamedContract<br>`0x2154b2fa7083de2220e380fd42dbea13797d7d0f` | non_address_book | unknown | unknown | unverified | n/a | `0xffe7062de1943a3cbc695d50b186d277b6b0b048` |
| metis | unverified unclassified | UnnamedContract<br>`0x21688b6067a83cef07d2677ca53a6cb4891a8609` | non_address_book | unknown | unknown | unverified | n/a | `0xffe7062de1943a3cbc695d50b186d277b6b0b048` |
| metis | unverified unclassified | UnnamedContract<br>`0x22205915d8d5b36e1a8217f837d59eb2e37090dc` | non_address_book | unknown | unknown | unverified | n/a | `0xffe7062de1943a3cbc695d50b186d277b6b0b048` |
| metis | unverified unclassified | UnnamedContract<br>`0x22b9ddec99fca327d099c7e50745f2fa76d83158` | non_address_book | unknown | unknown | unverified | n/a | `0xffe7062de1943a3cbc695d50b186d277b6b0b048` |
| metis | unverified unclassified | UnnamedContract<br>`0x260f2350a214a51bde94f71d27dc9a0b64f151b9` | non_address_book | unknown | unknown | unverified | n/a | `0xffe7062de1943a3cbc695d50b186d277b6b0b048` |
| metis | unverified unclassified | UnnamedContract<br>`0x275b438363d155898f4b9e787093399e68b3ee23` | non_address_book | unknown | unknown | unverified | n/a | `0xffe7062de1943a3cbc695d50b186d277b6b0b048` |
| metis | unverified unclassified | UnnamedContract<br>`0x2763b26bf423f07a6224811948e6ef3a08a0e19e` | non_address_book | unknown | unknown | unverified | n/a | `0xffe7062de1943a3cbc695d50b186d277b6b0b048` |
| metis | unverified unclassified | UnnamedContract<br>`0x27f0d5542e77f26bc50fd44b3bcce53368253187` | non_address_book | unknown | unknown | unverified | n/a | `0xffe7062de1943a3cbc695d50b186d277b6b0b048` |
| metis | unverified unclassified | UnnamedContract<br>`0x28050e119e8170b3c6079da8fb2ef36f991e2c45` | non_address_book | unknown | unknown | unverified | n/a | `0xffe7062de1943a3cbc695d50b186d277b6b0b048` |
| metis | unverified unclassified | UnnamedContract<br>`0x281ed5793887d293561c1d49338cb1e20bfa3bba` | non_address_book | unknown | unknown | unverified | n/a | `0xffe7062de1943a3cbc695d50b186d277b6b0b048` |
| metis | unverified unclassified | UnnamedContract<br>`0x28227ef5c66853630d3cef0226481c32811f970d` | non_address_book | unknown | unknown | unverified | n/a | `0xffe7062de1943a3cbc695d50b186d277b6b0b048` |
| metis | unverified unclassified | UnnamedContract<br>`0x291a4df654fafa349616231124cd0d12a4acc63d` | non_address_book | unknown | unknown | unverified | n/a | `0xffe7062de1943a3cbc695d50b186d277b6b0b048` |
| metis | unverified unclassified | UnnamedContract<br>`0x2a33c5a305cc11cbb170b629558b9fe8fb2ca49f` | non_address_book | unknown | unknown | unverified | n/a | `0xffe7062de1943a3cbc695d50b186d277b6b0b048` |
| metis | unverified unclassified | UnnamedContract<br>`0x2aa7c6c29c7c008eb967234e908f4701376d1b55` | non_address_book | unknown | unknown | unverified | n/a | `0xffe7062de1943a3cbc695d50b186d277b6b0b048` |
| metis | unverified unclassified | UnnamedContract<br>`0x2d6b48afc59b0b2b8ec1fffc54e6c12513479efa` | non_address_book | unknown | unknown | unverified | n/a | `0xffe7062de1943a3cbc695d50b186d277b6b0b048` |
| metis | unverified unclassified | UnnamedContract<br>`0x2d707e2a949bdbb8ed52492602ce17d4e1a5b788` | non_address_book | unknown | unknown | unverified | n/a | `0xffe7062de1943a3cbc695d50b186d277b6b0b048` |
| metis | unverified unclassified | UnnamedContract<br>`0x2fb84b1dc8c3ac78640aae425cb7cb91883f6bb7` | non_address_book | unknown | unknown | unverified | n/a | `0xffe7062de1943a3cbc695d50b186d277b6b0b048` |
| metis | unverified unclassified | UnnamedContract<br>`0x303723bfcb763399fae75e0d9be9f092c2843579` | non_address_book | unknown | unknown | unverified | n/a | `0xffe7062de1943a3cbc695d50b186d277b6b0b048` |
| metis | unverified unclassified | UnnamedContract<br>`0x30828848cb722344ae39aca32916e1559c8fa00d` | non_address_book | unknown | unknown | unverified | n/a | `0xffe7062de1943a3cbc695d50b186d277b6b0b048` |
| metis | unverified unclassified | UnnamedContract<br>`0x31900ba382abd35d3c505cd852f36c68056bf581` | non_address_book | unknown | unknown | unverified | n/a | `0xffe7062de1943a3cbc695d50b186d277b6b0b048` |
| metis | unverified unclassified | UnnamedContract<br>`0x32c8f6f0201941334354a89581d0ead5d39072cf` | non_address_book | unknown | unknown | unverified | n/a | `0xffe7062de1943a3cbc695d50b186d277b6b0b048` |
| metis | unverified unclassified | UnnamedContract<br>`0x33983d8f95f6ba32c22262c09ebb58bc8eb18098` | non_address_book | unknown | unknown | unverified | n/a | `0xffe7062de1943a3cbc695d50b186d277b6b0b048` |
| metis | unverified unclassified | UnnamedContract<br>`0x351d8c2e2ad98fa4d2bf50450f5d82ac639dca4c` | non_address_book | unknown | unknown | unverified | n/a | `0xffe7062de1943a3cbc695d50b186d277b6b0b048` |
| metis | unverified unclassified | UnnamedContract<br>`0x35472e1d1528810739b4e7b7ae8236dfcaf62dd4` | non_address_book | unknown | unknown | unverified | n/a | `0xffe7062de1943a3cbc695d50b186d277b6b0b048` |
| metis | unverified unclassified | UnnamedContract<br>`0x35d9ace286cd1c2fe9bb79618d8d098bcb8ee5f8` | non_address_book | unknown | unknown | unverified | n/a | `0xffe7062de1943a3cbc695d50b186d277b6b0b048` |
| metis | unverified unclassified | UnnamedContract<br>`0x375b9ff274927db9061b637f2a4ab0892fe3b890` | non_address_book | unknown | unknown | unverified | n/a | `0xffe7062de1943a3cbc695d50b186d277b6b0b048` |
| metis | unverified unclassified | UnnamedContract<br>`0x3842a9d123729e83867f631b821eb068100f399d` | non_address_book | unknown | unknown | unverified | n/a | `0xffe7062de1943a3cbc695d50b186d277b6b0b048` |
| metis | unverified unclassified | UnnamedContract<br>`0x39084557e50c05bbc4d5e88699687263445882db` | non_address_book | unknown | unknown | unverified | n/a | `0xffe7062de1943a3cbc695d50b186d277b6b0b048` |
| metis | unverified unclassified | UnnamedContract<br>`0x3a03c2b8ad021e3fc665a790312804dc79761f31` | non_address_book | unknown | unknown | unverified | n/a | `0xffe7062de1943a3cbc695d50b186d277b6b0b048` |
| metis | unverified unclassified | UnnamedContract<br>`0x3a1c3b04f4bd048911e3f346e9182b29cd82a8c0` | non_address_book | unknown | unknown | unverified | n/a | `0xffe7062de1943a3cbc695d50b186d277b6b0b048` |
| metis | unverified unclassified | UnnamedContract<br>`0x3acfb73e2b0acc3587b630fa5e9c5cd843a205d8` | non_address_book | unknown | unknown | unverified | n/a | `0xffe7062de1943a3cbc695d50b186d277b6b0b048` |
| metis | unverified unclassified | UnnamedContract<br>`0x3b9a54f53701f0e04e544b456a073edb44bbf7a1` | non_address_book | unknown | unknown | unverified | n/a | `0xffe7062de1943a3cbc695d50b186d277b6b0b048` |
| metis | unverified unclassified | UnnamedContract<br>`0x3c8a8e8a44e09c6c4a4b17c665bce31d04471783` | non_address_book | unknown | unknown | unverified | n/a | `0xffe7062de1943a3cbc695d50b186d277b6b0b048` |
| metis | unverified unclassified | UnnamedContract<br>`0x3d1e83b94caec89d6d33815c61a08f6d3c8aaa7a` | non_address_book | unknown | unknown | unverified | n/a | `0xffe7062de1943a3cbc695d50b186d277b6b0b048` |
| metis | unverified unclassified | UnnamedContract<br>`0x3e3c36f0dc051bf03d3fdc1e83e2680b46e73f2e` | non_address_book | unknown | unknown | unverified | n/a | `0xffe7062de1943a3cbc695d50b186d277b6b0b048` |
| metis | unverified unclassified | UnnamedContract<br>`0x43584e5a639cb1191c4fa64e7229eba66832a80d` | non_address_book | unknown | unknown | unverified | n/a | `0xffe7062de1943a3cbc695d50b186d277b6b0b048` |
| metis | unverified unclassified | UnnamedContract<br>`0x451b18ae22f47b5014ffff9e9ff37c5add0ce3d2` | non_address_book | unknown | unknown | unverified | n/a | `0xffe7062de1943a3cbc695d50b186d277b6b0b048` |
| metis | unverified unclassified | UnnamedContract<br>`0x46a003d8386f12cc37e80568dda9d2522adb9bde` | non_address_book | unknown | unknown | unverified | n/a | `0xffe7062de1943a3cbc695d50b186d277b6b0b048` |
| metis | unverified unclassified | UnnamedContract<br>`0x4885a2f07e823ad70e6d3739368a35efcd15d25c` | non_address_book | unknown | unknown | unverified | n/a | `0xffe7062de1943a3cbc695d50b186d277b6b0b048` |
| metis | unverified unclassified | UnnamedContract<br>`0x48aed441db59c94de3a078ee820da54105249570` | non_address_book | unknown | unknown | unverified | n/a | `0xffe7062de1943a3cbc695d50b186d277b6b0b048` |
| metis | unverified unclassified | UnnamedContract<br>`0x4956cd9072a9d7726ab7cc37257ef01ce94e1ffb` | non_address_book | unknown | unknown | unverified | n/a | `0xffe7062de1943a3cbc695d50b186d277b6b0b048` |
| metis | unverified unclassified | UnnamedContract<br>`0x4c478f463ec2b8ebd46b39fe7c0d2ff3d17c57f2` | non_address_book | unknown | unknown | unverified | n/a | `0xffe7062de1943a3cbc695d50b186d277b6b0b048` |
| metis | unverified unclassified | UnnamedContract<br>`0x4e162c34ca53701af8d5b138136e0a0308d1c7cf` | non_address_book | unknown | unknown | unverified | n/a | `0xffe7062de1943a3cbc695d50b186d277b6b0b048` |
| metis | unverified unclassified | UnnamedContract<br>`0x522acabcc3e19cbb05066e20d4a8ca59b15abd16` | non_address_book | unknown | unknown | unverified | n/a | `0xffe7062de1943a3cbc695d50b186d277b6b0b048` |
| metis | unverified unclassified | UnnamedContract<br>`0x52f772d8c56f5636a74ef66f89036199974520e6` | non_address_book | unknown | unknown | unverified | n/a | `0xffe7062de1943a3cbc695d50b186d277b6b0b048` |
| metis | unverified unclassified | UnnamedContract<br>`0x532435a55d8df5685b9f1b329245b1bbd461d3f1` | non_address_book | unknown | unknown | unverified | n/a | `0xffe7062de1943a3cbc695d50b186d277b6b0b048` |
| metis | unverified unclassified | UnnamedContract<br>`0x5564870f1bce99bbc1bc46b11bc3e6cbb2b9c987` | non_address_book | unknown | unknown | unverified | n/a | `0xffe7062de1943a3cbc695d50b186d277b6b0b048` |
| metis | unverified unclassified | UnnamedContract<br>`0x556ca216899f48199c7b82ec8c4b8f4d9f98a692` | non_address_book | unknown | unknown | unverified | n/a | `0xffe7062de1943a3cbc695d50b186d277b6b0b048` |
| metis | unverified unclassified | UnnamedContract<br>`0x56200976b8383802307831b9b261750f1f9f9173` | non_address_book | unknown | unknown | unverified | n/a | `0xffe7062de1943a3cbc695d50b186d277b6b0b048` |
| metis | unverified unclassified | UnnamedContract<br>`0x57dd2f66dfcbee66328a45f44842708af9d6fbcd` | non_address_book | unknown | unknown | unverified | n/a | `0xffe7062de1943a3cbc695d50b186d277b6b0b048` |
| metis | unverified unclassified | UnnamedContract<br>`0x5a442c01f34d2135fe4c90de54c56a1523861a4d` | non_address_book | unknown | unknown | unverified | n/a | `0xffe7062de1943a3cbc695d50b186d277b6b0b048` |
| metis | unverified unclassified | UnnamedContract<br>`0x5ad67ad3e865cd61ed65d1869abe72a6100ec35e` | non_address_book | unknown | unknown | unverified | n/a | `0xffe7062de1943a3cbc695d50b186d277b6b0b048` |
| metis | unverified unclassified | UnnamedContract<br>`0x5b60aa059574f7ee0d997224843d56d015788077` | non_address_book | unknown | unknown | unverified | n/a | `0xffe7062de1943a3cbc695d50b186d277b6b0b048` |
| metis | unverified unclassified | UnnamedContract<br>`0x5e6c9f1ae15387260464804c0680f306b1dc6bd3` | non_address_book | unknown | unknown | unverified | n/a | `0xffe7062de1943a3cbc695d50b186d277b6b0b048` |
| metis | unverified unclassified | UnnamedContract<br>`0x60466868b0d038a1dc778b070e96240f93514f2f` | non_address_book | unknown | unknown | unverified | n/a | `0xffe7062de1943a3cbc695d50b186d277b6b0b048` |
| metis | unverified unclassified | UnnamedContract<br>`0x6059be165ce710a986a52f1fd3a26adc23e6a4ca` | non_address_book | unknown | unknown | unverified | n/a | `0xffe7062de1943a3cbc695d50b186d277b6b0b048` |
| metis | unverified unclassified | UnnamedContract<br>`0x620633fd248a19eb625a6d697c0146e377d5294a` | non_address_book | unknown | unknown | unverified | n/a | `0xffe7062de1943a3cbc695d50b186d277b6b0b048` |
| metis | unverified unclassified | UnnamedContract<br>`0x63ffc95a37fe7fa86e7757deabe8758a98f5f9fc` | non_address_book | unknown | unknown | unverified | n/a | `0xffe7062de1943a3cbc695d50b186d277b6b0b048` |
| metis | unverified unclassified | UnnamedContract<br>`0x645f298be6659a5bd73a4894402d646cb29e129d` | non_address_book | unknown | unknown | unverified | n/a | `0xffe7062de1943a3cbc695d50b186d277b6b0b048` |
| metis | unverified unclassified | UnnamedContract<br>`0x669f986edb6649c39b8579ff3a700bf43181075b` | non_address_book | unknown | unknown | unverified | n/a | `0xffe7062de1943a3cbc695d50b186d277b6b0b048` |
| metis | unverified unclassified | UnnamedContract<br>`0x6704bdb2592145df40a04770e12f4f27e75c530e` | non_address_book | unknown | unknown | unverified | n/a | `0xffe7062de1943a3cbc695d50b186d277b6b0b048` |
| metis | unverified unclassified | UnnamedContract<br>`0x67500ff2389fac61b58cd05dbc4177e010282f33` | non_address_book | unknown | unknown | unverified | n/a | `0xffe7062de1943a3cbc695d50b186d277b6b0b048` |
| metis | unverified unclassified | UnnamedContract<br>`0x6758013ff4bc50eed13346e2dca8701ff108540e` | non_address_book | unknown | unknown | unverified | n/a | `0xffe7062de1943a3cbc695d50b186d277b6b0b048` |
| metis | unverified unclassified | UnnamedContract<br>`0x68e736e4e989c5916c51a6ba643637ba5231e036` | non_address_book | unknown | unknown | unverified | n/a | `0xffe7062de1943a3cbc695d50b186d277b6b0b048` |
| metis | unverified unclassified | UnnamedContract<br>`0x6ab9e9bdd3680a37e0df0b3ecbb75ad705c95fed` | non_address_book | unknown | unknown | unverified | n/a | `0xffe7062de1943a3cbc695d50b186d277b6b0b048` |
| metis | unverified unclassified | UnnamedContract<br>`0x6adf666c0f05481c42f33d099d6fd7f1db585dbe` | non_address_book | unknown | unknown | unverified | n/a | `0xffe7062de1943a3cbc695d50b186d277b6b0b048` |
| metis | unverified unclassified | UnnamedContract<br>`0x6b7430aa7501826db549c2f2dc13dcdfb86b2669` | non_address_book | unknown | unknown | unverified | n/a | `0xffe7062de1943a3cbc695d50b186d277b6b0b048` |
| metis | unverified unclassified | UnnamedContract<br>`0x6b862d1ef67ea066376a3381b24cfc6c3a09d8ca` | non_address_book | unknown | unknown | unverified | n/a | `0xffe7062de1943a3cbc695d50b186d277b6b0b048` |
| metis | unverified unclassified | UnnamedContract<br>`0x6bc4f884877cb5fa2ce1a85ef3c0203908bd74da` | non_address_book | unknown | unknown | unverified | n/a | `0xffe7062de1943a3cbc695d50b186d277b6b0b048` |
| metis | unverified unclassified | UnnamedContract<br>`0x6c1875c0a5793e956be1021135a87f268e0716a3` | non_address_book | unknown | unknown | unverified | n/a | `0xffe7062de1943a3cbc695d50b186d277b6b0b048` |
| metis | unverified unclassified | UnnamedContract<br>`0x6dc9bb1f8c75ce7441edbfcdcd6fbaf3122e93d3` | non_address_book | unknown | unknown | unverified | n/a | `0xffe7062de1943a3cbc695d50b186d277b6b0b048` |
| metis | unverified unclassified | UnnamedContract<br>`0x6e50040323ce0bb3fbbcd7fab4437d62b244a95d` | non_address_book | unknown | unknown | unverified | n/a | `0xffe7062de1943a3cbc695d50b186d277b6b0b048` |
| metis | unverified unclassified | UnnamedContract<br>`0x6f5e6bd1439f9361639ff9b8719e075eb69bb5a0` | non_address_book | unknown | unknown | unverified | n/a | `0xffe7062de1943a3cbc695d50b186d277b6b0b048` |
| metis | unverified unclassified | UnnamedContract<br>`0x750a6bae39b77a612600957212390fcd0c6752e3` | non_address_book | unknown | unknown | unverified | n/a | `0xffe7062de1943a3cbc695d50b186d277b6b0b048` |
| metis | unverified unclassified | UnnamedContract<br>`0x759d9a5fc802d969fad9a51f12a2cde885fcfa25` | non_address_book | unknown | unknown | unverified | n/a | `0xffe7062de1943a3cbc695d50b186d277b6b0b048` |
| metis | unverified unclassified | UnnamedContract<br>`0x76a7063989e671fd09f44ba37e624a909ce70b3b` | non_address_book | unknown | unknown | unverified | n/a | `0xffe7062de1943a3cbc695d50b186d277b6b0b048` |
| metis | unverified unclassified | UnnamedContract<br>`0x79393e83b864205ea0101f1cec6d0de07bd3a663` | non_address_book | unknown | unknown | unverified | n/a | `0xffe7062de1943a3cbc695d50b186d277b6b0b048` |
| metis | unverified unclassified | UnnamedContract<br>`0x7b009be9c184fb613ee884ad323e64b66cfdb58a` | non_address_book | unknown | unknown | unverified | n/a | `0xffe7062de1943a3cbc695d50b186d277b6b0b048` |
| metis | unverified unclassified | UnnamedContract<br>`0x7dbdf119ee7c931b532694f4de35fd00c78e421c` | non_address_book | unknown | unknown | unverified | n/a | `0xffe7062de1943a3cbc695d50b186d277b6b0b048` |
| metis | unverified unclassified | UnnamedContract<br>`0x7ec835315497c8f7530d37bc9c3da0d1930ac1cb` | non_address_book | unknown | unknown | unverified | n/a | `0xffe7062de1943a3cbc695d50b186d277b6b0b048` |
| metis | unverified unclassified | UnnamedContract<br>`0x8272fe0ad8910c3b733f767b0b552ed2ee3ba1e8` | non_address_book | unknown | unknown | unverified | n/a | `0xffe7062de1943a3cbc695d50b186d277b6b0b048` |
| metis | unverified unclassified | UnnamedContract<br>`0x83a9580cccd67273abd9ada9a072e478875539ca` | non_address_book | unknown | unknown | unverified | n/a | `0xffe7062de1943a3cbc695d50b186d277b6b0b048` |
| metis | unverified unclassified | UnnamedContract<br>`0x8508cd4dda8ac7062304c1994124a6ed4b2939a0` | non_address_book | unknown | unknown | unverified | n/a | `0xffe7062de1943a3cbc695d50b186d277b6b0b048` |
| metis | unverified unclassified | UnnamedContract<br>`0x852beab5a779bcb48fd7358f0fe052ce09352223` | non_address_book | unknown | unknown | unverified | n/a | `0xffe7062de1943a3cbc695d50b186d277b6b0b048` |
| metis | unverified unclassified | UnnamedContract<br>`0x863077c2ba3e1c728dfe9257ad25f6a5a1e9b57c` | non_address_book | unknown | unknown | unverified | n/a | `0xffe7062de1943a3cbc695d50b186d277b6b0b048` |
| metis | unverified unclassified | UnnamedContract<br>`0x865ec7064befcfdaf2ee25caffd5a68b48b7778b` | non_address_book | unknown | unknown | unverified | n/a | `0xffe7062de1943a3cbc695d50b186d277b6b0b048` |
| metis | unverified unclassified | UnnamedContract<br>`0x869e995c715c42a538b6045f7b1ead5484f638af` | non_address_book | unknown | unknown | unverified | n/a | `0xffe7062de1943a3cbc695d50b186d277b6b0b048` |
| metis | unverified unclassified | UnnamedContract<br>`0x89c6acdd480ebebe465bf1dff10bb3a7abf4f7fc` | non_address_book | unknown | unknown | unverified | n/a | `0xffe7062de1943a3cbc695d50b186d277b6b0b048` |
| metis | unverified unclassified | UnnamedContract<br>`0x89e3604b167a6e1ebfc6259a26ab068e627e1a5b` | non_address_book | unknown | unknown | unverified | n/a | `0xffe7062de1943a3cbc695d50b186d277b6b0b048` |
| metis | unverified unclassified | UnnamedContract<br>`0x8a43e898c00c55ce5b640e8153eea23063bbc7c9` | non_address_book | unknown | unknown | unverified | n/a | `0xffe7062de1943a3cbc695d50b186d277b6b0b048` |
| metis | unverified unclassified | UnnamedContract<br>`0x8a48cad2b9f25a8854e9316da307e27ec2a2430c` | non_address_book | unknown | unknown | unverified | n/a | `0xffe7062de1943a3cbc695d50b186d277b6b0b048` |
| metis | unverified unclassified | UnnamedContract<br>`0x8a4d9e7b6f484e8e2db0f12cd4c3d4de9cee76b2` | non_address_book | unknown | unknown | unverified | n/a | `0xffe7062de1943a3cbc695d50b186d277b6b0b048` |
| metis | unverified unclassified | UnnamedContract<br>`0x8a719ee29e60b75638ebbb3edbc5ffb95ffddda8` | non_address_book | unknown | unknown | unverified | n/a | `0xffe7062de1943a3cbc695d50b186d277b6b0b048` |
| metis | unverified unclassified | UnnamedContract<br>`0x8a8201d1cd5237bbabf059c5282c0774ee9509af` | non_address_book | unknown | unknown | unverified | n/a | `0xffe7062de1943a3cbc695d50b186d277b6b0b048` |
| metis | unverified unclassified | UnnamedContract<br>`0x8aa628247d62f82ae5a7f1fd30e1d3238e290cf0` | non_address_book | unknown | unknown | unverified | n/a | `0xffe7062de1943a3cbc695d50b186d277b6b0b048` |
| metis | unverified unclassified | UnnamedContract<br>`0x8b35ff47b5b8591c4a070546f810207c5f7d1663` | non_address_book | unknown | unknown | unverified | n/a | `0xffe7062de1943a3cbc695d50b186d277b6b0b048` |
| metis | unverified unclassified | UnnamedContract<br>`0x8cb26519e57cc93a0ddbf545f3507b1123dc3c98` | non_address_book | unknown | unknown | unverified | n/a | `0xffe7062de1943a3cbc695d50b186d277b6b0b048` |
| metis | unverified unclassified | UnnamedContract<br>`0x8d0b76ebd19f5f954834c83c1331bf1fd4a337df` | non_address_book | unknown | unknown | unverified | n/a | `0xffe7062de1943a3cbc695d50b186d277b6b0b048` |
| metis | unverified unclassified | UnnamedContract<br>`0x8d19926e2994c814f85096fd0e08c35799266f5b` | non_address_book | unknown | unknown | unverified | n/a | `0xffe7062de1943a3cbc695d50b186d277b6b0b048` |
| metis | unverified unclassified | UnnamedContract<br>`0x8fed60b4d1c43aa99e614522ebc1764fde446a32` | non_address_book | unknown | unknown | unverified | n/a | `0xffe7062de1943a3cbc695d50b186d277b6b0b048` |
| metis | unverified unclassified | UnnamedContract<br>`0x9177b3264808746bca4f02b55402e14c0b701ef0` | non_address_book | unknown | unknown | unverified | n/a | `0xffe7062de1943a3cbc695d50b186d277b6b0b048` |
| metis | unverified unclassified | UnnamedContract<br>`0x9341ed4cfc042da1ec60aebc4596edcc12a0b95b` | non_address_book | unknown | unknown | unverified | n/a | `0xffe7062de1943a3cbc695d50b186d277b6b0b048` |
| metis | unverified unclassified | UnnamedContract<br>`0x93bf91c83b55c4daa37c4b3e9a6e6f9770de56f0` | non_address_book | unknown | unknown | unverified | n/a | `0xffe7062de1943a3cbc695d50b186d277b6b0b048` |
| metis | unverified unclassified | UnnamedContract<br>`0x94317d3ac91e10f71e0c6023e3d1bffc2e9947c6` | non_address_book | unknown | unknown | unverified | n/a | `0xffe7062de1943a3cbc695d50b186d277b6b0b048` |
| metis | unverified unclassified | UnnamedContract<br>`0x9453008f6ecdf51004e64d79afadf19dbb05186a` | non_address_book | unknown | unknown | unverified | n/a | `0xffe7062de1943a3cbc695d50b186d277b6b0b048` |
| metis | unverified unclassified | UnnamedContract<br>`0x948e1e737cb26f15a37559e1281585d10b45e9e8` | non_address_book | unknown | unknown | unverified | n/a | `0xffe7062de1943a3cbc695d50b186d277b6b0b048` |
| metis | unverified unclassified | UnnamedContract<br>`0x949ba06a0ab415ecacfafd6ae4eb070563e7e16c` | non_address_book | unknown | unknown | unverified | n/a | `0xffe7062de1943a3cbc695d50b186d277b6b0b048` |
| metis | unverified unclassified | UnnamedContract<br>`0x94fbfb522451bf8bd1768094585972242e59ec36` | non_address_book | unknown | unknown | unverified | n/a | `0xffe7062de1943a3cbc695d50b186d277b6b0b048` |
| metis | unverified unclassified | UnnamedContract<br>`0x962d67b56c28bba4ed75390869d5d3dc9e72eb4d` | non_address_book | unknown | unknown | unverified | n/a | `0xffe7062de1943a3cbc695d50b186d277b6b0b048` |
| metis | unverified unclassified | UnnamedContract<br>`0x96b0104e7018eb1f4f909ba77938993c5a7b63e5` | non_address_book | unknown | unknown | unverified | n/a | `0xffe7062de1943a3cbc695d50b186d277b6b0b048` |
| metis | unverified unclassified | UnnamedContract<br>`0x979424097a64a189f8418a3d5316069f965279e1` | non_address_book | unknown | unknown | unverified | n/a | `0xffe7062de1943a3cbc695d50b186d277b6b0b048` |
| metis | unverified unclassified | UnnamedContract<br>`0x982d8011f543294beb135e8b9c1e131fdd883c6a` | non_address_book | unknown | unknown | unverified | n/a | `0xffe7062de1943a3cbc695d50b186d277b6b0b048` |
| metis | unverified unclassified | UnnamedContract<br>`0x98b88947c001906446950cc71ec175465d724b70` | non_address_book | unknown | unknown | unverified | n/a | `0xffe7062de1943a3cbc695d50b186d277b6b0b048` |
| metis | unverified unclassified | UnnamedContract<br>`0x99d5079dc621c949cabe3642390cb48f3ea80aa6` | non_address_book | unknown | unknown | unverified | n/a | `0xffe7062de1943a3cbc695d50b186d277b6b0b048` |
| metis | unverified unclassified | UnnamedContract<br>`0x9cebef712a495145719d638ebc66256f117d503c` | non_address_book | unknown | unknown | unverified | n/a | `0xffe7062de1943a3cbc695d50b186d277b6b0b048` |
| metis | unverified unclassified | UnnamedContract<br>`0xa037dd857e94071442b4b6dd9dc53e48ffbb9334` | non_address_book | unknown | unknown | unverified | n/a | `0xffe7062de1943a3cbc695d50b186d277b6b0b048` |
| metis | unverified unclassified | UnnamedContract<br>`0xa0cf237e61dfa08fcd3786baad7d4acf0321518c` | non_address_book | unknown | unknown | unverified | n/a | `0xffe7062de1943a3cbc695d50b186d277b6b0b048` |
| metis | unverified unclassified | UnnamedContract<br>`0xa0e8ec1cce3fb97e87c68ce860d76c4257100713` | non_address_book | unknown | unknown | unverified | n/a | `0xffe7062de1943a3cbc695d50b186d277b6b0b048` |
| metis | unverified unclassified | UnnamedContract<br>`0xa1e555d1f21e2f43ecaa74b88ece6edb87a2f0d9` | non_address_book | unknown | unknown | unverified | n/a | `0xffe7062de1943a3cbc695d50b186d277b6b0b048` |
| metis | unverified unclassified | UnnamedContract<br>`0xa2b8c717e8ab4d681050e905fa6580a456099c1e` | non_address_book | unknown | unknown | unverified | n/a | `0xffe7062de1943a3cbc695d50b186d277b6b0b048` |
| metis | unverified unclassified | UnnamedContract<br>`0xa305a9cca008731ae674414597ffaff4dfac2f88` | non_address_book | unknown | unknown | unverified | n/a | `0xffe7062de1943a3cbc695d50b186d277b6b0b048` |
| metis | unverified unclassified | UnnamedContract<br>`0xa4061c2dc1ef051a1b713716379d8aacde6ac6df` | non_address_book | unknown | unknown | unverified | n/a | `0xffe7062de1943a3cbc695d50b186d277b6b0b048` |
| metis | unverified unclassified | UnnamedContract<br>`0xa4a052a9c731dee314d4f112aecb30c91a7a1ab6` | non_address_book | unknown | unknown | unverified | n/a | `0xffe7062de1943a3cbc695d50b186d277b6b0b048` |
| metis | unverified unclassified | UnnamedContract<br>`0xa6d7e4884237b56293b5bac0db7b489290083b5a` | non_address_book | unknown | unknown | unverified | n/a | `0xffe7062de1943a3cbc695d50b186d277b6b0b048` |
| metis | unverified unclassified | UnnamedContract<br>`0xa73ea8aa541954631bfd4b2c0d46fe44f1487cdc` | non_address_book | unknown | unknown | unverified | n/a | `0xffe7062de1943a3cbc695d50b186d277b6b0b048` |
| metis | unverified unclassified | UnnamedContract<br>`0xa77956d4ffaea326912ad77d83c1322f21c8ebac` | non_address_book | unknown | unknown | unverified | n/a | `0xffe7062de1943a3cbc695d50b186d277b6b0b048` |
| metis | unverified unclassified | UnnamedContract<br>`0xa8266628f6f6d9037e2aaa4183947b99f522b731` | non_address_book | unknown | unknown | unverified | n/a | `0xffe7062de1943a3cbc695d50b186d277b6b0b048` |
| metis | unverified unclassified | UnnamedContract<br>`0xa8cde80b9004ebca2a7540e08214d203258499e1` | non_address_book | unknown | unknown | unverified | n/a | `0xffe7062de1943a3cbc695d50b186d277b6b0b048` |
| metis | unverified unclassified | UnnamedContract<br>`0xaa604f46d1b983e39937551d4880aa50a2655517` | non_address_book | unknown | unknown | unverified | n/a | `0xffe7062de1943a3cbc695d50b186d277b6b0b048` |
| metis | unverified unclassified | UnnamedContract<br>`0xab61ea1017edd4a4d26dcd9b04a6fbdd527d34f3` | non_address_book | unknown | unknown | unverified | n/a | `0xffe7062de1943a3cbc695d50b186d277b6b0b048` |
| metis | unverified unclassified | UnnamedContract<br>`0xae8f71ea4676bb219f2c20ea811d2cc02069fd2d` | non_address_book | unknown | unknown | unverified | n/a | `0xffe7062de1943a3cbc695d50b186d277b6b0b048` |
| metis | unverified unclassified | UnnamedContract<br>`0xaefbc58c5e22124a9c35a2a66c8acaafd87d891b` | non_address_book | unknown | unknown | unverified | n/a | `0xffe7062de1943a3cbc695d50b186d277b6b0b048` |
| metis | unverified unclassified | UnnamedContract<br>`0xafcec40051d9c8f3d5cafae23f3f86ea352c2520` | non_address_book | unknown | unknown | unverified | n/a | `0xffe7062de1943a3cbc695d50b186d277b6b0b048` |
| metis | unverified unclassified | UnnamedContract<br>`0xb0f82ba786fbb75b038315696de63be97e21b23a` | non_address_book | unknown | unknown | unverified | n/a | `0xffe7062de1943a3cbc695d50b186d277b6b0b048` |
| metis | unverified unclassified | UnnamedContract<br>`0xb2b5e410b7d5f9af0c2a8931d06ea3b0eb9568d1` | non_address_book | unknown | unknown | unverified | n/a | `0xffe7062de1943a3cbc695d50b186d277b6b0b048` |
| metis | unverified unclassified | UnnamedContract<br>`0xb656040d20e97b25ec12c46f8495108f4b3863bd` | non_address_book | unknown | unknown | unverified | n/a | `0xffe7062de1943a3cbc695d50b186d277b6b0b048` |
| metis | unverified unclassified | UnnamedContract<br>`0xb6756e07765fa0a6235029830d2eeed75640dbd0` | non_address_book | unknown | unknown | unverified | n/a | `0xffe7062de1943a3cbc695d50b186d277b6b0b048` |
| metis | unverified unclassified | UnnamedContract<br>`0xb8379eb2179588e2249468ee534798c990edc16b` | non_address_book | unknown | unknown | unverified | n/a | `0xffe7062de1943a3cbc695d50b186d277b6b0b048` |
| metis | unverified unclassified | UnnamedContract<br>`0xb91a44e1cc8389ddc296d84d16714aab848424ed` | non_address_book | unknown | unknown | unverified | n/a | `0xffe7062de1943a3cbc695d50b186d277b6b0b048` |
| metis | unverified unclassified | UnnamedContract<br>`0xb9ed423b9d03c9d7899987b0f9d8c14dbbd15a15` | non_address_book | unknown | unknown | unverified | n/a | `0xffe7062de1943a3cbc695d50b186d277b6b0b048` |
| metis | unverified unclassified | UnnamedContract<br>`0xbc493f59613ab874cfacd5836902e8751d121226` | non_address_book | unknown | unknown | unverified | n/a | `0xffe7062de1943a3cbc695d50b186d277b6b0b048` |
| metis | unverified unclassified | UnnamedContract<br>`0xbdd07e7fc82b814535789b8a269897eddcc84dbf` | non_address_book | unknown | unknown | unverified | n/a | `0xffe7062de1943a3cbc695d50b186d277b6b0b048` |
| metis | unverified unclassified | UnnamedContract<br>`0xbe705e41c3bbbc83d88f0677845d1728fd60399a` | non_address_book | unknown | unknown | unverified | n/a | `0xffe7062de1943a3cbc695d50b186d277b6b0b048` |
| metis | unverified unclassified | UnnamedContract<br>`0xc06a30b9ae624ec31cb1fd3f44bcac42d4bb988a` | non_address_book | unknown | unknown | unverified | n/a | `0xffe7062de1943a3cbc695d50b186d277b6b0b048` |
| metis | unverified unclassified | UnnamedContract<br>`0xc279ce1e334beb3c81d37648e432d527b61d8847` | non_address_book | unknown | unknown | unverified | n/a | `0xffe7062de1943a3cbc695d50b186d277b6b0b048` |
| metis | unverified unclassified | UnnamedContract<br>`0xc27dd4030a59556d6d5e4e18dfacea23510d30fe` | non_address_book | unknown | unknown | unverified | n/a | `0xffe7062de1943a3cbc695d50b186d277b6b0b048` |
| metis | unverified unclassified | UnnamedContract<br>`0xc323afeeeff855e8a43e17fb9536230df164bf24` | non_address_book | unknown | unknown | unverified | n/a | `0xffe7062de1943a3cbc695d50b186d277b6b0b048` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [spaces/RPd6E8y8uIj9QOgICwhl/uploads/AYXuPbqH2kInNyfTsUcv/Hera-AggregatorV2_audit-report.pdf](https://468680357-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FRPd6E8y8uIj9QOgICwhl%2Fuploads%2FAYXuPbqH2kInNyfTsUcv%2FHera-AggregatorV2_audit-report.pdf) | HashEx | Audit | 2022-10 | stale | Direct | address | matched | 3 | 0 | 0 | 7 | high |
| [spaces/RPd6E8y8uIj9QOgICwhl/uploads/UXpADKAVfIgit4tFsFbq/Hera Aggregatorv1_audit.pdf](https://468680357-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FRPd6E8y8uIj9QOgICwhl%2Fuploads%2FUXpADKAVfIgit4tFsFbq%2FHera%20Aggregatorv1_audit.pdf) | unknown | Audit | 2022-03 | stale | Direct | n/a | matched | 1 | 0 | 0 | 0 | n/a |
| [spaces/RPd6E8y8uIj9QOgICwhl/uploads/mILY1xtqsQZdQO7FcOjW/Hera Fee Organizer_audit.pdf](https://468680357-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FRPd6E8y8uIj9QOgICwhl%2Fuploads%2FmILY1xtqsQZdQO7FcOjW%2FHera%20Fee%20Organizer_audit.pdf) | unknown | Audit | 2022-03 | stale | Direct | n/a | no match | 0 | 0 | 0 | 1 | n/a |
| [Audits](https://docs.hera.finance/general/audits.md) | unknown | Audit | n/a | unknown | Direct | contract_name | matched | 1 | 0 | 0 | 4 | medium |
| [hashex.org/audits/conducted-audits/319](https://hashex.org/audits/hera-aggregatorv2) | HashEx | Audit | 2022-10 | stale | Direct | address | matched | 2 | 0 | 0 | 8 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [2409] spaces/RPd6E8y8uIj9QOgICwhl/uploads/AYXuPbqH2kInNyfTsUcv/Hera-AggregatorV2_audit-report.pdf — matched: Contracts in scope are listed in section 2.2 (Contracts) and section 4 (Contracts). The audit date is October 2022, mapped to last day of month.
- [2410] spaces/RPd6E8y8uIj9QOgICwhl/uploads/UXpADKAVfIgit4tFsFbq/Hera Aggregatorv1_audit.pdf — matched: No reason recorded
- [2411] spaces/RPd6E8y8uIj9QOgICwhl/uploads/mILY1xtqsQZdQO7FcOjW/Hera Fee Organizer_audit.pdf — no match: No reason recorded
- [27045] Audits — matched: Extracted contract names from the active audit section for Hera Aggregator V2. No date found in the provided text.
- [27048] hashex.org/audits/conducted-audits/319 — matched: Extracted from the 'Contracts Checked' section of the audit report. The report lists 10 contracts/interfaces in scope. The audit completion date is 11 Oct 2022.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| spaces/RPd6E8y8uIj9QOgICwhl/uploads/AYXuPbqH2kInNyfTsUcv/Hera-AggregatorV2_audit-report.pdf | HeraAggregatorV2 | ambiguous — not counted | HeraAggregatorV2 (alternative) `0x0000000000924fb1969e719eded2fed54afb183a` — deployed 2023-05-12 11:49:49+03 — liveness: live (current_address_book_code)<br>HeraAggregatorV2 (alternative) `0x0000000000924fb1969e719eded2fed54afb183a` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| spaces/RPd6E8y8uIj9QOgICwhl/uploads/AYXuPbqH2kInNyfTsUcv/Hera-AggregatorV2_audit-report.pdf | Queen | unmatched — not counted | — | listed in scope table and findings section C2 | no |
| spaces/RPd6E8y8uIj9QOgICwhl/uploads/AYXuPbqH2kInNyfTsUcv/Hera-AggregatorV2_audit-report.pdf | HeraExecutor | own contract | 0x852d1f… (selected) `0x852d1fdd3982d8e21145845af74db7ae37d1f383` — deployed 2022-10-13 16:40:18+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/RPd6E8y8uIj9QOgICwhl/uploads/AYXuPbqH2kInNyfTsUcv/Hera-AggregatorV2_audit-report.pdf | ExecutorManagement | unmatched — not counted | — | listed in scope table and findings section C4 | no |
| spaces/RPd6E8y8uIj9QOgICwhl/uploads/AYXuPbqH2kInNyfTsUcv/Hera-AggregatorV2_audit-report.pdf | HeraERC20 | unmatched — not counted | — | listed in scope table and findings section C5 | no |
| spaces/RPd6E8y8uIj9QOgICwhl/uploads/AYXuPbqH2kInNyfTsUcv/Hera-AggregatorV2_audit-report.pdf | HeraFeeSequencer | own contract | HeraFeeSequencer (selected) `0x000000fee322aaa0a5772e7f92de10180f9fab15` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/RPd6E8y8uIj9QOgICwhl/uploads/AYXuPbqH2kInNyfTsUcv/Hera-AggregatorV2_audit-report.pdf | RevertReasonParser | unmatched — not counted | — | listed in scope table and findings section C7 | no |
| spaces/RPd6E8y8uIj9QOgICwhl/uploads/AYXuPbqH2kInNyfTsUcv/Hera-AggregatorV2_audit-report.pdf | RevertReasonForwarder | unmatched — not counted | — | listed in scope table and findings section C8 | no |
| spaces/RPd6E8y8uIj9QOgICwhl/uploads/AYXuPbqH2kInNyfTsUcv/Hera-AggregatorV2_audit-report.pdf | StringUtil | unmatched — not counted | — | listed in scope table and findings section C9 | no |
| spaces/RPd6E8y8uIj9QOgICwhl/uploads/AYXuPbqH2kInNyfTsUcv/Hera-AggregatorV2_audit-report.pdf | HeraSecurity | own contract | HeraSecurity (selected) `0x6da6317e819d6a19c28f0a59291f85fb41b02225` — deployed 2022-10-05 15:45:18+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/RPd6E8y8uIj9QOgICwhl/uploads/UXpADKAVfIgit4tFsFbq/Hera Aggregatorv1_audit.pdf | HeraAggregatorV1 | own contract | HeraAggregatorV1 (selected) `0xafcb0803f96dc1e9768d14ce55b1a46b26deb24c` — deployed 2022-03-28 16:05:13+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/RPd6E8y8uIj9QOgICwhl/uploads/mILY1xtqsQZdQO7FcOjW/Hera Fee Organizer_audit.pdf | HeraFeeOrganizer | unmatched — not counted | — | — | no |
| Audits | HeraAggregatorV2 | ambiguous — not counted | HeraAggregatorV2 (alternative) `0x0000000000924fb1969e719eded2fed54afb183a` — deployed 2023-05-12 11:49:49+03 — liveness: live (current_address_book_code)<br>HeraAggregatorV2 (alternative) `0x0000000000924fb1969e719eded2fed54afb183a` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Audits | HeraFeeSequencer | own contract | HeraFeeSequencer (selected) `0x000000fee322aaa0a5772e7f92de10180f9fab15` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Audits | HeraExecutor | unmatched — not counted | — | listed as passed audit result | no |
| Audits | ExecutorManagement | unmatched — not counted | — | listed as passed audit result | no |
| Audits | Queen | unmatched — not counted | — | listed as passed audit result | no |
| hashex.org/audits/conducted-audits/319 | HeraAggregatorV2Proxy | ambiguous — not counted | HeraAggregatorV2 (alternative) `0x0000000000924fb1969e719eded2fed54afb183a` — deployed 2023-05-12 11:49:49+03 — liveness: live (current_address_book_code)<br>HeraAggregatorV2 (alternative) `0x0000000000924fb1969e719eded2fed54afb183a` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| hashex.org/audits/conducted-audits/319 | Queen | unmatched — not counted | — | listed in scope table | no |
| hashex.org/audits/conducted-audits/319 | HeraExecutorProxy | own contract | 0x852d1f… (selected) `0x852d1fdd3982d8e21145845af74db7ae37d1f383` — deployed 2022-10-13 16:40:18+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| hashex.org/audits/conducted-audits/319 | ExecutorManagement | unmatched — not counted | — | listed in scope table | no |
| hashex.org/audits/conducted-audits/319 | HeraERC20Library | unmatched — not counted | — | listed in scope table | no |
| hashex.org/audits/conducted-audits/319 | HeraFeeSequencer | own contract | HeraFeeSequencer (selected) `0x000000fee322aaa0a5772e7f92de10180f9fab15` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| hashex.org/audits/conducted-audits/319 | RevertReasonParserLibrary | unmatched — not counted | — | listed in scope table | no |
| hashex.org/audits/conducted-audits/319 | RevertReasonForwarderLibrary | unmatched — not counted | — | listed in scope table | no |
| hashex.org/audits/conducted-audits/319 | StringUtilLibrary | unmatched — not counted | — | listed in scope table | no |
| hashex.org/audits/conducted-audits/319 | HeraSecurityAuthorization | unmatched — not counted | — | listed in scope table | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| metis | `0x0000000000924fb1969e719eded2fed54afb183a` | HeraAggregatorV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x0000000000924fb1969e719eded2fed54afb183a` | HeraAggregatorV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| metis | `0x1a404ca2f355141eb9ef1d5fe872bfc8511f19e1` | HeraPublicSaleV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| metis | `0x6f05709bc91bad933346f9e159f0d3fdbc2c9dce` | HeraToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 12 |
| upstream | 1 |
| standard_library | 5 |
| needs_review | 270 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Address-book scope dispositions: 7 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 3 ambiguous, 17 unmatched
- Matched-own operational status: 7 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=2, medium=1
- Match method counts: address=4, unique_name=3

Zero-match audit list:

- [2411] spaces/RPd6E8y8uIj9QOgICwhl/uploads/mILY1xtqsQZdQO7FcOjW/Hera Fee Organizer_audit.pdf

Fork inheritance lineage and inherited audits are included when available.
