# Agentic Audit Brief: Frax Finance

## Export Authority

- Production state: **published scope**
- Raw selected rows: 6 across 4 audit(s)
- Eligible audit results: 20 (4 matched; 16 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Frax Finance (`frax-finance`)
- Website: [https://frax.com/](https://frax.com/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, aurora, avalanche, base, berachain, blast, bsc, ethereum, fantom, fraxtal, hyperliquid, ink, linea, mode, moonbeam, optimism, plasma, polygon, polygon-zkevm, scroll, sei, sonic, unichain, zksync-era
- Contract surface: 494 unique implementations (500 raw deployments)
- Coverage basis: 3/7 confirmed own live verified implementations (42.9%); conservative 42.9% with 0 needs-review implementation(s)
- DeFi Llama TVL: $283,527,119.51
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Frax Finance. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 7 contract row(s) across arbitrum, aurora, avalanche, base, berachain, blast, bsc, ethereum, fraxtal, hyperliquid, ink, linea, mode, optimism, plasma, polygon, polygon-zkevm, scroll, sei, sonic, unichain, zksync-era. Structural roles: 4 core, 2 unclassified, 1 infra. 1 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 7
- Structural roles: core (4), unclassified (2), infra (1)
- Contract kinds: contract (5), abstract (2)
- Detected standards: erc20 (4), accesscontrol (2), erc1967proxy (1)
- Frameworks: openzeppelin (5)
- Upgradeable-pattern rows: 1

## Fork Analysis

1 of 99 contracts are derived from known codebases. 98 contracts have no detected origin.

### Forked Contracts

**FRAXStablecoin** (`0x853d955acef822db058eb8505911ed77f175b99e`, chain 1)
Origin: alchemix (`0x853d955acef822db058eb8505911ed77f175b99e`)
Containment: 100.0% - 22 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x0132f1cc5844f08b05ced7084ff3df3a3b582d43`, chain 1)
- UnnamedContract (`0x04acaf8d2865c0714f79da09645c13fd2888977f`, chain 1)
- UnnamedContract (`0x111ddab65af5ff96b674400246699ed40f550de1`, chain 1)
- UnnamedContract (`0x11fe3be54ac01c13dd985ce2bdd10ed77e1376cc`, chain 1)
- UnnamedContract (`0x126bcc31bc076b3d515f60fbc81fdde0b0d542ed`, chain 1)
- UnnamedContract (`0x13fe62cb24aea5afd179f20d362c056c3881abca`, chain 1)
- UnnamedContract (`0x19d7df1387e7722fccce2aab4b7ffc72e6592934`, chain 1)
- UnnamedContract (`0x3077c833346501079afe93f7bb7ae88a6fbbc1f5`, chain 1)
- UnnamedContract (`0x31d982ebd82ad900358984bd049207a4c2468640`, chain 1)
- UnnamedContract (`0x34a9f273cbd847d49c3de015fc26c3e66825f8b2`, chain 1)
- UnnamedContract (`0x34c0bd5877a5ee7099d0f5688d65f4bb9158bde2`, chain 1)
- UnnamedContract (`0x36cb65c1967a0fb0eee11569c51c2f2aa1ca6f6d`, chain 1)
- UnnamedContract (`0x3ad4dc2319394bb4be99a0e4ae2abf7bcebd648e`, chain 1)
- UnnamedContract (`0x452420df4ac1e3db5429b5fd629f3047482c543c`, chain 1)
- UnnamedContract (`0x4f95c5ba0c7c69fb2f9340e190ccee890b3bd87c`, chain 1)
- UnnamedContract (`0x5e8422345238f34275888049021821e8e08caa1f`, chain 1)
- UnnamedContract (`0x66cc916ed5c6c2fa97014f7d1cd141528ae171e4`, chain 1)
- UnnamedContract (`0x694c245bcd2d41a808935b2f36706dddecf1bf81`, chain 1)
- UnnamedContract (`0x6ca2338a21b2fe9dd39040d2fe06aad861f77f95`, chain 1)
- UnnamedContract (`0x6ca98f43719231d38f6426db64c7f3d5c7ce7876`, chain 1)
- UnnamedContract (`0x7a07d606c87b7251c2953a30fa445d8c5f856c7a`, chain 1)
- UnnamedContract (`0x88f7474b2c72479910495362f979de3b4cbcfbb4`, chain 1)
- UnnamedContract (`0x8c5d64d10394cfa070066e70ec19e67398b4dabe`, chain 1)
- UnnamedContract (`0x938d99a81814f66b01010d19ddce92a633441699`, chain 1)
- UnnamedContract (`0x941be12d710f6333ffc8c8e1eded53b329fd3ee7`, chain 1)
- UnnamedContract (`0x983af86c94fe3963989c22ceeeb6ea8eac32d263`, chain 1)
- UnnamedContract (`0x99b5587ab54a49e3f827d10175caf69c0187bfa8`, chain 1)
- UnnamedContract (`0xa3d62f83c433e2a56af392e08a705a52ded63696`, chain 1)
- UnnamedContract (`0xa663b02cf0a4b149d2ad41910cb81e23e1c41c32`, chain 1)
- UnnamedContract (`0xa9b5fb84b7aeaf0d51c95db04a76b1d4738d0ec5`, chain 1)
- UnnamedContract (`0xac3e018457b222d93114458476f3e3416abbe38f`, chain 1)
- UnnamedContract (`0xc71bf5ee4740405030ef521f18a96ea14fec802d`, chain 1)
- UnnamedContract (`0xcf62f905562626cfcdd2261162a51fd02fc9c5b6`, chain 1)
- UnnamedContract (`0xe827abf9f462ac4f147753d86bc5f91e186e4e9c`, chain 1)
- UnnamedContract (`0xfe2ea8de262d956e852f12de108fda57171a0a29`, chain 1)
- UnnamedContract (`0xff92d3210c2db7736b8c40b0c1848f7ef74cf519`, chain 1)
- UnnamedContract (`0x31d982ebd82ad900358984bd049207a4c2468640`, chain 10)
- UnnamedContract (`0x7a07d606c87b7251c2953a30fa445d8c5f856c7a`, chain 10)
- UnnamedContract (`0x80eede496655fb9047dd39d9f418d5483ed600df`, chain 10)
- UnnamedContract (`0x452420df4ac1e3db5429b5fd629f3047482c543c`, chain 56)
- UnnamedContract (`0x80eede496655fb9047dd39d9f418d5483ed600df`, chain 56)
- UnnamedContract (`0xdee45510b42cb0678c8a61d043c698af66b0d852`, chain 56)
- UnnamedContract (`0x80eede496655fb9047dd39d9f418d5483ed600df`, chain 130)
- UnnamedContract (`0x983af86c94fe3963989c22ceeeb6ea8eac32d263`, chain 130)
- UnnamedContract (`0xc71bf5ee4740405030ef521f18a96ea14fec802d`, chain 130)
- UnnamedContract (`0x5658e82e330e094627d9b362ed0e137ea06673c4`, chain 137)
- UnnamedContract (`0x80eede496655fb9047dd39d9f418d5483ed600df`, chain 137)
- UnnamedContract (`0xf74d38a26948e9dda53ed85cf03c6b1188fbb30c`, chain 137)
- UnnamedContract (`0x3a5cda3ac66aa80573402610c94b74ed6cdb2f23`, chain 146)
- UnnamedContract (`0x80eede496655fb9047dd39d9f418d5483ed600df`, chain 146)
- UnnamedContract (`0xf6115bb9b6a4b3660da409cb7aff1fb773efad0b`, chain 146)
- UnnamedContract (`0xfc00000000000000000000000000000000000001`, chain 252)
- UnnamedContract (`0xa05e9f9b97c963b5651ed6a50fae46625a8c400b`, chain 324)
- UnnamedContract (`0xc5e4a0cfef8d801278927c25fb51c1db7b69ddfb`, chain 324)
- UnnamedContract (`0xea77c590bb36c43ef7139ce649cfbcfd6163170d`, chain 324)
- UnnamedContract (`0x80eede496655fb9047dd39d9f418d5483ed600df`, chain 999)
- UnnamedContract (`0x8ebb34b1880b2ea5e458082590b3a2c9ea7c41a2`, chain 999)
- UnnamedContract (`0xb85a8fda7f5e52e32fa5582847cfffee9456a5dc`, chain 999)
- UnnamedContract (`0x80eede496655fb9047dd39d9f418d5483ed600df`, chain 1101)
- UnnamedContract (`0x80eede496655fb9047dd39d9f418d5483ed600df`, chain 1329)
- UnnamedContract (`0x3ec3849c33291a9ef4c5db86de593eb4a37fde45`, chain 8453)
- UnnamedContract (`0x73382eb28f35d80df8c3fe04a3eed71b1afce5de`, chain 8453)
- UnnamedContract (`0xe5020a6d073a794b6e7f05678707de47986fb0b6`, chain 8453)
- UnnamedContract (`0x8ebb34b1880b2ea5e458082590b3a2c9ea7c41a2`, chain 9745)
- UnnamedContract (`0xb85a8fda7f5e52e32fa5582847cfffee9456a5dc`, chain 9745)
- UnnamedContract (`0x486cb4788f1be7cdef9301a7a637b451df3cf262`, chain 34443)
- UnnamedContract (`0x7360575f6f8f91b38dd078241b0df508f5fbfdf9`, chain 34443)
- UnnamedContract (`0x80eede496655fb9047dd39d9f418d5483ed600df`, chain 34443)
- UnnamedContract (`0x29f5dbd0fe72d8f11271fcbe79cb87e18a83c70a`, chain 42161)
- UnnamedContract (`0x80eede496655fb9047dd39d9f418d5483ed600df`, chain 42161)
- UnnamedContract (`0xa46a266dcbf199a71532c76967e200994c5a0d6d`, chain 42161)
- UnnamedContract (`0x452420df4ac1e3db5429b5fd629f3047482c543c`, chain 43114)
- UnnamedContract (`0x7a07d606c87b7251c2953a30fa445d8c5f856c7a`, chain 43114)
- UnnamedContract (`0x80eede496655fb9047dd39d9f418d5483ed600df`, chain 43114)
- UnnamedContract (`0x452420df4ac1e3db5429b5fd629f3047482c543c`, chain 57073)
- UnnamedContract (`0x7a07d606c87b7251c2953a30fa445d8c5f856c7a`, chain 57073)
- UnnamedContract (`0x80eede496655fb9047dd39d9f418d5483ed600df`, chain 57073)
- UnnamedContract (`0x6ca98f43719231d38f6426db64c7f3d5c7ce7876`, chain 59144)
- UnnamedContract (`0xa71f2204eddb8d84f411a0c712687fae5002e7fb`, chain 59144)
- UnnamedContract (`0xc7346783f5e645aa998b106ef9e7f499528673d8`, chain 59144)
- UnnamedContract (`0x80eede496655fb9047dd39d9f418d5483ed600df`, chain 80094)
- UnnamedContract (`0x983af86c94fe3963989c22ceeeb6ea8eac32d263`, chain 80094)
- UnnamedContract (`0xc71bf5ee4740405030ef521f18a96ea14fec802d`, chain 80094)
- UnnamedContract (`0x80eede496655fb9047dd39d9f418d5483ed600df`, chain 81457)
- UnnamedContract (`0x85b1714b25f40fd5025423124c076476073180b3`, chain 81457)
- UnnamedContract (`0xe93cb38f97469eac2f284a87813d0d701b28e58e`, chain 81457)
- UnnamedContract (`0x397f939c3b91a74c321ea7129396492ba9cdce82`, chain 534352)
- UnnamedContract (`0x91ddb0e0c36b901c6bf53b9eb5aca0eb1465f558`, chain 534352)
- UnnamedContract (`0xf6f45ccb5e85d1400067ee66f9e168f83e86124e`, chain 534352)
- UnnamedContract (`0x53e36c8380ff62d7964bfa4868a0045e58a52344`, chain 1313161554)
- UnnamedContract (`0x80eede496655fb9047dd39d9f418d5483ed600df`, chain 1313161554)
- UnnamedContract (`0x8ebb34b1880b2ea5e458082590b3a2c9ea7c41a2`, chain 1313161554)
- FPI (`0x5ca135cb8527d76e932f34b5145575f9d8cbe08e`, chain 1)
- FPIS (`0xc2544a32872a91f4a553b404c6950e89de901fdb`, chain 1)
- FRAXShares (`0x3432b6a60d23ca0dfca7761b7ab56459d9c964d0`, chain 1)
- TransparentUpgradeableProxy (`0x5fbaa3a3b489199338fbd85f7e3d444dc0504f33`, chain 1)
- TransparentUpgradeableProxy (`0x860cc723935fc9a15ff8b1a94237a711dfef7857`, chain 1)
- TransparentUpgradeableProxy (`0xcacd6fd266af91b8aed52accc382b4e165586e29`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 7; live-surface rows included: 7 (7 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 99/165 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 3/7 (42.9%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 99 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 395 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 1 standard proxy/library)
- Proxy deployments represented within implementation groups: 30
- Confirmed-live implementations: 99 of 494 unique; 395 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 3/402
- Verified + Unaudited implementations: 399
- Verified by bytecode match: 0
- Unverified implementations: 92
- Unique implementations: 494
- Raw deployments: 500
- Audits discovered: 20 (20 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 4
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-09 (fresh)
- Audit staleness (calendar age): 1 fresh, 5 aging, 11 stale, 3 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 5 match-unverified
- Tier 1 coverage: 28.6% (Trail of Bits)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Trail of Bits | Tier 1 | 2 | 0.5% | 2024-03 |
| Zellic | Tier 2 | 1 | 0.2% | 2025-09 |

## Contract Surface

### ✅ Verified + Audited (3)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| FRAXShares | unknown | project_anchor | own_supporting | 0 | ethereum | unit-240774 | `0x3432b6a60d23ca0dfca7761b7ab56459d9c964d0` | ✅ Audited |
| FRAXStablecoin | unknown | project_anchor | own_supporting | 0 | ethereum | unit-240811 | `0x853d955acef822db058eb8505911ed77f175b99e` | ✅ Audited |
| FrxUSD | unknown | project_anchor | own_supporting | 1 | ethereum | unit-240921 | `0xcacd6fd266af91b8aed52accc382b4e165586e29` | ✅ Audited |

### ⚠️ Verified + Unaudited (399)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AaveEcosystemReserveV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x25f2226b597e8f9514b3f68f00f494cf4f286491` | ⚠️ Unaudited |
| AaveGenesisExecutor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x797ae69562588dd893567ba22dfcf8e842686b53` | ⚠️ Unaudited |
| AaveGenesisProposalPayload | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x36ec8f61d077909b2166f78c488f2525bca62e94` | ⚠️ Unaudited |
| AaveIncentivesVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x238fcb066a2e4662078836237a62b59664d6f76d` | ⚠️ Unaudited |
| AavePropositionPower | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x72bbcfc20d355fc3e8ac4ce8fcaf63874f746631` | ⚠️ Unaudited |
| AaveProtoGovernance | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xda8ad436e1dfe962091d86a341e957c6a5168a9d` | ⚠️ Unaudited |
| AaveToken | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x9c0435779f5e52cec404d957c9baa6f7d674c8ba` | ⚠️ Unaudited |
| AaveTokenV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x7fc66500c84a76ad7e9c93437bfc5ac33e2ddae9` | ⚠️ Unaudited |
| AaveVoteStrategyToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa5e83c1a6e56f27f7764e5c5d99a9b8786e3a391` | ⚠️ Unaudited |
| AggMonetaryPolicy - monetary policy based on aggregated prices for crvUSD | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0901b541beff2cd44859701619e245e82f48e62b` | ⚠️ Unaudited |
| AggregatorStablePrice - aggregator of stablecoin prices for crvUSD | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x18672b1b0c623a30089a280ed9256379fb0e4e62` | ⚠️ Unaudited |
| Alchemist | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc21d353ff4ee73c572425697f4f5aad2109fe35b` | ⚠️ Unaudited |
| AlchemixToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdbdb4d16eda451d0503b854cf79d55697f90c8df` | ⚠️ Unaudited |
| AllowList | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x42d75c8fdbbf046df0fe1ff388da16ff99de8149` | ⚠️ Unaudited |
| AlToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbc6da0fe9ad5f3b0d58160288917aa56653660e9` | ⚠️ Unaudited |
| AmplificationUtils | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3661d0f70e7f3ec418321a57fd62d691a09b490b` | ⚠️ Unaudited |
| ArbitratorVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x25e12482a25cf36ec70fda2a09c1ed077fc21616` | ⚠️ Unaudited |
| ArbitrumBridger | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc1f426d2b5151b139c0895b08c2310f7c804f1ad` | ⚠️ Unaudited |
| ArbitrumDualOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5985fbb03b6a5ea390871c2bb9742cd406575667` | ⚠️ Unaudited |
| AssetVotingWeightProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5ac493b8c2cef1f02f117b9ba2797e7da95574aa` | ⚠️ Unaudited |
| AToken | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xbcca60bb61934080951369a648fb03df4f96263c` | ⚠️ Unaudited |
| BAMMFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x19928170d739139bfbbb6614007f8eeed17db0ba` | ⚠️ Unaudited |
| BAMMUIHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0xb16f68c7351bbf8491824e7971efa14d2fa0885a` | ⚠️ Unaudited |
| BaseRegistrarImplementation | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfac7bea255a6990f749363002136af6556b31e04` | ⚠️ Unaudited |
| BaseRewardPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3fe65692bfcd0e6cf84cb1e7d24108e434a7587e` | ⚠️ Unaudited |
| BendToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x02863c14603c3b157379999f567ddece151e9153` | ⚠️ Unaudited |
| BendUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xf0dfc149feab7bc2380f8d53b6353c6743f159a0` | ⚠️ Unaudited |
| BlockMiner | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc0dc493ce1b5908dd95b768c397dd581ef4fcaeb` | ⚠️ Unaudited |
| BokkyPooBahsDateTimeContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x90503d86e120b3b309cebf00c2ca013ab3624736` | ⚠️ Unaudited |
| Booster | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2b8b301b90eb8801f1eefe73285eec117d2ffc95` | ⚠️ Unaudited |
| BoosterOwner | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3ce6408f923326f81a7d7929952947748180f1e6` | ⚠️ Unaudited |
| BoosterOwnerSecondary | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x256e1bba846611c37cf89844a02435e6c098b86d` | ⚠️ Unaudited |
| BoosterPlaceholder | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa2cf21b157b2f203e37b616b619f438b5aa86ee5` | ⚠️ Unaudited |
| BoosterRewardManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x817ff43b8a18b8ab76485283e42b4bd632e82d24` | ⚠️ Unaudited |
| Bridge | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa5bd85ed9fa27ba23bfb702989e7218e44fd4706` | ⚠️ Unaudited |
| BundleUtils | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd1a7b80a954e56bfd7bd889af6e2be8674719f5d` | ⚠️ Unaudited |
| Burner | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xba9801acfdf3b8852865149d93acffef9120272d` | ⚠️ Unaudited |
| ChainlinkSourcesRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9e194d49b7ed0123f46b07d7e10013a335e0ed11` | ⚠️ Unaudited |
| ChefRewardHook | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0f29b765be2de395cb6b10d9ead46975057b51ed` | ⚠️ Unaudited |
| ChefToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4223aa5bfd783dedcc54585cdc1cfe9ea1587c0f` | ⚠️ Unaudited |
| ClaimVecrvFees | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4940896e635ea177f1095009be9ee9ef02f15d0c` | ⚠️ Unaudited |
| ClaimZap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3f29cb4111cbda8081642da1f75b3c12decf2516` | ⚠️ Unaudited |
| ComboOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4462df433d01f32ac0c4adb0a76dcf255634490c` | ⚠️ Unaudited |
| ComboOracle_KyberSwapElastic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x734fd1fd1f3720379f52cb9d8168d76cd1ca4a73` | ⚠️ Unaudited |
| ComboOracle_KyberSwapElasticV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x603d9bb3a14d4289f622a35e40d05f0e24e05209` | ⚠️ Unaudited |
| ComboOracle_UniV2_UniV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x09044da6e6ea891c83ee8d980bc109fda73b199a` | ⚠️ Unaudited |
| CommunalFarm_SaddleD4 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0639076265e9f88542c91dcdeda65127974a5ca5` | ⚠️ Unaudited |
| ConvexAMO_V1_Recoverer | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x49ee75278820f409ecd67063d8d717b38d66bd71` | ⚠️ Unaudited |
| ConvexRewarder | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9e01aac4b3e8781a85b21d9d9f848e72af77b362` | ⚠️ Unaudited |
| ConvexStakingWrapperAbra | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa0334c20700207ba4999a5596969fa63ec924ef8` | ⚠️ Unaudited |
| ConvexStakingWrapperFrax | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9dd9f3e3c25547c7fb6f6e3c99965677a7231beb` | ⚠️ Unaudited |
| ConvexStakingWrapperFraxLend | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa82bebc607cd258c66a6d5006a19401eafb786a4` | ⚠️ Unaudited |
| CPITrackerOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x04baf30115d7bac714709910dd286718cfad8808` | ⚠️ Unaudited |
| CrossChainBridgeBacker_OPTI_Celer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x7f35dc487a5422d6946aad733c6018f163084ed0` | ⚠️ Unaudited |
| CrossChainCanonicalFRAX | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x2e3d870790dc77a83dd1d18184acc7439a53f475` | ⚠️ Unaudited |
| CrossChainCanonicalFXS | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x67ccea5bb16181e7b4109c9c2143c24a1c2205be` | ⚠️ Unaudited |
| CrossChainCanonicalV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x484c2d6e3cdd945a8b2df735e079178c1036578c` | ⚠️ Unaudited |
| CrossChainOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x31aa22d69270148ec63baf53fde846b45db86509` | ⚠️ Unaudited |
| CrossChainOracleSingleAsset | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x35c6962c221e4e8c17e2b4d59c8de79457ea66de` | ⚠️ Unaudited |
| CrvDepositor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8014595f2ab54cd7c604b00e9fb932176fdc86ae` | ⚠️ Unaudited |
| crvUSD Controller | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x17c6e1ddf1cce3d33240a53fce8a2ee48541f4d4` | ⚠️ Unaudited |
| crvUSD ControllerFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc9332fdcb1c491dcc683bae86fe3cb70360738bc` | ⚠️ Unaudited |
| crvUSD deleverage zap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2bc706b83ab08d0437b8a397242c3284b5f81d74` | ⚠️ Unaudited |
| crvUSD Stablecoin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf939e0a03fb07f59a73314e73794be0e57ac1b4e` | ⚠️ Unaudited |
| CryptoFromPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3b38ce23799dc56664ff6048892510abffdb7a25` | ⚠️ Unaudited |
| CryptoFromPoolsRate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x38e7627eb98a40e7528bcce709a80083093ba2f8` | ⚠️ Unaudited |
| CryptoFromPoolsRateWAgg | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0a9ae947495034c0bbbab845fd75b5bbafc91aab` | ⚠️ Unaudited |
| CryptoFromPoolVaultWAgg | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x002688c4296a2c4d800f271fe6f01741111b09be` | ⚠️ Unaudited |
| CryptoFromPoolWAgg | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2d89d82ff68bae1357d746b3e8eac520bfe1d5ca` | ⚠️ Unaudited |
| CryptoWithStablePriceETH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x966cbdecefb60a289b0460f7638f4a75f432ca06` | ⚠️ Unaudited |
| CryptoWithStablePriceSfrxeth | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x28d7880b5b67fb4a0b1c6ed6c33c33f365113c29` | ⚠️ Unaudited |
| CryptoWithStablePriceTBTC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbef434e2acf0fbad1f0579d2376fed0d1cfc4217` | ⚠️ Unaudited |
| CryptoWithStablePriceWBTC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x07374b547cae235227635c13266c69847a3e46fa` | ⚠️ Unaudited |
| CryptoWithStablePriceWsteth | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x21f5f6d3f90d0f56a6de307a3bd359d0a151b304` | ⚠️ Unaudited |
| CurveAMO_V2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x7e983e4f98b16cee76f8f9a6a1e87b5861de8769` | ⚠️ Unaudited |
| CurveAMO_V3 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x72170cdc48c33a6ae6b3e83cd387ca3fb9105da2` | ⚠️ Unaudited |
| CurveLendMinterFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd99391df68cdb38a89828a6d51f3976e3e76afff` | ⚠️ Unaudited |
| CurveLendOperator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb64e295a69928d3404e576a8ff3c8766559cb8f5` | ⚠️ Unaudited |
| CvxCrvRari | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4fc2a279ffddde98cb154f04375e69205156b987` | ⚠️ Unaudited |
| CvxCrvStakingWrapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaa0c3f5f7dfd688c6e646f66cd2a6b66acdbe434` | ⚠️ Unaudited |
| cvxCrvToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x62b9c7356a2dc64a1969e19c23e4f579f9810aa7` | ⚠️ Unaudited |
| CvxCrvUtilities | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xadd2f542f9ff06405fabf8cae4a74bd0fe29c673` | ⚠️ Unaudited |
| CvxDistribution | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x449f2fd99174e1785cf2a1c79e665fec3dd1ddc6` | ⚠️ Unaudited |
| cvxFpisStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfa87db3eaa93b7293021e38416650d2e666bc483` | ⚠️ Unaudited |
| cvxFpisToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa2847348b58ced0ca58d23c7e9106a49f1427df6` | ⚠️ Unaudited |
| cvxFxsStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x49b4d1df40442f0c31b1bbaea3ede7c38e37e31a` | ⚠️ Unaudited |
| cvxFxsToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfeef77d3f69374f66429c91d732a244f074bdf74` | ⚠️ Unaudited |
| CvxLocker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5ae0fca14ed08a3122ffb8d624e063e07bce56a1` | ⚠️ Unaudited |
| CvxLockerV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x72a19342e8f1838460ebfccef09f6585e32db86e` | ⚠️ Unaudited |
| CvxMining | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3c75bfe6fbfda3a94e7e7e8c2216afc684de5343` | ⚠️ Unaudited |
| cvxRewardPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcf50b810e57ac33b91dcf525c6ddd9881b139332` | ⚠️ Unaudited |
| CvxStakingProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4401f14970a874d27fad5c8a945292cbe97943fa` | ⚠️ Unaudited |
| CvxStakingProxyV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb5bbc863bafe5006c68613b89130812a7b586a4e` | ⚠️ Unaudited |
| ENSToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc18360217d8f7ab5e7c516566761ea12ce7f9d72` | ⚠️ Unaudited |
| ERC20RevocableComplianceStandard | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x10fe70382576f271caef5c152266fb458efb53fa` | ⚠️ Unaudited |
| ERC20RevocableStandard | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x2e5f7dbed4aa799b13c737992562b7e8742b3a32` | ⚠️ Unaudited |
| ERC721SoulboundToken | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x2a33ae49f96b8982023f8381b57c1f2658f616bc` | ⚠️ Unaudited |
| ETHRegistrarController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb22c1c159d12461ea124b0deb4b5b93020e6ad16` | ⚠️ Unaudited |
| EthRegistrarSubdomainRegistrar | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc32659651d137a18b79925449722855aa327231d` | ⚠️ Unaudited |
| ExponentialPriceOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x01480a0c134cecc309015a564c7e292ba6e0f358` | ⚠️ Unaudited |
| ExtraRewardStashTokenRescue | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9dc3de2e9d6963bab146dc35dc3925add0cfc918` | ⚠️ Unaudited |
| ExtraRewardStashV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0dbffba31097510d291ad9150b150b3bb07d8852` | ⚠️ Unaudited |
| EzEthEthOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x6fd11e0e14314853988e1bbdabdd1c07d0d36681` | ⚠️ Unaudited |
| EzEthOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x1174b74acb27cb20f2acd12a324ded7a1ce16041` | ⚠️ Unaudited |
| FeeBridge | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd430246142084ec68f7ab090cbd9252a1d1410e9` | ⚠️ Unaudited |
| FeeDeposit | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcbec22233dad5e15ab9c02caa4d914f3c97323f7` | ⚠️ Unaudited |
| FeeDepositV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x29dba2751b5aa26f7d03657066c0984c66999178` | ⚠️ Unaudited |
| FeeReceiverCvxFpis | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3a562a8ceb9866bcf39bb5eda32f282d619e08e0` | ⚠️ Unaudited |
| FeeReceiverCvxFxs | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x31c5e6d1891d2af49dec041d41a3a663e03f8f24` | ⚠️ Unaudited |
| FeeReceiverPlatform | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd60d80d9c184d4f02ff1711844aaa4e94bec36cf` | ⚠️ Unaudited |
| FeeReceiverVeFxs | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6f94fe4dadd7a6f4ce67e607bab531a9d1717624` | ⚠️ Unaudited |
| FeeReceiverVlCvx | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb9a2120f32420f0da2777ee07beeea92d3d2c2b8` | ⚠️ Unaudited |
| FeeRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7a299a6f5bc33c7e3c8ba5bbdebeba8a012394e3` | ⚠️ Unaudited |
| FPI | unknown | project_anchor | own_supporting | 0 | ethereum | unit-240797 | `0x5ca135cb8527d76e932f34b5145575f9d8cbe08e` | ⚠️ Unaudited |
| FPIControllerPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0ae84c1a6e142ed90f8a35a7e7b216cb25469e37` | ⚠️ Unaudited |
| FPIOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x25d3d33b5f294f6d6e9afcbf599c51547665520f` | ⚠️ Unaudited |
| FpiOracleAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0xcacc0928f84d6a7ed55de1a5c4e3a7379190c60d` | ⚠️ Unaudited |
| FPIS | unknown | project_anchor | own_supporting | 0 | ethereum | unit-240832 | `0xc2544a32872a91f4a553b404c6950e89de901fdb` | ⚠️ Unaudited |
| FpisDepositor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x27445d3f59d6b966072abe20e41a29fbb6a7a04b` | ⚠️ Unaudited |
| FPISLocker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | 4 deployments: fraxtal `0x36b406a00997e4bd5b9bb3618d832fb88fb09840`; fraxtal `0xb4fdd7444e1d86b2035c97124c46b1528802da35`; fraxtal `0xbbb3a133936d080da9120b5fab83610975126850`; fraxtal `0xe91488002186029221efc2449c19addf79e61c01` | ⚠️ Unaudited |
| FPISLockerUtils | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | 3 deployments: fraxtal `0x858afbe668f4f562900bae3e2daed65d88027aea`; fraxtal `0x8a3399c9d97b88af969ee9d90da9c7df462da974`; fraxtal `0xf823853d09ffa596a6fcfbbcd1018e8590732414` | ⚠️ Unaudited |
| FpisRewardHook | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb93989b104a3bc2eba16210748cecdf76ea3238d` | ⚠️ Unaudited |
| FraxAMOMinter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x36a0b6a5f7b318a2b4af75fffb1b51a5c78deb8c` | ⚠️ Unaudited |
| FraxEtherRedemptionQueue | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5fa02554432eb3c8a5397306d0b30e707bf21a6d` | ⚠️ Unaudited |
| FraxFarm_UniV3_veFXS_FRAX_DAI | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x80fac16d5b7e7973048951678dd78d16cbfc8dfd` | ⚠️ Unaudited |
| FraxFarm_UniV3_veFXS_FRAX_USDC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1c21dd0ce3ba89375fc39f1b134ad15671022660` | ⚠️ Unaudited |
| FraxFarmRageQuitter_Gelato_FRAX_DAI | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe402a39f788f90607a50254faf56316e6a78231a` | ⚠️ Unaudited |
| FraxFarmRageQuitter_StakeDAO_FraxPut | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7cb3da98fe0d8c59f460afc0c8e6ec5ef1e0f63b` | ⚠️ Unaudited |
| FraxFarmRageQuitter_Temple | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x67e04873691258950299bd8610403d69ba0a1e10` | ⚠️ Unaudited |
| Fraxferry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x04ba20d2cc47c63bce1166c2864f0241e4d0a0cc` | ⚠️ Unaudited |
| FraxGaugeFXSRewardsDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x278dc748eda1d8efef1adfb518542612b49fcd34` | ⚠️ Unaudited |
| FraxGovernorAlpha | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x77314ad8dcd38c44874bf95cb3cf6622f31a4037` | ⚠️ Unaudited |
| FraxGovernorOmega | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2469757756eba7bea6b7f054896e3db74103a962` | ⚠️ Unaudited |
| FraxGuard | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x9599033315c29be9690b716bfe409381426dad41` | ⚠️ Unaudited |
| FraxlendAMOV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x8e4e6ea0ca69134ff93a5f5293598a441af6935a` | ⚠️ Unaudited |
| FraxlendAMOV3Frax | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x58c433482d74abd15f4f8e7201dc4004c06cb611` | ⚠️ Unaudited |
| FraxLendingAMO | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9507189f5b6d820cd93d970d67893006968825ef` | ⚠️ Unaudited |
| FraxlendPairDeployer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x17378a023bfdebdc46e53d8dd0167489b5ef8b91` | ⚠️ Unaudited |
| FraxlendPairHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x05bb1c15bdb20936aabd31c12130a960d9afe999` | ⚠️ Unaudited |
| FraxlendPairRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0bd2ffbcb0a17de2d5a543ec2d47c772eead316d` | ⚠️ Unaudited |
| FraxlendWhitelist | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0e300f7806ccd1d218658f9aba5d6564f9c8b5ab` | ⚠️ Unaudited |
| FraxLoan | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0xa25a70b49922c5e5a86450acddd0ebad7822d99e` | ⚠️ Unaudited |
| FraxMiddlemanGauge_FRAX_mUSD | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3e14f6eedcc5bc1d0fc7b20b45eae7b1f74a6aec` | ⚠️ Unaudited |
| FraxMiddlemanGaugeFerryHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x54bd5c72645fed784c117ca83533e0584b24ee5c` | ⚠️ Unaudited |
| FraxMiddlemanGaugeV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0884c9bb52348fa76d4e1c6ea042a2eaf0b72c6c` | ⚠️ Unaudited |
| FraxMiddlemanGaugeV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x007c874a4240f8c31b4bfe6d91f47b903e2e3be1` | ⚠️ Unaudited |
| FRAXOracleWrapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2a6ddd9401b14d0443d0738b8a78fd5b99829a80` | ⚠️ Unaudited |
| FraxPoolInvestorForV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe09394ae14d7c3b1798e4dbea4c280973b2689a4` | ⚠️ Unaudited |
| FraxPoolLibrary | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa11b9c88e4bf89ad9a70f5d408ffb5a6d5feb6a4` | ⚠️ Unaudited |
| FraxPoolV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2fe065e6ffef9ac95ab39e5042744d695f560729` | ⚠️ Unaudited |
| FraxswapFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x43ec799eadd63848443e2347c49f5f52e8fe0f6f` | ⚠️ Unaudited |
| FraxswapRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x0ae84c1a6e142ed90f8a35a7e7b216cb25469e37` | ⚠️ Unaudited |
| FraxswapRouterMultihop | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x25e9aca5951262241290841b6f863d59d37dc4f0` | ⚠️ Unaudited |
| FraxtalERC4626TransportOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x0d7888e8ac9e5d0915148e0f871a3893af3d2aaf` | ⚠️ Unaudited |
| FraxtalFpiTrackerTransportOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x0f50beee2d2506634b1e6230f3867e30763cbb02` | ⚠️ Unaudited |
| FraxtalTransportOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0xa072b830a881fe89c3be814a06be16e88bcff896` | ⚠️ Unaudited |
| FraxUnifiedFarm_ERC20_Convex_frxETH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x68921998fbc43b360d3cf14a03af4273cb0cfa44` | ⚠️ Unaudited |
| FraxUnifiedFarm_ERC20_Fraxlend | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x73e1e624c6d3e027b8674e6c72f104f1429fc17e` | ⚠️ Unaudited |
| FraxUnifiedFarm_ERC20_Fraxswap_FRAX_FPIS | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3f2e53b1a3036fd33f3c2f3cc49dab26a88df2e0` | ⚠️ Unaudited |
| FraxUnifiedFarm_ERC20_Fraxswap_FRAX_FXS | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x06b7c6e8d22ece102fb282c41075bcc968b6e046` | ⚠️ Unaudited |
| FraxUnifiedFarm_ERC20_Fraxswap_FRAX_IQ | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x35678017e1d252da1cdd6745b147e3e75d1f9c27` | ⚠️ Unaudited |
| FraxUnifiedFarm_ERC20_Fraxswap_FRAX_OHM | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd2b19c772f225c6f55eec8ac6a40dc338f28eee8` | ⚠️ Unaudited |
| FraxUnifiedFarm_ERC20_Fraxswap_FRAX_pitchFXS | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x24c66ba25ca2a53bb97b452b9f45dd075b07cf55` | ⚠️ Unaudited |
| FraxUnifiedFarm_ERC20_Fraxswap_FRAX_SDL | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8875a328eadb1e142f4021fc2098096796a30cf8` | ⚠️ Unaudited |
| FraxUnifiedFarm_ERC20_Fraxswap_FRAX_SYN | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb8e49724a342c5f4c02918a1cda6b3b25632d04b` | ⚠️ Unaudited |
| FraxUnifiedFarm_ERC20_Fraxswap_FRAX_ZZ | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x38950d42cd549842b3fc862a45f00eb24331f462` | ⚠️ Unaudited |
| FraxUnifiedFarm_ERC20_FraxswapV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x788e44b6424a0e4160ae4766e86640ec5a6bad5b` | ⚠️ Unaudited |
| FraxUnifiedFarm_ERC20_KyberSwapElastic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa7ea2c8c166328c5a7c7ea8e5649724a2c9b78e9` | ⚠️ Unaudited |
| FraxUnifiedFarm_ERC20_KyberSwapElasticV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0cf99bbc8794e09e713769c4352eb3318e25c975` | ⚠️ Unaudited |
| FraxUnifiedFarm_ERC20_Other | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1e64e373c143810524bdb1ac8dce35977d12e55d` | ⚠️ Unaudited |
| FraxUnifiedFarm_ERC20_Other_Oracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x169e5fd3fdca9f3fb7c75d09037cbeb65703e470` | ⚠️ Unaudited |
| FraxUnifiedFarm_ERC20_Other_Oracled | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3ccc4677356c53c9ff9c888e98b41403a767e962` | ⚠️ Unaudited |
| FraxUnifiedFarm_ERC20_Temple_FRAX_TEMPLE | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x016563f5eb22cf84fa0ff8b593ddc5343ca15856` | ⚠️ Unaudited |
| FraxUnifiedFarm_ERC20_Vesper_Orbit_FRAX | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x698137c473bc1f0ea9b85ade45caf64ef2df48d6` | ⚠️ Unaudited |
| FraxUnifiedFarm_KyberSwapElastic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x59f91aa50dfb3e4ac6d3580e5a2fc22a7c24f505` | ⚠️ Unaudited |
| FraxUnifiedFarm_PosRebase_aFRAX | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x02577b426f223a6b4f2351315a19ecd6f357d65c` | ⚠️ Unaudited |
| FraxUniV3Farm_Stable_FRAX_agEUR | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf8caed1943b15b877d7105b9906a618c154f69e8` | ⚠️ Unaudited |
| FraxUniV3Farm_Stable_FRAX_DAI | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf22471ac2156b489cc4a59092c56713f813ff53e` | ⚠️ Unaudited |
| FraxVoterProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x59cfcd384746ec3035299d90782be065e466800b` | ⚠️ Unaudited |
| frxETH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0304a365c0fbb4b1ad423887861b9b69a5f0c00e` | ⚠️ Unaudited |
| FrxEthDualOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x4b0ca693e29e5fd2aa39332a0387bbcd0f91a527` | ⚠️ Unaudited |
| frxETHMinter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2dd1b4d4548accea497050619965f91f78b3b532` | ⚠️ Unaudited |
| FrxUSDCustodianWithOracle | unknown | project_anchor | own_supporting | 1 | ethereum | unit-240923 | `0x5fbaa3a3b489199338fbd85f7e3d444dc0504f33` | ⚠️ Unaudited |
| FrxUSDCustodianWithReceiver | unknown | project_anchor | own_supporting | 1 | ethereum | unit-240922 | `0x860cc723935fc9a15ff8b1a94237a711dfef7857` | ⚠️ Unaudited |
| FXB | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0de54cfdfed8005176f8b7a9d5438b45c4f1df1e` | ⚠️ Unaudited |
| FXS1559_AMO | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9c6a04871d11b33645ab592f68c41bb2b41f51ee` | ⚠️ Unaudited |
| FXS1559_AMO_V2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xc80c48862e4254f37047235298edb6aa35717c24` | ⚠️ Unaudited |
| FXS1559_AMO_V3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7301bb959ee286d8abc46f341144afe443cedae5` | ⚠️ Unaudited |
| FxsDepositor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8f55d7c21bdff1a51afaa60f3de7590222a3181e` | ⚠️ Unaudited |
| FxsDualOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0xb99c9d329bd69ddf8af57110e011f5d81801c6d2` | ⚠️ Unaudited |
| FXSOracleWrapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xee0f15e5ffc105ebb3d1368cf84f43b40cab3480` | ⚠️ Unaudited |
| FXSRewardHook | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1a6980170fd45bdebf5902b597c53a2a0678f1f7` | ⚠️ Unaudited |
| GaugeExtraRewardDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x04bb59bd617f06eeeee00caeaffc8f3b68510330` | ⚠️ Unaudited |
| GaugeHelperContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8020e4134ad6a694adbe9521a12c751e67ce9861` | ⚠️ Unaudited |
| Gel | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x15b7c0c907e4c6b9adaaaabc300c08991d6cea05` | ⚠️ Unaudited |
| GnosisSafe | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x8306300ffd616049fd7e4b0354a64da835c1a81c` | ⚠️ Unaudited |
| GnosisSafeProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0ae0548ef97d3ec699cf375e2467e24b2f35847c` | ⚠️ Unaudited |
| gOHM | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0ab87046fbb341d058f17cbc4c1133f25a20a52f` | ⚠️ Unaudited |
| GovernanceParamsProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf3b2c28c7245c49ea5e6c6db98026f180b443a06` | ⚠️ Unaudited |
| GovernorAlpha | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x604cb55e89568b68e125e1c0272a71ff1faab46b` | ⚠️ Unaudited |
| Harvester | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6d6bcac2266468a44da9fa482ca54aaed586e1e7` | ⚠️ Unaudited |
| Health calculator zap for crvUSD controller | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcf61ee62b136e3553fb545bd8fec11fb7f830d6a` | ⚠️ Unaudited |
| HODLCoin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb45d7bc4cebcab98ad09babdf8c818b2292b672c` | ⚠️ Unaudited |
| HOPGovernor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xed8bdb5895b8b7f9fdb3c087628fd8410e853d48` | ⚠️ Unaudited |
| HOPToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc5102fe9359fd9a28f877a67e36b0f050d81a3cc` | ⚠️ Unaudited |
| InitializableAdminUpgradeabilityProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3b42cd463d247aaeffb38cff5d5ee42e9ddc4430` | ⚠️ Unaudited |
| InterestRate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x710a2b4b5f267047728402f1594f440a2acbae02` | ⚠️ Unaudited |
| InterestRateCalculatorV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1972b5d65a690de0bc36278ac93d47fd98bc14f7` | ⚠️ Unaudited |
| InvestorAMO_V2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x2b4d259a8f6e765ad881c4c1d04045d629da01b4` | ⚠️ Unaudited |
| InvestorAMO_V2_upgrade | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x1e5accd956b3ef4c0a5b3c38667b6a0458bbf64d` | ⚠️ Unaudited |
| JointVaultManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x599113b0403e3fa613c318af0bf75826bedfb9ec` | ⚠️ Unaudited |
| LendToAaveMigrator | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x317625234562b1526ea2fac4030ea499c5291de4` | ⚠️ Unaudited |
| LendVoteStrategyToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0671ca7e039af2cf2d2c5e7f1aa261ae78b3ffdf` | ⚠️ Unaudited |
| Leverage zap for crvUSD controller (sfrxETH market) | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb556fa4c4752321b3154f08dfbdfcf34847f2eac` | ⚠️ Unaudited |
| LiquidityGaugeV6 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x00b71a425db7c8b65a46cf39c23a188e10a2de99` | ⚠️ Unaudited |
| LLAMMA - crvUSD AMM | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0ec8e0c868541df59ced49b39cc930c3a8dbd93a` | ⚠️ Unaudited |
| LockerAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x98e28afb9c11aa979ae754e1ea2e9877cb0d418c` | ⚠️ Unaudited |
| LPToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x59f5a371df7d2a01863cbb011a5a1ed45326710c` | ⚠️ Unaudited |
| ManualTokenTrackerAMO | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1be588641fb28eb8c2a51f1129707fb1e2683f5a` | ⚠️ Unaudited |
| MasterRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc5ad17b98d7fe73b6dd3b0df5b3040457e68c045` | ⚠️ Unaudited |
| MathUtils | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc0409ec303b727bc1f511d7f8c71fd5ead96de1c` | ⚠️ Unaudited |
| MerkleAirdropFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa1bc2cf69d474b39b91665e24e7f2606ed142991` | ⚠️ Unaudited |
| MerkleDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x1b5d2904be3e4711a848be09b17dee89e6a5bc27` | ⚠️ Unaudited |
| MerkleProofPriceSource | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x190ef482a3c8f45b9bd8575ecfa65954bd6d5ee5` | ⚠️ Unaudited |
| MerkleProofPriceSourceEzEth | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0xa871745d853b941af700f1aa24b58f7a6903abc5` | ⚠️ Unaudited |
| MerkleProofPriceSourceFpiOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x8fc7425cd36d7e4605650198099e4539238e9c37` | ⚠️ Unaudited |
| MerkleProofPriceSourceRsEth | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x5bac02527bbaa82453c0f93b8e3deab8ad0c8dac` | ⚠️ Unaudited |
| MerkleProofPriceSourceSdai | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x816cf9dcf8fce6fa7a2249d56cb203ddbf36974e` | ⚠️ Unaudited |
| MerkleProofPriceSourceSfrax | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0xe25d8aaa6df41b94a415ee39ccee0df6673b9bdb` | ⚠️ Unaudited |
| MerkleProofPriceSourceSfrxEth | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0xa560e014501f96752726f65c27e96c3e9127ce32` | ⚠️ Unaudited |
| MerkleProofPriceSourceSUSDe | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0xc2b984e37d1caf5eef82d9d892287361058955e9` | ⚠️ Unaudited |
| MerkleProofPriceSourceWstEth | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0xef583ccb0bed4c9473178ebb228689a63bdce8a2` | ⚠️ Unaudited |
| MetaSwap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1dcb69a2b9148c641a43f731fcee123e2be30bab` | ⚠️ Unaudited |
| MetaSwapDeposit | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x04d8adaa0563e3c1cfe8295fed1f9c5e6ac9dba1` | ⚠️ Unaudited |
| MetaSwapUtils | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x0c8bae14c9f9bf2c953997c881befac7729fd314` | ⚠️ Unaudited |
| MicroVeFXSStaker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2aac16f2eec7a2e1dc7b4e7fc7aa47bb8c0a3ca2` | ⚠️ Unaudited |
| MigrationHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5cce1098be1734b8910e22e240aa0673ab9083fc` | ⚠️ Unaudited |
| MiniChefV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x691ef79e40d909c715be5e9e93738b3ff7d58534` | ⚠️ Unaudited |
| MSIGHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x977eadb6fa9b8e1a2a950ccde1a75a7b527a8cbb` | ⚠️ Unaudited |
| Multicall_Oz | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x00160baf84b3d2014837cc12e838ea399f8b8478` | ⚠️ Unaudited |
| MultiClaim | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x32facb5a46e02decaf5f939ab12c123eee203a5f` | ⚠️ Unaudited |
| MultiRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xafd3d38fecebcdda6d934979d4ac7f17330a96ca` | ⚠️ Unaudited |
| MultiSigWalletWithTimeLock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8392f6669292fa56123f71949b52d883ae57e225` | ⚠️ Unaudited |
| NoopRewardsDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x48d9a9e67e9decfd493efe2b3d3b5291fc802e5f` | ⚠️ Unaudited |
| OHM_AMO | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x5699d20732a2efa9a895ef04bb210aa751c4db96` | ⚠️ Unaudited |
| OlympusAuthority | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1c21f8ea7e39e2ba00bc12d2968d63f4acb38b7a` | ⚠️ Unaudited |
| OlympusTokenMigrator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x184f3fad8618a6f458c16bae63f70c426fe784b3` | ⚠️ Unaudited |
| OneWayLendingFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x34024ba3b6edaf5cdd1c24fefe1df5d03041f38c` | ⚠️ Unaudited |
| OptimismBridger | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xccfd60589f4e15a23ad326a5e2c2d871ed310152` | ⚠️ Unaudited |
| OwnedRegistrar | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa86ba3b6d83139a49b649c05dbb69e0726db69cf` | ⚠️ Unaudited |
| OwnedResolver | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x30200e0cb040f38e474e53ef437c95a1be723b2b` | ⚠️ Unaudited |
| PAXImplementation | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6ffcb0f00c3ad2575e443152d8861aec1bda9ce6` | ⚠️ Unaudited |
| PAXImplementationV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x86eee0422322710866af89e9cae3f7383d55310a` | ⚠️ Unaudited |
| Peg Keeper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1ef89ed0edd93d1ec09e4c07373f69c49f4dccae` | ⚠️ Unaudited |
| PegPrice | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x226845c2ba216b8bb1aaadfd4e14de69426c5445` | ⚠️ Unaudited |
| PermissionlessDeployer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8f43fbddc10b822afa26812fb9058ca1fc22078f` | ⚠️ Unaudited |
| PermissionlessMetaSwap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfb08672a5d4a302acb5830894a2f9ae804864570` | ⚠️ Unaudited |
| PermissionlessMetaSwapFlashLoan | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x45b48cdaf18a3678eb6cceba3e8a87477a180d88` | ⚠️ Unaudited |
| PermissionlessSwap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x04b58dc190da2e9b46a3f1ac94f6eca3b683c765` | ⚠️ Unaudited |
| PermissionlessSwapFlashLoan | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x10170a550d2865b9a23caa6c53a030d54233b972` | ⚠️ Unaudited |
| Permit2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0xa37fe075d792894c32fe444aaa67f3e027ca243b` | ⚠️ Unaudited |
| PerpToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbc396689893d065f41bc2c6ecbee5e0085233447` | ⚠️ Unaudited |
| Pool_USDC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1864ca3d47aab98ee78d11fc9dcc5e7badda1c0d` | ⚠️ Unaudited |
| Pool_USDT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7d3fcd3825ae54e8e8ffd3d0ce95882330d54968` | ⚠️ Unaudited |
| PoolBridge | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe66db0f190a0697f5d162cab5e65a4d3241cdcb8` | ⚠️ Unaudited |
| PoolHarvestHook | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe4d89e8267d2e8f03f751fa807b3bbdb36729f9a` | ⚠️ Unaudited |
| PoolManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3b2d30734491ad77880d31e8afe2a4d8ac135a9c` | ⚠️ Unaudited |
| PoolManagerProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5f47010f230ce1568bea53a06ebaf528d05c5c1b` | ⚠️ Unaudited |
| PoolManagerSecondaryProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd20904e5916113d11414f083229e9c8c6f91d1e1` | ⚠️ Unaudited |
| PoolManagerShutdownProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x73b1b12065d0ae21dff4848d5871ca2a5227889f` | ⚠️ Unaudited |
| PoolManagerTertiaryProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0ff33996d846200d5ada1a58aeb62c1b09feb3b2` | ⚠️ Unaudited |
| PoolManagerV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xae5f315a5b5dd4dbacd38862562a51490e500183` | ⚠️ Unaudited |
| PoolManagerV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8a849f4074726179f95ee08c59caa8f6f21b1e83` | ⚠️ Unaudited |
| PoolManagerV4 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0e4e9d97440182ea72d988d48eb9b156a0c02e11` | ⚠️ Unaudited |
| PoolRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x41a5881c17185383e19df6fa4ec158a6f4851a69` | ⚠️ Unaudited |
| PoolRewardHook | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x723f9aa67fdd9b0e375ef8553eb2afc28ecd4a96` | ⚠️ Unaudited |
| PoolToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8a2f2e0fd65caee0622ee7ba98b67f73717d1683` | ⚠️ Unaudited |
| PoolTypes | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x52d85e14bf2bfb16ed4a8f3b5a0c8fc0baa78a9c` | ⚠️ Unaudited |
| PoolUtilities | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5fba69a794f395184b5760daf1134028608e5cd1` | ⚠️ Unaudited |
| Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3aa66362b62712f281a00e3d1f72b7b5b851736e` | ⚠️ Unaudited |
| ProxyAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x069c24600c2a03147d4e1d9b04d193151676f577` | ⚠️ Unaudited |
| ProxyFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x66807b5598a848602734b82e432dd88dbe13fc8f` | ⚠️ Unaudited |
| PublicResolver | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x226159d592e2b063810a10ebf6dcbada94ed68b8` | ⚠️ Unaudited |
| PunkGateway | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2bbb6f9c858a96a91e1e8e5b7f0e25ea34835ba0` | ⚠️ Unaudited |
| RariFuseLendingAMO | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x843df6229c1b8fc41c1d74bcddc7e17788ddb0a2` | ⚠️ Unaudited |
| Registrar | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x328328ba09293a4002b4b7615cba2c816d6bdf51` | ⚠️ Unaudited |
| RegistrarMigration | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6109dd117aa5486605fc85e040ab00163a75c662` | ⚠️ Unaudited |
| RescueToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb15ffb543211b558d40160811e5dcbcd7d5aaac9` | ⚠️ Unaudited |
| RetroactiveVesting | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5dca270671935cf3df78bd8373c22be250198a03` | ⚠️ Unaudited |
| RewardFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xedccb35798fae4925718a43cc608ae136208aa8d` | ⚠️ Unaudited |
| RewardForwarder | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x811b699c69ff0abff98091919e637fedcd5dffac` | ⚠️ Unaudited |
| Root | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x285088c75a8508664ad77df63e2d60a408e5284a` | ⚠️ Unaudited |
| SDL | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf1dc500fde233a4055e25e5bbf516372bc4f6871` | ⚠️ Unaudited |
| Secondary monetary policy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x188041ad83145351ef45f4bb91d08886648aeaf8` | ⚠️ Unaudited |
| Secondary monetary policy for WBTC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4e1f162fd143e4a829341efd6dd451b018b10f9c` | ⚠️ Unaudited |
| SemiLog monetary policy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2a28789645776eaa95f6d491ff375781ea5b40dd` | ⚠️ Unaudited |
| SfraxPriceOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x35146cd017282fc18863494a9c618a521d68c3f7` | ⚠️ Unaudited |
| sfrxETH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x17845ea6a9bfd2caf1b9e558948bb4999df2656e` | ⚠️ Unaudited |
| sfrxETH2 crvUSD leverage zap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x43ecffe6c6c1b9f24aeb5c180e659c2a6fce11bc` | ⚠️ Unaudited |
| SfrxEthDualOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0xa36a19e0ae3a91d886fc9d0914fc88a6cbf7e7f2` | ⚠️ Unaudited |
| SfrxEthOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x27942afe4ecb7f9945168094e0749cac749ac97b` | ⚠️ Unaudited |
| SfrxEthSfraxInverseOracleAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x1010e24a2f0e6954c6456bf925764ecc8577fa2c` | ⚠️ Unaudited |
| SfrxUsd2OracleImplementation | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | fraxtal | n/a | 2 deployments: fraxtal `0x1b680f4385f24420d264d78cab7c58365ed3f1ff`; fraxtal `0xf750636e1df115e3b334ed06e5b45c375107fc60` | ⚠️ Unaudited |
| ShibbolethTokenFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2d915c3e78767b123bf56ab2daa49f74bb97904c` | ⚠️ Unaudited |
| ShortNameAuctionController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x699c7f511c9e2182e89f29b3bfb68bd327919d17` | ⚠️ Unaudited |
| SimpleRewarder | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x595cce097a57ceef0e8e9032d29c24b064318eb5` | ⚠️ Unaudited |
| SmartWalletChecker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1085e85a7384dd2f0d46d2918630a1cf174b5853` | ⚠️ Unaudited |
| SmartWalletWhitelist | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x53c13ba8834a1567474b19822aad85c6f90d9f9f` | ⚠️ Unaudited |
| StablePriceOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb9d374d0fe3d8341155663fae31b7beae0ae233a` | ⚠️ Unaudited |
| Stake_FXS_WETH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa29367a3f057f3191b62bd4055845a33411892b6` | ⚠️ Unaudited |
| StakedAave | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x481484ee9be4819842268487aeeb1f43810d03a1` | ⚠️ Unaudited |
| StakedAaveV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x4da27a545c0c5b758a6ba100e3a049001de870f5` | ⚠️ Unaudited |
| StakeDAO_AMO | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x375278d3c65f29c1a90e8550888f1439cfefe465` | ⚠️ Unaudited |
| StakeUIHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x06abcc3b98b7310f50197f0f9cec6cf6e176ae68` | ⚠️ Unaudited |
| StakingPools | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xab8e74017a8cc7c15ffccd726603790d26d7deca` | ⚠️ Unaudited |
| StakingProxyConvex | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x32a2849100ed63878ba8ee6e924eb052a57ecb44` | ⚠️ Unaudited |
| StakingProxyERC20 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1d0c890236261c3a2440af03ab10654e60476d80` | ⚠️ Unaudited |
| StakingProxyERC20Joint | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x64167f69a10ab360a8c45b8c7db31d7752111181` | ⚠️ Unaudited |
| StakingRewardsDual_FRAX3CRV | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb88107bfb7aa9b6a5ec8784374018073e76d4df0` | ⚠️ Unaudited |
| StakingRewardsDualV2_FRAX3CRV_V2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdfb6ef63ea2753c6598fca1b220358f17e4d137e` | ⚠️ Unaudited |
| StakingRewardsDualV3_FRAX_IQ | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x35fc5fd90e06c47c0d9debfedb1daf55bce14e6d` | ⚠️ Unaudited |
| StakingRewardsDualV4_FRAX_OHM | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfc77a420f56dec53e3b91d7fc936902e132335ff` | ⚠️ Unaudited |
| StakingRewardsMultiGauge_Gelato_FRAX_DAI | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcdfc491804a420b677f8e788b5157856910e2f6f` | ⚠️ Unaudited |
| StakingRewardsMultiGauge_StakeDAO | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xeb81b86248d3c2b618ccb071adb122109da96da2` | ⚠️ Unaudited |
| StakingRewardsMultiGauge_StakeDAO_FRAX_Put | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0a53544b2194dd8ebc62c779043fc0624705bb56` | ⚠️ Unaudited |
| StashFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x73f88bfc32f5946b0e0851ca53f277fe177bd87c` | ⚠️ Unaudited |
| StashFactoryV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x884da067b66677e72530df91eabb6e3ce69c2be4` | ⚠️ Unaudited |
| StashTokenWrapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc19cf0eaa43ee080c3cb8fb7db388091d3a13eb7` | ⚠️ Unaudited |
| StateRootOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x28fb3520426d90eb03711bee041b9c3213acb383` | ⚠️ Unaudited |
| SubdomainMigrationRegistrar | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa9a4ee56d91985a886affce7eb407492d263e3d2` | ⚠️ Unaudited |
| SubdomainRegistrar | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0b07463b30b302a98407d3e3df85ebc073b0dbd1` | ⚠️ Unaudited |
| SuperstateTokenV5_1 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x14d60e7fdc0d71d8611742720e4c50e7a974020c` | ⚠️ Unaudited |
| SusdeMonetaryPolicy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf574cbebbd549273af82b42cd0230de9ea6efef7` | ⚠️ Unaudited |
| Swap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9dc37020f261758871104f9d8b87e575ee45bc5a` | ⚠️ Unaudited |
| SwapCalculator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xef8af8b67a58fe795304be8593c44ac0d3a59033` | ⚠️ Unaudited |
| SwapDeployer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x29fd31d37ab8d27f11eab68f96424bf64231ffce` | ⚠️ Unaudited |
| SwapFlashLoan | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x13cc34aa8037f722405285ad2c82fe570bfa2bdc` | ⚠️ Unaudited |
| SwapMigrator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9cdef6e33687f438808766fc133b2e9d1a16ad57` | ⚠️ Unaudited |
| SwapUtils | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x149bbb210051851016f57a2824c0444f642833a6` | ⚠️ Unaudited |
| SynapseERC20 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0f2d719407fdbeff09d87557abb7232601fd9f29` | ⚠️ Unaudited |
| SynthSwapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdf815ea6b066ac9f3107d8863a6c19aa2a5d24d3` | ⚠️ Unaudited |
| Timelock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8412ebf45bac1b340bbe8f318b928c466c4e39ca` | ⚠️ Unaudited |
| TimelockController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x72d7b869ba1af7d7ee9010dd98180e9231362588` | ⚠️ Unaudited |
| TimeToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x869d1b8610c038a6c4f37bd757135d4c29ae8917` | ⚠️ Unaudited |
| TokemakAMO | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4e710b33c87cedf832cd82e11d743a011864f733` | ⚠️ Unaudited |
| TokenFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3c995e43e6ddd551e226f4c5544c77bfed147ab9` | ⚠️ Unaudited |
| TokenLock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1805733b25c5de241a60bbf204af304d36cb2235` | ⚠️ Unaudited |
| TokenTrackerAMO | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1e077b2a6a67f543629c8fccc97229452211a612` | ⚠️ Unaudited |
| TokenTrackerV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x37336ad1f3a145c710247e6a14c9acc7f34d09ee` | ⚠️ Unaudited |
| Transmuter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xab7a49b971afdc7ee26255038c82b4006d122086` | ⚠️ Unaudited |
| TreasuryFunds | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1389388d01708118b497f59521f6943be2541bb7` | ⚠️ Unaudited |
| TreasuryLend | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x04dd97255ddee29c941d85f5b5cde6ace8bd207f` | ⚠️ Unaudited |
| TreasuryManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x858847c21b075e45727fcb0b544bd843cd750361` | ⚠️ Unaudited |
| TreasuryManagerFrax | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9d464b601f74c8d3d42379921106b907f1055f80` | ⚠️ Unaudited |
| TreasuryRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcab2bb34eeaa177bd8d36e46114b45528aac4507` | ⚠️ Unaudited |
| TreasurySwap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x00711e5c8fcd631ba9c6165d99e641face75d21d` | ⚠️ Unaudited |
| TWAMM_AMO | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x11fc7df1fb0e51f9c9ab8f575d9bbadc92fa425b` | ⚠️ Unaudited |
| UniswapV2Pair | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x97c4adc5d28a86f9470c70dd91dc6cc2f20d2d4d` | ⚠️ Unaudited |
| UniV2TWAMMFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x54f454d747e037da288db568d4121117eab34e79` | ⚠️ Unaudited |
| UniV2TWAMMRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa007a9716dba05289df85a90d0fd9d39bee808de` | ⚠️ Unaudited |
| UniV3LiquidityAMO | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3814307b86b54b1d8e7b2ac34662de9125f8f4e6` | ⚠️ Unaudited |
| UniV3LiquidityAMO_V2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0e894387c073c6f62c9bbded21e33d3062847440` | ⚠️ Unaudited |
| UniV3TWAPOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x59985d79e1e69f659f4ab97db07a35ce73d9174b` | ⚠️ Unaudited |
| USCC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x41feb4943df07f6793c059f98f28ed0e15f6852b` | ⚠️ Unaudited |
| USCCv2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5ce236c888fa6d8dba00e7d66cfd9bc9cadea2e1` | ⚠️ Unaudited |
| USD0LpOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2aeb5c8776567c4eeebda1450e343b1bef49ae32` | ⚠️ Unaudited |
| USDP | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x8e870d67f660d95d5be530380d0ec0bd388289e1` | ⚠️ Unaudited |
| USTB | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3986a1475f3c7786973e1b83cd6240521c51a1af` | ⚠️ Unaudited |
| USTBv2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x34ee7037db155b6fa18c9727169d39f63a8794da` | ⚠️ Unaudited |
| Utilities | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf37c41ef2281893b5971769370d6cdd35864b503` | ⚠️ Unaudited |
| VariableInterestRate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x18500cb1f2fe7a40ebda393383a0b8548a31f261` | ⚠️ Unaudited |
| VariableInterestRate50bp | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xff7846bacb63fe97406a1e1e48caf1595f66a98c` | ⚠️ Unaudited |
| Vault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x596f8e49ace6fc8e09b561972360dc216f1c2a1f` | ⚠️ Unaudited |
| VaultEarnedView | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x382cd669d473a35202c9c3c74168518e0ab3d925` | ⚠️ Unaudited |
| veFPISYieldDistributorV4 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5814cbfb4f67cb384de981849d773a9da179fec9` | ⚠️ Unaudited |
| veFPISYieldDistributorV5 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe6d31c144ba99af564be7e81261f7bd951b802f6` | ⚠️ Unaudited |
| veFXSYieldDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x19a0a70a68fbc604bf20a03b787df8f7ac1d50f0` | ⚠️ Unaudited |
| veFXSYieldDistributorV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x62c4cf364078c98fa08afdb4d3d8d87e780ebd45` | ⚠️ Unaudited |
| veFXSYieldDistributorV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2aaa9ae7101e0a59c52916d8db9acda311b1c296` | ⚠️ Unaudited |
| veFXSYieldDistributorV4 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc6764e58b36e26b08fd1d2aed4538c02171fa872` | ⚠️ Unaudited |
| VeSDLRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc7b10d3b08ceb05d8ff58a3c781225d9a72078ae` | ⚠️ Unaudited |
| VestedEscrow | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe98984ad858075813ada4261af47e68a64e28fcc` | ⚠️ Unaudited |
| VestedFXS | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x54bd5c72645fed784c117ca83533e0584b24ee5c` | ⚠️ Unaudited |
| Vesting | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf8504e92428d65e56e495684a38f679c1b1dc30b` | ⚠️ Unaudited |
| vlCvxExtraRewardDistribution | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8ed4bbf39e3080b35da84a13a0d1a2fdce1e0602` | ⚠️ Unaudited |
| VoteDelegateExtension | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5349ffba494ac3c888ffa16fd438f44b8c67fb07` | ⚠️ Unaudited |
| VoterProxyOwner | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2b83552729067d1c32a2a31024776bd83c48816e` | ⚠️ Unaudited |
| VotingBalance | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4c4d57f69f3081694e721dcd1a42536062857ce9` | ⚠️ Unaudited |
| VotingBalanceMax | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x59ccbaabbfcac52e007a706242c5b81a48179bf2` | ⚠️ Unaudited |
| VotingBalanceV2Gauges | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1cc2cfed7e40bab890ca532ad0dbb413e072b988` | ⚠️ Unaudited |
| VotingEligibility | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbce1cbf6816d158e5f5d9713bcca805e37bbfb0f` | ⚠️ Unaudited |
| Vyper_contract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0145fd99f1dd6e2491e44fca608c481c9c5b97a9` | ⚠️ Unaudited |
| WBTC-crvUSD leverage zap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa2518b71ee64e910741f5cf480b19e8e402de4d7` | ⚠️ Unaudited |
| WETHGateway | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1302a7da9cfa2bef4d7d8985fa0b1a1729971527` | ⚠️ Unaudited |
| WhitelistComplianceOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x285d3256f0bbe7b69b511f75ce7a88f03d360a06` | ⚠️ Unaudited |
| WrapperFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6a5a26e5b91cc9eb1d84da16a8360bc1df8212bc` | ⚠️ Unaudited |
| wstETH-crvUSD leverage zap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x293436d4e4a15fbc6ccc400c14a01735e5fc74fd` | ⚠️ Unaudited |
| ZigZagToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc91a71a1ffa3d8b22ba615ba1b9c01b2bbbf55ad` | ⚠️ Unaudited |
| ZKasinoToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc91c885580da11ac060bdd692bdaa7ee29cfc976` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (92)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-240759 | `0x0132f1cc5844f08b05ced7084ff3df3a3b582d43` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-240761 | `0x04acaf8d2865c0714f79da09645c13fd2888977f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-240763 | `0x111ddab65af5ff96b674400246699ed40f550de1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-240764 | `0x11fe3be54ac01c13dd985ce2bdd10ed77e1376cc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-240765 | `0x126bcc31bc076b3d515f60fbc81fdde0b0d542ed` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-240766 | `0x13fe62cb24aea5afd179f20d362c056c3881abca` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-240768 | `0x19d7df1387e7722fccce2aab4b7ffc72e6592934` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-240772 | `0x3077c833346501079afe93f7bb7ae88a6fbbc1f5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-240773 | `0x31d982ebd82ad900358984bd049207a4c2468640` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-240775 | `0x34a9f273cbd847d49c3de015fc26c3e66825f8b2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-240776 | `0x34c0bd5877a5ee7099d0f5688d65f4bb9158bde2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-240777 | `0x36cb65c1967a0fb0eee11569c51c2f2aa1ca6f6d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-240781 | `0x3ad4dc2319394bb4be99a0e4ae2abf7bcebd648e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-240790 | `0x452420df4ac1e3db5429b5fd629f3047482c543c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-240793 | `0x4f95c5ba0c7c69fb2f9340e190ccee890b3bd87c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-240799 | `0x5e8422345238f34275888049021821e8e08caa1f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-240800 | `0x66cc916ed5c6c2fa97014f7d1cd141528ae171e4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-240801 | `0x694c245bcd2d41a808935b2f36706dddecf1bf81` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-240803 | `0x6ca2338a21b2fe9dd39040d2fe06aad861f77f95` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-240804 | `0x6ca98f43719231d38f6426db64c7f3d5c7ce7876` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-240809 | `0x7a07d606c87b7251c2953a30fa445d8c5f856c7a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-240813 | `0x88f7474b2c72479910495362f979de3b4cbcfbb4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-240814 | `0x8c5d64d10394cfa070066e70ec19e67398b4dabe` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-240819 | `0x938d99a81814f66b01010d19ddce92a633441699` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-240820 | `0x941be12d710f6333ffc8c8e1eded53b329fd3ee7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-240821 | `0x983af86c94fe3963989c22ceeeb6ea8eac32d263` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-240822 | `0x99b5587ab54a49e3f827d10175caf69c0187bfa8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-240825 | `0xa3d62f83c433e2a56af392e08a705a52ded63696` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-240827 | `0xa663b02cf0a4b149d2ad41910cb81e23e1c41c32` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-240829 | `0xa9b5fb84b7aeaf0d51c95db04a76b1d4738d0ec5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-240830 | `0xac3e018457b222d93114458476f3e3416abbe38f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-240835 | `0xc71bf5ee4740405030ef521f18a96ea14fec802d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-240837 | `0xcf62f905562626cfcdd2261162a51fd02fc9c5b6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-240844 | `0xe827abf9f462ac4f147753d86bc5f91e186e4e9c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-240862 | `0xfe2ea8de262d956e852f12de108fda57171a0a29` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-240864 | `0xff92d3210c2db7736b8c40b0c1848f7ef74cf519` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-240865 | `0x31d982ebd82ad900358984bd049207a4c2468640` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-240866 | `0x7a07d606c87b7251c2953a30fa445d8c5f856c7a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-240867 | `0x80eede496655fb9047dd39d9f418d5483ed600df` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-240898 | `0x452420df4ac1e3db5429b5fd629f3047482c543c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-240899 | `0x80eede496655fb9047dd39d9f418d5483ed600df` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-240900 | `0xdee45510b42cb0678c8a61d043c698af66b0d852` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | unichain | unit-240869 | `0x80eede496655fb9047dd39d9f418d5483ed600df` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | unichain | unit-240870 | `0x983af86c94fe3963989c22ceeeb6ea8eac32d263` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | unichain | unit-240871 | `0xc71bf5ee4740405030ef521f18a96ea14fec802d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-240876 | `0x5658e82e330e094627d9b362ed0e137ea06673c4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-240877 | `0x80eede496655fb9047dd39d9f418d5483ed600df` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-240878 | `0xf74d38a26948e9dda53ed85cf03c6b1188fbb30c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sonic | unit-240879 | `0x3a5cda3ac66aa80573402610c94b74ed6cdb2f23` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sonic | unit-240880 | `0x80eede496655fb9047dd39d9f418d5483ed600df` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sonic | unit-240881 | `0xf6115bb9b6a4b3660da409cb7aff1fb773efad0b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fraxtal | unit-240882 | `0xfc00000000000000000000000000000000000001` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-240883 | `0xa05e9f9b97c963b5651ed6a50fae46625a8c400b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-240884 | `0xc5e4a0cfef8d801278927c25fb51c1db7b69ddfb` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-240885 | `0xea77c590bb36c43ef7139ce649cfbcfd6163170d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-240918 | `0x80eede496655fb9047dd39d9f418d5483ed600df` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-240919 | `0x8ebb34b1880b2ea5e458082590b3a2c9ea7c41a2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-240920 | `0xb85a8fda7f5e52e32fa5582847cfffee9456a5dc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon-zkevm | unit-240868 | `0x80eede496655fb9047dd39d9f418d5483ed600df` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sei | unit-240875 | `0x80eede496655fb9047dd39d9f418d5483ed600df` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-240913 | `0x3ec3849c33291a9ef4c5db86de593eb4a37fde45` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-240914 | `0x73382eb28f35d80df8c3fe04a3eed71b1afce5de` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-240915 | `0xe5020a6d073a794b6e7f05678707de47986fb0b6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | plasma | unit-240916 | `0x8ebb34b1880b2ea5e458082590b3a2c9ea7c41a2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | plasma | unit-240917 | `0xb85a8fda7f5e52e32fa5582847cfffee9456a5dc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | mode | unit-240886 | `0x486cb4788f1be7cdef9301a7a637b451df3cf262` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | mode | unit-240887 | `0x7360575f6f8f91b38dd078241b0df508f5fbfdf9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | mode | unit-240888 | `0x80eede496655fb9047dd39d9f418d5483ed600df` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-240889 | `0x29f5dbd0fe72d8f11271fcbe79cb87e18a83c70a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-240890 | `0x80eede496655fb9047dd39d9f418d5483ed600df` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-240891 | `0xa46a266dcbf199a71532c76967e200994c5a0d6d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-240892 | `0x452420df4ac1e3db5429b5fd629f3047482c543c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-240893 | `0x7a07d606c87b7251c2953a30fa445d8c5f856c7a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-240894 | `0x80eede496655fb9047dd39d9f418d5483ed600df` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ink | unit-240901 | `0x452420df4ac1e3db5429b5fd629f3047482c543c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ink | unit-240902 | `0x7a07d606c87b7251c2953a30fa445d8c5f856c7a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ink | unit-240903 | `0x80eede496655fb9047dd39d9f418d5483ed600df` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-240904 | `0x6ca98f43719231d38f6426db64c7f3d5c7ce7876` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-240905 | `0xa71f2204eddb8d84f411a0c712687fae5002e7fb` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-240906 | `0xc7346783f5e645aa998b106ef9e7f499528673d8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-240907 | `0x80eede496655fb9047dd39d9f418d5483ed600df` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-240908 | `0x983af86c94fe3963989c22ceeeb6ea8eac32d263` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-240909 | `0xc71bf5ee4740405030ef521f18a96ea14fec802d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | blast | unit-240910 | `0x80eede496655fb9047dd39d9f418d5483ed600df` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | blast | unit-240911 | `0x85b1714b25f40fd5025423124c076476073180b3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | blast | unit-240912 | `0xe93cb38f97469eac2f284a87813d0d701b28e58e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | scroll | unit-240895 | `0x397f939c3b91a74c321ea7129396492ba9cdce82` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | scroll | unit-240896 | `0x91ddb0e0c36b901c6bf53b9eb5aca0eb1465f558` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | scroll | unit-240897 | `0xf6f45ccb5e85d1400067ee66f9e168f83e86124e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | aurora | unit-240872 | `0x53e36c8380ff62d7964bfa4868a0045e58a52344` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | aurora | unit-240873 | `0x80eede496655fb9047dd39d9f418d5483ed600df` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | aurora | unit-240874 | `0x8ebb34b1880b2ea5e458082590b3a2c9ea7c41a2` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [DL audit link](https://skynet.certik.com/projects/fraxfinance) | CertiK | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [June 2021 - Trail of Bits](https://github.com/trailofbits/publications/blob/master/reviews/FraxFinance.pdf) | Trail of Bits | Audit | 2021-06 | stale | Direct | contract_name | matched | 3 | 0 | 0 | 20 | high |
| [Dec 2021 - Trail of Bits](https://github.com/trailofbits/publications/blob/master/reviews/FraxQ42021.pdf) | Trail of Bits | Audit | 2021-12 | stale | Direct | contract_name | matched | 1 | 0 | 0 | 28 | high |
| [August 2022 - Fraxswap & FPI Trail of Bits](https://github.com/trailofbits/publications/blob/master/reviews/FraxQ22022.pdf) | Trail of Bits | Audit | 2022-08 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 7 | high |
| [September 2022 - frxETH - Code4rena](https://code4rena.com/reports/2022-09-frax) | Code4rena | Contest | 2022-09 | stale | Direct | contract_name | matched | 2 | 0 | 0 | 4 | high |
| [November 2022 - Fraxlend & Fraxferry - Trail of Bits](https://github.com/trailofbits/publications/blob/master/reviews/2022-10-fraxfinance-fraxlend-fraxferry-securityreview.pdf) | Trail of Bits | Audit | 2022-10 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |
| [July 2023 - FrxGov - Trail of Bits](https://github.com/trailofbits/publications/blob/master/reviews/2023-05-fraxgov-securityreview.pdf) | Trail of Bits | Audit | 2023-05 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 6 | high |
| [Oct 2023 - FXB, sFRAX, frxETH Redemption Queue, Frax Oracles - Trail of Bits](https://github.com/FraxFinance/frax-solidity/blob/master/src/audits/FXB%2C%20sFRAX%2C%20frxETH%20Redemption%20Queue%2C%20Frax%20Oracles%20-%20Trail%20of%20Bits%20-%20Oct%202023.pdf) | Trail of Bits | Audit | 2023-10 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 13 | high |
| [Fraxchain (Fraxtal) - Trail of Bits - Jan 2024.pdf](https://github.com/FraxFinance/frax-solidity/blob/master/src/audits/Fraxchain%20(Fraxtal)%20-%20Trail%20of%20Bits%20-%20Jan%202024.pdf) | Trail of Bits | Audit | 2024-02 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 8 | high |
| [March 2024 - frxETH V2 - Frax Security Cartel](https://github.com/FraxFinance/frax-solidity/blob/master/src/audits/frxETH%20V2%20Audit%20Report%20-%20Frax%20Security%20Cartel%20-%20March%202024.pdf) | Trail of Bits | Audit | 2024-03 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 12 | high |
| [April 2024 - Fraxtal, VestedFXS, and Flox - Frax Security Cartel](https://github.com/FraxFinance/frax-solidity/blob/master/src/audits/Fraxtal%20Audit%20-%20April%202024%20-%20Frax%20Security%20Cartel.pdf) | Frax Security Cartel | Audit | 2024-04 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 8 | high |
| [FPISLocker + FraxtalERC4626MintRedeemer (Fraxtal sFRAX) - May 2024 - Frax Security Cartel.pdf](https://github.com/FraxFinance/frax-solidity/blob/master/src/audits/FPISLocker%20%2B%20FraxtalERC4626MintRedeemer%20(Fraxtal%20sFRAX)%20-%20May%202024%20-%20Frax%20Security%20Cartel.pdf) | Code4rena | Contest | 2024-10 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |
| [May 2024 - Curve AMO for frxETH V2 - Frax Security Cartel](https://github.com/FraxFinance/frax-solidity/blob/master/src/audits/Curve%20AMO%20Audit%20Report%20-%20Frax%20Security%20Cartel%20-%20May%202024.pdf) | Code4rena | Contest | 2024-05 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 6 | high |
| [Frax-Certora (Bamm) report - Final.pdf](https://github.com/FraxFinance/frax-solidity/blob/master/src/audits/Frax-Certora%20(Bamm)%20report%20-%20%20Final.pdf) | Certora | Audit | 2024-10 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 9 | high |
| [March 2025 - Fraxtal North Star - Frax Security Cartel](https://github.com/FraxFinance/frax-solidity/blob/master/src/audits/Fraxtal%20North%20Star%20Audit%20Report.pdf) | Frax Security Cartel | Audit | 2025-03 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 14 | high |
| [ChainSecurity_Frax_FXB_sfrxUSD_Upgrade_Audit.pdf](https://github.com/FraxFinance/frax-solidity/blob/master/src/audits/ChainSecurity_Frax_FXB_sfrxUSD_Upgrade_Audit.pdf) | ChainSecurity | Audit | 2025-07 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 10 | high |
| [Frax - Zellic Audit Report.pdf](https://github.com/FraxFinance/frax-solidity/blob/master/src/audits/Frax%20-%20Zellic%20Audit%20Report.pdf) | Zellic | Audit | 2025-07 | aging | Direct | contract_name | matched | 1 | 1 | 0 | 17 | high |
| [Frax0 Mesh - Zellic Audit Report.pdf](https://github.com/FraxFinance/frax-solidity/blob/master/src/audits/Frax0%20Mesh%20-%20Zellic%20Audit%20Report.pdf) | Zellic | Audit | 2025-09 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 17 | high |
| [- [Audits]()](https://docs.frax.finance/other/audits.md) | unknown | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [- [审计]()](https://docs.frax.finance/zh/qi-ta/shen-ji.md) | unknown | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [17227] DL audit link — no match: The provided text is a CertiK Skynet project insight page, not an audit report. It contains no scope section, contract names, or audit date. The only contract addresses listed are for the FRAX token and a centralization scan, but these are not explicitly stated as being in scope of an audit.
- [17228] June 2021 - Trail of Bits — matched: Extracted contract names from Coverage section and findings targets. Audit date from cover page and changelog.
- [17229] Dec 2021 - Trail of Bits — matched: Extracted contract names from Project Targets section and findings. Audit date from final report delivery date.
- [17230] August 2022 - Fraxswap & FPI Trail of Bits — no match: Extracted contracts from Project Targets and Detailed Findings sections. Audit date from cover page.
- [17231] September 2022 - frxETH - Code4rena — matched: Scope section explicitly lists 6 smart contracts. Audit date from report header.
- [17232] November 2022 - Fraxlend & Fraxferry - Trail of Bits — no match: Extracted from Project Targets and Project Coverage sections. Audit date from final report delivery date.
- [17233] July 2023 - FrxGov - Trail of Bits — no match: Extracted contracts from Project Targets and Project Coverage sections. veFXS.vy is referenced but explicitly stated as not in scope. FraxGovernorBravo is mentioned in finding TOB-FRAXGOV-8 as a target.
- [17234] Oct 2023 - FXB, sFRAX, frxETH Redemption Queue, Frax Oracles - Trail of Bits — no match: Extracted 13 contracts from scope sections and coverage details. Audit date from cover page and delivery date.
- [17235] Fraxchain (Fraxtal) - Trail of Bits - Jan 2024.pdf — no match: Extracted contracts from Project Targets, Project Coverage, and mutation testing sections. Audit date from cover page and delivery date.
- [17236] March 2024 - frxETH V2 - Frax Security Cartel — no match: Scope section 2.1 lists directories and files. Contract names extracted from file paths and findings.
- [17237] April 2024 - Fraxtal, VestedFXS, and Flox - Frax Security Cartel — no match: Extracted contracts from scope directories and findings. Audit date from cover page.
- [17238] FPISLocker + FraxtalERC4626MintRedeemer (Fraxtal sFRAX) - May 2024 - Frax Security Cartel.pdf — no match: Extracted 5 contracts from the scope section (Section 2.1) and the report date from the cover page.
- [17239] May 2024 - Curve AMO for frxETH V2 - Frax Security Cartel — no match: Extracted contracts from the scope section (contracts/curve-amo/ directory) and findings. Audit date from cover page.
- [17240] Frax-Certora (Bamm) report - Final.pdf — no match: Extracted 7 contracts from scope table and 2 from formal verification modules.
- [17241] March 2025 - Fraxtal North Star - Frax Security Cartel — no match: All contracts listed in the scope section of the audit report.
- [17242] ChainSecurity_Frax_FXB_sfrxUSD_Upgrade_Audit.pdf — no match: Extracted 10 contracts from scope tables in section 2.1. Audit date from cover page.
- [17243] Frax - Zellic Audit Report.pdf — matched: All contracts listed in the scope table (section 2.3) were extracted. The audit date is July 7, 2025, as stated on the cover page and in the executive summary.
- [17244] Frax0 Mesh - Zellic Audit Report.pdf — no match: Extracted 17 contract names from scope tables and file paths. Audit date found on cover page and header/footer as September 24, 2025.
- [17245] - [Audits]() — no match: The document is an index of audit reports with links, not an actual audit report. No contracts in scope are listed.
- [17246] - [审计]() — no match: The document is an index of audit reports with dates and links, but does not list specific contracts in scope for any audit.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| June 2021 - Trail of Bits | FRAXStablecoin | own contract | FRAXStablecoin (selected) `0x853d955acef822db058eb8505911ed77f175b99e` — deployed 2020-12-16 20:42:00+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| June 2021 - Trail of Bits | FRAXShares | own contract | FRAXShares (selected) `0x3432b6a60d23ca0dfca7761b7ab56459d9c964d0` — deployed 2020-12-16 20:42:40+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| June 2021 - Trail of Bits | veFXS | unmatched — not counted | — | Coverage section: 'veFXS. This voting escrow contract...' | no |
| June 2021 - Trail of Bits | Pool_USDC | unmatched — not counted | — | Coverage section: 'Pool_USDC and the FraxPool. Pool_USDC, which inherits from the FraxPool...' | no |
| June 2021 - Trail of Bits | FraxPool | unmatched — not counted | — | Coverage section: 'Pool_USDC and the FraxPool...' | no |
| June 2021 - Trail of Bits | CurveAMO_V3 | unmatched — not counted | — | Coverage section: 'CurveAMO_V3 implementation...' | no |
| June 2021 - Trail of Bits | InvestorAMO_V2 | unmatched — not counted | — | Coverage section: 'We also achieved partial coverage of the InvestorAMO_V2.' | no |
| June 2021 - Trail of Bits | FXS | unmatched — not counted | — | Finding TOB-FRAX-002 target: 'Frax.sol, FraxPool.sol, FXS.sol' | no |
| June 2021 - Trail of Bits | Frax | own contract | FRAXShares (selected) `0x3432b6a60d23ca0dfca7761b7ab56459d9c964d0` — deployed 2020-12-16 20:42:40+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| June 2021 - Trail of Bits | ERC20Custom | unmatched — not counted | — | Finding TOB-FRAX-007 description mentions ERC20Custom token contract | no |
| June 2021 - Trail of Bits | AdminUpgradeableProxy | unmatched — not counted | — | Finding TOB-FRAX-011 target: 'import.sol' and description mentions AdminUpgradeableProxy | no |
| June 2021 - Trail of Bits | ERC1967Proxy | unmatched — not counted | — | Finding TOB-FRAX-011 description mentions ERC1967Proxy | no |
| June 2021 - Trail of Bits | Proxy | unmatched — not counted | — | Finding TOB-FRAX-011 description mentions Proxy contract | no |
| June 2021 - Trail of Bits | ERC1967Upgrade | unmatched — not counted | — | Finding TOB-FRAX-011 description mentions ERC1967Upgrade | no |
| June 2021 - Trail of Bits | Address | unmatched — not counted | — | Finding TOB-FRAX-020 target: 'FRAXStablecoin/Address.sol' | no |
| June 2021 - Trail of Bits | ERC20 | unmatched — not counted | — | Finding TOB-FRAX-015 mentions ERC20 as a copied dependency | no |
| June 2021 - Trail of Bits | Babylonian | unmatched — not counted | — | Finding TOB-FRAX-015 mentions Babylonian as a copied dependency | no |
| June 2021 - Trail of Bits | Governance | unmatched — not counted | — | Finding TOB-FRAX-015 mentions Governance as a copied dependency | no |
| June 2021 - Trail of Bits | UniswapV2Library | unmatched — not counted | — | Appendix C mentions UniswapV2Library.sol | no |
| June 2021 - Trail of Bits | IMetaImplementationUSD | unmatched — not counted | — | Appendix C mentions Curve/IMetaImplementationUSD.sol | no |
| June 2021 - Trail of Bits | IStableSwap3Pool | unmatched — not counted | — | Appendix C mentions Curve/IStableSwap3Pool.sol | no |
| June 2021 - Trail of Bits | FXS1559_AMO | unmatched — not counted | — | Appendix C mentions FXS1559_AMO.sol | no |
| June 2021 - Trail of Bits | TransferHelper | unmatched — not counted | — | Fix log mentions TransferHelper.safeTransfer and TransferHelper.safeTransferFrom | no |
| Dec 2021 - Trail of Bits | FraxPoolV3 | unmatched — not counted | — | listed in Project Targets | no |
| Dec 2021 - Trail of Bits | veFXS | unmatched — not counted | — | listed in Project Targets | no |
| Dec 2021 - Trail of Bits | CrossChainCanonical | unmatched — not counted | — | listed in Project Targets | no |
| Dec 2021 - Trail of Bits | CCFrax1to1AMM | unmatched — not counted | — | listed in Project Targets | no |
| Dec 2021 - Trail of Bits | FraxUnifiedFarmTemplate | unmatched — not counted | — | listed in Project Targets | no |
| Dec 2021 - Trail of Bits | StakingRewards | unmatched — not counted | — | listed in Project Targets | no |
| Dec 2021 - Trail of Bits | FraxGaugeFXSRewardsDistributor | unmatched — not counted | — | listed in Project Targets | no |
| Dec 2021 - Trail of Bits | FraxUniV3Farm_Stable | unmatched — not counted | — | listed in Project Targets | no |
| Dec 2021 - Trail of Bits | StakingRewardsMultiGauge | unmatched — not counted | — | listed in Project Targets | no |
| Dec 2021 - Trail of Bits | Convex_AMO_V2 | unmatched — not counted | — | listed in Project Targets | no |
| Dec 2021 - Trail of Bits | FraxAMOMinter | unmatched — not counted | — | listed in Project Targets | no |
| Dec 2021 - Trail of Bits | BasicCvxHolder | unmatched — not counted | — | listed in Project Targets | no |
| Dec 2021 - Trail of Bits | veFXSYieldDistributorV4 | unmatched — not counted | — | listed in Project Targets | no |
| Dec 2021 - Trail of Bits | OHM_AMO | unmatched — not counted | — | mentioned in findings | no |
| Dec 2021 - Trail of Bits | Frax | own contract | FRAXShares (selected) `0x3432b6a60d23ca0dfca7761b7ab56459d9c964d0` — deployed 2020-12-16 20:42:40+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Dec 2021 - Trail of Bits | ComboOracle | unmatched — not counted | — | mentioned in findings | no |
| Dec 2021 - Trail of Bits | FRAXOracleWrapper | unmatched — not counted | — | mentioned in findings | no |
| Dec 2021 - Trail of Bits | FXSOracleWrapper | unmatched — not counted | — | mentioned in findings | no |
| Dec 2021 - Trail of Bits | FXS1559_AMO_V3 | unmatched — not counted | — | mentioned in findings | no |
| Dec 2021 - Trail of Bits | UniV3LiquidityAMO_V2_old | unmatched — not counted | — | mentioned in findings | no |
| Dec 2021 - Trail of Bits | UniV3LiquidityAMO_V2 | unmatched — not counted | — | mentioned in findings | no |
| Dec 2021 - Trail of Bits | UniV3LiquidityAMO | unmatched — not counted | — | mentioned in findings | no |
| Dec 2021 - Trail of Bits | MIM_Convex_AMO | unmatched — not counted | — | mentioned in findings | no |
| Dec 2021 - Trail of Bits | FraxUniV3Farm_Volatile | unmatched — not counted | — | mentioned in findings | no |
| Dec 2021 - Trail of Bits | SushiSwapLiquidityAMO_ARBI | unmatched — not counted | — | mentioned in findings | no |
| Dec 2021 - Trail of Bits | TWAMM | unmatched — not counted | — | mentioned in findings | no |
| Dec 2021 - Trail of Bits | FraxCrossChainFarmSushi | unmatched — not counted | — | mentioned in findings | no |
| Dec 2021 - Trail of Bits | ConvexAMO | unmatched — not counted | — | mentioned in findings | no |
| Dec 2021 - Trail of Bits | ManualTokenTrackerAMO | unmatched — not counted | — | mentioned in findings | no |
| August 2022 - Fraxswap & FPI Trail of Bits | UniV2TWAMMPair | unmatched — not counted | — | listed in scope and findings | no |
| August 2022 - Fraxswap & FPI Trail of Bits | LongTermOrders | unmatched — not counted | — | listed in findings | no |
| August 2022 - Fraxswap & FPI Trail of Bits | ExecVirtualOrders | unmatched — not counted | — | listed in findings | no |
| August 2022 - Fraxswap & FPI Trail of Bits | FPIControllerPool | unmatched — not counted | — | listed in scope and findings | no |
| August 2022 - Fraxswap & FPI Trail of Bits | CPITrackerOracle | unmatched — not counted | — | listed in scope and findings | no |
| August 2022 - Fraxswap & FPI Trail of Bits | FraxLendPairDeployer | unmatched — not counted | — | listed in findings | no |
| August 2022 - Fraxswap & FPI Trail of Bits | FraxLendCore | unmatched — not counted | — | listed in findings | no |
| September 2022 - frxETH - Code4rena | ERC20PermitPermissionedMint | unmatched — not counted | — | listed in scope | no |
| September 2022 - frxETH - Code4rena | frxETH | own contract | 0x5e8422… (selected) `0x5e8422345238f34275888049021821e8e08caa1f` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| September 2022 - frxETH - Code4rena | sfrxETH | own contract | 0xac3e01… (selected) `0xac3e018457b222d93114458476f3e3416abbe38f` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| September 2022 - frxETH - Code4rena | frxETHMinter | unmatched — not counted | — | listed in scope | no |
| September 2022 - frxETH - Code4rena | OperatorRegistry | unmatched — not counted | — | listed in scope | no |
| September 2022 - frxETH - Code4rena | xERC4626 | unmatched — not counted | — | listed in scope | no |
| November 2022 - Fraxlend & Fraxferry - Trail of Bits | FraxlendPair | unmatched — not counted | — | listed in Project Coverage section | no |
| November 2022 - Fraxlend & Fraxferry - Trail of Bits | FraxlendPairDeployer | unmatched — not counted | — | listed in Project Coverage section | no |
| November 2022 - Fraxlend & Fraxferry - Trail of Bits | FraxlendWhitelist | unmatched — not counted | — | listed in Project Coverage section | no |
| November 2022 - Fraxlend & Fraxferry - Trail of Bits | Fraxferry | unmatched — not counted | — | listed in Project Coverage section and findings | no |
| July 2023 - FrxGov - Trail of Bits | FraxGovernorAlpha | unmatched — not counted | — | listed in Project Coverage section | no |
| July 2023 - FrxGov - Trail of Bits | FraxGovernorOmega | unmatched — not counted | — | listed in Project Coverage section | no |
| July 2023 - FrxGov - Trail of Bits | VeFxsVotingDelegation | unmatched — not counted | — | listed in Project Coverage section | no |
| July 2023 - FrxGov - Trail of Bits | Governor | unmatched — not counted | — | target in findings TOB-FRAXGOV-3 and TOB-FRAXGOV-5 | no |
| July 2023 - FrxGov - Trail of Bits | GovernorCountingFractional | unmatched — not counted | — | mentioned in Code Quality Findings appendix | no |
| July 2023 - FrxGov - Trail of Bits | FraxGovernorBravo | unmatched — not counted | — | target in finding TOB-FRAXGOV-8 | no |
| Oct 2023 - FXB, sFRAX, frxETH Redemption Queue, Frax Oracles - Trail of Bits | FXB | unmatched — not counted | — | listed in scope and detailed findings | no |
| Oct 2023 - FXB, sFRAX, frxETH Redemption Queue, Frax Oracles - Trail of Bits | SlippageAuction | unmatched — not counted | — | listed in scope and detailed findings | no |
| Oct 2023 - FXB, sFRAX, frxETH Redemption Queue, Frax Oracles - Trail of Bits | LinearRewardsERC4626 | unmatched — not counted | — | listed in scope | no |
| Oct 2023 - FXB, sFRAX, frxETH Redemption Queue, Frax Oracles - Trail of Bits | SavingsFrax | unmatched — not counted | — | listed in scope | no |
| Oct 2023 - FXB, sFRAX, frxETH Redemption Queue, Frax Oracles - Trail of Bits | FraxEtherRedemptionQueue | unmatched — not counted | — | listed in scope and detailed findings | no |
| Oct 2023 - FXB, sFRAX, frxETH Redemption Queue, Frax Oracles - Trail of Bits | FrxEthEthDualOracle | unmatched — not counted | — | listed in scope and detailed findings | no |
| Oct 2023 - FXB, sFRAX, frxETH Redemption Queue, Frax Oracles - Trail of Bits | FrxEthFraxOracle | unmatched — not counted | — | listed in scope | no |
| Oct 2023 - FXB, sFRAX, frxETH Redemption Queue, Frax Oracles - Trail of Bits | SfrxEthEthDualOracle | unmatched — not counted | — | listed in scope and detailed findings | no |
| Oct 2023 - FXB, sFRAX, frxETH Redemption Queue, Frax Oracles - Trail of Bits | SfrxEthFraxOracle | unmatched — not counted | — | listed in scope | no |
| Oct 2023 - FXB, sFRAX, frxETH Redemption Queue, Frax Oracles - Trail of Bits | ArbitrumBlockHashRelay | unmatched — not counted | — | listed in scope | no |
| Oct 2023 - FXB, sFRAX, frxETH Redemption Queue, Frax Oracles - Trail of Bits | ArbitrumBlockHashProvider | unmatched — not counted | — | listed in scope | no |
| Oct 2023 - FXB, sFRAX, frxETH Redemption Queue, Frax Oracles - Trail of Bits | MerkleProofPriceSource | unmatched — not counted | — | listed in scope | no |
| Oct 2023 - FXB, sFRAX, frxETH Redemption Queue, Frax Oracles - Trail of Bits | StateRootOracle | unmatched — not counted | — | listed in scope | no |
| Fraxchain (Fraxtal) - Trail of Bits - Jan 2024.pdf | FraxchainPortal | unmatched — not counted | — | listed in Project Targets and Project Coverage sections | no |
| Fraxchain (Fraxtal) - Trail of Bits - Jan 2024.pdf | VoteEscrowedFXS | unmatched — not counted | — | listed in Project Targets and Project Coverage sections | no |
| Fraxchain (Fraxtal) - Trail of Bits - Jan 2024.pdf | YieldBoosterBridge | unmatched — not counted | — | listed in Project Coverage and mutation testing tables | no |
| Fraxchain (Fraxtal) - Trail of Bits - Jan 2024.pdf | SnapshotDistributor | unmatched — not counted | — | listed in Project Coverage and mutation testing tables | no |
| Fraxchain (Fraxtal) - Trail of Bits - Jan 2024.pdf | ERC4626PriceOracle | unmatched — not counted | — | listed in mutation testing table | no |
| Fraxchain (Fraxtal) - Trail of Bits - Jan 2024.pdf | wfrxETH | unmatched — not counted | — | listed in mutation testing table | no |
| Fraxchain (Fraxtal) - Trail of Bits - Jan 2024.pdf | ERC20PermitPermissionedOptiMintable | unmatched — not counted | — | listed in mutation testing table | no |
| Fraxchain (Fraxtal) - Trail of Bits - Jan 2024.pdf | Deploy | unmatched — not counted | — | listed in Project Targets | no |
| March 2024 - frxETH V2 - Frax Security Cartel | BeaconOracle | unmatched — not counted | — | listed in scope section 2.1 | no |
| March 2024 - frxETH V2 - Frax Security Cartel | EtherRouter | unmatched — not counted | — | listed in scope section 2.1 | no |
| March 2024 - frxETH V2 - Frax Security Cartel | FraxEtherMinter | unmatched — not counted | — | listed in scope section 2.1 | no |
| March 2024 - frxETH V2 - Frax Security Cartel | FraxEtherRedemptionQueue | unmatched — not counted | — | listed in scope section 2.1 | no |
| March 2024 - frxETH V2 - Frax Security Cartel | InterestRateCalculator | unmatched — not counted | — | mentioned in finding 3.3.3 | no |
| March 2024 - frxETH V2 - Frax Security Cartel | LendingPool | unmatched — not counted | — | listed in scope section 2.1 | no |
| March 2024 - frxETH V2 - Frax Security Cartel | LendingPoolCore | unmatched — not counted | — | mentioned in finding 3.4.6 | no |
| March 2024 - frxETH V2 - Frax Security Cartel | OperatorRole | unmatched — not counted | — | listed in scope section 2.1 | no |
| March 2024 - frxETH V2 - Frax Security Cartel | Timelock2Step | unmatched — not counted | — | listed in scope section 2.1 | no |
| March 2024 - frxETH V2 - Frax Security Cartel | ValidatorPool | unmatched — not counted | — | listed in scope section 2.1 | no |
| March 2024 - frxETH V2 - Frax Security Cartel | VariableInterestRate | unmatched — not counted | — | mentioned in finding 3.3.4 | no |
| March 2024 - frxETH V2 - Frax Security Cartel | VaultAccountingLibrary | unmatched — not counted | — | listed in scope section 2.1 | no |
| April 2024 - Fraxtal, VestedFXS, and Flox - Frax Security Cartel | FraxchainPortal | unmatched — not counted | — | listed in scope under Fraxtal component | no |
| April 2024 - Fraxtal, VestedFXS, and Flox - Frax Security Cartel | VestedFXS | unmatched — not counted | — | listed in scope under VestedFXS component | no |
| April 2024 - Fraxtal, VestedFXS, and Flox - Frax Security Cartel | ERC20PermitPermissionedOptiMintable | unmatched — not counted | — | mentioned in findings as audited contract | no |
| April 2024 - Fraxtal, VestedFXS, and Flox - Frax Security Cartel | BalanceChecker | unmatched — not counted | — | mentioned in findings as audited contract | no |
| April 2024 - Fraxtal, VestedFXS, and Flox - Frax Security Cartel | DelegationRegistry | unmatched — not counted | — | mentioned in findings as audited contract | no |
| April 2024 - Fraxtal, VestedFXS, and Flox - Frax Security Cartel | CrossDomainMessenger | unmatched — not counted | — | mentioned in findings as audited contract | no |
| April 2024 - Fraxtal, VestedFXS, and Flox - Frax Security Cartel | L2StandardBridge | unmatched — not counted | — | mentioned in findings as audited contract | no |
| April 2024 - Fraxtal, VestedFXS, and Flox - Frax Security Cartel | L2ToL1MessagePasser | unmatched — not counted | — | mentioned in findings as audited contract | no |
| FPISLocker + FraxtalERC4626MintRedeemer (Fraxtal sFRAX) - May 2024 - Frax Security Cartel.pdf | FPISLocker | unmatched — not counted | — | listed in scope | no |
| FPISLocker + FraxtalERC4626MintRedeemer (Fraxtal sFRAX) - May 2024 - Frax Security Cartel.pdf | FPISLockerUtils | unmatched — not counted | — | listed in scope | no |
| FPISLocker + FraxtalERC4626MintRedeemer (Fraxtal sFRAX) - May 2024 - Frax Security Cartel.pdf | IlFPISEvents | unmatched — not counted | — | listed in scope | no |
| FPISLocker + FraxtalERC4626MintRedeemer (Fraxtal sFRAX) - May 2024 - Frax Security Cartel.pdf | IlFPISStructs | unmatched — not counted | — | listed in scope | no |
| FPISLocker + FraxtalERC4626MintRedeemer (Fraxtal sFRAX) - May 2024 - Frax Security Cartel.pdf | FraxtalERC4626MintRedeemer | unmatched — not counted | — | listed in scope | no |
| May 2024 - Curve AMO for frxETH V2 - Frax Security Cartel | CurveLsdAmo | unmatched — not counted | — | Scope section: 'specifically in the contracts/curve-amo/ directory' and findings reference CurveLsdAmo extensively. | no |
| May 2024 - Curve AMO for frxETH V2 - Frax Security Cartel | CurveLsdAmoHelper | unmatched — not counted | — | Scope section: 'specifically in the contracts/curve-amo/ directory' and findings reference CurveLsdAmoHelper. | no |
| May 2024 - Curve AMO for frxETH V2 - Frax Security Cartel | EtherRouter | unmatched — not counted | — | Scope section: 'specifically in the contracts/curve-amo/ directory' and findings reference EtherRouter. | no |
| May 2024 - Curve AMO for frxETH V2 - Frax Security Cartel | LendingPool | unmatched — not counted | — | Scope section: 'specifically in the contracts/curve-amo/ directory' and findings reference LendingPool. | no |
| May 2024 - Curve AMO for frxETH V2 - Frax Security Cartel | LendingPoolCore | unmatched — not counted | — | Scope section: 'specifically in the contracts/curve-amo/ directory' and findings reference LendingPoolCore. | no |
| May 2024 - Curve AMO for frxETH V2 - Frax Security Cartel | FraxEtherRedemptionQueueV2 | unmatched — not counted | — | Scope section: 'specifically in the contracts/curve-amo/ directory' and findings reference FraxEtherRedemptionQueueV2. | no |
| Frax-Certora (Bamm) report - Final.pdf | BAMM | unmatched — not counted | — | listed in scope | no |
| Frax-Certora (Bamm) report - Final.pdf | BAMMERC20 | unmatched — not counted | — | listed in scope | no |
| Frax-Certora (Bamm) report - Final.pdf | BAMMHelper | unmatched — not counted | — | listed in scope | no |
| Frax-Certora (Bamm) report - Final.pdf | BAMMUIHelper | unmatched — not counted | — | listed in scope | no |
| Frax-Certora (Bamm) report - Final.pdf | FraxswapOracle | unmatched — not counted | — | listed in scope | no |
| Frax-Certora (Bamm) report - Final.pdf | VariableInterestRate | unmatched — not counted | — | listed in scope | no |
| Frax-Certora (Bamm) report - Final.pdf | BAMMFactory | unmatched — not counted | — | listed in scope | no |
| Frax-Certora (Bamm) report - Final.pdf | FixedPoint | unmatched — not counted | — | Formal Verification section | no |
| Frax-Certora (Bamm) report - Final.pdf | BitMath | unmatched — not counted | — | Formal Verification section | no |
| March 2025 - Fraxtal North Star - Frax Security Cartel | OptimismPortalCGT | unmatched — not counted | — | listed in scope section | no |
| March 2025 - Fraxtal North Star - Frax Security Cartel | SystemConfigCGT | unmatched — not counted | — | listed in scope section | no |
| March 2025 - Fraxtal North Star - Frax Security Cartel | L1StandardBridgeCGT | unmatched — not counted | — | listed in scope section | no |
| March 2025 - Fraxtal North Star - Frax Security Cartel | L1CrossDomainMessengerCGT | unmatched — not counted | — | listed in scope section | no |
| March 2025 - Fraxtal North Star - Frax Security Cartel | L1BlockCGT | unmatched — not counted | — | listed in scope section | no |
| March 2025 - Fraxtal North Star - Frax Security Cartel | L2CrossDomainMessengerCGT | unmatched — not counted | — | listed in scope section | no |
| March 2025 - Fraxtal North Star - Frax Security Cartel | L2StandardBridgeCGT | unmatched — not counted | — | listed in scope section | no |
| March 2025 - Fraxtal North Star - Frax Security Cartel | L2ToL1MessagePasserCGT | unmatched — not counted | — | listed in scope section | no |
| March 2025 - Fraxtal North Star - Frax Security Cartel | BaseFeeVaultCGT | unmatched — not counted | — | listed in scope section | no |
| March 2025 - Fraxtal North Star - Frax Security Cartel | FeeVaultCGT | unmatched — not counted | — | listed in scope section | no |
| March 2025 - Fraxtal North Star - Frax Security Cartel | L1FeeVaultCGT | unmatched — not counted | — | listed in scope section | no |
| March 2025 - Fraxtal North Star - Frax Security Cartel | SequencerFeeVaultCGT | unmatched — not counted | — | listed in scope section | no |
| March 2025 - Fraxtal North Star - Frax Security Cartel | ERC20ExPPOMWrapped | unmatched — not counted | — | listed in scope section | no |
| March 2025 - Fraxtal North Star - Frax Security Cartel | ERC20ExWrappedPPOM | unmatched — not counted | — | listed in scope section | no |
| ChainSecurity_Frax_FXB_sfrxUSD_Upgrade_Audit.pdf | FXB_LFRAX | unmatched — not counted | — | listed in scope table | no |
| ChainSecurity_Frax_FXB_sfrxUSD_Upgrade_Audit.pdf | FraxBeacon | unmatched — not counted | — | listed in scope table | no |
| ChainSecurity_Frax_FXB_sfrxUSD_Upgrade_Audit.pdf | FraxBeaconProxy | unmatched — not counted | — | listed in scope table | no |
| ChainSecurity_Frax_FXB_sfrxUSD_Upgrade_Audit.pdf | FraxUpgradeableProxy | unmatched — not counted | — | listed in scope table | no |
| ChainSecurity_Frax_FXB_sfrxUSD_Upgrade_Audit.pdf | FXB | unmatched — not counted | — | listed in scope table | no |
| ChainSecurity_Frax_FXB_sfrxUSD_Upgrade_Audit.pdf | FXBFactory | unmatched — not counted | — | listed in scope table | no |
| ChainSecurity_Frax_FXB_sfrxUSD_Upgrade_Audit.pdf | StakedFrxUSD2 | unmatched — not counted | — | listed in scope table | no |
| ChainSecurity_Frax_FXB_sfrxUSD_Upgrade_Audit.pdf | LinearRewardsQuasiErc4626 | unmatched — not counted | — | listed in scope table | no |
| ChainSecurity_Frax_FXB_sfrxUSD_Upgrade_Audit.pdf | FraxtalERC4626MintRedeemer | unmatched — not counted | — | listed in scope table | no |
| ChainSecurity_Frax_FXB_sfrxUSD_Upgrade_Audit.pdf | SfrxUsd2OracleImplementation | unmatched — not counted | — | listed in scope table | no |
| Frax - Zellic Audit Report.pdf | FraxNetDepositFactory | unmatched — not counted | — | listed in scope table | no |
| Frax - Zellic Audit Report.pdf | FraxNetDeposit | unmatched — not counted | — | listed in scope table | no |
| Frax - Zellic Audit Report.pdf | FraxProxy | unmatched — not counted | — | listed in scope table | no |
| Frax - Zellic Audit Report.pdf | FraxNetDepositV2 | unmatched — not counted | — | listed in scope table | no |
| Frax - Zellic Audit Report.pdf | Constants | unmatched — not counted | — | listed in scope table | no |
| Frax - Zellic Audit Report.pdf | FraxBeacon | unmatched — not counted | — | listed in scope table | no |
| Frax - Zellic Audit Report.pdf | RWARedemptionCoordinator | unmatched — not counted | — | listed in scope table | no |
| Frax - Zellic Audit Report.pdf | FrxUSD | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0xcacd6fd266af91b8aed52accc382b4e165586e29` — deployed 2025-01-03 13:28:47+03 — liveness: live (current_address_book_code)<br>FRAXStablecoin (alternative) `0x853d955acef822db058eb8505911ed77f175b99e` — deployed 2020-12-16 20:42:00+03 — liveness: live (current_address_book_code) | deployment-date disambiguation: 2025-01-03 was 185d from audit; next candidate 1664d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Frax - Zellic Audit Report.pdf | frxUsd_fraxtal | unmatched — not counted | — | listed in scope table | no |
| Frax - Zellic Audit Report.pdf | FrxUSDCustodian | unmatched — not counted | — | listed in scope table | no |
| Frax - Zellic Audit Report.pdf | IRemoteHop | unmatched — not counted | — | listed in scope table | no |
| Frax - Zellic Audit Report.pdf | AggregatorV3Interface | unmatched — not counted | — | listed in scope table | no |
| Frax - Zellic Audit Report.pdf | ITokenMessenger | unmatched — not counted | — | listed in scope table | no |
| Frax - Zellic Audit Report.pdf | IFrxUSDCustodian | unmatched — not counted | — | listed in scope table | no |
| Frax - Zellic Audit Report.pdf | IProxy | unmatched — not counted | — | listed in scope table | no |
| Frax - Zellic Audit Report.pdf | IRWAUSDCRedeemer | unmatched — not counted | — | listed in scope table | no |
| Frax - Zellic Audit Report.pdf | IRWAIssuer | unmatched — not counted | — | listed in scope table | no |
| Frax - Zellic Audit Report.pdf | IMessageTransmitter | unmatched — not counted | — | listed in scope table | no |
| Frax0 Mesh - Zellic Audit Report.pdf | FrxUSD2 | unmatched — not counted | — | listed in scope table for dev-fraxchain-contracts | no |
| Frax0 Mesh - Zellic Audit Report.pdf | StakedFrxUSD2 | unmatched — not counted | — | listed in scope table for dev-fraxchain-contracts | no |
| Frax0 Mesh - Zellic Audit Report.pdf | FrxUSD3 | unmatched — not counted | — | listed in scope table for dev-staked-frax-erc4626 | no |
| Frax0 Mesh - Zellic Audit Report.pdf | StakedFrxUSD3 | unmatched — not counted | — | listed in scope table for dev-staked-frax-erc4626 | no |
| Frax0 Mesh - Zellic Audit Report.pdf | FraxtalMinter | unmatched — not counted | — | listed in scope table for fraxnet-dev | no |
| Frax0 Mesh - Zellic Audit Report.pdf | RemoteCustodianUsdc | unmatched — not counted | — | listed in scope table for fraxnet-dev | no |
| Frax0 Mesh - Zellic Audit Report.pdf | RemoteCustodianWithOracle | unmatched — not counted | — | listed in scope table for fraxnet-dev | no |
| Frax0 Mesh - Zellic Audit Report.pdf | RemoteCustodian | unmatched — not counted | — | listed in scope table for fraxnet-dev | no |
| Frax0 Mesh - Zellic Audit Report.pdf | CustodianBase | unmatched — not counted | — | listed in scope table for fraxnet-dev | no |
| Frax0 Mesh - Zellic Audit Report.pdf | FraxOFTMintableAdapterUpgradeable | unmatched — not counted | — | listed in scope table for frax-oft-upgradeable | no |
| Frax0 Mesh - Zellic Audit Report.pdf | FraxOFTUpgradeable | unmatched — not counted | — | listed in scope table for frax-oft-upgradeable | no |
| Frax0 Mesh - Zellic Audit Report.pdf | FrxUSDOFTUpgradeable | unmatched — not counted | — | listed in scope table for frax-oft-upgradeable | no |
| Frax0 Mesh - Zellic Audit Report.pdf | SFrxUSDOFTUpgradeable | unmatched — not counted | — | listed in scope table for frax-oft-upgradeable | no |
| Frax0 Mesh - Zellic Audit Report.pdf | WFRAXTokenOFTUpgradeable | unmatched — not counted | — | listed in scope table for frax-oft-upgradeable | no |
| Frax0 Mesh - Zellic Audit Report.pdf | UpgradeV110Destinations | unmatched — not counted | — | listed in scope table for frax-oft-upgradeable | no |
| Frax0 Mesh - Zellic Audit Report.pdf | UpgradeAdapterEthereum | unmatched — not counted | — | listed in scope table for frax-oft-upgradeable | no |
| Frax0 Mesh - Zellic Audit Report.pdf | UpgradeAdapterFraxtal | unmatched — not counted | — | listed in scope table for frax-oft-upgradeable | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0x5ca135cb8527d76e932f34b5145575f9d8cbe08e` | FPI | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xc2544a32872a91f4a553b404c6950e89de901fdb` | FPIS | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x5fbaa3a3b489199338fbd85f7e3d444dc0504f33` | FrxUSDCustodianWithOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x860cc723935fc9a15ff8b1a94237a711dfef7857` | FrxUSDCustodianWithReceiver | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 375 |
| upstream | 20 |
| standard_library | 7 |
| needs_review | 92 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 16
- Inherited remapped matches: 0
- Address-book scope dispositions: 7 own (1 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 188 unmatched
- Matched-own operational status: 7 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=17, low=3
- Match method counts: temporal_name=1, unique_name=5

Zero-match audit list:

- [17227] DL audit link
- [17230] August 2022 - Fraxswap & FPI Trail of Bits
- [17232] November 2022 - Fraxlend & Fraxferry - Trail of Bits
- [17233] July 2023 - FrxGov - Trail of Bits
- [17234] Oct 2023 - FXB, sFRAX, frxETH Redemption Queue, Frax Oracles - Trail of Bits
- [17235] Fraxchain (Fraxtal) - Trail of Bits - Jan 2024.pdf
- [17236] March 2024 - frxETH V2 - Frax Security Cartel
- [17237] April 2024 - Fraxtal, VestedFXS, and Flox - Frax Security Cartel
- [17238] FPISLocker + FraxtalERC4626MintRedeemer (Fraxtal sFRAX) - May 2024 - Frax Security Cartel.pdf
- [17239] May 2024 - Curve AMO for frxETH V2 - Frax Security Cartel
- [17240] Frax-Certora (Bamm) report - Final.pdf
- [17241] March 2025 - Fraxtal North Star - Frax Security Cartel
- [17242] ChainSecurity_Frax_FXB_sfrxUSD_Upgrade_Audit.pdf
- [17244] Frax0 Mesh - Zellic Audit Report.pdf
- [17245] - [Audits]()
- [17246] - [审计]()

Fork inheritance lineage and inherited audits are included when available.
