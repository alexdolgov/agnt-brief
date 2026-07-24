# Agentic Audit Brief: Frax Finance

## Export Authority

- Production state: **published scope**
- Raw selected rows: 6 across 4 audit(s)
- Eligible audit results: 20 (4 matched; 16 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e40c73181a386361babecc6895e0f6c5587548f92814db09f88491f8b4a38d92`

## Project Overview

- Project: Frax Finance (`frax-finance`)
- Website: [https://frax.com/](https://frax.com/)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: arbitrum, aurora, avalanche, base, berachain, blast, bsc, ethereum, fantom, fraxtal, hyperliquid, ink, linea, mode, moonbeam, optimism, plasma, polygon, polygon-zkevm, scroll, sei, sonic, unichain, zksync-era
- Contract surface: 1715 unique implementations (1732 raw deployments)
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
Origin: alchemix (`0x853d95...75b99e`)
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
- Outside the address book: 1616 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 1 standard proxy/library)
- Proxy deployments represented within implementation groups: 30
- Confirmed-live implementations: 99 of 1715 unique; 1616 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 3/402
- Verified + Unaudited implementations: 399
- Verified by bytecode match: 0
- Unverified implementations: 1313
- Unique implementations: 1715
- Raw deployments: 1732
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
| AllowList | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x42d75c8fdbbf046df0fe1ff388da16ff99de8149`; ethereum `0x783c279157d22cc5116800666ba477d466983fc0` | ⚠️ Unaudited |
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
| BendUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x607d113a67f456292939c636becccfb3656ca80f`; ethereum `0xf0dfc149feab7bc2380f8d53b6353c6743f159a0` | ⚠️ Unaudited |
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
| ERC20RevocableComplianceStandard | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x10fe70382576f271caef5c152266fb458efb53fa`; ethereum `0xe8ad6523b9e057a2e3b4b001acec41cf303cac21` | ⚠️ Unaudited |
| ERC20RevocableStandard | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x2e5f7dbed4aa799b13c737992562b7e8742b3a32`; ethereum `0x92ff03a4bc4b3763a17a2ecfcf2a6c1544f7c6ca` | ⚠️ Unaudited |
| ERC721SoulboundToken | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x2a33ae49f96b8982023f8381b57c1f2658f616bc`; ethereum `0x507d898226e6a3e5eb8dbecae0b9e8fd51337656` | ⚠️ Unaudited |
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
| FXS1559_AMO_V2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0xc80c48862e4254f37047235298edb6aa35717c24`; ethereum `0xcde9a4e885b87a893b8817d136fd2f404b54294f` | ⚠️ Unaudited |
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
| InvestorAMO_V2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x2b4d259a8f6e765ad881c4c1d04045d629da01b4`; ethereum `0xde3c8aa7f53a69c595b7720045000a68cb9cb341` | ⚠️ Unaudited |
| InvestorAMO_V2_upgrade | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x1e5accd956b3ef4c0a5b3c38667b6a0458bbf64d`; ethereum `0x9b6c44168f7a29a44949429ca55f411acd8391d0` | ⚠️ Unaudited |
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
| OHM_AMO | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x5699d20732a2efa9a895ef04bb210aa751c4db96`; ethereum `0x89a5cec88598c0ce4d4e331d0b027499edd3dffa` | ⚠️ Unaudited |
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
| StakeDAO_AMO | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x375278d3c65f29c1a90e8550888f1439cfefe465`; ethereum `0xcf1e6926b2167f83ec3300bed04a672abd93e646` | ⚠️ Unaudited |
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
| WhitelistComplianceOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x285d3256f0bbe7b69b511f75ce7a88f03d360a06`; ethereum `0x404a814c5544ae631fb0e77fbb27f5550ee54600` | ⚠️ Unaudited |
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

### ❓ Unverified (1313)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-240759 | `0x0132f1cc5844f08b05ced7084ff3df3a3b582d43` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x01c6808eb242c826d32f03712d66d5e613782363` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x02152d5edcdba56a55efee36ceb9d9f7e47aeb5f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0363a32d18c25a3fd19a0d00b02106c03d8b8182` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-240761 | `0x04acaf8d2865c0714f79da09645c13fd2888977f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x060a29eb023778384231c51255195e9ded3e23bb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x06ce8086965234400fdecab190b115c2c0717047` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x06fa869caa1160754c6a0b744da6454c5ea325d4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x07a5fbd1829efc4f1e698145fcd69b8235d30a81` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x07bce5cab075bafeefbfa966087a36491c20ae79` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x085c11f97c7365fdcb38171f7c44ff27f22147a1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x093edae2f47da37db7a1cc443d5552d1408d5337` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x096746995dd104e62a046a9c1209902c5a7472fd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0a1b92bb5ff5da104f3f174cd96e7eeabcaa5107` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0adef6a5d4cade4d38a578b99b197a55b2bd7ae4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0b51619785fa7ac8f2a8f387c18e599250cc2b91` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0b81cff64efc89fcdbe7da78054232daa89d73ec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0bdb2ed45ea8337f6437ef193c2ffd32fc9b75e9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0ce41af9dfa0d697da79dd30b8b73bf52a107499` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0ce658f9bc3af831271199578449810023dba703` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0d02755a5700414b26ff040e1de35d337df56218` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0d032449b25aa966b01b1a510f121ae6ec78beb7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0d89774935e3d88b91f0cea0991f4fcd7d9f5470` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0d91518d59a6bf5f9b1576edead855c643a70cd5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0f6136f9abb7a0c21fbe076771625b39c544bdf5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x10460d02226d6ef7b2419ae150e6377bdbb7ef16` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-240763 | `0x111ddab65af5ff96b674400246699ed40f550de1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x11c9c6f9e983bf6e10296a9ce09d4572f664ff25` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x11e1ee2005eaf4bb89261bb167ed8af735ee6129` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-240764 | `0x11fe3be54ac01c13dd985ce2bdd10ed77e1376cc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-240765 | `0x126bcc31bc076b3d515f60fbc81fdde0b0d542ed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x12915be9ee3222f272bec01859c267c99104fed7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1313d143be1ac25acaceff39bf31877bccdb9622` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-240766 | `0x13fe62cb24aea5afd179f20d362c056c3881abca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x15282d93b1f2c92a034936f6f56a55c0d423e8d4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x15ada72a3b52a88e25ddd2cc2ba1120234e34bb0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x175e4b98075c81511e476c0c5446dda95d9106c8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x184fe0694dd81dcfc4b1e94af10f72dfd2ab315b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x18a5ca670dc42d0551f00e11a730074f6787f17f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-240768 | `0x19d7df1387e7722fccce2aab4b7ffc72e6592934` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1a119333e5e1518b183f921797e4b138329d749e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1a17f2bdb023e516f1b32b121f332fa931802a9f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1a783886f03710abf4a6833f50d5e69047123be6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1ac802654c8ca728d948d4312e6fefc04f73dcb9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1b01514a2b3cdef16fd3c680a818a0ab97da8a09` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1b0b9991df27a4f2847478127d51fb29883882f5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1b0bced6dd26a7c234506e261bc68c9a3a4031b7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1c1649a38f4a3c5a0c4a24070f688c525ab7d6e6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1c6ca5dee97c8c368ca559892ccce2454c8c35c7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1cbe07f3b3bf3bde44d363cecaecfe9a98ec2dff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1d837a45bb5cc1e170c690aefee4121323a889b4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1d9e59364785ebf00e8ef2c15e132d0f661585ca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1dab6560494b04473a0be3e7d83cf3fdf3a51828` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1e1356eb81a56daecfada456e007b26c86c56670` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1e30eff4358e6fd18139af0ee36d813460e44083` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1e7d3bf98d3f8d8ce193236c3e0ec4b00e32daae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1ea02685293970caacede797fac5c450d69d2463` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1ea632b997b7c7068ac48ade8040652a8af9fbbb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1eb3406a14a1bab75415c0ad599e7e09c03457ce` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1ec51ea2582b3b49967fc7b7036dc21ac0a6bc54` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1ee4d04fa0469f87e169ac87c667a363c2c9a1a9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1f18188cf19cc28172e54dc6f580229b2e255015` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1fecf3d9d4fee7f2c02917a66028a48c6706c179` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2063961f26019b588f48007d1cc43770e8b7383c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x21af9dba45989512468b08d13978e9040cc0cef6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x22052c592f763ca14a090d9974c5bf9fd3a44b8c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x228567c10b7533c88057c10ddea6349360f122c5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x23208ca4f2b30d8f7d54bf2d5a822d1a2f876501` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2397321b301b80a1c0911d6f9ed4b6033d43cf51` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x239c957d42343b3d91fabc7c16e7f1e30bc32e5b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x240eba32583bb925b2cb3acfee189f559219bf37` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x241bca8cc90dd5b8118da2c1aa29119beecb25c3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2453b1fbd17cea069a31c9d16a27f4f93a85cc0d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x24e927dac110aab7189a4f864d41680e4f7865fb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x271fbe8ab7f1fb262f81c77ea5303f03da9d3d6a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x27c6e261d827d2ff1631442760227eca78f6006c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x27e97f35d80514d5dd1caa730e22a292e912a214` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2869e74a15d3c0c797b04feaef93734060a4477c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x29396aae6198130a15f6ff982c44bc4a7353ef37` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x29ec0d55b8f26298a5350c64f56281eb070bf47e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2a135a956f2b14556a193a13fb80640e861f8d55` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2a8499c4a86f7c07e311c73e36575a0dc2d362c3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2b4864c2f2a2c275c6c66b90a2ae6be9fa9cbe47` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2b638b9d2f635ca71cd29bd582362cd0819cb3bd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2b7e624bdb839975d56d8428d9f6a4cf1160d3e9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2c37fb628b35dfdfd515d41b0caae11b542773c3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2c9b39f4d18e2e19c1f3d2b378128ee7ebe9f372` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2d2261f970f605c813f160e8baed455e9004a842` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2d370111f8ffcf5bff0f56ba43c62c2ad98be7a3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2d550218631d974e02afeb8061e02a5999e95dff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2dc7cd6ae6cce2e652479e01db84ed5ce6dcb677` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2de1354c98880889643c4ca8b06fa2fb8fc1fd7a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2ecad4280b7720ba4f3830b47ab8ef2da4763f04` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2ecccc331181acdc6545685d310215fdd68d1612` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2ef4b38a128ecc1ac06b43055553f95af59523de` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2f08f4645d2fa1fb12d2db8531c0c2ea0268bde2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2ffffba4f562569bec2d4fc1c36f7797ffb173cd` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-240772 | `0x3077c833346501079afe93f7bb7ae88a6fbbc1f5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x309ac8840f9b4c7eeb5bab1e89669d8dbb86c060` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x30a2f3c3aa6d12c0a36bed210dcf1b32ef6228cc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x30c271e2758fa59671106cc523708ddeaa188841` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x313143c4088a47c469d06fe3fa5fd4196be6a4d6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x313c803622d59188f6b9dee555d86009eae94f09` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x319c06103bc51b3c01a1a121451aa5e2a2a7778f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x31aa15da826da3311788b208d31cae34074d1dc7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-240773 | `0x31d982ebd82ad900358984bd049207a4c2468640` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x326fe113a130c569b44aff93b3637f3ac956ecdf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x32bd22b18cd13ed02316c91600bf4a2ea299aba0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x32c36a6a29fda7b9c1f1920ea998665f548b760a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x32d7261e6924600abb668ff82da86f6532304c6e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x32ddf80508cfd8fed8abe375582fc7cfd20372c4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3340e2c0ddcc4a035737bc1f5445c7d0fa6cbf5c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3405e88af759992937b84e58f2fe691ef0eea320` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-240775 | `0x34a9f273cbd847d49c3de015fc26c3e66825f8b2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-240776 | `0x34c0bd5877a5ee7099d0f5688d65f4bb9158bde2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3669c421b77340b2979d1a00a792cc2ee0fce737` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x368440b3121f32df336d393834eafd8fa787c4ec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x36b1a1675329a66dc79fcbca156757feaf169a01` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-240777 | `0x36cb65c1967a0fb0eee11569c51c2f2aa1ca6f6d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x36fb071d5d30e5207ecc010c0ea3cc9ad75838a8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x38488de975b77dc1b0d4b8569f596f6fd6ca0b92` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3860358a3a8eead5e1e47c8407fdaa571972a673` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x387177b33830f48199110f186f47797c66556b3b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x38c24a8422e5ff3fd8a7ba577e08a4763004fb2c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3910dce33441360e4c1d2749afa08e1a59af2546` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x395a3481bf6ed9a9827d4df25032dadd3432c3f4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3993d34e7e99abf6b6f367309975d1360222d446` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x39cdcc686ba929b1c72ee119fd804c0273574b71` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3a283d9c08e8b55966afb64c515f5143cf907611` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3aa7e876880cb34371c01f1510b1e0a932dcb8c1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3aab5c43d4e47f71deea94a7d541e6c07e21b137` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-240781 | `0x3ad4dc2319394bb4be99a0e4ae2abf7bcebd648e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3b6831c0077a1e44ed0a21841c3bc4dc11bce833` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3b78bdc7575896701c4e32f9d070aa387fceb22b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3be09dea9ca8b6205d05f196e9c68fc35190a514` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3c08533dbcd0ab64bff5306a9d6d1de912b81b9e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3c2982ca260e870eee70c423818010dfef212659` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3c7ea1c10eb783fe86e4eed202324dcfeeca9043` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3cfd93b6fbbd879dca6649ef27170f1d1221cc6d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3d229e1b4faab62f621ef2f6a610961f7bd7b23b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3d56432c41f68eb2cde5e244b0c65c731ff5defa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3d5abb27919a6e50edf6fc34d2b07c91e9509ecb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3da7ff6c15c0c97d9c2df4af82a9910384b372fd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3ddb00cb5c927a71feddec48db1a231901568a1d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3ef1d856ea62a2292b8690855042095a7ac48b4b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3ef26504dbc8dd7b7aa3e97bc9f3813a9fc0b4b0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3f0e648daed617c372b87c621b88f7e2be321794` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3f702a8f6c9f9f7abdfea67f89d33f18e0368600` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x40745803c2faa8e8402e2ae935933d07ca8f355c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x409893c94aad411030e5a78fd39b015221dfb8b7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4169ef3b885416bd553567e78585a97ee52ba700` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x41d5d78049d44444ac6d5e1ec67990f24efacd58` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x421efd53fa0d90687db5ef370d5dcd7f89cbd9de` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x422cd669cbdd74e48849b671ead3e0eb27c7495b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x42b4afcfb939366538d53555b98844dafbb729ca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x42b9dea10b51a696949715797bdfd69489fc3b32` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x42dd7dc055a04c3d795a3dfd2eaaf7d480367a02` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4316416f429b04fb12df8952fa1434e6b9d77c3f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x43415eb6ff9db7e26a15b704e7a3edce97d31c4e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x43959a388603dcb6b02ca084a55d4c7f3b442c57` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x44ade9aa409b0c29463ff7fcf07c9d3c939166ce` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-240790 | `0x452420df4ac1e3db5429b5fd629f3047482c543c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x45c55fb1805d8ac7e5ba0f933cb7d4da0dabd365` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x45d2d8e4ab0f5af1d29305301a1b31d5d41b3349` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x46a279f57149d2c5f9549a3ad3371f1bf7402921` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4710a77a0e0f4c7b0e11cdeb74acb042e62b8d22` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4740b7ba86f14ef9feccbedb0fb1134f8f940359` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4804953f80908bb101427c146d869bb6d713e93f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x480af6d9abe851e2fc4162b2b93fff8cf84ddee7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4863c6df17dd59311b7f67e694dd835adc87f2d3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4948677546dfbdfc091f5a29458895a03b1a5f58` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4976fb03c32e5b8cfe2b6ccb31c09ba78ebaba41` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4a6d155df9ec9a1bb3639e6b7b99e46fb68d42f6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4afe9d57ccac57355f4b26d88329fdabdefc7bc2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4b56b6b2169381d4247d59fe8d0fe52e943eeb0d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4b8792af00eae944484bf572bc33029b2184a50c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4c18e409dc8619bfb6a1cb56d114c3f592e0ae79` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4c1d4ad2fa2ba5510acbb0f428ec861e1f7ea3a4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4c5d4f542765b66154b2e789abd8e69ed4504112` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4ca9b3063ec5866a4b82e437059d2c43d1be596f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4cb152b45e667f86a0470776bed0be93a5f1c534` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4d682cbd74a67b1ffe97a2bb78475a16efe23e8a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4dddc830c7c9a0cfcb941416b92d75f12423bc37` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4e7300f74f59afaeccdc0d434758df9be238f0bf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4e7cf3569529660bf23926060efb25866d67314b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4ea083b88e42d74095386bf3bc6e0d40ceaa3ae2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4efb0e6aba6517ce4fdd3f31013cbbc0bbb8dbfa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4f37395bdfbe3a0dca124ad3c9dbfe6a6cbc31d6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4f8846ae9380b90d2e71d5e3d042dff3e7ebb40d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-240793 | `0x4f95c5ba0c7c69fb2f9340e190ccee890b3bd87c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x50103e7e050e4b0a9ddaef537c82ac7273a89b1f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5010e8277673b3470604935e5b0be786a16036cf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x505603e2440b44c1602b44d0eb8385399b3f7bab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x50812807ce86d966669ff0e21ad323a284585cfb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x509728dc748586214fa30cef61359f136523f24d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x50996c7e748b1b83130b4854945d86ba6fc81f06` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x50b4cdb17d3e10c9bc88b3744f3fd7c25695eee7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x50c39ea8f3d72310c8b56a56b333994266e9b477` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x50f35f4fd499898801282a415f4c3a689663719f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5154e7698b235e6003bfa025839d192230e39dc7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x518fb6afefea9bb0a5135014d8032edee4a8b1ec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x52581ecaaa4dde745baa65a4d1d653053c74f4bb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x528baca578523855a64ee9c276826f934c86a54c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x52a430b5b7407fa103c5ae974744e4cc945354e6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x535d7bd932602976513db4a7a69642f1cc29d18c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x53c2758fba4063aa9eb1d1d7a481d53266214f2e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x53e78a6e12146565c7d7307d07a3c1abacf3e20f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5419d3fa60c56104175684411a496879c4df21b5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5425724e4ce3b469c61876b59be43a210a572997` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5473b1bcbbc45d38d8fbb50a18a73afb8b0637a7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5608051d98377419d7d861531728dfb869ddc054` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x566a6442a5a6e9895b9dca97cc7879d632c6e4b0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x56a9a5676e0e7f30d5a3f6a82cebcded238ba3ff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x58258aee794fb5ebd8b932cb4fa222dd4fcfcf62` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x584b0fd8f038fe8aedf4057ca3cb3d840446fbbf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5852bda4520f1b000c760c1dfb8ba5db8fcbaa90` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5878d03aa50d2c00a921948ea8fa5f2d247f6bdb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x597959a313643ed15d45dfbcc422321e72a84515` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x59ae66fb395893e3fd965adb06a52d06c49df8a9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x59e132164ec2e48b0714eb6abdb10225df44da0e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5a0d404d2042b92eb7948ac5943128e1088fd24b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5a8a5265c54ea88c36a65457becf995d15715fb3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5aa00dce91409b58b6a1338639b9daa63eb22be7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5ac53910dea4779e5ac3a7e997df8e9d5f6a7c9d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5b1b75770258e464dd73b0f3130943e2c918ab48` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5b75420a4a11d5ca838aa4dd6564b0c9f123dfc0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5bea27d52e36c58dbce2921773396f33f2bd780a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5c5f05cf8528ffe925a2264743bffedbab2b0fe3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5d0f47b32fdd343bfa74ce221808e2abe4a53827` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5e0198c158276efaebc5a32c8351fb5d679d4288` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5e0785d84e60f4c94f970ac8a7a8561d761c0171` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5e15e40a3aa06beca711ede9f3f76e1d80c34490` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5e1d94021484642863ea8e7cb4f0188e56b18fee` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-240799 | `0x5e8422345238f34275888049021821e8e08caa1f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5fa288a9c6cdbd0b0845199a033ef32a207bc98d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5fca68c9ba31dbaa5ab82dd468ae76746efd9adb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x600e571106c31c4ca1bf4177ba808e37146a4a0c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6025040aa316692fbf80909d0fc9cf7b997a2795` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x602ccfee6b4ba8eb5e35cf26e05fdede379e578e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x60aaa9b33e712a76f9421e46a75ec47fbdc8d4cb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x60b1b1f20373005030095fbe7cde032625fc96c2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x61ca43cb037ac9181d8fa5cd0073dc314065ccc4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x62191ef48bf8fd7a0e10ecb066b0350e6a9c18a9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x621d0e62f26314387f338a2509afa3ae3414661a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x627bb157ebc0b77ad9f990dd2ad75878603abf08` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x629c473e0e698fd101496e5fbda4bcb58da78dc4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6340678b2bab22a37d781cd8da958a3cd1d97cdd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x63564e223ba1fdb491c6ca68f63c67a578443ac4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x636a9d7686bfa0a2ddd93b37a1e33bcde6c31e8d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x640b8cdb00d0fb2246d01b8dbf83ae5d2d2a629e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x649e0b707a90f1d73b27f83358c4d9bcc91fd622` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x650a3685ab74bb1a36f40574c6187641d2b5b7bc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x656dd75d33a6241a0c4c2368eb00441ad3113ec0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x65a8b215f34df5c30c64523d638ea698065ffa15` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6650d5183c4cd294a81b1f724c365b0c42f8270a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x66b7dff2ac66dc4d6fbb3db1cb627bbb01ff3146` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-240800 | `0x66cc916ed5c6c2fa97014f7d1cd141528ae171e4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x66e323284c10dcec5a4810beba7eb3b992476320` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x67218f66a84809201cfba5c8b46dbd3ab95a42da` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x67fe41a94e779ccfa22cff02cc2957dc9c0e4286` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x691d1aafb550c35b24e09bb991aec9612342ed93` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-240801 | `0x694c245bcd2d41a808935b2f36706dddecf1bf81` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x69aafff1218ba086ac782f98cb8399d1226e2af3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x69d7469e677e4c8fa4581d36908b0c9c8750baa9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6a79a31afeb71a8acc785d2870642bc7783a4c55` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6ac96f65156281a9383455d704b58a74ea9c9ec4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6af700a9b52bdea2e33dbdcacae638fd8e118bd1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6b765d07cf966c745b340adca67749fe75b5c345` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6b96465f5e51c01134e0e64bff19f922fa7337c7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6c3f90f043a72fa612cbac8115ee7e52bde6e490` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-240803 | `0x6ca2338a21b2fe9dd39040d2fe06aad861f77f95` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-240804 | `0x6ca98f43719231d38f6426db64c7f3d5c7ce7876` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6d8138ab8458bc420ac2dc078c59e8bd4defcaa6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6ddd163240c21189ed0c89d30f6681142bf05ffb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6e46c98c4805b7cad59d557e1c47af535f1706b1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6f4c7e4c51d51adcf1c3dae8e28d0e75a673f8b6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6f4e8c8832ed1a1e14e030d56c015196a705fbf9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6f82a6551cc351bc295602c3ea99c78edacf590c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7002b727ef8f5571cb5f9d70d13dbeeb4dfae9d1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x701707613b6e1a7bbad69562697a828d1c7deb33` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7086f2acb5558043ff9ce3df346d8e3fb4f4f452` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x70a1151e0bb32484e25c107e3a69886a8361482e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x70f1ceae0fe7205d96151f995e65a6c30f028649` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x70fc957eb90e37af82acdbd12675699797745f68` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x71449a65f4bc1e2e4086bf0996f6468d39a4e425` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7228d63ff5fb0e66cee650b113c2187212776c26` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x72de985c5af6f96f3be22784b5533218421e6394` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7311cea93ccf5f4f7b789ee31eba5d9b9290e126` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x73811a51fbdf0ca81022f7ac469683ff947d0e4a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x741e47cfa0ff046130cc9436d2bd2ab062f7546d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x742109450e2466421b00a2bf61d513d2616a74fc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x747459fc40d80a500440f9d650818f7fa5754acc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x752ebeb79963cf0732e9c0fec72a49fd1defaeac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x75c1e2b049cac5571d366bb40adee21c751ffddd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7605c24f24e660708fc2e75997935501697a1780` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7624c0dd4f5d06d650ddff25ffec45d032501260` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x76890cf528ebf0fbd0d4aac39a0ccc0bf69aeac2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x76c8cef5b18994a85bc2be1991e5b9c716626767` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x77eb57117377fd4004f3efbac0bc198a877d0919` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x783128730280053ef00f675b777288e80565f26a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x791de2090162a4ca1dd4bf998e0bbcc17bfff6fd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x798fd0b27283cae4f3ace987d0e03864bf3e7d83` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x79d584d2d49ec8ce8ea379d69364b700bd35874d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7a01a842d71096c954d08788a7ffb1b0e2beb2d5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-240809 | `0x7a07d606c87b7251c2953a30fa445d8c5f856c7a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7a663c7ebe37f9c31e63d2826b155cde19ec753b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7a7c5b74911075778873b8aad0f2f03bc108d31b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7af00cf8d3a8a75210a5ed74f2254e2ec43b5b5b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7af331398dc340bf327904077eb68f27f75a9693` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7b07f9fe593ab0b035b2dce1e925a77f57b3b878` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7b778ec13ce5e3dbd62b9921bd7449a1f988627b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7bf647ae1145aef6b3b4ed88ade4f855ec2a9809` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7c868f045a60501a2f4159446545939771dda323` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7d20ecb58d9d661aef2bd0ee953d53567e695dfb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7da2ef41913adc5285ffdcfa3622f5f81c946500` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7db707b36639030b7ce6b0fc61288e64dec76996` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7e6327cce4bbdb936ee744a7bae6c2978b62183f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7e6c50f75badb725fddaa47c063d8f8407defc5c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7eaa7f3fd44b3f7e7debdfd0735a46b61a35e5f8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7ebef3496fce85e9869d3feb7e4f49ad084300bc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7ec8e02b74cdd1c1c222dbf3bf47f3256b734099` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7f102cf8a1962dad22d7a26590aba4253cd2724d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7f3c6b1e4ad1e3bf102643fce202202aaaa09116` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x80333bd8791fee04c4c3e1ca8a524cefa7c94737` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x80466c64868e1ab14a1ddf27a676c3fcbe638fe5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x80c72d42846eff15cb1bdee8fec9a57594f17960` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x80f1c4f5cd94d49e98d0a975690796f1e8c0379e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x81373aad854e31e6da610b2fa5260c6c60db8dbc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x818709b85052ddc521fae9c78737b27316337e3a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x81903f6f9675f7b500eafe20681bd2d7bab7c71b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x81b1e6b0dfb7b683ce36b9fa17f9875460740922` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x81e7df85db59a6cf2937b74be17282bd0e23b7e9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x825f3d2ed64e49fc0ab59f647aaab3f26a927c0c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8282bd15dca2ea2bdf24163e8f2781b30c43a2ef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8301ae4fc9c624d1d396cbdaa1ed877821d7c511` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x832f436ad2813c76aae756703cacb5c1028d11da` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x83dc6775c1b0fc7aaa46680d78b04b4a3d4f5650` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x840f20ffed887c61435e81fd1231cb923df39d3d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x847ee1227a9900b73aeeb3a47fac92c52fd54ed9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8484673ca7bff40f82b041916881aea15ee84834` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8545d32ac1d423016197866e884aa0e8d953eef5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x856ff1aaff4782eee27d2c6bbad48781f57f88cc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x859f6e05410893fe64bc84d92bda773ff798cf66` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x85c5f05ae4cb68190c695a22b292c3ba90696128` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x85fd0626e2d7f07a2b08718f2ea2e044b1d5f163` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x86c0a521807f43a646978e9f302baf693350eaa3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x86e71075e55f0aad27d700017e0783458310c98a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x870f5a9afa272f07bd941e8f8a8b43ced0b64a5a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x871b512d33a9c02194a002e0b7f9588f361e8aec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x873d589f38abbcdd1fca27261aba2f1aa0661d44` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x878002f100a7de99bced8178010c84ccce99a5c2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x878f2059435a19c79c20318ee57657bf4543b6d4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x88b2aba0c9e8891573b03af909ba51a25708ae6e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-240813 | `0x88f7474b2c72479910495362f979de3b4cbcfbb4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x89086653f185a0431d24043d92772942c141bab0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x899aa575e0e46344d18471f69337663c48b76e35` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x89ac9a0b48fc66875de710ab7ee53027970064dc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x89d32bf7b120630b24fe9edc8c7534a73016c999` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x89ea1e4232680a66470a725ffd399082a375d1ed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8aeb58603efb7a9f63712a2506df01b685ba1c4c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8afd5082e0c24decea39a9efb14e4acf4373d7d6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8b6861d07d3688103d0ad801fabfc4f6bac231de` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8b71237c759052c29a97408ce4b3b7cfebc525e0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8b8dce09b0deb003573215d5be238534b1cf11bd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8bf7af56bb721bc3d015111508593fcb301546f0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8c5a7f011f733fbb0a6c969c058716d5ce9bc933` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-240814 | `0x8c5d64d10394cfa070066e70ec19e67398b4dabe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8d6467faa693bb1e1ff0cbbccee9c79d19740718` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8d76f31e7c3b8f637131df15d9b4a3f8ba93bd75` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8dfa3c5321f2c8d76fbc5fe9746090f1eea5753d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8edd60a204e884676817713d1a12a25b6f4ce52a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8f300679f893584149af176562abc64f8e3b4476` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8f4ef8c623c33cdb6a57c19aecb87e161fa7691f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8f68f4810cce3194b6cb6f3d50fa58c2c9bdd1d5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8f8273f271b134f514b8a33f87b4de803e44d723` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8fa7b006538f0710bd5fefbd5737ebdd8b487166` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x900909c07c2761d84c5d863ff5905102916df69c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9033bad7aa130a2466060a2da71fae2219781b4b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x90cb8bdb5ad68f21aff8718733761e5a0e531a1f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x90d52cdc60b7ff7994095aa184694225035e8a60` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x90e7efdca79de10f1713c59bc3ae9b076e753490` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x913a3a0d83b87497587e66a7f9603ccd998ba572` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x914cb62c14777068956090adb494ab4279424499` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9164e210d123e6566daf113136a73684c4ab01e2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x91ff54efff7564ba3884a91d0e293502d8e6ff90` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x921f943dd71c44d206233b4ea433f81b07930f87` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9327058a739089869b7dc3436e074c6d56051c7a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-240819 | `0x938d99a81814f66b01010d19ddce92a633441699` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-240820 | `0x941be12d710f6333ffc8c8e1eded53b329fd3ee7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x946e5c4b2c97dde907f81ea2cda8e71f6f006110` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x94a472696c6c9190fc11811b849b915e08466fcd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x94cff60496c71a0302ababa0da1a1f21626f9613` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x94d97dee8fa8b97576375c68d856239ff7681086` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x94ddd112c9ea0fb534e376be09a50d310f0612b4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x95702e148363a6fc4bc97ff54bda8a2ae88b4c0f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x958815f476cd07354c0bc034ee5077b20fd93003` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x95c6d7128dd7bee3a3ce74a6d16a4c90e178327e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x95ecdc6caaf7e4805fcef2679a92338351d24297` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x96458a71103622f3c05891724eb4114fa6c978cc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x96665d63c1b53f8335e3c9287ee255f306c93c45` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x966aa4de332da1fece5a90e025b08a43919d9705` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x968134b63eeadea498d561ef95e120a2148fa258` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9694dcf5b6ccf6216b05fe64945f62603e2d2367` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x96ad3a49fdc33efb4ba266877c17ce52eb0e41c3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x96c29c3040c1950308ce99b7804f553e98b625dd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x96d07ff312c56e08462308bca2f5e505e8111a2b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x97683a370239817cf33ec2c2ad3b3a1884571f69` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x976d722daea836460dc1c316d36aab4a8ed63966` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9781fe446cd97d3cdad5ecebc77d1dedb843246c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x97c5da137889f2912f2d610171c82faed45f0900` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x97f60ffc47fafbcba3ea364bff2abcbabf85c849` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x97f9a691ed9deb9b4ad2ba7e9a738706222dcf71` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9838eccc42659fa8aa7daf2ad134b53984c9427b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-240821 | `0x983af86c94fe3963989c22ceeeb6ea8eac32d263` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x98638facf9a3865cd033f36548713183f6996122` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x98a7f18d4e56cfe84e3d081b40001b3d5bd3eb8b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x98c48a6442bab5628d4776f84cd1b0f92545a9f5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x98f5e4b7d9edf57a6ed41b334bd40b2eaa6b6e26` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x98f865bd2e5a3e289b8cca54f24a7eeb2bba56ce` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-240822 | `0x99b5587ab54a49e3f827d10175caf69c0187bfa8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x99f8dc2eac0940e609a8dcb9fc905f0158af2288` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x99fa1928a9fea45b8d1395e870a92a0675a10e6e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9a576a3d39c589a861b46864c253288bca428a6c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9aa0eb29a462baa0275e5f9e56f938f31d0adbbb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9ab224996d25bfdcb91d838f7f1902698ac0a742` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9b62402eb9a755677debdae3639cb531c0af0e5d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9b8aed182b8a9430c14e97bf2c02f129f2b36854` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9bd5b13f51e27b58174968a8983b450a300cda05` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9bdbe31bb011d99c55b17455acbe71814065e718` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9be82cddb5c266e010c97e4b1b5b2df53c16384d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9c2186cabc49782632efd00ba28bdb92086470a7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9c6879b75c64648141458934ae4cd453ea1e7436` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9c9e8e8ccd7daf6afab436829992b3cf408319b4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9cc947d8f65a092161f72cb7fea52c5e576a31c6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9d46c0584c5c89e14fb1143e2414712fef36f00f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9dfbf2b2af574ca8ba6dd3fd397287944269f720` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9e291bfbb158ffaaf1c3a8ccd694be0d49d6aada` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9e5621b5da05435f9931e5ccd01c3c24476155a7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9e66e7811feacf5402b65021475d1a293f7ea797` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9e7a52c1619c5134c223f780237c12fd9001b75f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9e951dd846e748e6fcb58bfb76953c4900f819f4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9f1c425ae40908a071f003ae604d7e421a289c8f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9f29f00d0253d7497f562256d3f42593939eae57` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9f76b097cd95627bfbd8052a583127ff6e7b3fa9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9f94e83e8f4e1a454c0d5a837c4f688187b9d1cb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa038ef2ba621342ca83cab9534ea04fa91d1bc3d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa0e311912a0b0cf839bc77dbdc2de3c3e0846de4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa13d7886abc466da907e0c9345d5d271b8852647` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa14669a76b12f94d6ad09304ad15905e900a6e25` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa2445d730be553ea0b65a409691e8008ef750d0d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa2db46c06e0b643a926ef60d1feb744a7385a593` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa319552eef068933945a4484a1640c6a6edefe39` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa381d58e96ec3818c825e1fb264099448945cf8b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa3cce9ae6571c9075c980afa2749451793b947bf` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-240825 | `0xa3d62f83c433e2a56af392e08a705a52ded63696` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa402f9e5015be2de7aed695e47f2729246cc9434` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa43a43fb8d7c53459e713bce24b375620b47f6b5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa4964a2fe606f1d445e36006bcb7f7faee580042` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa504742cefe2f9027328b49c7cffec3d79b5ab1c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa5069a06d976c8acfa3ed8b4f4831366ff1fd20e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa5200b42dad593c284f2a5e85d768e4dd829a09b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa58b23027cdeb442854bb8063164d1fd48f37707` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa630b066413f143567b79b6a9ad62da70e3007fa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa632fab76fe013199c8271ac22b466b9d11bfe88` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa63f56985f9c7f3bc9ffc5685535649e0c1a55f3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa64ed4018f0838545fdc57db1b43ca7c9637fd54` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa6623dd479c95010f05bad523609edf1928d2b8c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-240827 | `0xa663b02cf0a4b149d2ad41910cb81e23e1c41c32` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa77879e9744fb1d7126bd437aca0ff7fb359c5b3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa78f1199e8919f9299341354ae73e4276f618f23` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa7e98815c0193e01165720c3abea43b885ae67fd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa85461afc2deec01bda23b5cd267d51f765fba10` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa938b8dc2b55a119b3618287c95427f9998caff0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa96153b6f35883367f3a8ee3846de3b011d50684` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa964ed4077ad3ba1946d118ce90544657bb4003b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa9b15e13432ec8216711cca9adaf9632706e7fdc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-240829 | `0xa9b5fb84b7aeaf0d51c95db04a76b1d4738d0ec5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaa015d3d8b07896e74cecfe520a41d74f2eb8112` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaa0850ddf8ab99286a473a7d2a96e07cefa89034` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaa25a6fa9e4dadae0d3ee59bea19fbcf0284830c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaa346781ddd7009caa644a4980f044c50cd2ae22` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaad4a1d92053a62ce7a787641d8b4e5883e96700` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaad66110a1ff96d8be8c00c85ad024bbda6f60c9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xabfb6d2535885f2f3cfb896825d3b99c47578ac6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xabfe397ec97712247fd5e4e43da34f305680a6cc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xac288da6a8c5b6406562c27d54ba22666fe3adca` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-240830 | `0xac3e018457b222d93114458476f3e3416abbe38f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xac6714612e0ceffcba83e6e00c8360494493b27e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xac862105a7ca6906d10c56fe5cf61587a04ddff4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xac8a4d55c1d6ea3f84a6c868f2b5a5ec3cef2800` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xad19c0506f5277bbf92d8dfde1a51a15aed42606` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xadcfcf9894335dc340f6cd182afa45999f45fc44` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xadf48a504b7e7262fe9bfc62ab11894187590bb7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xae09b89d60199876f8300d9b4926c818765a8040` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xae14b769eac8ddb3caa79bd3d7c21d2986327bce` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xae47146fa8a920d220ac567366b1e6c170579993` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaee70429bdfbf599a979f50d5fde5eb0d317e0f7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaf02be5968d8fe9536e24e4c7e888c59a58bc077` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaf4305d05e9b08b1d17894ce1ace8235528f7ede` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xafb569240e03bb1d09d0e6245fbea7f480ec146e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb075ab368e84e8652452eb2cc91965c7e3893a7d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb076b06f669e682609fb4a8c6646d2619717be4b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb08eb288c57a37bc82238168ad96e15975602cd9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb12c76b92936d136fd8264f6efcbb06458338d97` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb19059ebb43466c323583928285a49f558e572fd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb1c4e5a15544f005166880749c46d35a00916462` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb28223e6f50fec6caffdcd4779b9d18ca81e81e9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb311acd3eba1acfa29957cad50746738d52070dc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb3d07e2f94155467cb6fb177318e23e94919b586` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb414f5abfaba0ca8968749586ae09233933ec225` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb4277e256f9c22e22acd8fb1c65e190daa331eb1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb4b323e6b501f6cc7fa7df60446c95bcf48af6f1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb4eb45443d525149410ee69400c0956a7e89b82e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb524622901b3f7b5dea6501e9830700c847c7dc5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb526ee3e0a4e333bb46106c4725c1379f7b52aae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb576491f1e6e5e62f1d8f26062ee822b40b0e0d4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb57a959cdb3d5e460f9a7cc48ed05ec29dff049a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb61009896eb35d81d02f15b2a1380252d2141725` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb6b0290a39e2f896bbd8fc19cf17fe393e993de4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb6b40f1c932803b442bfa7cbac1c4dec14b28c7d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb70a04ddf77610c4dad1cacc908eff91fa764a86` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb72b885694d46897a50ab83911849604eafd69be` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb7b46df6358eb6def618f11d0825648bee205519` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb81179875cb152f50184979a0de999026fe556e5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb8315af919729c823b2d996b1a6dde381e7444f1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb8686ef9b7ee9e73de5d1721e4da580278f8f4d2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb8687d7dc9d8fa32fabde63e19b2dbc9bb8b2138` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb8a3f8e783d52cfb9e632276714234661db698e6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb911d7e59ba82fdf477a2ab22ff25125072c9282` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb960c386eca71d28c95cb064d2f4720fbad1f8fd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb9bd175a67209182e987b7cfd5f4008ba3a2405a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb9f861b7755ff09cfd65cfe262d19823607b1f24` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xba1ed260f9a81088ecb7602f790a67c773817bda` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xba32df0b78b1a68f7fa304bbd4ed7a56a74c525a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbac8459641f765b26e8984f29082629359f084c8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbafa44efe7901e04e39dad13167d089c559c1138` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbb3fda661149f6e45d829d5dd54a1608577c5fa1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbb6b54f8969a4711527fdf6ab852b6d6cdf368d1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbbc424e58ed38dd911309611ae2d7a23014bd960` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbc3a2bf4fa20be2056dce5bfb168970ba657f187` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbc4d0f452b347cf25ee84509ed99bd478ac96b5d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbc6977251621591fd3e8222cc89081841510b547` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbc7507bea8d7bcb49f511cf59651b5114e6e7667` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbcda2acfe820c92b8e0b389733aaaae4f930a9f1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbdcb57c9d35e8d41babcbca67416ee6622274caf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbe83fd842db4937c0c3d15b2aba6af7e854f8dcb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbebc44782c7db0a1a60cb6fe97d0b483032ff1c7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbf33b67f243a4dabed494ff5840f113b2e202a0d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbf37a256d7826d443cde124f2d7d7b72de7ada40` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbf9d1cdf02720b50254e0ca70f01ffe4c9d82bae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbfa12b032a7720128787b2672da8097d508ffb40` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbfb23471b83d1c4966d21c96fb9ff0e803a53956` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbfcf63294ad7105dea65aa58f8ae5be2d9d0952a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc00978c2bfc2c0ac159367080992b287c075164b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc014f34d5ba10b6799d76b0f5acdeee577805085` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc0497c072d3015fd7d45893157bcdcc1bcfeb6b5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc05de1cb258badc152d8ead3f573ca9a2e812b2a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc08550a4cc5333f40e593ecc4c4724808085d304` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc0bd9eb88840ee181c5cadf0a2914d41a403007a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc0dade40e8064ed9b9c348ecbfc3d0910931ee50` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc14d550632db8592d1243edc8b95b0ad06703867` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc1793a29609ffff81f10139fa0a7a444c9e106ad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc1db00a8e5ef7bfa476395cdbcc98235477cde4e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc26943ed4b7fcb6cb7c8d36ca57d38b611f31747` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc2a8ca84bc363605c36757f9409b214b6ee710c9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc2df2d82361f3cd885bc9e29de3427cea86b37e0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc2f490d5ab8e918686ad4bb795b1bd7f60dbf7b1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc3a483bb5f96bc4e6104325aa1a229a8e29166b3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc3eb88b3ee65b7bc8c0aa6bf399e4bd89a4d0331` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc3ffc76af1b0e60a4b79f7c30ad8cdeb0cabf0e5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc455e6c7936c2382f04306d329abc5d36444d3f8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc465e19c7e1dfa9dc6d898113cb1399a0a883a39` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc4ad29ba4b3c580e6d59105fff484999997675ff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc4b9685f9a0e49c8fe9f3968a681364e68d6cd47` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc4f7d1e49dd23f3684877d4934f4c3c8b69d81ea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc54106a999bede585c9574f2e4cb31df46cbdd83` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc59f89736a44c5c1d4f9e5fbdd88347e2da1d352` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc5fa220347375ac4f91f9e4a4aab362f22801504` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc619ff91e2f00279f9046dbe10806de1cd4ba99d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc67a44d958eef0ff316c3a7c9e14fb96f6dedaa3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc684432fd6322c6d58b6bc5d28b18569aa0ad0a1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc687e65456ff664b95753e3ee02a5e5d4fdbe886` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc6f59a4fd50cac677b51558489e03138ac1784ec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc71ad96672bd7b5001b12309f2af0ab1cf01b5ac` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-240835 | `0xc71bf5ee4740405030ef521f18a96ea14fec802d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc7bab672806932fcaf918b4318796b02b0832856` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc805d4126c3ac9d0ad7bb94c3d5cd72e3cbcd6f6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc8418af6358ffdda74e09ca9cc3fe03ca6adc5b0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc886d847c7a0e236c258e345367b388037283e43` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc91bb4b0696e3b48c0c501b4ce8e7244fc363a79` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc92106a970679b12382c5e2a9e10edc9a49de16d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc94081183a25b5fc729cdf993f7fe83970f9d776` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc95bd7460ece4007973458d1c0f8ccc46c1880df` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xca026e80f1e9e44da7ce3ed6ac2e9630260b9276` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xca35c3fe456a87e6ce7827d1d784741613463204` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xca3d75ac011bf5ad07a98d02f18225f9bd9a6bdf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcaa487d113ad1c34ce128c4f3a2a437614c6a692` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcb08717451aae9ef950a2524e33b6dcaba60147b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcb70bbaec89b577617f835e7a2e126da9e5acf21` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcb75a1655c84589652d0f3a4605e5dda8431f0a6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcb8a15af05102713d4e9628f20824111f9331b2e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcb8d325c0af19697b8454481602097f93aa9040f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcbccba2fa84606df153b593dd01c37a50ac8427c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcbe6ea4725e4ba34aa215b95239dfa6e8854b49a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcbed82324afcc67e77e9ce9a23d85d49d65cfe90` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcc519ffb126de2c7f941851afda78a73f121a753` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xccebbf77c3eeb298113392363e0c9863b37111b2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcd4aa7db9d8a995a651498e94f6693a4d26e6c9e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcdb55051fc792303ddc7c1052cc5161baed88e2a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcdba56999e9c111b740ed181fbb18b7c3f88e7d4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xce46b2bf7ba61129fc4f2fe6943fa82f0cf24219` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xce4dbaf3fa72c962ee1f371694109fc2a80b03f5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xce597d830229b0bf827d4230a09d0069f4e93c30` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcf37b62109b537fa0cb9a90af4ca72f6fb85e241` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-240837 | `0xcf62f905562626cfcdd2261162a51fd02fc9c5b6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcfb3cfeae8c3f39aecdf7ec275a00d29eca08535` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd0c71ecd0787bb792e2bb8eeef030a66467bba1d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd0e6bc02657451fe16cddd7cab8cd55e39d25d2f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd10d54830714003575d9f472d62268a29c902e5a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd123c42cfebe2fadaa4557dd06bcadb823785967` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd13c9a29ef6c5adc7b43bbd5854b07bb9b099862` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd1458dd8fb4dad1ca3a52923e32e6277dbca0d37` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd1738eb733a636d1b8665f48bc8a24da889c2562` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd223f6a87c931baa5896e47e0d018c55b535bd48` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd24a9bacfb6c73fa9aa379b1b6b681724685ccef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd2516e709a2e9d64f66b4c4009efe4f74f5fa40d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd26a9c065d82e70352a52870f09ef802e046c4a1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd30b971922d42aa46c8a6432c332547432c89e14` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd3111a14e8df0df749cf881ae414037d732d8d28` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd3e576b5dcde3580420a5ef78f3639ba9cd1b967` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd446a98f88e1d053d1f64986e3ed083bb1ab7e5a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd51a44d3fae010294c616388b506acda1bfaae46` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd5958ab3106b3320be17830353c0f0c5e4d09ebc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd61148cf352a71ddd86f314b4791c0ca85d6911b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd6953e2c5546860a244aacb0e5af67a16d3725de` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd6e9d27c75afd88ad24cd5edccdc76fd2fc3a751` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd74034c6109a23b6c7657144cacbbbb82bdcb00e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd79964c70cb06224fda4c48387b53e9819bcb71c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd85bd15f77f56b99f7610e8605a4a8ebcc345413` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd875628b942f8970de3cceaf6417005f68540d4f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd8a3150618d3c72b00985c41eab2d2c5582619a5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd8d4e29f4354d356cb5ef8523e3ad6426ada5ef0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd8e4bbb06cec6365b1c70e646032a5622085e6b7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd8f49c747aed8d394f6f1841546e2b83e09a357d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd90d7cda2546419f25803919376692a8d4b483c5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd912da97a34ab0beeb8fd089321b2189a6fcbea4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd922cd347eb367fc4fb4bbcb68a84c6cdd3ba4ba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd931ab1c9df3eb507edd074c8182017b6f1e672b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd963a154cd178663f7434c894ef5568fcfcba5f1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd97421fce28c6a8c534b7530e23d413399762b98` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd97ffaeb0eb8752bd7d9163e140d570cb0eb429d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xda2c338350a0e59ce71cdced9679a3a590dd9bec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xda76cf58407b5e811fdbcc014f79d63016324fe9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xda9d06166c2085988920fb35eb2d322b4aadf1ee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdac8c7c4d4c221318eca37de0b19eeaeeaa87d0f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdae210bfb0cf8c81edb4b459e2e0ba14d553e2d9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdb68c6264e9d0f8a6df1fa5a89f205da38698d15` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdc55f696ff5f54034eabc99f7995ee50b44d4efa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdc65f3514725206dd83a8843aae2ac3d99771c88` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdc892358d55d5ae1ec47a531130d62151eba36e5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdd05247d34d85bcc145c74e2f1d070352fef83f9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xddd8778e4cbf210e7c0ee803a9f8874a87c62b27` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xde882c2cbd6e790a35cc63ba25eca7b7ddd234b2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdede1cce94cdaa3ce358e561895775db369b72e4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdf41e21dae8bf6ae3eddb83337f8364eb7fc1659` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdfedec5ce317245430c57ace0ce9fb2a17ac0f6e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe096e62b4b23c46a748828083458e22b014640f3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe0ac0fd176aae7f9f44063b53860ba0dc7b8fa16` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe0ec9b5aa7b67135fcc173a96ecc5c4a81cb850a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe1664d5eb7e55c547e3f5e53bcc92d58e01770e1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe16723a08ae054a8f20bdc0395389569011e78d6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe1c3218134e7c69f3443bbd96a5851d193224f78` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe1d66c1cc284d54c34a01bcfbe1287cdeaa16be6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe1e697fd7ec9b3675808ba8ad508fd51cac756a3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe25fbb66110a83cc5f3d74dd85a39e070ca3f017` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe2b1fc3c7e218bfccbb249afc7df9da6ff9b9868` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe30521fe7f3beb6ad556887b50739d6c7ca667e6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe38daa41be7ca22f724b9cf6d13cd920bf18a3d2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe3b3fe7bca19ca77ad877a5bebab186becfad906` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe3e3fb7e9f48d26817b7210c9bd6b22744790415` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe3e7f354ac948ceba925181c81618d7c9b3da8c9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe3ee57d3fbdbae9b506a92da79ca8454ac288e2c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe3f4e2b79f1a8bf3b14d9100323fca24d923f796` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe52d0337904d4d0519ef7487e707268e1db6495f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe53d45abe10ce20427d20c5a1b6360fa5ba0ce0a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe55be4c8f2d3c11536f61c8977dac4ad58446059` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe5657ee93a49da064bb6b811952ee79b0e8e113a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe5afcf332a5457e8fafcd668bce3df953762dfe7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe621bb24fe3613caaa59c33f0f59eaa026663a8d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe679312c16200bc42b7a05edde8b0162b340a1f3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe6dbd13209338f8b8a4e2d3310da163004835729` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe782adaa40f2148ccd0e181ce090e44900e392ed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe7cd2b4eb1d98cd6a4a48b6071d46401ac7dc5c8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe7d2e561b8e3b1a0125f45da596706110f8953be` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-240844 | `0xe827abf9f462ac4f147753d86bc5f91e186e4e9c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe8453a2e8e97cba69365a1d727fde3768b18d814` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe84f5b1582ba325fdf9ce6b0c1f087ccfc924e54` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe89fbfb78920423ac9e7f06acb2163ce55bab89f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe8b2989276e2ca8fdea2268e3551b2b4b2418950` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe911fa14a49ac37e79ae8a60bd22a5f6a78c85a6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe96a9bdb549f4cc4ee8deb7085bd6ffe4b273b1b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xea6876dde9e3467564acbee1ed5bac88783205e0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xeb30a2d9f4e623884df27ad5a7c52f435f89f153` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xeb4480152bef93fa7bd01a7f427f1dd3069fc4d3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xeb85dd2374a44f80342acf8010d585bda32b77a0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xebd04015996df0e10e7606ee05709441f6f87bc4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xec47700313b58d89737c7e4a1b785bed536931a0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xec8672dd770d59fad9a811591a5edd40e8f6a413` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xec9189c95beb2e7f735e439e858a70b3bb8a6aa6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xecca5a27b4f8f92a2bffd006f20168a7188c0a0c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xed22202f067a57de78a68368ee5ce08ba5a1919c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xed2647bbf875b2936aaf95a3f5bbc82819e3d3fe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xed2e22cea112a76c6c75730bbcde4123bae297cd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xed4064f376cb8d68f770fb1ff088a3d0f3ff5c4d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xee5825d5185a1d512706f9068e69146a54b6e076` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xeea5ba20b042cce9f1d3f4f796df5a844868916f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xeea8422a08258e73c139fc32a25e10410c14bd7a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xef1385d2b5dc6d14d5fecb86d53cdbefeca20fcc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xef29f015e88dba867dd92c47cd1bd961e735a24f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xef2b0895f986afd7eb7939b65e2883c5e199751f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf07571bedb8cbd98e6ca43b5ee0fb178477d2219` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf0ad5cad05e10572efceb849f6ff0c68f9700455` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf1000d3bafdeee84c69ad4dd0168a6ea09866ccc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf113929f69fabe165a2280cac00c5f77196aa34c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf18056bbd320e96a48e3fbf8bc061322531aac99` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf18b122c3935ff49f62c8f1f77dc42a6f85a0bb5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf1ba3eef64bbc575c5ddc7454d81afc4800ea689` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf1e1dea8f1053fd9c5f47f72f1f03977e17af242` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf20f050321deb97f9180150e99f0e8133aa71051` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf248aa4aa0b7fedd183ab08135dd64f992972e86` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf313a91af8930ae7fe3e6f8ba7ce62024928ee77` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf37057823910653a554d996b49e3399dc87fae1b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf380200b115caa22d49e6c115b758d6130377620` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf391a63cddaff93ab52c14497a1ac4121672fa1d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf397abd7495eb6fe4697f45b5ba17166f03533b9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf42111014f27f8d84f93966f7eaf96edc297afab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf421468116cca4b04385022685599f128d703276` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf498e3bd153da218dd5318804d46f79ccb9079a3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf53cc57d1983372c5dc55f0466872265da08e3de` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf55c563148ca0c0f1626834ec1b8651844d76792` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf562b2f33b3c90d5d273f88cdf0ced866e17092e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf5b2514045f6b003a2a3eeb2b1e3de7f8676979a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf5e9eb18b3ecdfda07ea55133f427d47add6884f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf64b6730842f39970e3d4e13b7e356d34cab91e2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf71040d20cc3ffbb28c1abcef46134c7936624e0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf887c4cfaafb43d1aa7de204344895591016772c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf89aa0ae2b6c47c0eaefb49abcc266a44a1b61cb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf8e6fdc3e5ac06184a0e196a80ea1045140b8f55` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf9931973fcc0c37908687eec2ccb28fc3b94b086` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf9b355303d74bc1ddb0ff70a4fb050e237ecbb9f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfa3e2db8eb6c646e0d24046c1a185934d41a8f7a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfa7c660683ff22989413256bd57f569562ce1559` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfb20015fb2047320a0f1c209f35c6432147770e8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfb230bc3de97ee43d2501bcaab9a50bba9b69e1b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfb788f9e20ef426a32a67986654750172a6c1788` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfbc512849d4dceeefaa1bfce08b3dc9dad755482` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfbcb0f967817c924f83e26e04f0fb28ed4d6276f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfbd33d2f3330f063c87b523ba80d5f7f296e5393` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfbef0cb133e2921aad88bbd993990834ca33bda6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfc780e0e273098e6efdad6f30caa48ffc659cd6d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfd3b410b82a00b2651b42a13837204c5e3d92e27` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-240862 | `0xfe2ea8de262d956e852f12de108fda57171a0a29` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfe40bf60d6aec84b389082d347e0f46889c21f4f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfe51132b5320bd1a599688ca69697557aa763b4d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfe7eba20c20c8ff12a337f940ce7a97c6e2594de` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfeb26f0943c3885b2cb85a9f933975356c81c33d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xff051db87adfb0be398016ee5c68280ad49f1fd8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-240864 | `0xff92d3210c2db7736b8c40b0c1848f7ef74cf519` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xffe66a866b249f5d7c97b4a4c84742a393bc9354` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x053f082f3bc0c48b8409970c017b4f2a6f673e16` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x0b72af03b18861f894e4f184032e95c260796825` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x1696a141379f8b7c5ddd24d6dd0eb6e30af94c54` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x16cf71041cc88f0c98a7c8a04be4d71f8cf7d07d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x1bab75610b42b2c6547019f23807a7da61837779` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x20d162b1655afcbdb19dd87679c02e1a2eafbffe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x223a681fc5c5522c85c96157c0efa18cd6c5405c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-240865 | `0x31d982ebd82ad900358984bd049207a4c2468640` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x341836e0c5741527c5a1898307e690ab84e53d2f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x37b87f9ede8003ab1a09aba5503f6d79a96d1f08` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x3ec3849c33291a9ef4c5db86de593eb4a37fde45` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x40b5984c1ca72e26cbbe6221160883f5e3a76d5e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x43edd7f3831b08fe70b7555ddd373c8bf65a9050` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x449b179992f2c5d2a572a4c6e766e322c894c0b7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x59985d79e1e69f659f4ab97db07a35ce73d9174b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x59b99cf08c01a6ada0e0d819520719ca41b35c7c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x5bff88ca1442c2496f7e475e9e7786383bc070c0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x5ca135cb8527d76e932f34b5145575f9d8cbe08e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x626efc448227d794dc8c02ffea6a932bb360f72a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x64445f0aecc51e94ad52d8ac56b7190e764e561a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x649e81df4b6da6e0ef16a5be4e3f70c78f2449b2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x67a1412d2d6cbf211bb71f8e851b4393b491b10f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x6806411765af15bddd26f8f544a34cc40cb9838b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x6a678cefca10d5bbe4638d27c671ce7d56865037` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x7655a3dc27ae8df961939373e1df80875e23d502` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-240866 | `0x7a07d606c87b7251c2953a30fa445d8c5f856c7a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x7ef2a9aa33ab926a42f0e4f259da225a5bebda73` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x7feda252881b9c6166b387d3d11d1bdfc076d5cb` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-240867 | `0x80eede496655fb9047dd39d9f418d5483ed600df` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x8368dca5ce2a4db530c0f6e535d90b6826428dee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x8f1b9c1fd67136d525e14d96efb3887a33f16250` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x90581eca9469d8d7f5d3b60f4715027adfcf7927` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x9424fd0120cf1aa11cd6220527c40d2599b3d916` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x94cff60496c71a0302ababa0da1a1f21626f9613` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xa007a9716dba05289df85a90d0fd9d39bee808de` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xa4efc2d768c9b9b0f97dd91a1555b345f69b39c0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xade2b968674724ce009576b5c1e4a7d69f365d37` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xb781fcac4b8ef06891f9bad7db9c178b1ce67967` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xb84e29042bfb489439949a79aed8a0e156169ae5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xb9a55f455e46e8d717eea5e47d2c449416a0437f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xbe15b91944ad8407facbcc127795acddd1e2b609` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xbe90fd3cddaf0d3b8576ffb5e51adbfd304d0437` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xc05f15676d524eecedd26eb073032c021b7a8e43` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xc2544a32872a91f4a553b404c6950e89de901fdb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xc55a7f215a18713015570ecb18bbcf8c82f83071` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xc5d43a94e26fca47a9b21cf547ae4aa0268670e1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xd3cea6c44f745eaa584b836f92faf15fafe826a0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xdf6b3b56b1668da507db58c64b7153756cfe8e67` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xe3da970dc8812a74c95c2e55cacfb6836bd8fd7f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xe7d6cb15abe01c681b81f46e6c289ad492c04f5c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xeba66661afc03ab95ec37383b1bfb724abe14a0f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xeed9de5e41b53d1c8fab8aab4b0e446f828c1483` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xf03aafec07a48fe9c87ef0d4283d0c7861bd620c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xf42111014f27f8d84f93966f7eaf96edc297afab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xf47b8b1daf12c3058b757a1446dadfa8e4b33535` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xffe66a866b249f5d7c97b4a4c84742a393bc9354` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0b72af03b18861f894e4f184032e95c260796825` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1bab75610b42b2c6547019f23807a7da61837779` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x223a681fc5c5522c85c96157c0efa18cd6c5405c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3ec3849c33291a9ef4c5db86de593eb4a37fde45` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x40b5984c1ca72e26cbbe6221160883f5e3a76d5e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x43edd7f3831b08fe70b7555ddd373c8bf65a9050` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-240898 | `0x452420df4ac1e3db5429b5fd629f3047482c543c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x53e36c8380ff62d7964bfa4868a0045e58a52344` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5bff88ca1442c2496f7e475e9e7786383bc070c0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5d8eb59a12bc98708702305a7b032f4b69dd5b5c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x64445f0aecc51e94ad52d8ac56b7190e764e561a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x649e81df4b6da6e0ef16a5be4e3f70c78f2449b2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6a678cefca10d5bbe4638d27c671ce7d56865037` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7feda252881b9c6166b387d3d11d1bdfc076d5cb` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-240899 | `0x80eede496655fb9047dd39d9f418d5483ed600df` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8f1b9c1fd67136d525e14d96efb3887a33f16250` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x90581eca9469d8d7f5d3b60f4715027adfcf7927` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x91ddb0e0c36b901c6bf53b9eb5aca0eb1465f558` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xade2b968674724ce009576b5c1e4a7d69f365d37` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-240900 | `0xdee45510b42cb0678c8a61d043c698af66b0d852` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xeed9de5e41b53d1c8fab8aab4b0e446f828c1483` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf6f45ccb5e85d1400067ee66f9e168f83e86124e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0x0b72af03b18861f894e4f184032e95c260796825` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0x111ddab65af5ff96b674400246699ed40f550de1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0x1bab75610b42b2c6547019f23807a7da61837779` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0x223a681fc5c5522c85c96157c0efa18cd6c5405c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0x3ec3849c33291a9ef4c5db86de593eb4a37fde45` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0x40b5984c1ca72e26cbbe6221160883f5e3a76d5e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0x43edd7f3831b08fe70b7555ddd373c8bf65a9050` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0x5bff88ca1442c2496f7e475e9e7786383bc070c0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0x64445f0aecc51e94ad52d8ac56b7190e764e561a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0x649e81df4b6da6e0ef16a5be4e3f70c78f2449b2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0x6a678cefca10d5bbe4638d27c671ce7d56865037` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0x7feda252881b9c6166b387d3d11d1bdfc076d5cb` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | unichain | unit-240869 | `0x80eede496655fb9047dd39d9f418d5483ed600df` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0x8f1b9c1fd67136d525e14d96efb3887a33f16250` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0x90581eca9469d8d7f5d3b60f4715027adfcf7927` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0x938d99a81814f66b01010d19ddce92a633441699` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | unichain | unit-240870 | `0x983af86c94fe3963989c22ceeeb6ea8eac32d263` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0xade2b968674724ce009576b5c1e4a7d69f365d37` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | unichain | unit-240871 | `0xc71bf5ee4740405030ef521f18a96ea14fec802d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0xeed9de5e41b53d1c8fab8aab4b0e446f828c1483` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x038c21c48c4f36c83fb41f58d4cbd7d21c743778` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x080e89619882dce392e311a7945c06bc807c9130` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x0b72af03b18861f894e4f184032e95c260796825` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x109554f2b2a3fa841467a62668bf69e853d95b9e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x157d9f0c81e6c813742dc63e23df9a5c765c3102` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x179bfd453324a94a91e85671c817d04af635a120` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x1bab75610b42b2c6547019f23807a7da61837779` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x223a681fc5c5522c85c96157c0efa18cd6c5405c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x232fdc6f84c2ca11c6727adc31a862edc1861ac2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x247d8102ef3313e9d7d8da986d69501c2d7ad841` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x2fd649ec2617fefa1f3dfaef460af25b186d3281` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x3700b8de55a421a3f8cf8292bdef7d6feb94a2e4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x3ec3849c33291a9ef4c5db86de593eb4a37fde45` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x3edea34671a65ad6683f61d885601b1252888360` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x40b5984c1ca72e26cbbe6221160883f5e3a76d5e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x43edd7f3831b08fe70b7555ddd373c8bf65a9050` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x486cb4788f1be7cdef9301a7a637b451df3cf262` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x4af09e8634215f4cbdcd945bcf0e17dcd866c3eb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x509728dc748586214fa30cef61359f136523f24d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x55271b0d4dac2664fa9d44f8cccd89a3e6342313` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-240876 | `0x5658e82e330e094627d9b362ed0e137ea06673c4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x5bff88ca1442c2496f7e475e9e7786383bc070c0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x5f2675dda5c86e1bc19385e3e8114e943b79dbc8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x64445f0aecc51e94ad52d8ac56b7190e764e561a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x649e81df4b6da6e0ef16a5be4e3f70c78f2449b2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x64f881169c5cbda631ca4ac03f84f73025cfba41` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x6506d235cbac14222f91b975594aaa0c723fe486` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x6723cb72326927823b1fb796239f4a800e024875` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x677bf8d96f4da68a5ea98ebca38806fd5888efc7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x68e986ac0409bf59e08bf417d2c160a5d4598e41` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x6a678cefca10d5bbe4638d27c671ce7d56865037` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x6ca98f43719231d38f6426db64c7f3d5c7ce7876` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x7360575f6f8f91b38dd078241b0df508f5fbfdf9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x7786473eff6ce620a4832e98310827b228ee4ed9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x7c5004f64f86728b5d852ceec7987333114b206d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x7feda252881b9c6166b387d3d11d1bdfc076d5cb` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-240877 | `0x80eede496655fb9047dd39d9f418d5483ed600df` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x82fe608d59dcbd6f67018424743abc3c14a8b4b0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x85a0dad647a41c9a64e2ea696cc9220b395666c6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x8cf1894725203ce73c7e29aa2d0d965a2d3d76a9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x8f1b9c1fd67136d525e14d96efb3887a33f16250` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x90581eca9469d8d7f5d3b60f4715027adfcf7927` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x91fe28e1a1be322951eadc2cdaac612c7adffcd1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x941d7b3c47db3a4100c1edf5e5ef08809cab282d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x9ebd2b01640f6f7aa1d260c01402fa9e5f3be89c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xa436258cabc025a820692906eeb81451b838bcc1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xac4bca65dfcdda88b69407d7a80171babd0c16e6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xade2b968674724ce009576b5c1e4a7d69f365d37` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xafa1705021f65418e746d8664f4b8a58271f6de4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xb2e6016c4ee6b7d58c65ca722f6fd9491b9cb9e3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xc52c3709fe67245fd061a8517fcaf7640aff19cd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xca35c3fe456a87e6ce7827d1d784741613463204` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xd23b0d946035294b2d5f55b8d45911820543cb42` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xd7258fa8dc786f36cfb93010cd5c2f3782c7b846` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xdb1bb99c6ea20eab2f2082b16f209fef2e74e171` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xe36d8f3dbb203430e2f13316779b8408205c60b4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xeed9de5e41b53d1c8fab8aab4b0e446f828c1483` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xf5fef8e9d5f748829ea9697f4063f842a655a6b4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xf6d131b392246d78b9085f08c702b53da0f8a67d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-240878 | `0xf74d38a26948e9dda53ed85cf03c6b1188fbb30c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xf821ae29a6a2dce2faba041ded80bbc1e5c0f432` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x0255a172d0a060f2beab3e7c12334dd73ccc26ba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x0b72af03b18861f894e4f184032e95c260796825` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x1bab75610b42b2c6547019f23807a7da61837779` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x223a681fc5c5522c85c96157c0efa18cd6c5405c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sonic | unit-240879 | `0x3a5cda3ac66aa80573402610c94b74ed6cdb2f23` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x3a6f28e8ddd232b02c72c491bd1626f69d2fb329` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x3ec3849c33291a9ef4c5db86de593eb4a37fde45` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x40b5984c1ca72e26cbbe6221160883f5e3a76d5e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x43edd7f3831b08fe70b7555ddd373c8bf65a9050` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x45c6852a5188ce1905567ea83454329bd4982007` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x5bff88ca1442c2496f7e475e9e7786383bc070c0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x64445f0aecc51e94ad52d8ac56b7190e764e561a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x649e81df4b6da6e0ef16a5be4e3f70c78f2449b2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x6a678cefca10d5bbe4638d27c671ce7d56865037` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x79152c303ad5ae429edefa4553cb1ad2c6ee1396` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x7feda252881b9c6166b387d3d11d1bdfc076d5cb` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sonic | unit-240880 | `0x80eede496655fb9047dd39d9f418d5483ed600df` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x8f1b9c1fd67136d525e14d96efb3887a33f16250` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x90581eca9469d8d7f5d3b60f4715027adfcf7927` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xade2b968674724ce009576b5c1e4a7d69f365d37` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xbaad7ec8bf97c517eafceb75be75b8b41e7352c2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xeed9de5e41b53d1c8fab8aab4b0e446f828c1483` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sonic | unit-240881 | `0xf6115bb9b6a4b3660da409cb7aff1fb773efad0b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x00160baf84b3d2014837cc12e838ea399f8b8478` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x04d43544fc601d6fd15fb2a2cbd5ed4e139f091d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x08be8baab62fb0a363f38c82ee2320a36b72f2db` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x0d9346964791878bb54c02294e72106d8794185c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x12915be9ee3222f272bec01859c267c99104fed7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x1752c6c3cdea9a7b736363223b17e157e7aadc7c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x18348ddbf9c512081d444bdee9b25e53ef707a13` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x1a60b40601bb5aa192389b05f80a7beade6d77d7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x24e927dac110aab7189a4f864d41680e4f7865fb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x2816ab1f4db656602b6b0041c006652a4f5d0437` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x2c37fb628b35dfdfd515d41b0caae11b542773c3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x2dd1b4d4548accea497050619965f91f78b3b532` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x39cd4db6460d8b5961f73e997e86ddbb7ca4d5f6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x3fda3e9e78eacd7381f1ed2cf145b93537878c1f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x3fdb6bc356dad0d7260e9619efa125409a08c3b2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x42805079ed5ff38c0a5a47f38c83f96d348609aa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x4355903f610d0f94ee476df6e3227811ff7efee1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x481073f0c82cd600c1c54dc5cae0a5dda6886f26` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x4c3b0e85cd8c12e049e07d9a4d68c441196e6a12` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x4d949f83831ce6974bf9d04825f7b05c8071f066` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x5185e82339f825ae8dab987c5331e9b6f28a1922` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x5854f44bbabada5d55d765b576fd390962d69909` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x5c845cab3f05958b965a88139c0cc885aaaa4b3e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x5fa02554432eb3c8a5397306d0b30e707bf21a6d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x602ccfee6b4ba8eb5e35cf26e05fdede379e578e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x64f85076665dce1fbefc23391b8bfb2595c250f6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x67c6a8a715fc726ffd0a40588701813d9ec04d9c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x67e04873691258950299bd8610403d69ba0a1e10` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x691d1aafb550c35b24e09bb991aec9612342ed93` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x6a546c9f49c0abca3b9a30f45e726f89b86a57ae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x6bd8680eacdbc6513a5e40b711926d357ab2e4cb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x6dca07daab94830774dac408e975fce74e34ef0e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x7a6be195f9931341c1f4c4230fc48f8b9b9de91b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x7b8848f10a016341c9b2427e8541c19f31c2d243` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x7c88011586c9cdac401fc29bc6a528921f389f51` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x7fd5e563c80ab43613c8c0b1a41f413fd471352a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x840f20ffed887c61435e81fd1231cb923df39d3d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x8865435777730eaabaaf2d1f55f115a87abcf91a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x8b7b8196072286ebfa68fec7e0a6f18053ef31c1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x8bf7af56bb721bc3d015111508593fcb301546f0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x8c22ebc8f9b96ceac97ea21c53f3b27ef2f45e57` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x8fe4c7f2ef79aedd8a6e40398a17ed4dae18ee25` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x90d52cdc60b7ff7994095aa184694225035e8a60` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x90eb2f13acf1bc35c2c40c0ebaff2de4d2eb0d6b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x92e606fd8b99f99928f690a5beb20f6f6e3ec0f3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x93d9f6dc03c5677b904203867dc09b75082281d8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x954f18a500ec24c9c3be4b973bd0631776478114` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x95ab2a2f6e701873cea0070dac735589d089f6bc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x9937ab3f353836256d82ac77c28c2c66b9a8624a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x9990eb28e58380122aa3adf64ea6f874df51114c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x9fab6a6b9a78515d9d95d224b75371d1006896c5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0xa6cbe9ab6075d8b1049db7528f2fcf22fc7d051b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0xa7ea2c8c166328c5a7c7ea8e5649724a2c9b78e9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0xa938b8dc2b55a119b3618287c95427f9998caff0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0xaa094979d7c43bf4c115e287aeaa70e5163af3e8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0xabca0b314d15b3e28f24ac0ee84a63001d1b44db` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0xad84dac1c249ec3999242bdd89bb82adf74f071f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0xb020ab0e609d907578f6899a9469e3cbd79e4e70` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0xb075ab368e84e8652452eb2cc91965c7e3893a7d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0xb0cf17fc25028783a90f490bdab445759e232569` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0xb12c76b92936d136fd8264f6efcbb06458338d97` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0xba32df0b78b1a68f7fa304bbd4ed7a56a74c525a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0xbb18f2d4e1f9ce0055b13351725e09897ee85fc2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0xbcd539a5001410bfb944c159f395fdcbb7654c8e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0xc16068d1ca7e24e20e56bb70af4d00d92aa4f0b2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0xc42e3c654a36661fad19b32f484395a69a7dbd72` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0xc4af86d01420598a8746361576c98f5d46d289dd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0xc540f05bf5a09336078634d65e46242dfba55030` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0xcab4c7df0ebfebb1eab9d7ef214d7559ebb3bd5a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0xcadb1747d43c14d755d87f90af1d5ad4e7f666f2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0xcb477a98e3b781fa6474b837336e9f140088900f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0xcd3a040f05769d7628582b403063e61b7d212f91` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0xce70630b4b2e889adc558b58b2980437f58003d4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0xd27d19f4efdcfb37bf3893c761a11f1caa6acc23` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0xd295936c8bb465add1ec756a51698127cb4f4910` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0xd5be3c020f66b1fdf416fd9a551bad2460a28723` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0xd80c208b5a3585a07160e58925df1c5fde0a73b6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0xdbb6da2c103397fa502eca74afb5a274a900f892` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0xdcf13ad4b4b3d7cba5894f5d3addff6fe8257508` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0xdf567ef9ce0475254b057113e702a02d6e782427` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0xe15ef12b87c0bc3060427b589a82391a8188ea8c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0xe30521fe7f3beb6ad556887b50739d6c7ca667e6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0xe402a39f788f90607a50254faf56316e6a78231a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0xe510cc8d19da2aefdb94082359825e507f57704e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0xe7c6385cf5d4ea61774a56e3aeaf60a09fc8e1d5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0xe901afd3c37024b780d95985ace581f679de527b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0xecf63fd1a839ff54949eb786693237beec59c6e7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0xed403d48e2bc946438b5686aa1ad65056ccf9512` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0xee095b7d9191603126da584a1179bb403a027c3a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0xeec80691c5c470691246b883f2a50b9a9ac7026a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0xf3619d73ff6e48f689611daef195f7a9dbc3037c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0xf3b876bd46eb0cb108b50f7e247f19fca31faa15` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0xf3e3e2a376939bff87e9cac84e0e5a35e495417a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0xf84397af5a1d5c13e54207c366d756178c216107` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0xfa51e6eecdb846c8967d76560800090db50c5712` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0xfa7207f02ba29cd122a9d49ce96f6ca7707a1652` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0xfbcdf41cc692ed529b9a8cc1a5867b9524fd0164` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0xfbf1d253fcaa3ce13187dbd5b8610c15cc8241c7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fraxtal | unit-240882 | `0xfc00000000000000000000000000000000000001` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0xfde8c36f32bf32e73a1bdeb4ef3e17709674a838` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0xffd3a9a6c28eda12869eb54b7284bc306d60550d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-240883 | `0xa05e9f9b97c963b5651ed6a50fae46625a8c400b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-240884 | `0xc5e4a0cfef8d801278927c25fb51c1db7b69ddfb` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-240885 | `0xea77c590bb36c43ef7139ce649cfbcfd6163170d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x0b72af03b18861f894e4f184032e95c260796825` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x1bab75610b42b2c6547019f23807a7da61837779` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x223a681fc5c5522c85c96157c0efa18cd6c5405c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x3ec3849c33291a9ef4c5db86de593eb4a37fde45` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x40b5984c1ca72e26cbbe6221160883f5e3a76d5e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x43edd7f3831b08fe70b7555ddd373c8bf65a9050` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x5bff88ca1442c2496f7e475e9e7786383bc070c0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x5d8eb59a12bc98708702305a7b032f4b69dd5b5c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x64445f0aecc51e94ad52d8ac56b7190e764e561a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x649e81df4b6da6e0ef16a5be4e3f70c78f2449b2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x6a678cefca10d5bbe4638d27c671ce7d56865037` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x7feda252881b9c6166b387d3d11d1bdfc076d5cb` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-240918 | `0x80eede496655fb9047dd39d9f418d5483ed600df` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-240919 | `0x8ebb34b1880b2ea5e458082590b3a2c9ea7c41a2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x8f1b9c1fd67136d525e14d96efb3887a33f16250` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x90581eca9469d8d7f5d3b60f4715027adfcf7927` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0xade2b968674724ce009576b5c1e4a7d69f365d37` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-240920 | `0xb85a8fda7f5e52e32fa5582847cfffee9456a5dc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0xeed9de5e41b53d1c8fab8aab4b0e446f828c1483` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0xf6f45ccb5e85d1400067ee66f9e168f83e86124e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon-zkevm | unit-240868 | `0x80eede496655fb9047dd39d9f418d5483ed600df` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | `0x0b72af03b18861f894e4f184032e95c260796825` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | `0x1bab75610b42b2c6547019f23807a7da61837779` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | `0x223a681fc5c5522c85c96157c0efa18cd6c5405c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | `0x3ec3849c33291a9ef4c5db86de593eb4a37fde45` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | `0x40b5984c1ca72e26cbbe6221160883f5e3a76d5e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | `0x43edd7f3831b08fe70b7555ddd373c8bf65a9050` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | `0x5bff88ca1442c2496f7e475e9e7786383bc070c0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | `0x64445f0aecc51e94ad52d8ac56b7190e764e561a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | `0x649e81df4b6da6e0ef16a5be4e3f70c78f2449b2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | `0x6a678cefca10d5bbe4638d27c671ce7d56865037` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | `0x7feda252881b9c6166b387d3d11d1bdfc076d5cb` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sei | unit-240875 | `0x80eede496655fb9047dd39d9f418d5483ed600df` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | `0x8f1b9c1fd67136d525e14d96efb3887a33f16250` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | `0x90581eca9469d8d7f5d3b60f4715027adfcf7927` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | `0xade2b968674724ce009576b5c1e4a7d69f365d37` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | `0xeed9de5e41b53d1c8fab8aab4b0e446f828c1483` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x09ee6975feff1ba02d7fea060dd196c58e2e4c9e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x0b72af03b18861f894e4f184032e95c260796825` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x0ceac003b0d2479bebec9f4b2ebad0a803759bbf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x15f6efe4806f526b4e870596c36b4c56299f618b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x1820e4e29fb8e51e95f2402da266a1db33a2f6d8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x192e0c7cc9b263d93fa6d472de47bbefe1fb12ba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x223a681fc5c5522c85c96157c0efa18cd6c5405c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x31e1c1a72e608557ceeedb4d12d4033baaf4afb2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x36c28ef9a8116a64752efd6b9efa3056f24a82ae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x378699c6f0f77033024b3b1f3796d67a9ac82d5d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x3cfd93b6fbbd879dca6649ef27170f1d1221cc6d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-240913 | `0x3ec3849c33291a9ef4c5db86de593eb4a37fde45` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x5bff88ca1442c2496f7e475e9e7786383bc070c0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x64445f0aecc51e94ad52d8ac56b7190e764e561a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-240914 | `0x73382eb28f35d80df8c3fe04a3eed71b1afce5de` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x77e5799ed5328ef67a11d21ac29bb9cd5dda3826` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x7eb8d1e4e2d0c8b9beda7a97b305cf49f3eee8da` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x7feda252881b9c6166b387d3d11d1bdfc076d5cb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x84080196957ce6d57a4015005d31e58179b71bc2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x879ba0efe1ab0119fefa745a21585fa205b07907` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x8f1b9c1fd67136d525e14d96efb3887a33f16250` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x91a3f8a8d7a881fbdfcfecd7a2dc92a46dcfa14e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x957304d3ef7ed8869c3be360feaabf413653cbec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x9c245a6bbc9f946993ba3777641ddceac259cd6a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xa536976c9ca36e74af76037af555eefa632ce469` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xad5bc29096937b7b0b2ec5048d87e1db918cc0c5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xb56646b64a57feb3aaf7b5986d0690bdfa090b77` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xb60857651d22b5371f5cf41646736a19ecb986bb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xc6b2be25d65760b826d0c852fd35f364250619c2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xcb5c5c2f47d8986e92eda5bea98ed05a3318439f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xccc012d6a3e68ab69f8f5b1dfe5c2ddc92c9f6d7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xd5586147bc1583cefcd99a60b08685dfc096ed28` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xda0ef6478f8f5d6b2318c7caf66cdffc09e0969c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xdc4944793b86c337a0498e31f6bd0f2f814c0f42` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-240915 | `0xe5020a6d073a794b6e7f05678707de47986fb0b6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xeedd3a0dddf977462a97c1f0ebb89c3fbe8d084b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xf2913eb7724d184a2337ebb74195eec4241840eb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xf59c41a57ab4565af7424f64981523dfd7a453c5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x0b72af03b18861f894e4f184032e95c260796825` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x1bab75610b42b2c6547019f23807a7da61837779` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x223a681fc5c5522c85c96157c0efa18cd6c5405c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x3d94797d3d1a40d94bf41a2e2aaaa15ecac71e45` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x3ec3849c33291a9ef4c5db86de593eb4a37fde45` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x40b5984c1ca72e26cbbe6221160883f5e3a76d5e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x43edd7f3831b08fe70b7555ddd373c8bf65a9050` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x5bff88ca1442c2496f7e475e9e7786383bc070c0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x5d8eb59a12bc98708702305a7b032f4b69dd5b5c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x64445f0aecc51e94ad52d8ac56b7190e764e561a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x649e81df4b6da6e0ef16a5be4e3f70c78f2449b2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x6a678cefca10d5bbe4638d27c671ce7d56865037` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x7c3915dde9058b3271a490b68d1315fdf4c60fbd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x7feda252881b9c6166b387d3d11d1bdfc076d5cb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x80eede496655fb9047dd39d9f418d5483ed600df` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | plasma | unit-240916 | `0x8ebb34b1880b2ea5e458082590b3a2c9ea7c41a2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x8f1b9c1fd67136d525e14d96efb3887a33f16250` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x90581eca9469d8d7f5d3b60f4715027adfcf7927` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0xade2b968674724ce009576b5c1e4a7d69f365d37` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | plasma | unit-240917 | `0xb85a8fda7f5e52e32fa5582847cfffee9456a5dc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0xeed9de5e41b53d1c8fab8aab4b0e446f828c1483` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0xf6f45ccb5e85d1400067ee66f9e168f83e86124e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x0b72af03b18861f894e4f184032e95c260796825` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x1bab75610b42b2c6547019f23807a7da61837779` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x223a681fc5c5522c85c96157c0efa18cd6c5405c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x3ec3849c33291a9ef4c5db86de593eb4a37fde45` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x40b5984c1ca72e26cbbe6221160883f5e3a76d5e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x43edd7f3831b08fe70b7555ddd373c8bf65a9050` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | mode | unit-240886 | `0x486cb4788f1be7cdef9301a7a637b451df3cf262` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x5bff88ca1442c2496f7e475e9e7786383bc070c0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x64445f0aecc51e94ad52d8ac56b7190e764e561a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x649e81df4b6da6e0ef16a5be4e3f70c78f2449b2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x6a678cefca10d5bbe4638d27c671ce7d56865037` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | mode | unit-240887 | `0x7360575f6f8f91b38dd078241b0df508f5fbfdf9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x7feda252881b9c6166b387d3d11d1bdfc076d5cb` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | mode | unit-240888 | `0x80eede496655fb9047dd39d9f418d5483ed600df` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x8f1b9c1fd67136d525e14d96efb3887a33f16250` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x90581eca9469d8d7f5d3b60f4715027adfcf7927` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0xade2b968674724ce009576b5c1e4a7d69f365d37` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0xeed9de5e41b53d1c8fab8aab4b0e446f828c1483` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x03047fa366900b4cbf5e8f9feece97553f20370e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0b72af03b18861f894e4f184032e95c260796825` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1bab75610b42b2c6547019f23807a7da61837779` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x223a681fc5c5522c85c96157c0efa18cd6c5405c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-240889 | `0x29f5dbd0fe72d8f11271fcbe79cb87e18a83c70a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3a5cda3ac66aa80573402610c94b74ed6cdb2f23` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3ec3849c33291a9ef4c5db86de593eb4a37fde45` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x40b5984c1ca72e26cbbe6221160883f5e3a76d5e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x43edd7f3831b08fe70b7555ddd373c8bf65a9050` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x55271b0d4dac2664fa9d44f8cccd89a3e6342313` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5bff88ca1442c2496f7e475e9e7786383bc070c0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5e16a600c65947e65f7dd6fe8687e1781a0674b1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x64445f0aecc51e94ad52d8ac56b7190e764e561a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x649e81df4b6da6e0ef16a5be4e3f70c78f2449b2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x6521e64364da1b3271b8699a1a304839a30aaf70` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x694a3f4d41a929906340a675b743a7486370e963` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x6a678cefca10d5bbe4638d27c671ce7d56865037` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x6c1b76ca12d74970d40aec4d6f2e3a653cc58685` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x79152c303ad5ae429edefa4553cb1ad2c6ee1396` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7feda252881b9c6166b387d3d11d1bdfc076d5cb` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-240890 | `0x80eede496655fb9047dd39d9f418d5483ed600df` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8f1b9c1fd67136d525e14d96efb3887a33f16250` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x90581eca9469d8d7f5d3b60f4715027adfcf7927` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-240891 | `0xa46a266dcbf199a71532c76967e200994c5a0d6d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xade2b968674724ce009576b5c1e4a7d69f365d37` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb426b13372b7c967c4a2371b5e95fc7dc37545db` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb4523b73cd695827d663a67f955f9e87c164f85c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xbaad7ec8bf97c517eafceb75be75b8b41e7352c2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xbc5fcb3725c53b6ea8395a492dad3d32f09ef079` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc70cc721d19dc7e627b81feacb6a357fb11200af` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd593df4e2e3156c5707bb6ae4ba26fd4a9a04586` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe893297a9d4310976424fd0b25f53ac2b6464fe3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xee44d634f97d8ee09850ed04559e068d30276fe7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xeed9de5e41b53d1c8fab8aab4b0e446f828c1483` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf307ad241e1035062ed11f444740f108b8d036a6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0b72af03b18861f894e4f184032e95c260796825` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1bab75610b42b2c6547019f23807a7da61837779` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x223a681fc5c5522c85c96157c0efa18cd6c5405c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3ec3849c33291a9ef4c5db86de593eb4a37fde45` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x40b5984c1ca72e26cbbe6221160883f5e3a76d5e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x43edd7f3831b08fe70b7555ddd373c8bf65a9050` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-240892 | `0x452420df4ac1e3db5429b5fd629f3047482c543c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x5bff88ca1442c2496f7e475e9e7786383bc070c0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x64445f0aecc51e94ad52d8ac56b7190e764e561a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x649e81df4b6da6e0ef16a5be4e3f70c78f2449b2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x6a678cefca10d5bbe4638d27c671ce7d56865037` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-240893 | `0x7a07d606c87b7251c2953a30fa445d8c5f856c7a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x7feda252881b9c6166b387d3d11d1bdfc076d5cb` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-240894 | `0x80eede496655fb9047dd39d9f418d5483ed600df` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x8f1b9c1fd67136d525e14d96efb3887a33f16250` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x90581eca9469d8d7f5d3b60f4715027adfcf7927` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xade2b968674724ce009576b5c1e4a7d69f365d37` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xeed9de5e41b53d1c8fab8aab4b0e446f828c1483` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ink | unit-240901 | `0x452420df4ac1e3db5429b5fd629f3047482c543c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ink | unit-240902 | `0x7a07d606c87b7251c2953a30fa445d8c5f856c7a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ink | unit-240903 | `0x80eede496655fb9047dd39d9f418d5483ed600df` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x1c1649a38f4a3c5a0c4a24070f688c525ab7d6e6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x2119b316d1b878341df1b9e25d44e173a8a38aeb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x29f5dbd0fe72d8f11271fcbe79cb87e18a83c70a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x370dd74dd32d8d47d3cd0abc5fcf2cd1e9912a97` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x383eac7ccaa89684b8277cbabc25bca8b13b7aa2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x3cf371c128b092b085b7732069ceaf3fd863f270` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x41158edf6f0bc47fc169a516be142e429993ed65` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x452420df4ac1e3db5429b5fd629f3047482c543c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x5217ab28ece654aab2c68efedb6a22739df6c3d5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x5815491ccc92666da273be16081c98aba458823e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x592a48c0fb9c7f8bf1701cb0136b90dea2a5b7b6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x6ca2338a21b2fe9dd39040d2fe06aad861f77f95` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-240904 | `0x6ca98f43719231d38f6426db64c7f3d5c7ce7876` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x7a07d606c87b7251c2953a30fa445d8c5f856c7a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x8612a9fdf219ab6c0e92bdd69e2266572c7d893b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x9033bad7aa130a2466060a2da71fae2219781b4b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x96a7dd70799f8962ea256a14ddaa120d19de7d8a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xa46a266dcbf199a71532c76967e200994c5a0d6d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-240905 | `0xa71f2204eddb8d84f411a0c712687fae5002e7fb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xb1afd04774c02ae84692619448b08ba79f19b1ff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xbbc424e58ed38dd911309611ae2d7a23014bd960` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xc46f21bd156ed8423e3f8daf478586e4c6d9628a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xc6f59a4fd50cac677b51558489e03138ac1784ec` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-240906 | `0xc7346783f5e645aa998b106ef9e7f499528673d8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xc83a8d6d758f52f6226da964cbe80e097b1e534e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xdaf72aa849d3c4faa8a9c8c99f240cf33da02fc4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xea12ae50e998d2551efabe01c569be4274a6a684` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xeb5e8f69d1a05d2a2cfc418cb6f56ac54230bbc3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xec4fc039412cd8c34408907533a478984adb2598` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xfdaaac78248bcf8eeb741fdff54006447bb32d21` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x0b72af03b18861f894e4f184032e95c260796825` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x1bab75610b42b2c6547019f23807a7da61837779` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x223a681fc5c5522c85c96157c0efa18cd6c5405c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x3ec3849c33291a9ef4c5db86de593eb4a37fde45` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x40b5984c1ca72e26cbbe6221160883f5e3a76d5e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x43edd7f3831b08fe70b7555ddd373c8bf65a9050` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x5bff88ca1442c2496f7e475e9e7786383bc070c0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x64445f0aecc51e94ad52d8ac56b7190e764e561a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x649e81df4b6da6e0ef16a5be4e3f70c78f2449b2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x6a678cefca10d5bbe4638d27c671ce7d56865037` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x7feda252881b9c6166b387d3d11d1bdfc076d5cb` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-240907 | `0x80eede496655fb9047dd39d9f418d5483ed600df` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x8f1b9c1fd67136d525e14d96efb3887a33f16250` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x90581eca9469d8d7f5d3b60f4715027adfcf7927` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-240908 | `0x983af86c94fe3963989c22ceeeb6ea8eac32d263` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xade2b968674724ce009576b5c1e4a7d69f365d37` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-240909 | `0xc71bf5ee4740405030ef521f18a96ea14fec802d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xeed9de5e41b53d1c8fab8aab4b0e446f828c1483` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x0b72af03b18861f894e4f184032e95c260796825` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x1bab75610b42b2c6547019f23807a7da61837779` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x223a681fc5c5522c85c96157c0efa18cd6c5405c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x3ec3849c33291a9ef4c5db86de593eb4a37fde45` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x40b5984c1ca72e26cbbe6221160883f5e3a76d5e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x43edd7f3831b08fe70b7555ddd373c8bf65a9050` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x5bff88ca1442c2496f7e475e9e7786383bc070c0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x64445f0aecc51e94ad52d8ac56b7190e764e561a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x649e81df4b6da6e0ef16a5be4e3f70c78f2449b2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x6a678cefca10d5bbe4638d27c671ce7d56865037` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x7feda252881b9c6166b387d3d11d1bdfc076d5cb` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | blast | unit-240910 | `0x80eede496655fb9047dd39d9f418d5483ed600df` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | blast | unit-240911 | `0x85b1714b25f40fd5025423124c076476073180b3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x8f1b9c1fd67136d525e14d96efb3887a33f16250` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x90581eca9469d8d7f5d3b60f4715027adfcf7927` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0xade2b968674724ce009576b5c1e4a7d69f365d37` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | blast | unit-240912 | `0xe93cb38f97469eac2f284a87813d0d701b28e58e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0xeed9de5e41b53d1c8fab8aab4b0e446f828c1483` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x0097cf8ee15800d4f80da8a6ce4df360d9449ed5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x0b72af03b18861f894e4f184032e95c260796825` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x129335370e46320d6f64789423d99dc1a355bc47` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | scroll | unit-240895 | `0x397f939c3b91a74c321ea7129396492ba9cdce82` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x3ec3849c33291a9ef4c5db86de593eb4a37fde45` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x43edd7f3831b08fe70b7555ddd373c8bf65a9050` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x5bff88ca1442c2496f7e475e9e7786383bc070c0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x64445f0aecc51e94ad52d8ac56b7190e764e561a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x73382eb28f35d80df8c3fe04a3eed71b1afce5de` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x80eede496655fb9047dd39d9f418d5483ed600df` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x879ba0efe1ab0119fefa745a21585fa205b07907` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x8f1b9c1fd67136d525e14d96efb3887a33f16250` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x90581eca9469d8d7f5d3b60f4715027adfcf7927` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | scroll | unit-240896 | `0x91ddb0e0c36b901c6bf53b9eb5aca0eb1465f558` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x93cdc5d29293cb6983f059fec6e4ffeb656b6a62` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0xc6b2be25d65760b826d0c852fd35f364250619c2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0xeed9de5e41b53d1c8fab8aab4b0e446f828c1483` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | scroll | unit-240897 | `0xf6f45ccb5e85d1400067ee66f9e168f83e86124e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | aurora | unit-240872 | `0x53e36c8380ff62d7964bfa4868a0045e58a52344` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | aurora | unit-240873 | `0x80eede496655fb9047dd39d9f418d5483ed600df` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | aurora | unit-240874 | `0x8ebb34b1880b2ea5e458082590b3a2c9ea7c41a2` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 1232
- Live contracts: 0
- Unknown liveness contracts: 1232
- Source-verified contracts: 0
- Currently scope-matched contracts retained as-is: 0
- Classification counts: unverified unclassified=1232

Showing first 200 of 1232 contracts. The complete deployer expansion list is in `brief.json`.

| Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|
| unverified unclassified | UnnamedContract<br>`0x01c6808eb242c826d32f03712d66d5e613782363` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| unverified unclassified | UnnamedContract<br>`0x02152d5edcdba56a55efee36ceb9d9f7e47aeb5f` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| unverified unclassified | UnnamedContract<br>`0x0363a32d18c25a3fd19a0d00b02106c03d8b8182` | non_address_book | unknown | unknown | unverified | n/a | `0x4600d3b12c39af925c2c07c487d31d17c1e32a35` |
| unverified unclassified | UnnamedContract<br>`0x060a29eb023778384231c51255195e9ded3e23bb` | non_address_book | unknown | unknown | unverified | n/a | `0x51e15804cf7ff061410193512b499f071ecf9c4b` |
| unverified unclassified | UnnamedContract<br>`0x06ce8086965234400fdecab190b115c2c0717047` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| unverified unclassified | UnnamedContract<br>`0x06fa869caa1160754c6a0b744da6454c5ea325d4` | non_address_book | unknown | unknown | unverified | n/a | `0xa448833bece66fd8803ac0c390936c79b5fd6edf` |
| unverified unclassified | UnnamedContract<br>`0x07a5fbd1829efc4f1e698145fcd69b8235d30a81` | non_address_book | unknown | unknown | unverified | n/a | `0xa448833bece66fd8803ac0c390936c79b5fd6edf` |
| unverified unclassified | UnnamedContract<br>`0x07bce5cab075bafeefbfa966087a36491c20ae79` | non_address_book | unknown | unknown | unverified | n/a | `0xb0e1650a9760e0f383174af042091fc544b8356f` |
| unverified unclassified | UnnamedContract<br>`0x085c11f97c7365fdcb38171f7c44ff27f22147a1` | non_address_book | unknown | unknown | unverified | n/a | `0xa448833bece66fd8803ac0c390936c79b5fd6edf` |
| unverified unclassified | UnnamedContract<br>`0x093edae2f47da37db7a1cc443d5552d1408d5337` | non_address_book | unknown | unknown | unverified | n/a | `0xa448833bece66fd8803ac0c390936c79b5fd6edf` |
| unverified unclassified | UnnamedContract<br>`0x096746995dd104e62a046a9c1209902c5a7472fd` | non_address_book | unknown | unknown | unverified | n/a | `0x0990be6db8c785fbbf9ded8baec612a10cae814b` |
| unverified unclassified | UnnamedContract<br>`0x0a1b92bb5ff5da104f3f174cd96e7eeabcaa5107` | non_address_book | unknown | unknown | unverified | n/a | `0x4600d3b12c39af925c2c07c487d31d17c1e32a35` |
| unverified unclassified | UnnamedContract<br>`0x0adef6a5d4cade4d38a578b99b197a55b2bd7ae4` | non_address_book | unknown | unknown | unverified | n/a | `0x0990be6db8c785fbbf9ded8baec612a10cae814b` |
| unverified unclassified | UnnamedContract<br>`0x0b51619785fa7ac8f2a8f387c18e599250cc2b91` | non_address_book | unknown | unknown | unverified | n/a | `0xa448833bece66fd8803ac0c390936c79b5fd6edf` |
| unverified unclassified | UnnamedContract<br>`0x0b81cff64efc89fcdbe7da78054232daa89d73ec` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| unverified unclassified | UnnamedContract<br>`0x0bdb2ed45ea8337f6437ef193c2ffd32fc9b75e9` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| unverified unclassified | UnnamedContract<br>`0x0ce41af9dfa0d697da79dd30b8b73bf52a107499` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| unverified unclassified | UnnamedContract<br>`0x0ce658f9bc3af831271199578449810023dba703` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| unverified unclassified | UnnamedContract<br>`0x0d02755a5700414b26ff040e1de35d337df56218` | non_address_book | unknown | unknown | unverified | n/a | `0x8bd671ff94fcf7caff7e396a3ac38db2720db3a7` |
| unverified unclassified | UnnamedContract<br>`0x0d032449b25aa966b01b1a510f121ae6ec78beb7` | non_address_book | unknown | unknown | unverified | n/a | `0xa448833bece66fd8803ac0c390936c79b5fd6edf` |
| unverified unclassified | UnnamedContract<br>`0x0d89774935e3d88b91f0cea0991f4fcd7d9f5470` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| unverified unclassified | UnnamedContract<br>`0x0d91518d59a6bf5f9b1576edead855c643a70cd5` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| unverified unclassified | UnnamedContract<br>`0x0f6136f9abb7a0c21fbe076771625b39c544bdf5` | non_address_book | unknown | unknown | unverified | n/a | `0xa448833bece66fd8803ac0c390936c79b5fd6edf` |
| unverified unclassified | UnnamedContract<br>`0x10460d02226d6ef7b2419ae150e6377bdbb7ef16` | non_address_book | unknown | unknown | unverified | n/a | `0xa448833bece66fd8803ac0c390936c79b5fd6edf` |
| unverified unclassified | UnnamedContract<br>`0x11c9c6f9e983bf6e10296a9ce09d4572f664ff25` | non_address_book | unknown | unknown | unverified | n/a | `0x4600d3b12c39af925c2c07c487d31d17c1e32a35` |
| unverified unclassified | UnnamedContract<br>`0x11e1ee2005eaf4bb89261bb167ed8af735ee6129` | non_address_book | unknown | unknown | unverified | n/a | `0xb0e1650a9760e0f383174af042091fc544b8356f` |
| unverified unclassified | UnnamedContract<br>`0x12915be9ee3222f272bec01859c267c99104fed7` | non_address_book | unknown | unknown | unverified | n/a | `0x4600d3b12c39af925c2c07c487d31d17c1e32a35` |
| unverified unclassified | UnnamedContract<br>`0x1313d143be1ac25acaceff39bf31877bccdb9622` | non_address_book | unknown | unknown | unverified | n/a | `0xa448833bece66fd8803ac0c390936c79b5fd6edf` |
| unverified unclassified | UnnamedContract<br>`0x15282d93b1f2c92a034936f6f56a55c0d423e8d4` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| unverified unclassified | UnnamedContract<br>`0x15ada72a3b52a88e25ddd2cc2ba1120234e34bb0` | non_address_book | unknown | unknown | unverified | n/a | `0xa448833bece66fd8803ac0c390936c79b5fd6edf` |
| unverified unclassified | UnnamedContract<br>`0x175e4b98075c81511e476c0c5446dda95d9106c8` | non_address_book | unknown | unknown | unverified | n/a | `0xb0e1650a9760e0f383174af042091fc544b8356f` |
| unverified unclassified | UnnamedContract<br>`0x184fe0694dd81dcfc4b1e94af10f72dfd2ab315b` | non_address_book | unknown | unknown | unverified | n/a | `0xa448833bece66fd8803ac0c390936c79b5fd6edf` |
| unverified unclassified | UnnamedContract<br>`0x18a5ca670dc42d0551f00e11a730074f6787f17f` | non_address_book | unknown | unknown | unverified | n/a | `0xa448833bece66fd8803ac0c390936c79b5fd6edf` |
| unverified unclassified | UnnamedContract<br>`0x1a119333e5e1518b183f921797e4b138329d749e` | non_address_book | unknown | unknown | unverified | n/a | `0x4600d3b12c39af925c2c07c487d31d17c1e32a35` |
| unverified unclassified | UnnamedContract<br>`0x1a17f2bdb023e516f1b32b121f332fa931802a9f` | non_address_book | unknown | unknown | unverified | n/a | `0x12586916ada93f4835735bb54c1773920aa51c96` |
| unverified unclassified | UnnamedContract<br>`0x1a783886f03710abf4a6833f50d5e69047123be6` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| unverified unclassified | UnnamedContract<br>`0x1ac802654c8ca728d948d4312e6fefc04f73dcb9` | non_address_book | unknown | unknown | unverified | n/a | `0xa448833bece66fd8803ac0c390936c79b5fd6edf` |
| unverified unclassified | UnnamedContract<br>`0x1b01514a2b3cdef16fd3c680a818a0ab97da8a09` | non_address_book | unknown | unknown | unverified | n/a | `0x4600d3b12c39af925c2c07c487d31d17c1e32a35` |
| unverified unclassified | UnnamedContract<br>`0x1b0b9991df27a4f2847478127d51fb29883882f5` | non_address_book | unknown | unknown | unverified | n/a | `0x4600d3b12c39af925c2c07c487d31d17c1e32a35` |
| unverified unclassified | UnnamedContract<br>`0x1b0bced6dd26a7c234506e261bc68c9a3a4031b7` | non_address_book | unknown | unknown | unverified | n/a | `0xce66ceb64e92a9dce6b2c5fbe546f2a3cf98eaeb` |
| unverified unclassified | UnnamedContract<br>`0x1c1649a38f4a3c5a0c4a24070f688c525ab7d6e6` | non_address_book | unknown | unknown | unverified | n/a | `0x0990be6db8c785fbbf9ded8baec612a10cae814b` |
| unverified unclassified | UnnamedContract<br>`0x1c6ca5dee97c8c368ca559892ccce2454c8c35c7` | non_address_book | unknown | unknown | unverified | n/a | `0xa448833bece66fd8803ac0c390936c79b5fd6edf` |
| unverified unclassified | UnnamedContract<br>`0x1cbe07f3b3bf3bde44d363cecaecfe9a98ec2dff` | non_address_book | unknown | unknown | unverified | n/a | `0xa448833bece66fd8803ac0c390936c79b5fd6edf` |
| unverified unclassified | UnnamedContract<br>`0x1d837a45bb5cc1e170c690aefee4121323a889b4` | non_address_book | unknown | unknown | unverified | n/a | `0xa448833bece66fd8803ac0c390936c79b5fd6edf` |
| unverified unclassified | UnnamedContract<br>`0x1d9e59364785ebf00e8ef2c15e132d0f661585ca` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| unverified unclassified | UnnamedContract<br>`0x1dab6560494b04473a0be3e7d83cf3fdf3a51828` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| unverified unclassified | UnnamedContract<br>`0x1e1356eb81a56daecfada456e007b26c86c56670` | non_address_book | unknown | unknown | unverified | n/a | `0xa448833bece66fd8803ac0c390936c79b5fd6edf` |
| unverified unclassified | UnnamedContract<br>`0x1e30eff4358e6fd18139af0ee36d813460e44083` | non_address_book | unknown | unknown | unverified | n/a | `0x26ce2091749059a66703cd4b998156d94ec393ef` |
| unverified unclassified | UnnamedContract<br>`0x1e7d3bf98d3f8d8ce193236c3e0ec4b00e32daae` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| unverified unclassified | UnnamedContract<br>`0x1ea02685293970caacede797fac5c450d69d2463` | non_address_book | unknown | unknown | unverified | n/a | `0x4600d3b12c39af925c2c07c487d31d17c1e32a35` |
| unverified unclassified | UnnamedContract<br>`0x1ea632b997b7c7068ac48ade8040652a8af9fbbb` | non_address_book | unknown | unknown | unverified | n/a | `0x4600d3b12c39af925c2c07c487d31d17c1e32a35` |
| unverified unclassified | UnnamedContract<br>`0x1eb3406a14a1bab75415c0ad599e7e09c03457ce` | non_address_book | unknown | unknown | unverified | n/a | `0x4600d3b12c39af925c2c07c487d31d17c1e32a35` |
| unverified unclassified | UnnamedContract<br>`0x1ec51ea2582b3b49967fc7b7036dc21ac0a6bc54` | non_address_book | unknown | unknown | unverified | n/a | `0x405139005bdd96c270d98a52e2b429b9f971ca25` |
| unverified unclassified | UnnamedContract<br>`0x1ee4d04fa0469f87e169ac87c667a363c2c9a1a9` | non_address_book | unknown | unknown | unverified | n/a | `0x9aa99c23f67c81701c772b106b4f83f6e858dd2e` |
| unverified unclassified | UnnamedContract<br>`0x1f18188cf19cc28172e54dc6f580229b2e255015` | non_address_book | unknown | unknown | unverified | n/a | `0xa448833bece66fd8803ac0c390936c79b5fd6edf` |
| unverified unclassified | UnnamedContract<br>`0x1fecf3d9d4fee7f2c02917a66028a48c6706c179` | non_address_book | unknown | unknown | unverified | n/a | `0x12586916ada93f4835735bb54c1773920aa51c96` |
| unverified unclassified | UnnamedContract<br>`0x2063961f26019b588f48007d1cc43770e8b7383c` | non_address_book | unknown | unknown | unverified | n/a | `0xb0e1650a9760e0f383174af042091fc544b8356f` |
| unverified unclassified | UnnamedContract<br>`0x21af9dba45989512468b08d13978e9040cc0cef6` | non_address_book | unknown | unknown | unverified | n/a | `0x4600d3b12c39af925c2c07c487d31d17c1e32a35` |
| unverified unclassified | UnnamedContract<br>`0x22052c592f763ca14a090d9974c5bf9fd3a44b8c` | non_address_book | unknown | unknown | unverified | n/a | `0xe7c147cd1a7c05a6e73217645547582024e87a9b` |
| unverified unclassified | UnnamedContract<br>`0x228567c10b7533c88057c10ddea6349360f122c5` | non_address_book | unknown | unknown | unverified | n/a | `0xa448833bece66fd8803ac0c390936c79b5fd6edf` |
| unverified unclassified | UnnamedContract<br>`0x23208ca4f2b30d8f7d54bf2d5a822d1a2f876501` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| unverified unclassified | UnnamedContract<br>`0x2397321b301b80a1c0911d6f9ed4b6033d43cf51` | non_address_book | unknown | unknown | unverified | n/a | `0xa448833bece66fd8803ac0c390936c79b5fd6edf` |
| unverified unclassified | UnnamedContract<br>`0x239c957d42343b3d91fabc7c16e7f1e30bc32e5b` | non_address_book | unknown | unknown | unverified | n/a | `0xa448833bece66fd8803ac0c390936c79b5fd6edf` |
| unverified unclassified | UnnamedContract<br>`0x240eba32583bb925b2cb3acfee189f559219bf37` | non_address_book | unknown | unknown | unverified | n/a | `0xa448833bece66fd8803ac0c390936c79b5fd6edf` |
| unverified unclassified | UnnamedContract<br>`0x241bca8cc90dd5b8118da2c1aa29119beecb25c3` | non_address_book | unknown | unknown | unverified | n/a | `0x9aa99c23f67c81701c772b106b4f83f6e858dd2e` |
| unverified unclassified | UnnamedContract<br>`0x2453b1fbd17cea069a31c9d16a27f4f93a85cc0d` | non_address_book | unknown | unknown | unverified | n/a | `0x4600d3b12c39af925c2c07c487d31d17c1e32a35` |
| unverified unclassified | UnnamedContract<br>`0x24e927dac110aab7189a4f864d41680e4f7865fb` | non_address_book | unknown | unknown | unverified | n/a | `0x4600d3b12c39af925c2c07c487d31d17c1e32a35` |
| unverified unclassified | UnnamedContract<br>`0x271fbe8ab7f1fb262f81c77ea5303f03da9d3d6a` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| unverified unclassified | UnnamedContract<br>`0x27c6e261d827d2ff1631442760227eca78f6006c` | non_address_book | unknown | unknown | unverified | n/a | `0x0990be6db8c785fbbf9ded8baec612a10cae814b` |
| unverified unclassified | UnnamedContract<br>`0x27e97f35d80514d5dd1caa730e22a292e912a214` | non_address_book | unknown | unknown | unverified | n/a | `0xa448833bece66fd8803ac0c390936c79b5fd6edf` |
| unverified unclassified | UnnamedContract<br>`0x2869e74a15d3c0c797b04feaef93734060a4477c` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| unverified unclassified | UnnamedContract<br>`0x29396aae6198130a15f6ff982c44bc4a7353ef37` | non_address_book | unknown | unknown | unverified | n/a | `0xa448833bece66fd8803ac0c390936c79b5fd6edf` |
| unverified unclassified | UnnamedContract<br>`0x29ec0d55b8f26298a5350c64f56281eb070bf47e` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| unverified unclassified | UnnamedContract<br>`0x2a135a956f2b14556a193a13fb80640e861f8d55` | non_address_book | unknown | unknown | unverified | n/a | `0x4600d3b12c39af925c2c07c487d31d17c1e32a35` |
| unverified unclassified | UnnamedContract<br>`0x2a8499c4a86f7c07e311c73e36575a0dc2d362c3` | non_address_book | unknown | unknown | unverified | n/a | `0x4600d3b12c39af925c2c07c487d31d17c1e32a35` |
| unverified unclassified | UnnamedContract<br>`0x2b4864c2f2a2c275c6c66b90a2ae6be9fa9cbe47` | non_address_book | unknown | unknown | unverified | n/a | `0x4600d3b12c39af925c2c07c487d31d17c1e32a35` |
| unverified unclassified | UnnamedContract<br>`0x2b638b9d2f635ca71cd29bd582362cd0819cb3bd` | non_address_book | unknown | unknown | unverified | n/a | `0x9aa99c23f67c81701c772b106b4f83f6e858dd2e` |
| unverified unclassified | UnnamedContract<br>`0x2b7e624bdb839975d56d8428d9f6a4cf1160d3e9` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| unverified unclassified | UnnamedContract<br>`0x2c37fb628b35dfdfd515d41b0caae11b542773c3` | non_address_book | unknown | unknown | unverified | n/a | `0x4600d3b12c39af925c2c07c487d31d17c1e32a35` |
| unverified unclassified | UnnamedContract<br>`0x2c9b39f4d18e2e19c1f3d2b378128ee7ebe9f372` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| unverified unclassified | UnnamedContract<br>`0x2d2261f970f605c813f160e8baed455e9004a842` | non_address_book | unknown | unknown | unverified | n/a | `0xa448833bece66fd8803ac0c390936c79b5fd6edf` |
| unverified unclassified | UnnamedContract<br>`0x2d370111f8ffcf5bff0f56ba43c62c2ad98be7a3` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| unverified unclassified | UnnamedContract<br>`0x2d550218631d974e02afeb8061e02a5999e95dff` | non_address_book | unknown | unknown | unverified | n/a | `0xa448833bece66fd8803ac0c390936c79b5fd6edf` |
| unverified unclassified | UnnamedContract<br>`0x2dc7cd6ae6cce2e652479e01db84ed5ce6dcb677` | non_address_book | unknown | unknown | unverified | n/a | `0xa448833bece66fd8803ac0c390936c79b5fd6edf` |
| unverified unclassified | UnnamedContract<br>`0x2de1354c98880889643c4ca8b06fa2fb8fc1fd7a` | non_address_book | unknown | unknown | unverified | n/a | `0xa448833bece66fd8803ac0c390936c79b5fd6edf` |
| unverified unclassified | UnnamedContract<br>`0x2ecad4280b7720ba4f3830b47ab8ef2da4763f04` | non_address_book | unknown | unknown | unverified | n/a | `0x12586916ada93f4835735bb54c1773920aa51c96` |
| unverified unclassified | UnnamedContract<br>`0x2ecccc331181acdc6545685d310215fdd68d1612` | non_address_book | unknown | unknown | unverified | n/a | `0x9aa99c23f67c81701c772b106b4f83f6e858dd2e` |
| unverified unclassified | UnnamedContract<br>`0x2ef4b38a128ecc1ac06b43055553f95af59523de` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| unverified unclassified | UnnamedContract<br>`0x2f08f4645d2fa1fb12d2db8531c0c2ea0268bde2` | non_address_book | unknown | unknown | unverified | n/a | `0xa448833bece66fd8803ac0c390936c79b5fd6edf` |
| unverified unclassified | UnnamedContract<br>`0x2ffffba4f562569bec2d4fc1c36f7797ffb173cd` | non_address_book | unknown | unknown | unverified | n/a | `0xa448833bece66fd8803ac0c390936c79b5fd6edf` |
| unverified unclassified | UnnamedContract<br>`0x309ac8840f9b4c7eeb5bab1e89669d8dbb86c060` | non_address_book | unknown | unknown | unverified | n/a | `0x26ce2091749059a66703cd4b998156d94ec393ef` |
| unverified unclassified | UnnamedContract<br>`0x30a2f3c3aa6d12c0a36bed210dcf1b32ef6228cc` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| unverified unclassified | UnnamedContract<br>`0x30c271e2758fa59671106cc523708ddeaa188841` | non_address_book | unknown | unknown | unverified | n/a | `0xa448833bece66fd8803ac0c390936c79b5fd6edf` |
| unverified unclassified | UnnamedContract<br>`0x313143c4088a47c469d06fe3fa5fd4196be6a4d6` | non_address_book | unknown | unknown | unverified | n/a | `0x9aa99c23f67c81701c772b106b4f83f6e858dd2e` |
| unverified unclassified | UnnamedContract<br>`0x313c803622d59188f6b9dee555d86009eae94f09` | non_address_book | unknown | unknown | unverified | n/a | `0xa448833bece66fd8803ac0c390936c79b5fd6edf` |
| unverified unclassified | UnnamedContract<br>`0x319c06103bc51b3c01a1a121451aa5e2a2a7778f` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| unverified unclassified | UnnamedContract<br>`0x31aa15da826da3311788b208d31cae34074d1dc7` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| unverified unclassified | UnnamedContract<br>`0x326fe113a130c569b44aff93b3637f3ac956ecdf` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| unverified unclassified | UnnamedContract<br>`0x32bd22b18cd13ed02316c91600bf4a2ea299aba0` | non_address_book | unknown | unknown | unverified | n/a | `0xa448833bece66fd8803ac0c390936c79b5fd6edf` |
| unverified unclassified | UnnamedContract<br>`0x32c36a6a29fda7b9c1f1920ea998665f548b760a` | non_address_book | unknown | unknown | unverified | n/a | `0x405139005bdd96c270d98a52e2b429b9f971ca25` |
| unverified unclassified | UnnamedContract<br>`0x32d7261e6924600abb668ff82da86f6532304c6e` | non_address_book | unknown | unknown | unverified | n/a | `0xa448833bece66fd8803ac0c390936c79b5fd6edf` |
| unverified unclassified | UnnamedContract<br>`0x32ddf80508cfd8fed8abe375582fc7cfd20372c4` | non_address_book | unknown | unknown | unverified | n/a | `0xa448833bece66fd8803ac0c390936c79b5fd6edf` |
| unverified unclassified | UnnamedContract<br>`0x3340e2c0ddcc4a035737bc1f5445c7d0fa6cbf5c` | non_address_book | unknown | unknown | unverified | n/a | `0x12586916ada93f4835735bb54c1773920aa51c96` |
| unverified unclassified | UnnamedContract<br>`0x3405e88af759992937b84e58f2fe691ef0eea320` | non_address_book | unknown | unknown | unverified | n/a | `0x4600d3b12c39af925c2c07c487d31d17c1e32a35` |
| unverified unclassified | UnnamedContract<br>`0x3669c421b77340b2979d1a00a792cc2ee0fce737` | non_address_book | unknown | unknown | unverified | n/a | `0xa448833bece66fd8803ac0c390936c79b5fd6edf` |
| unverified unclassified | UnnamedContract<br>`0x368440b3121f32df336d393834eafd8fa787c4ec` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| unverified unclassified | UnnamedContract<br>`0x36b1a1675329a66dc79fcbca156757feaf169a01` | non_address_book | unknown | unknown | unverified | n/a | `0x9aa99c23f67c81701c772b106b4f83f6e858dd2e` |
| unverified unclassified | UnnamedContract<br>`0x36fb071d5d30e5207ecc010c0ea3cc9ad75838a8` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| unverified unclassified | UnnamedContract<br>`0x38488de975b77dc1b0d4b8569f596f6fd6ca0b92` | non_address_book | unknown | unknown | unverified | n/a | `0xce66ceb64e92a9dce6b2c5fbe546f2a3cf98eaeb` |
| unverified unclassified | UnnamedContract<br>`0x3860358a3a8eead5e1e47c8407fdaa571972a673` | non_address_book | unknown | unknown | unverified | n/a | `0xa448833bece66fd8803ac0c390936c79b5fd6edf` |
| unverified unclassified | UnnamedContract<br>`0x387177b33830f48199110f186f47797c66556b3b` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| unverified unclassified | UnnamedContract<br>`0x38c24a8422e5ff3fd8a7ba577e08a4763004fb2c` | non_address_book | unknown | unknown | unverified | n/a | `0x9aa99c23f67c81701c772b106b4f83f6e858dd2e` |
| unverified unclassified | UnnamedContract<br>`0x3910dce33441360e4c1d2749afa08e1a59af2546` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| unverified unclassified | UnnamedContract<br>`0x395a3481bf6ed9a9827d4df25032dadd3432c3f4` | non_address_book | unknown | unknown | unverified | n/a | `0xa448833bece66fd8803ac0c390936c79b5fd6edf` |
| unverified unclassified | UnnamedContract<br>`0x3993d34e7e99abf6b6f367309975d1360222d446` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| unverified unclassified | UnnamedContract<br>`0x39cdcc686ba929b1c72ee119fd804c0273574b71` | non_address_book | unknown | unknown | unverified | n/a | `0xe7c147cd1a7c05a6e73217645547582024e87a9b` |
| unverified unclassified | UnnamedContract<br>`0x3a283d9c08e8b55966afb64c515f5143cf907611` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| unverified unclassified | UnnamedContract<br>`0x3aa7e876880cb34371c01f1510b1e0a932dcb8c1` | non_address_book | unknown | unknown | unverified | n/a | `0xe7c147cd1a7c05a6e73217645547582024e87a9b` |
| unverified unclassified | UnnamedContract<br>`0x3aab5c43d4e47f71deea94a7d541e6c07e21b137` | non_address_book | unknown | unknown | unverified | n/a | `0x4600d3b12c39af925c2c07c487d31d17c1e32a35` |
| unverified unclassified | UnnamedContract<br>`0x3b6831c0077a1e44ed0a21841c3bc4dc11bce833` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| unverified unclassified | UnnamedContract<br>`0x3b78bdc7575896701c4e32f9d070aa387fceb22b` | non_address_book | unknown | unknown | unverified | n/a | `0x4600d3b12c39af925c2c07c487d31d17c1e32a35` |
| unverified unclassified | UnnamedContract<br>`0x3be09dea9ca8b6205d05f196e9c68fc35190a514` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| unverified unclassified | UnnamedContract<br>`0x3c08533dbcd0ab64bff5306a9d6d1de912b81b9e` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| unverified unclassified | UnnamedContract<br>`0x3c2982ca260e870eee70c423818010dfef212659` | non_address_book | unknown | unknown | unverified | n/a | `0xa448833bece66fd8803ac0c390936c79b5fd6edf` |
| unverified unclassified | UnnamedContract<br>`0x3c7ea1c10eb783fe86e4eed202324dcfeeca9043` | non_address_book | unknown | unknown | unverified | n/a | `0xe7c147cd1a7c05a6e73217645547582024e87a9b` |
| unverified unclassified | UnnamedContract<br>`0x3cfd93b6fbbd879dca6649ef27170f1d1221cc6d` | non_address_book | unknown | unknown | unverified | n/a | `0x0990be6db8c785fbbf9ded8baec612a10cae814b` |
| unverified unclassified | UnnamedContract<br>`0x3d229e1b4faab62f621ef2f6a610961f7bd7b23b` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| unverified unclassified | UnnamedContract<br>`0x3d56432c41f68eb2cde5e244b0c65c731ff5defa` | non_address_book | unknown | unknown | unverified | n/a | `0xa448833bece66fd8803ac0c390936c79b5fd6edf` |
| unverified unclassified | UnnamedContract<br>`0x3d5abb27919a6e50edf6fc34d2b07c91e9509ecb` | non_address_book | unknown | unknown | unverified | n/a | `0x405139005bdd96c270d98a52e2b429b9f971ca25` |
| unverified unclassified | UnnamedContract<br>`0x3da7ff6c15c0c97d9c2df4af82a9910384b372fd` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| unverified unclassified | UnnamedContract<br>`0x3ddb00cb5c927a71feddec48db1a231901568a1d` | non_address_book | unknown | unknown | unverified | n/a | `0xa448833bece66fd8803ac0c390936c79b5fd6edf` |
| unverified unclassified | UnnamedContract<br>`0x3ef1d856ea62a2292b8690855042095a7ac48b4b` | non_address_book | unknown | unknown | unverified | n/a | `0xa448833bece66fd8803ac0c390936c79b5fd6edf` |
| unverified unclassified | UnnamedContract<br>`0x3ef26504dbc8dd7b7aa3e97bc9f3813a9fc0b4b0` | non_address_book | unknown | unknown | unverified | n/a | `0xa448833bece66fd8803ac0c390936c79b5fd6edf` |
| unverified unclassified | UnnamedContract<br>`0x3f0e648daed617c372b87c621b88f7e2be321794` | non_address_book | unknown | unknown | unverified | n/a | `0x9aa99c23f67c81701c772b106b4f83f6e858dd2e` |
| unverified unclassified | UnnamedContract<br>`0x3f702a8f6c9f9f7abdfea67f89d33f18e0368600` | non_address_book | unknown | unknown | unverified | n/a | `0xa448833bece66fd8803ac0c390936c79b5fd6edf` |
| unverified unclassified | UnnamedContract<br>`0x404a814c5544ae631fb0e77fbb27f5550ee54600` | non_address_book | unknown | unknown | unverified | n/a | `0x12586916ada93f4835735bb54c1773920aa51c96` |
| unverified unclassified | UnnamedContract<br>`0x40745803c2faa8e8402e2ae935933d07ca8f355c` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| unverified unclassified | UnnamedContract<br>`0x409893c94aad411030e5a78fd39b015221dfb8b7` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| unverified unclassified | UnnamedContract<br>`0x4169ef3b885416bd553567e78585a97ee52ba700` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| unverified unclassified | UnnamedContract<br>`0x41d5d78049d44444ac6d5e1ec67990f24efacd58` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| unverified unclassified | UnnamedContract<br>`0x421efd53fa0d90687db5ef370d5dcd7f89cbd9de` | non_address_book | unknown | unknown | unverified | n/a | `0x4600d3b12c39af925c2c07c487d31d17c1e32a35` |
| unverified unclassified | UnnamedContract<br>`0x422cd669cbdd74e48849b671ead3e0eb27c7495b` | non_address_book | unknown | unknown | unverified | n/a | `0xa448833bece66fd8803ac0c390936c79b5fd6edf` |
| unverified unclassified | UnnamedContract<br>`0x42b4afcfb939366538d53555b98844dafbb729ca` | non_address_book | unknown | unknown | unverified | n/a | `0x9aa99c23f67c81701c772b106b4f83f6e858dd2e` |
| unverified unclassified | UnnamedContract<br>`0x42b9dea10b51a696949715797bdfd69489fc3b32` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| unverified unclassified | UnnamedContract<br>`0x42dd7dc055a04c3d795a3dfd2eaaf7d480367a02` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| unverified unclassified | UnnamedContract<br>`0x4316416f429b04fb12df8952fa1434e6b9d77c3f` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| unverified unclassified | UnnamedContract<br>`0x43415eb6ff9db7e26a15b704e7a3edce97d31c4e` | non_address_book | unknown | unknown | unverified | n/a | `0x589254a1a3d8ae95ce984900d505d91fd3ed167e` |
| unverified unclassified | UnnamedContract<br>`0x43959a388603dcb6b02ca084a55d4c7f3b442c57` | non_address_book | unknown | unknown | unverified | n/a | `0xa448833bece66fd8803ac0c390936c79b5fd6edf` |
| unverified unclassified | UnnamedContract<br>`0x44ade9aa409b0c29463ff7fcf07c9d3c939166ce` | non_address_book | unknown | unknown | unverified | n/a | `0xa448833bece66fd8803ac0c390936c79b5fd6edf` |
| unverified unclassified | UnnamedContract<br>`0x45c55fb1805d8ac7e5ba0f933cb7d4da0dabd365` | non_address_book | unknown | unknown | unverified | n/a | `0xb0e1650a9760e0f383174af042091fc544b8356f` |
| unverified unclassified | UnnamedContract<br>`0x45d2d8e4ab0f5af1d29305301a1b31d5d41b3349` | non_address_book | unknown | unknown | unverified | n/a | `0x4600d3b12c39af925c2c07c487d31d17c1e32a35` |
| unverified unclassified | UnnamedContract<br>`0x46a279f57149d2c5f9549a3ad3371f1bf7402921` | non_address_book | unknown | unknown | unverified | n/a | `0x4600d3b12c39af925c2c07c487d31d17c1e32a35` |
| unverified unclassified | UnnamedContract<br>`0x4710a77a0e0f4c7b0e11cdeb74acb042e62b8d22` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| unverified unclassified | UnnamedContract<br>`0x4740b7ba86f14ef9feccbedb0fb1134f8f940359` | non_address_book | unknown | unknown | unverified | n/a | `0xa448833bece66fd8803ac0c390936c79b5fd6edf` |
| unverified unclassified | UnnamedContract<br>`0x4804953f80908bb101427c146d869bb6d713e93f` | non_address_book | unknown | unknown | unverified | n/a | `0xb0e1650a9760e0f383174af042091fc544b8356f` |
| unverified unclassified | UnnamedContract<br>`0x480af6d9abe851e2fc4162b2b93fff8cf84ddee7` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| unverified unclassified | UnnamedContract<br>`0x4863c6df17dd59311b7f67e694dd835adc87f2d3` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| unverified unclassified | UnnamedContract<br>`0x4948677546dfbdfc091f5a29458895a03b1a5f58` | non_address_book | unknown | unknown | unverified | n/a | `0x589254a1a3d8ae95ce984900d505d91fd3ed167e` |
| unverified unclassified | UnnamedContract<br>`0x4976fb03c32e5b8cfe2b6ccb31c09ba78ebaba41` | non_address_book | unknown | unknown | unverified | n/a | `0x0904dac3347ea47d208f3fd67402d039a3b99859` |
| unverified unclassified | UnnamedContract<br>`0x4a6d155df9ec9a1bb3639e6b7b99e46fb68d42f6` | non_address_book | unknown | unknown | unverified | n/a | `0x4600d3b12c39af925c2c07c487d31d17c1e32a35` |
| unverified unclassified | UnnamedContract<br>`0x4afe9d57ccac57355f4b26d88329fdabdefc7bc2` | non_address_book | unknown | unknown | unverified | n/a | `0x12586916ada93f4835735bb54c1773920aa51c96` |
| unverified unclassified | UnnamedContract<br>`0x4b56b6b2169381d4247d59fe8d0fe52e943eeb0d` | non_address_book | unknown | unknown | unverified | n/a | `0xa448833bece66fd8803ac0c390936c79b5fd6edf` |
| unverified unclassified | UnnamedContract<br>`0x4b8792af00eae944484bf572bc33029b2184a50c` | non_address_book | unknown | unknown | unverified | n/a | `0xa448833bece66fd8803ac0c390936c79b5fd6edf` |
| unverified unclassified | UnnamedContract<br>`0x4c18e409dc8619bfb6a1cb56d114c3f592e0ae79` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| unverified unclassified | UnnamedContract<br>`0x4c1d4ad2fa2ba5510acbb0f428ec861e1f7ea3a4` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| unverified unclassified | UnnamedContract<br>`0x4c5d4f542765b66154b2e789abd8e69ed4504112` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| unverified unclassified | UnnamedContract<br>`0x4ca9b3063ec5866a4b82e437059d2c43d1be596f` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| unverified unclassified | UnnamedContract<br>`0x4cb152b45e667f86a0470776bed0be93a5f1c534` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| unverified unclassified | UnnamedContract<br>`0x4d682cbd74a67b1ffe97a2bb78475a16efe23e8a` | non_address_book | unknown | unknown | unverified | n/a | `0x12586916ada93f4835735bb54c1773920aa51c96` |
| unverified unclassified | UnnamedContract<br>`0x4dddc830c7c9a0cfcb941416b92d75f12423bc37` | non_address_book | unknown | unknown | unverified | n/a | `0xb0e1650a9760e0f383174af042091fc544b8356f` |
| unverified unclassified | UnnamedContract<br>`0x4e7300f74f59afaeccdc0d434758df9be238f0bf` | non_address_book | unknown | unknown | unverified | n/a | `0x4600d3b12c39af925c2c07c487d31d17c1e32a35` |
| unverified unclassified | UnnamedContract<br>`0x4e7cf3569529660bf23926060efb25866d67314b` | non_address_book | unknown | unknown | unverified | n/a | `0xa448833bece66fd8803ac0c390936c79b5fd6edf` |
| unverified unclassified | UnnamedContract<br>`0x4ea083b88e42d74095386bf3bc6e0d40ceaa3ae2` | non_address_book | unknown | unknown | unverified | n/a | `0x9aa99c23f67c81701c772b106b4f83f6e858dd2e` |
| unverified unclassified | UnnamedContract<br>`0x4efb0e6aba6517ce4fdd3f31013cbbc0bbb8dbfa` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| unverified unclassified | UnnamedContract<br>`0x4f37395bdfbe3a0dca124ad3c9dbfe6a6cbc31d6` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| unverified unclassified | UnnamedContract<br>`0x4f8846ae9380b90d2e71d5e3d042dff3e7ebb40d` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| unverified unclassified | UnnamedContract<br>`0x50103e7e050e4b0a9ddaef537c82ac7273a89b1f` | non_address_book | unknown | unknown | unverified | n/a | `0xa448833bece66fd8803ac0c390936c79b5fd6edf` |
| unverified unclassified | UnnamedContract<br>`0x5010e8277673b3470604935e5b0be786a16036cf` | non_address_book | unknown | unknown | unverified | n/a | `0x4600d3b12c39af925c2c07c487d31d17c1e32a35` |
| unverified unclassified | UnnamedContract<br>`0x505603e2440b44c1602b44d0eb8385399b3f7bab` | non_address_book | unknown | unknown | unverified | n/a | `0xa448833bece66fd8803ac0c390936c79b5fd6edf` |
| unverified unclassified | UnnamedContract<br>`0x507d898226e6a3e5eb8dbecae0b9e8fd51337656` | non_address_book | unknown | unknown | unverified | n/a | `0x12586916ada93f4835735bb54c1773920aa51c96` |
| unverified unclassified | UnnamedContract<br>`0x50812807ce86d966669ff0e21ad323a284585cfb` | non_address_book | unknown | unknown | unverified | n/a | `0x4600d3b12c39af925c2c07c487d31d17c1e32a35` |
| unverified unclassified | UnnamedContract<br>`0x509728dc748586214fa30cef61359f136523f24d` | non_address_book | unknown | unknown | unverified | n/a | `0xb0e1650a9760e0f383174af042091fc544b8356f` |
| unverified unclassified | UnnamedContract<br>`0x50996c7e748b1b83130b4854945d86ba6fc81f06` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| unverified unclassified | UnnamedContract<br>`0x50b4cdb17d3e10c9bc88b3744f3fd7c25695eee7` | non_address_book | unknown | unknown | unverified | n/a | `0xa448833bece66fd8803ac0c390936c79b5fd6edf` |
| unverified unclassified | UnnamedContract<br>`0x50c39ea8f3d72310c8b56a56b333994266e9b477` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| unverified unclassified | UnnamedContract<br>`0x50f35f4fd499898801282a415f4c3a689663719f` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| unverified unclassified | UnnamedContract<br>`0x5154e7698b235e6003bfa025839d192230e39dc7` | non_address_book | unknown | unknown | unverified | n/a | `0xa448833bece66fd8803ac0c390936c79b5fd6edf` |
| unverified unclassified | UnnamedContract<br>`0x518fb6afefea9bb0a5135014d8032edee4a8b1ec` | non_address_book | unknown | unknown | unverified | n/a | `0x12586916ada93f4835735bb54c1773920aa51c96` |
| unverified unclassified | UnnamedContract<br>`0x52581ecaaa4dde745baa65a4d1d653053c74f4bb` | non_address_book | unknown | unknown | unverified | n/a | `0x4600d3b12c39af925c2c07c487d31d17c1e32a35` |
| unverified unclassified | UnnamedContract<br>`0x528baca578523855a64ee9c276826f934c86a54c` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| unverified unclassified | UnnamedContract<br>`0x52a430b5b7407fa103c5ae974744e4cc945354e6` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| unverified unclassified | UnnamedContract<br>`0x535d7bd932602976513db4a7a69642f1cc29d18c` | non_address_book | unknown | unknown | unverified | n/a | `0x4600d3b12c39af925c2c07c487d31d17c1e32a35` |
| unverified unclassified | UnnamedContract<br>`0x53c2758fba4063aa9eb1d1d7a481d53266214f2e` | non_address_book | unknown | unknown | unverified | n/a | `0xa448833bece66fd8803ac0c390936c79b5fd6edf` |
| unverified unclassified | UnnamedContract<br>`0x53e78a6e12146565c7d7307d07a3c1abacf3e20f` | non_address_book | unknown | unknown | unverified | n/a | `0x4600d3b12c39af925c2c07c487d31d17c1e32a35` |
| unverified unclassified | UnnamedContract<br>`0x5419d3fa60c56104175684411a496879c4df21b5` | non_address_book | unknown | unknown | unverified | n/a | `0x589254a1a3d8ae95ce984900d505d91fd3ed167e` |
| unverified unclassified | UnnamedContract<br>`0x5425724e4ce3b469c61876b59be43a210a572997` | non_address_book | unknown | unknown | unverified | n/a | `0xa448833bece66fd8803ac0c390936c79b5fd6edf` |
| unverified unclassified | UnnamedContract<br>`0x5473b1bcbbc45d38d8fbb50a18a73afb8b0637a7` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| unverified unclassified | UnnamedContract<br>`0x5608051d98377419d7d861531728dfb869ddc054` | non_address_book | unknown | unknown | unverified | n/a | `0x4600d3b12c39af925c2c07c487d31d17c1e32a35` |
| unverified unclassified | UnnamedContract<br>`0x566a6442a5a6e9895b9dca97cc7879d632c6e4b0` | non_address_book | unknown | unknown | unverified | n/a | `0x0990be6db8c785fbbf9ded8baec612a10cae814b` |
| unverified unclassified | UnnamedContract<br>`0x56a9a5676e0e7f30d5a3f6a82cebcded238ba3ff` | non_address_book | unknown | unknown | unverified | n/a | `0x9aa99c23f67c81701c772b106b4f83f6e858dd2e` |

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
| September 2022 - frxETH - Code4rena | frxETH | own contract | 0x5e8422… (selected) `0x5e8422345238f34275888049021821e8e08caa1f` — deployed 2022-10-06 05:21:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| September 2022 - frxETH - Code4rena | sfrxETH | own contract | 0xac3e01… (selected) `0xac3e018457b222d93114458476f3e3416abbe38f` — deployed 2022-10-06 05:21:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
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
| native | 374 |
| upstream | 20 |
| standard_library | 7 |
| needs_review | 1314 |

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
