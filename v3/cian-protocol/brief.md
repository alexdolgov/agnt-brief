# Agentic Audit Brief: CIAN Protocol

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 6 (0 matched; 6 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `12555af2097191e60e7a3dc0743058c9046ed87a105382bdae663a49f79103f7`

## Project Overview

- Project: CIAN Protocol (`cian-protocol`)
- Website: [https://yieldlayer.cian.app/vaults/0xB13aa2d0345b0439b064f26B82D8dCf3f508775d?chainId=1&utm_source=TPFDZE](https://yieldlayer.cian.app/vaults/0xB13aa2d0345b0439b064f26B82D8dCf3f508775d?chainId=1&utm_source=TPFDZE)
- Lifecycle: unknown
- Generated: 2026-07-17T12:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, avalanche, base, bsc, ethereum, mantle, optimism, polygon, scroll
- Contract surface: 120 unique implementations (121 raw deployments)
- Coverage basis: 0/1 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $265,571,154.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 3 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

This brief describes the observed EVM deployment and audit surface for CIAN Protocol. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 1 contract row(s) across arbitrum, avalanche, base, bsc, ethereum, mantle, polygon. Structural roles: 1 infra. 1 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 1
- Structural roles: infra (1)
- Contract kinds: abstract (1)
- Detected standards: none
- Frameworks: openzeppelin (1)
- Upgradeable-pattern rows: 1

## Fork Analysis

0 of 4 contracts are derived from known codebases. 4 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x8cb04249117d37fb42f3c805c1a60cfe801a0f6e`, chain 1)
- UnnamedContract (`0xd896bf804c01c4c0fa5c42bf6a4b15c465009481`, chain 42161)
- UnnamedContract (`0xef3fd1285aa4f3571e56a34d9ab2c82414822aca`, chain 43114)
- GHOAvalanche (`0xa02b10bc4f25c7a4c398227306354cf93dd671d2`, chain 43114)

## Contract Surface Quality

- Logic-topography rows: 1; live-surface rows included: 1 (1 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 3/3 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/1 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 3 own, 1 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 116 discovered implementations shown in the inventory but excluded from coverage (1 third-party/infra; 12 standard proxy/library)
- Proxy deployments represented within implementation groups: 18
- Confirmed-live implementations: 3 of 120 unique; 117 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/117
- Verified + Unaudited implementations: 117
- Verified by bytecode match: 0
- Unverified implementations: 3
- Unique implementations: 120
- Raw deployments: 121
- Audits discovered: 6 (6 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-01 (aging)
- Audit staleness (calendar age): 0 fresh, 1 aging, 5 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (117)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AdapterManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x907883da917ca9750ad202ff6395c4c6ab14e60e` | ⚠️ Unaudited |
| AdminModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x183d908f3e07699c83d77b503d1c1f947ed67223` | ⚠️ Unaudited |
| Airdrop | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x056c41b8c2a2e7c6454842c9a62050fa1b5ffbae` | ⚠️ Unaudited |
| AStETH | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x1982b2f5814301d4e9a8b0201555376e62f82428` | ⚠️ Unaudited |
| ATokenInstance | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | `0x513c7e3a9c69ca3e22550ef58ac1c0088e918fff` | ⚠️ Unaudited |
| Automation | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x056c41b8c2a2e7c6454842c9a62050fa1b5ffbae` | ⚠️ Unaudited |
| AvalonMintable | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3228995749610bea00b59c44f8d1df21c14027f1` | ⚠️ Unaudited |
| AvalonTimelock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x99c0fb1068b7f39e5a980971403f9578bfcd2e8e` | ⚠️ Unaudited |
| BankerJoeAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x123d4f3126b0f57b86d15382ec72a444bb6e77de` | ⚠️ Unaudited |
| BenqiAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x61a4d381fa26a764360ee71565ed938914111529` | ⚠️ Unaudited |
| BenqiAirdrop | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x85a7e1510d14a2e209a9d0109753fe68de55441c` | ⚠️ Unaudited |
| BeraPseudoBridge | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8a95f22c5a2da7c325cf95b58f1b4f9b8460d500` | ⚠️ Unaudited |
| ChildERC20 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x30b622609ffab1641b498e9bf1ff102ab288bee7` | ⚠️ Unaudited |
| ChildERC721 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x004bae2ed0210e937327aaf199135393f64d5b57` | ⚠️ Unaudited |
| CianOFTUpgradeable | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x149777a4f2b955e9556d3d129c8c76e5ca76d705` | ⚠️ Unaudited |
| CianOFTWrapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x237978176c3811a1648f3106797e3c3e070f48ec` | ⚠️ Unaudited |
| Comptroller | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x179c3c9105f7f99038c3dafe89d3e24b4569d7ae` | ⚠️ Unaudited |
| ConnectV2BenqiAvalanche | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xff5a7a16619d3f4c4bdc2fef7af8a9d0b6c35ca8` | ⚠️ Unaudited |
| ConnectV2QiAvalanche | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xac33e98174a897ecf21bd5c6e67696007aa58527` | ⚠️ Unaudited |
| ControllerLib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x601954e6afb77dac21503dbdfa751fbef9ee5374` | ⚠️ Unaudited |
| ControllerLibSub | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x17f453846e407409c22621d465d2838f7dce22ae` | ⚠️ Unaudited |
| ControllerLink | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x4792e147bce02e5ff2b1b70416811704b5625446` | ⚠️ Unaudited |
| CryptoCabz | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x76bf9ac96fc75849c6872cf89f367e56feed5c30` | ⚠️ Unaudited |
| ERC2612Verifier | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x045969904402f5e674ef1f27713f3230929538df` | ⚠️ Unaudited |
| EulerWithdrawAgent | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa2b94c8d55403fb7b163e1ab9f5e0c4ae691945d` | ⚠️ Unaudited |
| FBTC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x55e225ece70ea4ae6d97136a11bb8dc2fa4f9fc1` | ⚠️ Unaudited |
| FBTCWrapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1354e3e9f03ecf8ae57b113aa4d07dd950b7e682` | ⚠️ Unaudited |
| FeeBoxAVAX | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc05f77fffcd9f0ce17fcb34984e71c9b9611caa4` | ⚠️ Unaudited |
| FeeBoxETH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0b20d5d59e14c71a948d55439019a2aaf74fa7b4` | ⚠️ Unaudited |
| FeeBoxMATIC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x1c8126e02e8a7dac69fd6444ef0b8be5430df776` | ⚠️ Unaudited |
| FeeBoxSAVAX | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa246dbf6f90204f8f2bbeec015f75cf226fa39ae` | ⚠️ Unaudited |
| FeeBoxStETH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x294fe934f47d95a54a436a148963da3fef4e8313` | ⚠️ Unaudited |
| FlashloanHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6e055d5592e41709c3e70539a2b53933455574df` | ⚠️ Unaudited |
| GHOAvalanche | unknown | project_anchor | own_supporting | 1 | avalanche | unit-231858 | 2 deployments: avalanche `0xa02b10bc4f25c7a4c398227306354cf93dd671d2`; avalanche `0xef3fd1285aa4f3571e56a34d9ab2c82414822aca` | ⚠️ Unaudited |
| GHOEth | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x83291cf2731b8e3af3f3439cce871c6a1c4e281f` | ⚠️ Unaudited |
| InitializableImmutableAdminUpgradeabilityProxy | unknown | external_dependency_or_infra | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0xf63b34710400cad3e044cffdcab00a0f32e33ecf` | ⚠️ Unaudited |
| InstaBenqiMappingAvalanche | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe19fba29ac9baacc1f584aecd9c98b4f6fc58ba6` | ⚠️ Unaudited |
| JumpRateModel | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x363637833d110f86e47311e4c54e520982721f3b` | ⚠️ Unaudited |
| LendingLogic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa0ad94ac894cdc591cf3419a460cd683bf7792c7` | ⚠️ Unaudited |
| Manager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x039bf39fad50d8faae01171e08a296a52066d97d` | ⚠️ Unaudited |
| Maximillion | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x10338ee9417260b486a4d1452ee2496338b05348` | ⚠️ Unaudited |
| OneInchAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x054ab57d364730ed9ed665ff97a92e9813c42515` | ⚠️ Unaudited |
| OneInchV5Adapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x5946566139961632b4d47b77964084efa772ebaf` | ⚠️ Unaudited |
| Oracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa230758d179e25072493c9fe33f5c2f915738361` | ⚠️ Unaudited |
| ParaswapAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x294fe934f47d95a54a436a148963da3fef4e8313` | ⚠️ Unaudited |
| ParaSwapHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0f00dc481864dc0f1c1ff10b24fc5e21c5eb2a64` | ⚠️ Unaudited |
| PglStakingContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe59988d947f80b59ff1de7bd413e5e5517906cb2` | ⚠️ Unaudited |
| PglStakingContractProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x4074da7841bf5fff121476d6d1c2d39fbeeb9e4a` | ⚠️ Unaudited |
| PoolCeffu | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | `0x53c8bf6875c66e8d7c42e30beef7e6241997f7e3` | ⚠️ Unaudited |
| ProxyAdmin | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x1792f73b586f3e931b51826195ff015a23c86009` | ⚠️ Unaudited |
| Qi | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x8729438eb15e2c8b576fcc6aecda6a148776c0f5` | ⚠️ Unaudited |
| QiAvax | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x5c0401e81bc07ca70fad469b451682c0d747ef1c` | ⚠️ Unaudited |
| QiAvaxHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xcc2de440f9fc5eec73e28373f6bb69643dc804d5` | ⚠️ Unaudited |
| QiErc20Delegator | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | `0x334ad834cd4481bb02d09615e7c11a00579a7909` | ⚠️ Unaudited |
| QiErc20Delegator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x4c9f0140fad0c93009a8ea123eaf6b1a3d0ddd30` | ⚠️ Unaudited |
| QiTokenSaleDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x23de2004592b04d594d23c9a928d0552e29d6bea` | ⚠️ Unaudited |
| QiTokenSaleDistributorProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa1f5ae0ce9308750ed0c2da5283ab2ad5d6bb618` | ⚠️ Unaudited |
| QuickSwapAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x6c5766bd236bf879df4ff468740a8e3fb0ac12d3` | ⚠️ Unaudited |
| ReadModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0e9378e68bf3cfe89d646902d174c5f3891222d1` | ⚠️ Unaudited |
| ReceiverOnMainnet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5cc3ebeb7294655c3f3a6c7b0f6b9c422d4a55ac` | ⚠️ Unaudited |
| RedeemOperator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x09826f37df349258c1a209abd37ab614296fe392` | ⚠️ Unaudited |
| SAVAXAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x6b2ba8f249cc1376f2a02a9faf8beca5d7718dcf` | ⚠️ Unaudited |
| StaderAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x4e231b636e799d19a54065ba79a67d8afa1ddfa0` | ⚠️ Unaudited |
| StaderAirdrop | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x406e1e0e3cb4201b4aee409ad2f6cd56d3242de7` | ⚠️ Unaudited |
| StaderSixAirdrop | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xb2ae6b63eda00c79d0105c4a9f040a060f1e1ebe` | ⚠️ Unaudited |
| StrategyAvalon | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf42b8eb69b6fcadb9191c15aa005a9c4a6d5cf00` | ⚠️ Unaudited |
| StrategyBedrock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x302d709611a4fbacef396f05493918257a23a755` | ⚠️ Unaudited |
| StrategyBedrock18DEC2025 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x24a4fb8cc04313c0c45c06ac87159f09546d9425` | ⚠️ Unaudited |
| StrategyBedrock22MAY2025 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x09511b16527af9067170c9267abf563fcd8cab3e` | ⚠️ Unaudited |
| StrategyBedrock27MAR2025 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x31c3c3a9ab22663e438962cc57037492717c20a5` | ⚠️ Unaudited |
| StrategyCrossStub | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe457e50c874b7b133dc81d9f40698c0fbc13234f` | ⚠️ Unaudited |
| StrategyDefault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0415d1e50d8cf32884dd420a1d6a98d4baf923a2` | ⚠️ Unaudited |
| StrategyDummyImplementation | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x28c24ff607c4dbe51e09d5d2dd738826fe506157` | ⚠️ Unaudited |
| StrategyETHConverter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x89ad2070b7522b08aa046e100350a9c2afc9758c` | ⚠️ Unaudited |
| StrategyEuler | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x869620df23af863a5b0c63af8ccd540d8ff683d0` | ⚠️ Unaudited |
| StrategyGHO | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3dff2c398f12a61c30c6c9d17da85b2d1fb2bb60` | ⚠️ Unaudited |
| StrategyHyperliquidSTETH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x142193cddb33950facb12355373295fb08d2cf1e` | ⚠️ Unaudited |
| StrategyLista | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x25440d9e199974e705a07df6f2464291d0ba1e2f` | ⚠️ Unaudited |
| StrategyListaEgo | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x42d14ed4cffc8484d370662128afe70af759fe0f` | ⚠️ Unaudited |
| StrategyMellowSteakhouse | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0415a25b6f01f671f252258a3433d2aa6144d67f` | ⚠️ Unaudited |
| StrategyMoolah | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x19af8a00f6f699964e5e0abdbb680c277fd309ca` | ⚠️ Unaudited |
| StrategyPump | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2a53f9f20137fc1253c5b6edecb4fd48e044b0a8` | ⚠️ Unaudited |
| StrategyPumpBTC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf12e223408bc50b64b33dae393ef0fb1d926b491` | ⚠️ Unaudited |
| StrategySatLayer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb38bf76d4424fc8003679e06fc205de4d5d2eb56` | ⚠️ Unaudited |
| StrategySolv | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x41076df3ed1c59860245471b918f423ec44b840d` | ⚠️ Unaudited |
| StrategyZero | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x19af8a00f6f699964e5e0abdbb680c277fd309ca` | ⚠️ Unaudited |
| TestBridgeWithHook | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1c5bb82427e808f57c1c572722ea1cf6cefa7b20` | ⚠️ Unaudited |
| Timelock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0cbee811c47c3a5cb4637f1e58d98b0abbb4c54f` | ⚠️ Unaudited |
| TokenApprovalVerifier | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1cb9cf5439dced63d8f5b7f1a5bf9834d8076a9a` | ⚠️ Unaudited |
| TraderJoeAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xd9cb7d20e8704fa0365141c847d434737d8c4d93` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x0186b03ac7c14a90d04d2b1e168869f618d149c5` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x237eff231c41016d9b4305148b6be9294824912f` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x250d72b24ca19aeebe4830c2fe9c9daf625ef8f0` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x2563b75172fabb5ec08694de55e181c00219c800` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x3d09c82de2a636d5ec7a7a9ad7e5039aae9af680` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x4509c4fb07f681385f21cf03c28a6f2aa1f203a4` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x7a116f6dc0966495462e7480125157c1e699edc4` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x873ec230a070a165198a6c5bce1e62c94fddc238` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x8bb3dc91c97e340dea4f65bc4dcf271b46d266f7` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x9ffe77146cc1da3edb87af163c6c32bab474b464` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | standard_proxy_or_library (excluded) | 1 | base | n/a | `0x054ab57d364730ed9ed665ff97a92e9813c42515` | ⚠️ Unaudited |
| UChildERC20 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x00032e33ac57c73f9d4e3e85a97488214cb5f25b` | ⚠️ Unaudited |
| UChildERC20Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x009aedc40323b16a0cbc71920d05c15192643974` | ⚠️ Unaudited |
| USDS2USDC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe13b6c5eafd3f0cdb461ce0138e0fd0fc7db26e3` | ⚠️ Unaudited |
| USDS2USDC2DAI | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4f119f538cb77faafeb2a857e268ffb66fe60eee` | ⚠️ Unaudited |
| UserModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc170b044e40c58b96bac975f935fd41aa78d8183` | ⚠️ Unaudited |
| VariableDebtTokenInstance | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | `0x4a1c3ad6ed28a636ee1751c69071f6be75deb8b8` | ⚠️ Unaudited |
| VaultStETH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x40c68480d323919d23abc9b569a2e98b4d2a7b30` | ⚠️ Unaudited |
| VaultStETHWrapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x22cdae94f135b310d2ffb01e8af05f10092a3d0b` | ⚠️ Unaudited |
| VaultYieldETH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x03a16e0bfa2c5c28991c0446fc849211de5fa108` | ⚠️ Unaudited |
| VaultYieldFBTC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5200817ce523f8340a6fa00f800b7df71c000af4` | ⚠️ Unaudited |
| VaultYieldRSETH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2410e7d8909faa641a090a9c0582b76577edf4bf` | ⚠️ Unaudited |
| WalletFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x15cbff12d53e7bde3f1618844caaef99b2836d2a` | ⚠️ Unaudited |
| WavaxGateway | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x144f69662e8217ae960cecab9733a2cc860f779b` | ⚠️ Unaudited |
| WethGateway | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x441a28a15b5bd353e9f63b2cd267277cbe5ca651` | ⚠️ Unaudited |
| WmaticGateway | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xdcb3d91555385dae23e6b966b5626aa7a75be940` | ⚠️ Unaudited |
| YlstETHVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0695ea1585e159368c95da0e65d611fd27ea3862` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (3)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-231856 | `0x8cb04249117d37fb42f3c805c1a60cfe801a0f6e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0xd93204fc0bf706ddc9fb2bf7072b8d11811c7a80` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-231857 | `0xd896bf804c01c4c0fa5c42bf6a4b15c465009481` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [ackee-blockchain-cian-yield-layer-report.pdf](https://1717361315-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FO9IZAEayToLEPbAGTwkL%2Fuploads%2FV02w5MYbK0RQhopzxvF8%2Fackee-blockchain-cian-yield-layer-report.pdf) | Ackee Blockchain | Audit | 2025-01 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 17 | high |
| [PeckShield-Audit-Report-CIAN-v1.0.pdf](https://1717361315-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FO9IZAEayToLEPbAGTwkL%2Fuploads%2FLzvJmGX3yAqssnN0qkti%2FPeckShield-Audit-Report-CIAN-v1.0.pdf) | PeckShield | Audit | 2022-04 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 7 | high |
| [Omniscia_Audit_Report_CIAN.pdf](https://1717361315-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FO9IZAEayToLEPbAGTwkL%2Fuploads%2FNtBm4xZQWc0M3QiltaN3%2FOmniscia_Audit_Report_CIAN.pdf) | Omniscia | Audit | 2023-05 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 13 | high |
| [20221025_Paladin_Cian_Final_Report.pdf](https://1717361315-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FO9IZAEayToLEPbAGTwkL%2Fuploads%2FL4K76IA6F2jMQfREhctf%2F20221025_Paladin_Cian_Final_Report.pdf) | Paladin | Audit | 2022-10 | stale | Direct | address | no match | 0 | 0 | 0 | 22 | high |
| [20220924_Paladin_CianEthereum_Final_Report.pdf](https://1717361315-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FO9IZAEayToLEPbAGTwkL%2Fuploads%2FQAkwlCeGM0boOyAa7TxT%2F20220924_Paladin_CianEthereum_Final_Report.pdf) | Paladin | Audit | 2022-09 | stale | Direct | address | no match | 0 | 0 | 0 | 23 | high |
| [20230103_Paladin_CianPolygon_Final_Report.pdf](https://1717361315-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FO9IZAEayToLEPbAGTwkL%2Fuploads%2F1a1Xt6yG315wDckxuCCx%2F20230103_Paladin_CianPolygon_Final_Report.pdf) | Paladin | Audit | 2023-01 | stale | Direct | address | no match | 0 | 0 | 0 | 22 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [16887] ackee-blockchain-cian-yield-layer-report.pdf — no match: Scope includes all contracts except strategies. Audit date from cover page and appendix A.
- [16888] PeckShield-Audit-Report-CIAN-v1.0.pdf — no match: Extracted contract names from findings targets and mentions. No explicit scope section found; contracts are identified as targets of findings or mentioned in the report.
- [16889] Omniscia_Audit_Report_CIAN.pdf — no match: Extracted 13 contract names from the 'Contracts Assessed' and 'Files in Scope' tables. Audit date from 'May 9th 2023' in the header.
- [16890] 20221025_Paladin_Cian_Final_Report.pdf — no match: All contracts listed in the 'Contracts Assessed' table on page 7 are in scope. The audit date is from the cover page: '25 October 2022'.
- [16891] 20220924_Paladin_CianEthereum_Final_Report.pdf — no match: Extracted 23 contract names from the 'Contracts Assessed' table on page 8. The audit date is from the cover page: '24 September 2022'.
- [16892] 20230103_Paladin_CianPolygon_Final_Report.pdf — no match: All contracts listed in the 'Contracts Assessed' table on page 8 are included. AdapterBase, VerifierBasic, AutomationCallable, and TimelockCallable are listed as dependencies but are still in scope as they are audited. BalancerERC3156 is listed as 'BalancerERC3156 (V2)' in the table.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| ackee-blockchain-cian-yield-layer-report.pdf | RedeemOperator | unmatched — not counted | — | listed in scope and findings | no |
| ackee-blockchain-cian-yield-layer-report.pdf | Pool | unmatched — not counted | — | listed in scope and findings | no |
| ackee-blockchain-cian-yield-layer-report.pdf | PoolArb | unmatched — not counted | — | listed in scope and findings | no |
| ackee-blockchain-cian-yield-layer-report.pdf | PoolOp | unmatched — not counted | — | listed in scope and findings | no |
| ackee-blockchain-cian-yield-layer-report.pdf | VaultYieldBasic | unmatched — not counted | — | listed in scope and findings | no |
| ackee-blockchain-cian-yield-layer-report.pdf | LzBridgeArb | unmatched — not counted | — | listed in scope and findings | no |
| ackee-blockchain-cian-yield-layer-report.pdf | LzBridgeOp | unmatched — not counted | — | listed in scope and findings | no |
| ackee-blockchain-cian-yield-layer-report.pdf | LayerZeroBridgeHelper | unmatched — not counted | — | listed in scope and findings | no |
| ackee-blockchain-cian-yield-layer-report.pdf | BridgeHelper | unmatched — not counted | — | listed in scope and findings | no |
| ackee-blockchain-cian-yield-layer-report.pdf | OneInchCallerV6 | unmatched — not counted | — | listed in scope and findings | no |
| ackee-blockchain-cian-yield-layer-report.pdf | AaveV3FlashLeverageHelper | unmatched — not counted | — | listed in scope and findings | no |
| ackee-blockchain-cian-yield-layer-report.pdf | IStrategy | unmatched — not counted | — | listed in scope and findings | no |
| ackee-blockchain-cian-yield-layer-report.pdf | StrategyFactory | unmatched — not counted | — | listed in scope and findings | no |
| ackee-blockchain-cian-yield-layer-report.pdf | Vault | unmatched — not counted | — | listed in scope and findings | no |
| ackee-blockchain-cian-yield-layer-report.pdf | UnbackedMintAuthority | unmatched — not counted | — | listed in scope and findings | no |
| ackee-blockchain-cian-yield-layer-report.pdf | Timelock | unmatched — not counted | — | listed in scope and findings | no |
| ackee-blockchain-cian-yield-layer-report.pdf | LzSend | unmatched — not counted | — | listed in scope and findings | no |
| PeckShield-Audit-Report-CIAN-v1.0.pdf | ControllerLink | unmatched — not counted | — | Target in finding PVE-001 | no |
| PeckShield-Audit-Report-CIAN-v1.0.pdf | Timelock | unmatched — not counted | — | Target in finding PVE-002 | no |
| PeckShield-Audit-Report-CIAN-v1.0.pdf | ERC2612Verifier | unmatched — not counted | — | Target in findings PVE-003 and PVE-004 | no |
| PeckShield-Audit-Report-CIAN-v1.0.pdf | ControllerLib | unmatched — not counted | — | Mentioned in findings PVE-006 and PVE-007 | no |
| PeckShield-Audit-Report-CIAN-v1.0.pdf | TraderJoeAdapter | unmatched — not counted | — | Mentioned in finding PVE-006 | no |
| PeckShield-Audit-Report-CIAN-v1.0.pdf | AdapterManager | unmatched — not counted | — | Mentioned in finding PVE-007 | no |
| PeckShield-Audit-Report-CIAN-v1.0.pdf | CallProxyLib | unmatched — not counted | — | Mentioned in finding PVE-007 | no |
| Omniscia_Audit_Report_CIAN.pdf | BasicLogic | unmatched — not counted | — | listed in scope table | no |
| Omniscia_Audit_Report_CIAN.pdf | FlashloanHelper | unmatched — not counted | — | listed in scope table | no |
| Omniscia_Audit_Report_CIAN.pdf | LendingLogic | unmatched — not counted | — | listed in scope table | no |
| Omniscia_Audit_Report_CIAN.pdf | StrategyProxy | unmatched — not counted | — | listed in scope table | no |
| Omniscia_Audit_Report_CIAN.pdf | StrategyDummyImplementation | unmatched — not counted | — | listed in scope table | no |
| Omniscia_Audit_Report_CIAN.pdf | VaultStETH | unmatched — not counted | — | listed in scope table | no |
| Omniscia_Audit_Report_CIAN.pdf | VaultStETHWrapper | unmatched — not counted | — | listed in scope table | no |
| Omniscia_Audit_Report_CIAN.pdf | basic | unmatched — not counted | — | listed in scope table | no |
| Omniscia_Audit_Report_CIAN.pdf | events | unmatched — not counted | — | listed in scope table (multiple events.sol files) | no |
| Omniscia_Audit_Report_CIAN.pdf | flashloaner | unmatched — not counted | — | listed in scope table | no |
| Omniscia_Audit_Report_CIAN.pdf | main | unmatched — not counted | — | listed in scope table (multiple main.sol files) | no |
| Omniscia_Audit_Report_CIAN.pdf | proxy | unmatched — not counted | — | listed in scope table | no |
| Omniscia_Audit_Report_CIAN.pdf | variables | unmatched — not counted | — | listed in scope table | no |
| 20221025_Paladin_Cian_Final_Report.pdf | ProxyWallet | unmatched — not counted | — | Listed in 'Contracts Assessed' table and section 2.2 | no |
| 20221025_Paladin_Cian_Final_Report.pdf | ControllerLib | unmatched — not counted | — | Listed in 'Contracts Assessed' table and section 2.3 | no |
| 20221025_Paladin_Cian_Final_Report.pdf | WalletFactory | unmatched — not counted | — | Listed in 'Contracts Assessed' table and section 2.4 | no |
| 20221025_Paladin_Cian_Final_Report.pdf | CallProxy | unmatched — not counted | — | Listed in 'Contracts Assessed' table and section 2.5 | no |
| 20221025_Paladin_Cian_Final_Report.pdf | CallProxyLib | unmatched — not counted | — | Listed in 'Contracts Assessed' table and section 2.5 | no |
| 20221025_Paladin_Cian_Final_Report.pdf | ERC2612Verifier | unmatched — not counted | — | Listed in 'Contracts Assessed' table and section 2.6 | no |
| 20221025_Paladin_Cian_Final_Report.pdf | ControllerLink | unmatched — not counted | — | Listed in 'Contracts Assessed' table and section 2.7 | no |
| 20221025_Paladin_Cian_Final_Report.pdf | Record | unmatched — not counted | — | Listed in 'Contracts Assessed' table and section 2.8 | no |
| 20221025_Paladin_Cian_Final_Report.pdf | ProxyCallable | unmatched — not counted | — | Listed in 'Contracts Assessed' table and section 2.9 | no |
| 20221025_Paladin_Cian_Final_Report.pdf | AdapterManager | unmatched — not counted | — | Listed in 'Contracts Assessed' table and section 2.10 | no |
| 20221025_Paladin_Cian_Final_Report.pdf | AdapterBase | unmatched — not counted | — | Listed in 'Contracts Assessed' table and section 2.11 | no |
| 20221025_Paladin_Cian_Final_Report.pdf | WavaxGateway | unmatched — not counted | — | Listed in 'Contracts Assessed' table and section 2.12 | no |
| 20221025_Paladin_Cian_Final_Report.pdf | SAVAXAdapter | unmatched — not counted | — | Listed in 'Contracts Assessed' table and section 2.13 | no |
| 20221025_Paladin_Cian_Final_Report.pdf | TraderJoeAdapter | unmatched — not counted | — | Listed in 'Contracts Assessed' table and section 2.14 | no |
| 20221025_Paladin_Cian_Final_Report.pdf | FeeBoxAVAX | unmatched — not counted | — | Listed in 'Contracts Assessed' table and section 2.15 | no |
| 20221025_Paladin_Cian_Final_Report.pdf | FeeBoxSAVAX | unmatched — not counted | — | Listed in 'Contracts Assessed' table and section 2.15 | no |
| 20221025_Paladin_Cian_Final_Report.pdf | FeeBoxToken | unmatched — not counted | — | Listed in 'Contracts Assessed' table and section 2.15 | no |
| 20221025_Paladin_Cian_Final_Report.pdf | VerifierBasic | unmatched — not counted | — | Listed in 'Contracts Assessed' table and section 2.16 | no |
| 20221025_Paladin_Cian_Final_Report.pdf | BankerJoeAdapter | unmatched — not counted | — | Listed in 'Contracts Assessed' table and section 2.17 | no |
| 20221025_Paladin_Cian_Final_Report.pdf | BenqiAdapter | unmatched — not counted | — | Listed in 'Contracts Assessed' table and section 2.17 | no |
| 20221025_Paladin_Cian_Final_Report.pdf | JoeERC3156 | unmatched — not counted | — | Listed in 'Contracts Assessed' table and section 2.18 | no |
| 20221025_Paladin_Cian_Final_Report.pdf | Timelock | unmatched — not counted | — | Listed in 'Contracts Assessed' table and section 2.19 | no |
| 20220924_Paladin_CianEthereum_Final_Report.pdf | AdapterBase | unmatched — not counted | — | listed in scope table as Dependency | no |
| 20220924_Paladin_CianEthereum_Final_Report.pdf | OneInchAdapter | unmatched — not counted | — | listed in scope table with address | no |
| 20220924_Paladin_CianEthereum_Final_Report.pdf | WethGateway | unmatched — not counted | — | listed in scope table with address | no |
| 20220924_Paladin_CianEthereum_Final_Report.pdf | AaveAdapter | unmatched — not counted | — | listed in scope table with address | no |
| 20220924_Paladin_CianEthereum_Final_Report.pdf | CurvesteCRVAdapter | unmatched — not counted | — | listed in scope table with address | no |
| 20220924_Paladin_CianEthereum_Final_Report.pdf | FeeBoxETH | unmatched — not counted | — | listed in scope table with address | no |
| 20220924_Paladin_CianEthereum_Final_Report.pdf | FeeBoxStETH | unmatched — not counted | — | listed in scope table with address | no |
| 20220924_Paladin_CianEthereum_Final_Report.pdf | VerifierBasic | unmatched — not counted | — | listed in scope table as Dependency | no |
| 20220924_Paladin_CianEthereum_Final_Report.pdf | LidoAdapter | unmatched — not counted | — | listed in scope table with address | no |
| 20220924_Paladin_CianEthereum_Final_Report.pdf | ParaswapAdapter | unmatched — not counted | — | listed in scope table with address | no |
| 20220924_Paladin_CianEthereum_Final_Report.pdf | AdapterManager | unmatched — not counted | — | listed in scope table with address | no |
| 20220924_Paladin_CianEthereum_Final_Report.pdf | AccountManager | unmatched — not counted | — | listed in scope table | no |
| 20220924_Paladin_CianEthereum_Final_Report.pdf | Automation | unmatched — not counted | — | listed in scope table with address | no |
| 20220924_Paladin_CianEthereum_Final_Report.pdf | AutomationCallable | unmatched — not counted | — | listed in scope table as Dependency | no |
| 20220924_Paladin_CianEthereum_Final_Report.pdf | ControllerLib | unmatched — not counted | — | listed in scope table with address | no |
| 20220924_Paladin_CianEthereum_Final_Report.pdf | ControllerLibSub | unmatched — not counted | — | listed in scope table with address | no |
| 20220924_Paladin_CianEthereum_Final_Report.pdf | ControllerLink | unmatched — not counted | — | listed in scope table with address | no |
| 20220924_Paladin_CianEthereum_Final_Report.pdf | BalancerERC3156 | unmatched — not counted | — | listed in scope table with address | no |
| 20220924_Paladin_CianEthereum_Final_Report.pdf | ERC2612Verifier | unmatched — not counted | — | listed in scope table with address | no |
| 20220924_Paladin_CianEthereum_Final_Report.pdf | TokenApprovalVerifier | unmatched — not counted | — | listed in scope table with address | no |
| 20220924_Paladin_CianEthereum_Final_Report.pdf | Timelock | unmatched — not counted | — | listed in scope table with address | no |
| 20220924_Paladin_CianEthereum_Final_Report.pdf | TimelockCallable | unmatched — not counted | — | listed in scope table as Dependency | no |
| 20220924_Paladin_CianEthereum_Final_Report.pdf | AddressArrayLib | unmatched — not counted | — | listed in scope table as Dependency | no |
| 20230103_Paladin_CianPolygon_Final_Report.pdf | AdapterBase | unmatched — not counted | — | listed in scope table and findings section | no |
| 20230103_Paladin_CianPolygon_Final_Report.pdf | OneInchAdapter | unmatched — not counted | — | listed in scope table | no |
| 20230103_Paladin_CianPolygon_Final_Report.pdf | AaveV3Adapter | unmatched — not counted | — | listed in scope table | no |
| 20230103_Paladin_CianPolygon_Final_Report.pdf | BalancerV2Adapter | unmatched — not counted | — | listed in scope table | no |
| 20230103_Paladin_CianPolygon_Final_Report.pdf | FeeBoxMATIC | unmatched — not counted | — | listed in scope table | no |
| 20230103_Paladin_CianPolygon_Final_Report.pdf | VerifierBasic | unmatched — not counted | — | listed in scope table and findings section | no |
| 20230103_Paladin_CianPolygon_Final_Report.pdf | QuickSwapAdapter | unmatched — not counted | — | listed in scope table | no |
| 20230103_Paladin_CianPolygon_Final_Report.pdf | StaderAdapter | unmatched — not counted | — | listed in scope table | no |
| 20230103_Paladin_CianPolygon_Final_Report.pdf | WmaticGateway | unmatched — not counted | — | listed in scope table | no |
| 20230103_Paladin_CianPolygon_Final_Report.pdf | AdapterManager | unmatched — not counted | — | listed in scope table | no |
| 20230103_Paladin_CianPolygon_Final_Report.pdf | AccountManager | unmatched — not counted | — | listed in scope table | no |
| 20230103_Paladin_CianPolygon_Final_Report.pdf | Automation | unmatched — not counted | — | listed in scope table | no |
| 20230103_Paladin_CianPolygon_Final_Report.pdf | AutomationCallable | unmatched — not counted | — | listed in scope table and findings section | no |
| 20230103_Paladin_CianPolygon_Final_Report.pdf | ControllerLib | unmatched — not counted | — | listed in scope table | no |
| 20230103_Paladin_CianPolygon_Final_Report.pdf | ControllerLibSub | unmatched — not counted | — | listed in scope table | no |
| 20230103_Paladin_CianPolygon_Final_Report.pdf | ControllerLink | unmatched — not counted | — | listed in scope table | no |
| 20230103_Paladin_CianPolygon_Final_Report.pdf | BalancerERC3156 | unmatched — not counted | — | listed in scope table as BalancerERC3156 (V2) | no |
| 20230103_Paladin_CianPolygon_Final_Report.pdf | ERC2612Verifier | unmatched — not counted | — | listed in scope table | no |
| 20230103_Paladin_CianPolygon_Final_Report.pdf | TokenApprovalVerifier | unmatched — not counted | — | listed in scope table | no |
| 20230103_Paladin_CianPolygon_Final_Report.pdf | StaderAirdrop | unmatched — not counted | — | listed in scope table | no |
| 20230103_Paladin_CianPolygon_Final_Report.pdf | Timelock | unmatched — not counted | — | listed in scope table | no |
| 20230103_Paladin_CianPolygon_Final_Report.pdf | TimelockCallable | unmatched — not counted | — | listed in scope table and findings section | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| avalanche | `0xa02b10bc4f25c7a4c398227306354cf93dd671d2` | GHOAvalanche | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 104 |
| upstream | 0 |
| standard_library | 13 |
| needs_review | 3 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 6
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 104 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=6
- Match method counts: n/a

Zero-match audit list:

- [16887] ackee-blockchain-cian-yield-layer-report.pdf
- [16888] PeckShield-Audit-Report-CIAN-v1.0.pdf
- [16889] Omniscia_Audit_Report_CIAN.pdf
- [16890] 20221025_Paladin_Cian_Final_Report.pdf
- [16891] 20220924_Paladin_CianEthereum_Final_Report.pdf
- [16892] 20230103_Paladin_CianPolygon_Final_Report.pdf

Fork inheritance lineage and inherited audits are included when available.
