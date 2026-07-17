# Agentic Audit Brief: Sudoswap

## Export Authority

- Production state: **published scope**
- Raw selected rows: 22 across 5 audit(s)
- Eligible audit results: 5 (5 matched; 0 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Sudoswap (`sudoswap`)
- Website: [https://sudoswap.xyz](https://sudoswap.xyz)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, base, berachain, ethereum, goerli
- Contract surface: 97 unique implementations (97 raw deployments)
- Coverage basis: 8/8 confirmed own live verified implementations (100.0%); conservative 100.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $881,107.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Sudoswap. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 8 contract row(s) across arbitrum, base, berachain, ethereum, goerli. Structural roles: 6 core, 2 supporting. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 8
- Structural roles: core (6), supporting (2)
- Contract kinds: contract (8)
- Detected standards: none
- Frameworks: solmate (6), openzeppelin (5), prb-math (1)
- Upgradeable-pattern rows: 0

## Fork Analysis

1 of 15 contracts are derived from known codebases. 14 contracts have no detected origin.

### Forked Contracts

**LSSVMRouter** (`0x2b2e8cda09bba9660dca5cb6233787738ad68329`, chain 1)
Origin: nftx (`0x2b2e8cda09bba9660dca5cb6233787738ad68329`)
Containment: 100.0% - 18 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0xa020d57ab0448ef74115c112d18a9c231cc86000`, chain 1)
- UnnamedContract (`0xb16c1342e617a5b6e4b631eb114483fdb289c0a4`, chain 1)
- UnnamedContract (`0xbc40d21999b4bf120d330ee3a2de415287f626c9`, chain 1)
- UnnamedContract (`0xc7fb91b6cd3c67e02ec08013cebb29b1241f3de5`, chain 1)
- UnnamedContract (`0xe4ac8edd513074ba5f78dcddc57680ef68fa0cae`, chain 1)
- UnnamedContract (`0xe5d78fec1a7f42d2f3620238c498f088a866fdc5`, chain 1)
- UnnamedContract (`0xfa056c602ad0c0c4ee4385b3233f2cb06730334a`, chain 1)
- ExponentialCurve (`0x432f962d8209781da23fb37b6b59ee15de7d9841`, chain 1)
- GDACurve (`0x1fd5876d4a3860eb0159055a3b7cb79fdfff6b67`, chain 1)
- LinearCurve (`0x5b6ac51d9b1cede0068a1b26533cace807f883ee`, chain 1)
- PropertyCheckerFactory (`0x031b216fabec82310fea3426b33455609b99afc1`, chain 1)
- StandardSettingsFactory (`0xf4f439a6a152cfecb1f34d726d490f82bcb3c2c7`, chain 1)
- VeryFastRouter (`0x090c236b62317db226e6ae6cd4c0fd25b7028b65`, chain 1)
- XykCurve (`0x7942e264e21c5e6cbba45fe50785a15d3beb1da0`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 8; live-surface rows included: 8 (8 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 15/27 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 8/8 (100.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 15 own, 12 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 70 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 1
- Confirmed-live implementations: 15 of 97 unique; 82 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 8/66
- Verified + Unaudited implementations: 58
- Verified by bytecode match: 0
- Unverified implementations: 31
- Unique implementations: 97
- Raw deployments: 97
- Audits discovered: 5 (5 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 5
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-06 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 5 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 8 match-unverified
- Tier 1 coverage: 100.0% (Cyfrin, Spearbit)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Cyfrin | Tier 1 | 8 | 12.1% | 2023-06 |
| Spearbit | Tier 1 | 7 | 10.6% | 2023-04 |
| ABDK | Tier 2 | 3 | 4.5% | 2022-04 |
| Narya | Tier 2 | 1 | 1.5% | 2023-02 |

## Contract Surface

### ✅ Verified + Audited (8)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| ExponentialCurve | unknown | project_anchor | own_supporting | 0 | ethereum | unit-393264 | `0x432f962d8209781da23fb37b6b59ee15de7d9841` | ✅ Audited |
| GDACurve | unknown | project_anchor | own_supporting | 0 | ethereum | unit-393262 | `0x1fd5876d4a3860eb0159055a3b7cb79fdfff6b67` | ✅ Audited |
| LinearCurve | unknown | project_anchor | own_supporting | 0 | ethereum | unit-393265 | `0x5b6ac51d9b1cede0068a1b26533cace807f883ee` | ✅ Audited |
| LSSVMRouter | unknown | project_anchor | own_supporting | 0 | ethereum | unit-393263 | `0x2b2e8cda09bba9660dca5cb6233787738ad68329` | ✅ Audited |
| PropertyCheckerFactory | unknown | project_anchor | own_supporting | 0 | ethereum | unit-393260 | `0x031b216fabec82310fea3426b33455609b99afc1` | ✅ Audited |
| StandardSettingsFactory | unknown | project_anchor | own_supporting | 0 | ethereum | unit-393273 | `0xf4f439a6a152cfecb1f34d726d490f82bcb3c2c7` | ✅ Audited |
| VeryFastRouter | unknown | project_anchor | own_supporting | 0 | ethereum | unit-393261 | `0x090c236b62317db226e6ae6cd4c0fd25b7028b65` | ✅ Audited |
| XykCurve | unknown | project_anchor | own_supporting | 0 | ethereum | unit-393266 | `0x7942e264e21c5e6cbba45fe50785a15d3beb1da0` | ✅ Audited |

### ⚠️ Verified + Unaudited (58)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| ArbitrumReceiver | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x705fd2868348df3ea3f560e52b00c4c3df6aeed2` | ⚠️ Unaudited |
| Blockmon | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaf488234796ca27dba8ecf17f803ea1f4ab33e15` | ⚠️ Unaudited |
| DoomRewarder | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7166e7db426228ba180694e0621613fc84ff84e5` | ⚠️ Unaudited |
| ERC721Batcher | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf83eee39e723526605d784917b6e38ebcf0f0207` | ⚠️ Unaudited |
| ERC721Sender | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x006dd6c488e90180d7346db5a026fd747af3b218` | ⚠️ Unaudited |
| HashmaskSwapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x078d3b62e82b5cee3ebdc0754cda976230517452` | ⚠️ Unaudited |
| Lockdrop | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xada31f59e70ad18665380f21ce49d4c43f9865c2` | ⚠️ Unaudited |
| LSSVMPairEnumerableERC20 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd42638863462d2f21bb7d4275d7637ee5d5541eb` | ⚠️ Unaudited |
| LSSVMPairEnumerableETH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x08ce97807a81896e85841d74fb7e7b065ab3ef05` | ⚠️ Unaudited |
| LSSVMPairERC1155ERC20 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x4806e67061a4288d710e2c5af0db79833a8351cb` | ⚠️ Unaudited |
| LSSVMPairERC1155ETH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x2286e66cc3b3f15ae6d88164f618f98f1ce21581` | ⚠️ Unaudited |
| LSSVMPairERC721ERC20 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x37af63b1c64bc93e48da17cc018ed2b5f63802de` | ⚠️ Unaudited |
| LSSVMPairERC721ETH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xa43d2f748e73431983578a92ecd2d830126d5f17` | ⚠️ Unaudited |
| LSSVMPairFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4f1627be4c72aeb9565d4c751550c4d262a96b51` | ⚠️ Unaudited |
| LSSVMPairMissingEnumerableERC20 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x92de3a1511ef22abcf3526c302159882a4755b22` | ⚠️ Unaudited |
| LSSVMPairMissingEnumerableETH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcd80c916b1194beb48abf007d0b79a7238436d56` | ⚠️ Unaudited |
| MaxTxSizeHook | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc166aa039e9e9898643154420e53880d22e22f10` | ⚠️ Unaudited |
| MonImageRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2d824d66e1b7ba0f73b5caf75886abf812a13e67` | ⚠️ Unaudited |
| MonMinter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0427743df720801825a5c82e0582b1e915e0f750` | ⚠️ Unaudited |
| MonSpawner | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4fad5ddc4e0186b932e27baa7d37d97457dfc868` | ⚠️ Unaudited |
| MonStaker2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd06337a401b468657de2f9d3e390ce5b21c3c1c0` | ⚠️ Unaudited |
| MonStaker3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa3300bfc13556fa5146ffde34e92a0230a1c3197` | ⚠️ Unaudited |
| Multicall3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xca11bde05977b3631167028862be2a173976ca11` | ⚠️ Unaudited |
| MultiRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3062627136de797f807bcb63f0d5399a21dfb6c8` | ⚠️ Unaudited |
| Multisender | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc653e1b3a971078812a72d11c45ad71e00f3ad1f` | ⚠️ Unaudited |
| NFGas | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5c770425aeb064135b5e625d46b12619189b4077` | ⚠️ Unaudited |
| NFGasNames | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0f2f1b0959fcfa6556f8b9479b996ecbb3cfe031` | ⚠️ Unaudited |
| NFTClaim | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe354ac0bb78a8013617fe0efa6099769749f027c` | ⚠️ Unaudited |
| Nftdns | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe37bb18b86d228831a61872f5df3b5f24b6218da` | ⚠️ Unaudited |
| NFTLottery | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3baa5ab805c7888e7a92cf6d32c20938ede344fb` | ⚠️ Unaudited |
| NFTLotteryPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x19dd2b11b886a88aecf30f1c804e86c4daf4cd87` | ⚠️ Unaudited |
| NFTLotteryPoolFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xabd9c0bd5628c90db7a8cf787c2580d1ef105026` | ⚠️ Unaudited |
| NFTLotteryURI | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2031bd6c7861509ab48bf338e280a401ee8f9251` | ⚠️ Unaudited |
| Nftnft | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x537edfb50100974af813f263ca7714ecc4c7ba40` | ⚠️ Unaudited |
| NFTStaker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc5802bcf619301bdc6b1b9eda4b6fd26e63339af` | ⚠️ Unaudited |
| OptimismReceiver | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x53f0e31e2b8084ce4dd5991ecf157b181fc38bc1` | ⚠️ Unaudited |
| OrderBhook | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xd4e0c048d92267693fe36dfcf80034c9b7871856` | ⚠️ Unaudited |
| PenguSVG | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x25b5058670211a6c39f821d01aa51f4671e05afb` | ⚠️ Unaudited |
| ProtoCards0 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa1c07dc4086af57db39821fd50417fda449348a3` | ⚠️ Unaudited |
| RNGDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8d514cf4912c7ed280afe4cdf2738ef9282fa546` | ⚠️ Unaudited |
| RoyaltyEngine | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x0b846b2c739726012d1b9dd7ac5a1231b2f8d534` | ⚠️ Unaudited |
| S3KS | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaed0c09de6f851c1ff7540ecdc239c0e4b01801d` | ⚠️ Unaudited |
| Salt | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc17030798a6d6e1a76382cf8f439182eb0342d93` | ⚠️ Unaudited |
| SaltTokenURI | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4e4c16079d67c8058c89f1f8ce711c8b00ea4747` | ⚠️ Unaudited |
| skunk | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x7fff0326e0de62676f1bf60af435cbe1c7cb1d96` | ⚠️ Unaudited |
| SudoGovernor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6853f8865ba8e9fbd9c8cce3155ce5023fb7eeb0` | ⚠️ Unaudited |
| SudoToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3446dd70b2d52a6bf4a5a192d9b0a161295ab7f9` | ⚠️ Unaudited |
| SVGGenerator2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1036f5c5278358ea004e6530a86e4b968687776a` | ⚠️ Unaudited |
| TestRoyaltyRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x3f66e7cc503d5902ec1a65a8ec6b3f01dcc6d667` | ⚠️ Unaudited |
| Unexpected | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa3a83528d0aa752f3bbe2b6877e222ed02462d22` | ⚠️ Unaudited |
| WrappedSudoPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x4b1f0d7a960ef84181aeddd78e919a933e8246e8` | ⚠️ Unaudited |
| XMON | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3aada3e213abf8529606924d8d1c55cbdc70bf74` | ⚠️ Unaudited |
| XToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb7acb10b6e1d15d2e5760a9fb328e10008dfcc3c` | ⚠️ Unaudited |
| XTokenClonable | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x925297edcb4893d0d914e6d28f49381d47b864b0` | ⚠️ Unaudited |
| XTokenFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa76cee17463bd34df43418e9b1acdf508e929881` | ⚠️ Unaudited |
| XXMON | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0b5c9081e818e3b2cf677e7f42391de34d6ab2f3` | ⚠️ Unaudited |
| ZeroExRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb7a9942ecd1349793b72c246c3be7d6210c10cd3` | ⚠️ Unaudited |
| ZeroExRouter2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x608276a7becb0f26a9a986b339033a3b74cd4664` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (31)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x02363a2f1b2c2c5815cb6893aa27861be0c4f760` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0d807bd5ff2c4ef298755be30e22926b33244b0c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x25b4efc43c9dcae134233cd577ffca7cfad6748f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5e9a0ef66a6bc2e6ac7c9811374521f7bad89e53` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x60c3aeeb3b8fade6df3dfdc52a4630d492cdd7e7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x76a0f80417514e7577ebab30e8c0860759ca1704` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8f03234e08a0068572d3afe10c45d4840d3f29e8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x967544b2dd5c1c7a459e810c9b60ae4fc8227201` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9fe1e403c043214017a6719c1b64190c634229ef` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-393267 | `0xa020d57ab0448ef74115c112d18a9c231cc86000` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xac6dcff6e13132f075e36ca3a7f403236f869438` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-393268 | `0xb16c1342e617a5b6e4b631eb114483fdb289c0a4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb3d6192e9940bba479c32596431d215faee5f723` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-393269 | `0xbc40d21999b4bf120d330ee3a2de415287f626c9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-393270 | `0xc7fb91b6cd3c67e02ec08013cebb29b1241f3de5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-393271 | `0xe4ac8edd513074ba5f78dcddc57680ef68fa0cae` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-393272 | `0xe5d78fec1a7f42d2f3620238c498f088a866fdc5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf0202e9267930ae942f0667dc6d805057328f6dc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-393274 | `0xfa056c602ad0c0c4ee4385b3233f2cb06730334a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-393275 | `0x02363a2f1b2c2c5815cb6893aa27861be0c4f760` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-393276 | `0x0d807bd5ff2c4ef298755be30e22926b33244b0c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-393277 | `0x25b4efc43c9dcae134233cd577ffca7cfad6748f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-393278 | `0x5e9a0ef66a6bc2e6ac7c9811374521f7bad89e53` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-393279 | `0x60c3aeeb3b8fade6df3dfdc52a4630d492cdd7e7` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-393280 | `0x76a0f80417514e7577ebab30e8c0860759ca1704` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-393281 | `0x8f03234e08a0068572d3afe10c45d4840d3f29e8` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-393282 | `0x967544b2dd5c1c7a459e810c9b60ae4fc8227201` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-393283 | `0x9fe1e403c043214017a6719c1b64190c634229ef` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-393284 | `0xac6dcff6e13132f075e36ca3a7f403236f869438` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-393285 | `0xb3d6192e9940bba479c32596431d215faee5f723` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-393286 | `0xf0202e9267930ae942f0667dc6d805057328f6dc` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [abdk-audit-amm.pdf](https://github.com/sudoswap/audits/blob/main/abdk-audit-amm.pdf) | ABDK | Audit | 2022-04 | stale | Direct | contract_name | matched | 3 | 0 | 0 | 15 | high |
| [spearbit-audit-amm.pdf](https://github.com/sudoswap/audits/blob/main/spearbit-audit-amm.pdf) | Spearbit | Audit | 2022-01 | stale | Direct | contract_name | matched | 3 | 0 | 0 | 7 | high |
| [cyfrin.pdf](https://github.com/sudoswap/v2-audits/blob/main/cyfrin.pdf) | Cyfrin | Audit | 2023-06 | stale | Direct | contract_name | matched | 8 | 0 | 0 | 19 | high |
| [narya.pdf](https://github.com/sudoswap/v2-audits/blob/main/narya.pdf) | Narya | Audit | 2023-02 | stale | Direct | contract_name | matched | 1 | 0 | 0 | 8 | high |
| [spearbit.pdf](https://github.com/sudoswap/v2-audits/blob/main/spearbit.pdf) | Spearbit | Audit | 2023-04 | stale | Direct | contract_name | matched | 7 | 0 | 0 | 16 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [18291] abdk-audit-amm.pdf — matched: All 18 files listed in scope section at commit 7eb85bb. Date from cover page: 25th April 2022.
- [18292] spearbit-audit-amm.pdf — matched: Extracted from the audit report of Sudoswap lssvm contracts. The report lists contracts in scope via context and file paths.
- [18293] cyfrin.pdf — matched: Extracted contract names from the audit report's scope, findings, and PoC files. The report covers the Sudoswap sudoAMM v2 smart contracts. The audit date is from the cover page.
- [18294] narya.pdf — matched: Extracted from the report summary and findings sections. The report date is February 20, 2023.
- [18295] spearbit.pdf — matched: Extracted contract names from findings context and file paths mentioned throughout the report. No explicit scope section found; contracts are inferred from the audit content.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| abdk-audit-amm.pdf | CurveErrorCodes | unmatched — not counted | — | listed in scope | no |
| abdk-audit-amm.pdf | ExponentialCurve | own contract | ExponentialCurve (selected) `0x432f962d8209781da23fb37b6b59ee15de7d9841` — deployed 2022-04-24 09:09:30+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| abdk-audit-amm.pdf | ICurve | unmatched — not counted | — | listed in scope | no |
| abdk-audit-amm.pdf | LinearCurve | own contract | LinearCurve (selected) `0x5b6ac51d9b1cede0068a1b26533cace807f883ee` — deployed 2022-04-24 09:10:07+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| abdk-audit-amm.pdf | LSSVMPairCloner | unmatched — not counted | — | listed in scope | no |
| abdk-audit-amm.pdf | Ownable | unmatched — not counted | — | listed in scope | no |
| abdk-audit-amm.pdf | LSSVMPair | unmatched — not counted | — | listed in scope | no |
| abdk-audit-amm.pdf | LSSVMPairERC20 | unmatched — not counted | — | listed in scope | no |
| abdk-audit-amm.pdf | LSSVMPairETH | unmatched — not counted | — | listed in scope | no |
| abdk-audit-amm.pdf | LSSVMPairEnumerable | unmatched — not counted | — | listed in scope | no |
| abdk-audit-amm.pdf | LSSVMPairEnumerableERC20 | unmatched — not counted | — | listed in scope | no |
| abdk-audit-amm.pdf | LSSVMPairEnumerableETH | unmatched — not counted | — | listed in scope | no |
| abdk-audit-amm.pdf | LSSVMPairFactory | unmatched — not counted | — | listed in scope | no |
| abdk-audit-amm.pdf | LSSVMPairFactoryLike | unmatched — not counted | — | listed in scope | no |
| abdk-audit-amm.pdf | LSSVMPairMissingEnumerable | unmatched — not counted | — | listed in scope | no |
| abdk-audit-amm.pdf | LSSVMPairMissingEnumerableERC20 | unmatched — not counted | — | listed in scope | no |
| abdk-audit-amm.pdf | LSSVMPairMissingEnumerableETH | unmatched — not counted | — | listed in scope | no |
| abdk-audit-amm.pdf | LSSVMRouter | own contract | LSSVMRouter (selected) `0x2b2e8cda09bba9660dca5cb6233787738ad68329` — deployed 2022-05-05 21:41:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spearbit-audit-amm.pdf | LSSVMPairCloner | unmatched — not counted | — | mentioned in context of critical finding | no |
| spearbit-audit-amm.pdf | LSSVMPair | unmatched — not counted | — | main contract in scope | no |
| spearbit-audit-amm.pdf | LSSVMRouter | own contract | LSSVMRouter (selected) `0x2b2e8cda09bba9660dca5cb6233787738ad68329` — deployed 2022-05-05 21:41:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spearbit-audit-amm.pdf | LSSVMPairFactory | unmatched — not counted | — | main contract in scope | no |
| spearbit-audit-amm.pdf | LSSVMPairERC20 | unmatched — not counted | — | mentioned in findings | no |
| spearbit-audit-amm.pdf | LSSVMPairETH | unmatched — not counted | — | mentioned in findings | no |
| spearbit-audit-amm.pdf | LSSVMPairMissingEnumerable | unmatched — not counted | — | mentioned in findings | no |
| spearbit-audit-amm.pdf | LSSVMPairEnumerable | unmatched — not counted | — | mentioned in findings | no |
| spearbit-audit-amm.pdf | LinearCurve | own contract | LinearCurve (selected) `0x5b6ac51d9b1cede0068a1b26533cace807f883ee` — deployed 2022-04-24 09:10:07+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spearbit-audit-amm.pdf | ExponentialCurve | own contract | ExponentialCurve (selected) `0x432f962d8209781da23fb37b6b59ee15de7d9841` — deployed 2022-04-24 09:09:30+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| cyfrin.pdf | LSSVMRouter | own contract | LSSVMRouter (selected) `0x2b2e8cda09bba9660dca5cb6233787738ad68329` — deployed 2022-05-05 21:41:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| cyfrin.pdf | VeryFastRouter | own contract | VeryFastRouter (selected) `0x090c236b62317db226e6ae6cd4c0fd25b7028b65` — deployed 2023-05-21 20:25:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| cyfrin.pdf | LSSVMPair | unmatched — not counted | — | mentioned in scope and findings | no |
| cyfrin.pdf | LSSVMPairETH | unmatched — not counted | — | mentioned in scope and findings | no |
| cyfrin.pdf | LSSVMPairERC20 | unmatched — not counted | — | mentioned in scope and findings | no |
| cyfrin.pdf | LSSVMPairERC721 | unmatched — not counted | — | mentioned in scope and findings | no |
| cyfrin.pdf | LSSVMPairERC1155 | unmatched — not counted | — | mentioned in scope and findings | no |
| cyfrin.pdf | LSSVMPairFactory | unmatched — not counted | — | mentioned in scope and findings | no |
| cyfrin.pdf | RoyaltyEngine | unmatched — not counted | — | mentioned in scope and findings | no |
| cyfrin.pdf | GDACurve | own contract | GDACurve (selected) `0x1fd5876d4a3860eb0159055a3b7cb79fdfff6b67` — deployed 2023-05-21 20:19:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| cyfrin.pdf | ExponentialCurve | own contract | ExponentialCurve (selected) `0x432f962d8209781da23fb37b6b59ee15de7d9841` — deployed 2022-04-24 09:09:30+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| cyfrin.pdf | LinearCurve | own contract | LinearCurve (selected) `0x5b6ac51d9b1cede0068a1b26533cace807f883ee` — deployed 2022-04-24 09:10:07+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| cyfrin.pdf | XykCurve | own contract | XykCurve (selected) `0x7942e264e21c5e6cbba45fe50785a15d3beb1da0` — deployed 2022-08-29 08:52:29+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| cyfrin.pdf | ICurve | unmatched — not counted | — | mentioned in scope and findings | no |
| cyfrin.pdf | ILSSVMPair | unmatched — not counted | — | mentioned in findings | no |
| cyfrin.pdf | ILSSVMPairFactoryLike | unmatched — not counted | — | mentioned in findings | no |
| cyfrin.pdf | LSSVMPairCloner | unmatched — not counted | — | mentioned in findings | no |
| cyfrin.pdf | MerklePropertyChecker | unmatched — not counted | — | mentioned in findings | no |
| cyfrin.pdf | PropertyCheckerFactory | own contract | PropertyCheckerFactory (selected) `0x031b216fabec82310fea3426b33455609b99afc1` — deployed 2023-05-21 20:46:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| cyfrin.pdf | RangePropertyChecker | unmatched — not counted | — | mentioned in findings | no |
| cyfrin.pdf | Splitter | unmatched — not counted | — | mentioned in findings | no |
| cyfrin.pdf | StandardSettings | unmatched — not counted | — | mentioned in findings | no |
| cyfrin.pdf | StandardSettingsFactory | own contract | StandardSettingsFactory (selected) `0xf4f439a6a152cfecb1f34d726d490f82bcb3c2c7` — deployed 2023-05-21 20:38:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| cyfrin.pdf | OwnableWithTransferCallback | unmatched — not counted | — | mentioned in findings | no |
| cyfrin.pdf | IOwnershipTransferReceiver | unmatched — not counted | — | mentioned in findings | no |
| cyfrin.pdf | EvilPair | unmatched — not counted | — | mentioned in PoC | no |
| cyfrin.pdf | EvilPairReentrancyAttacker | unmatched — not counted | — | mentioned in PoC | no |
| narya.pdf | LSSVMPairERC721 | unmatched — not counted | — | Listed in scope and findings | no |
| narya.pdf | LSSVMPairERC1155 | unmatched — not counted | — | Listed in scope and findings | no |
| narya.pdf | StandardSettings | unmatched — not counted | — | Listed in scope and findings | no |
| narya.pdf | LSSVMPairETH | unmatched — not counted | — | Listed in scope and findings | no |
| narya.pdf | LSSVMPair | unmatched — not counted | — | Listed in scope and findings | no |
| narya.pdf | StandardSettingsFactory | own contract | StandardSettingsFactory (selected) `0xf4f439a6a152cfecb1f34d726d490f82bcb3c2c7` — deployed 2023-05-21 20:38:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| narya.pdf | RoyaltyEngine | unmatched — not counted | — | Listed in scope and findings | no |
| narya.pdf | LSSVMPairFactory | unmatched — not counted | — | Listed in scope and findings | no |
| narya.pdf | LSSVMPairERC20 | unmatched — not counted | — | Listed in scope and findings | no |
| spearbit.pdf | LSSVMPair | unmatched — not counted | — | mentioned in findings context | no |
| spearbit.pdf | LSSVMPairERC20 | unmatched — not counted | — | mentioned in findings context | no |
| spearbit.pdf | LSSVMPairERC1155 | unmatched — not counted | — | mentioned in findings context | no |
| spearbit.pdf | LSSVMPairERC721 | unmatched — not counted | — | mentioned in findings context | no |
| spearbit.pdf | LSSVMPairETH | unmatched — not counted | — | mentioned in findings context | no |
| spearbit.pdf | LSSVMPairFactory | unmatched — not counted | — | mentioned in findings context | no |
| spearbit.pdf | LSSVMRouter | own contract | LSSVMRouter (selected) `0x2b2e8cda09bba9660dca5cb6233787738ad68329` — deployed 2022-05-05 21:41:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spearbit.pdf | VeryFastRouter | own contract | VeryFastRouter (selected) `0x090c236b62317db226e6ae6cd4c0fd25b7028b65` — deployed 2023-05-21 20:25:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spearbit.pdf | StandardSettings | unmatched — not counted | — | mentioned in findings context | no |
| spearbit.pdf | StandardSettingsFactory | own contract | StandardSettingsFactory (selected) `0xf4f439a6a152cfecb1f34d726d490f82bcb3c2c7` — deployed 2023-05-21 20:38:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spearbit.pdf | PropertyCheckerFactory | own contract | PropertyCheckerFactory (selected) `0x031b216fabec82310fea3426b33455609b99afc1` — deployed 2023-05-21 20:46:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spearbit.pdf | MerklePropertyChecker | unmatched — not counted | — | mentioned in findings context | no |
| spearbit.pdf | Splitter | unmatched — not counted | — | mentioned in findings context | no |
| spearbit.pdf | RoyaltyEngine | unmatched — not counted | — | mentioned in findings context | no |
| spearbit.pdf | ManifoldRoyaltyEngineV1 | unmatched — not counted | — | mentioned in findings context | no |
| spearbit.pdf | OwnableWithTransferCallback | unmatched — not counted | — | mentioned in findings context | no |
| spearbit.pdf | LinearCurve | own contract | LinearCurve (selected) `0x5b6ac51d9b1cede0068a1b26533cace807f883ee` — deployed 2022-04-24 09:10:07+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spearbit.pdf | XykCurve | own contract | XykCurve (selected) `0x7942e264e21c5e6cbba45fe50785a15d3beb1da0` — deployed 2022-08-29 08:52:29+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spearbit.pdf | ExponentialCurve | own contract | ExponentialCurve (selected) `0x432f962d8209781da23fb37b6b59ee15de7d9841` — deployed 2022-04-24 09:09:30+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spearbit.pdf | ICurve | unmatched — not counted | — | mentioned in findings context | no |
| spearbit.pdf | ILSSVMPair | unmatched — not counted | — | mentioned in findings context | no |
| spearbit.pdf | ILSSVMPairFactoryLike | unmatched — not counted | — | mentioned in findings context | no |
| spearbit.pdf | LSSVMPairCloner | unmatched — not counted | — | mentioned in findings context | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 65 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 31 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Address-book scope dispositions: 22 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 65 unmatched
- Matched-own operational status: 22 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=5
- Match method counts: unique_name=22

Fork inheritance lineage and inherited audits are included when available.
