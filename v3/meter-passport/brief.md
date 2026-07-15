# Agentic Audit Brief: Meter Passport

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 2 (0 matched; 2 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Meter Passport (`meter-passport`)
- Website: [https://passport.meter.io](https://passport.meter.io)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: avalanche, bsc, ethereum, moonbeam, moonriver, polygon
- Contract surface: 86 unique implementations (86 raw deployments)
- Coverage basis: 0/2 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $773,200.60
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 2 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

This brief describes the observed EVM deployment and audit surface for Meter Passport. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 2 contract row(s) across bsc, ethereum, moonbeam, moonriver, polygon. Structural roles: 2 core. 2 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 2
- Structural roles: core (2)
- Contract kinds: contract (2)
- Detected standards: erc1967proxy (2)
- Frameworks: openzeppelin (2)
- Upgradeable-pattern rows: 2

## Fork Analysis

0 of 2 contracts are derived from known codebases. 2 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- MeterGovERC20V1_1 (`0xbd2949...988a9f`, chain 1)
- MeterGovProxy (`0x29e9fd...735e32`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 2; live-surface rows included: 2 (2 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 2/2 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/2 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 2 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 84 discovered implementations shown in the inventory but excluded from coverage (6 third-party/infra; 2 standard proxy/library)
- Proxy deployments represented within implementation groups: 6
- Confirmed-live implementations: 2 of 86 unique; 84 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/86
- Verified + Unaudited implementations: 86
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 86
- Raw deployments: 86
- Audits discovered: 2 (2 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022-10 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 2 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (86)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AdminUpgradeabilityProxy | unknown | external_dependency_or_infra | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0x0142ed...6d9b83` | ⚠️ Unaudited |
| AdminUpgradeabilityProxy | unknown | external_dependency_or_infra | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0x17f084...67aa81` | ⚠️ Unaudited |
| AMPLChainBridgeGateway | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x48bc03...6f6bbb` | ⚠️ Unaudited |
| AmplElasticCRP | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x49f2be...e7786f` | ⚠️ Unaudited |
| AmplElasticCRPWrapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe39953...be229a` | ⚠️ Unaudited |
| AMPLMaticRebaseGateway | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6625aa...8a7681` | ⚠️ Unaudited |
| AMPLMaticTransferGateway | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x27b4fd...b83543` | ⚠️ Unaudited |
| AnyswapV5ERC20 | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | moonriver | n/a | `0xe3f5a9...a0ad7d` | ⚠️ Unaudited |
| App | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4ab5ff...dcd9ba` | ⚠️ Unaudited |
| BatchTxCaller | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x36aaf4...398400` | ⚠️ Unaudited |
| BatchTxExecutor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0c0144...1b589e` | ⚠️ Unaudited |
| BEP20Token | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7130d2...3ead9c` | ⚠️ Unaudited |
| Bepro | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x4edf8e...426f88` | ⚠️ Unaudited |
| BetProtocolToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcf3c8b...03d36a` | ⚠️ Unaudited |
| BridgeUpgradeable | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x2e8fc3...71e940` | ⚠️ Unaudited |
| bsc_bridge | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xcdc5de...ff92ca` | ⚠️ Unaudited |
| ChainBridgeBatchRebaseReport | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x454de9...d07e29` | ⚠️ Unaudited |
| ChainBridgeXCAmpleGateway | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0c318c...b0311c` | ⚠️ Unaudited |
| CityFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x66182e...9c5c94` | ⚠️ Unaudited |
| CityNft | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x7cdc5d...2615dc` | ⚠️ Unaudited |
| CityNftSale | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x9326ff...c79d51` | ⚠️ Unaudited |
| CitySwapParams | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0xb4d9d2...e53ea0` | ⚠️ Unaudited |
| CLIQ | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0def8d...826767` | ⚠️ Unaudited |
| Controller | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xca0641...febeb7` | ⚠️ Unaudited |
| CrownsToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xac0104...8c33e0` | ⚠️ Unaudited |
| Dai | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6b1754...271d0f` | ⚠️ Unaudited |
| DistibutionContract1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x763e3e...206008` | ⚠️ Unaudited |
| DistibutionContract2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x531a9f...ac8273` | ⚠️ Unaudited |
| DistibutionContract3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xafea45...6b7a04` | ⚠️ Unaudited |
| DistibutionContract4 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x126b53...b95861` | ⚠️ Unaudited |
| DistibutionContract5 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa6972f...721805` | ⚠️ Unaudited |
| Distributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3c4b07...6232c7` | ⚠️ Unaudited |
| ERC20Handler | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xccf4a9...4aad9d` | ⚠️ Unaudited |
| ERC20HandlerUpgradeable | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3de382...0422a8` | ⚠️ Unaudited |
| ERC20MinterBurnerPauser | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x090916...bc5213` | ⚠️ Unaudited |
| Factory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe5a5f1...f2322b` | ⚠️ Unaudited |
| FiatToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8cbde2...77a91a` | ⚠️ Unaudited |
| FiatTokenProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xa0b869...06eb48` | ⚠️ Unaudited |
| FiatTokenUtil | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6315aa...0355a6` | ⚠️ Unaudited |
| FiatTokenV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x088247...57fe56` | ⚠️ Unaudited |
| FiatTokenV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb7277a...3778a2` | ⚠️ Unaudited |
| FiatTokenV2_1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa2327a...4cbdcf` | ⚠️ Unaudited |
| ForthClaim | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf497b8...2d03a1` | ⚠️ Unaudited |
| GenericHandler | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x30b702...e7e3b1` | ⚠️ Unaudited |
| ImplementationDirectory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x287666...2c97bb` | ⚠️ Unaudited |
| LpMining | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x82b6ed...bd5605` | ⚠️ Unaudited |
| MainToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xabe580...22e6be` | ⚠️ Unaudited |
| MasterMinter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x566c11...674335` | ⚠️ Unaudited |
| MedianOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x99c977...2d8914` | ⚠️ Unaudited |
| Members | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3e8640...107ac5` | ⚠️ Unaudited |
| MeterGovERC20V1_1 | unknown | project_anchor | own_supporting | 1 | ethereum | unit-246615 | `0xbd2949...988a9f` | ⚠️ Unaudited |
| MeterGovProxy | unknown | project_anchor | own_supporting | 1 | ethereum | unit-246613 | `0x29e9fd...735e32` | ⚠️ Unaudited |
| MiniMeTokenFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x003ea7...f15505` | ⚠️ Unaudited |
| MscpToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x27d724...2b297a` | ⚠️ Unaudited |
| Multicall | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | moonbeam | n/a | `0x83e3b6...f7f36b` | ⚠️ Unaudited |
| Multicall2 | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | moonbeam | n/a | `0x647720...897bb2` | ⚠️ Unaudited |
| MultiSend | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | moonbeam | n/a | `0xd22497...b08836` | ⚠️ Unaudited |
| NEC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcc80c0...b97a5e` | ⚠️ Unaudited |
| NectarController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8d5a41...05d98d` | ⚠️ Unaudited |
| NftFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa304d2...ad437d` | ⚠️ Unaudited |
| NftMarket | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0xe56355...a10016` | ⚠️ Unaudited |
| NftSwap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x8b4eba...e3ff8f` | ⚠️ Unaudited |
| Orchestrator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x24232c...74746d` | ⚠️ Unaudited |
| Package | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x722bcc...cf972e` | ⚠️ Unaudited |
| PolkamarketsToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd47816...f1cfbf` | ⚠️ Unaudited |
| ProxyAdmin | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | bsc | n/a | `0x027dbc...e53aa7` | ⚠️ Unaudited |
| Rib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x4bde98...e6e5ce` | ⚠️ Unaudited |
| RightsManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2992a0...2b9e28` | ⚠️ Unaudited |
| Sale | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6dd25c...b0fdfd` | ⚠️ Unaudited |
| SeascapeNft | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc54b96...6ac6c8` | ⚠️ Unaudited |
| setNumberContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x70755c...60803f` | ⚠️ Unaudited |
| SetText | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x65bf1e...d1d27e` | ⚠️ Unaudited |
| SmartPoolManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa854ec...d43b86` | ⚠️ Unaudited |
| standardToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xf30501...b40320` | ⚠️ Unaudited |
| SwapSigner | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0xbfb0b8...edcc69` | ⚠️ Unaudited |
| TetherToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0e98db...fdba1b` | ⚠️ Unaudited |
| TokenGeyser | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0142ed...6d9b83` | ⚠️ Unaudited |
| TokenVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x805c7e...07de2f` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | polygon | n/a | `0x0b9709...c7da9a` | ⚠️ Unaudited |
| UFragments | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x027dbc...e53aa7` | ⚠️ Unaudited |
| UFragmentsPolicy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x14e733...58f477` | ⚠️ Unaudited |
| UTUToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x804dd5...150993` | ⚠️ Unaudited |
| WBTC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2260fa...c2c599` | ⚠️ Unaudited |
| WETH9 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0xacc15d...c6077f` | ⚠️ Unaudited |
| WrapperLockEth | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x991f0e...f3690e` | ⚠️ Unaudited |
| XFT_FARM | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc5d4b6...621d93` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (0)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

- None

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [[HAECHI AUDIT] Meter Bridge Smart Contract Audit Report v1.2.pdf](https://github.com/meterio/Passportv2Contracts/blob/main/audit/%5BHAECHI%20AUDIT%5D%20Meter%20Bridge%20Smart%20Contract%20Audit%20Report%20v1.2.pdf) | HAECHI AUDIT | Audit | 2022-10 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 43 | high |
| [[HAECHI AUDIT] Meter Bridge Smart Contract Audit Report v1.1.pdf](https://github.com/meterio/Passportv2Contracts/blob/main/audit/%5BHAECHI%20AUDIT%5D%20Meter%20Bridge%20Smart%20Contract%20Audit%20Report%20v1.1.pdf) | HAECHI AUDIT | Audit | 2022-09 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 43 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [21325] [HAECHI AUDIT] Meter Bridge Smart Contract Audit Report v1.2.pdf — no match: Extracted 42 contract names from the Audit Scope section (pages 7-8). The report date is Oct 11, 2022 from the cover page.
- [21326] [HAECHI AUDIT] Meter Bridge Smart Contract Audit Report v1.1.pdf — no match: All contracts listed in the 'Audit Scope' section (pages 7-8) are included. ERC20MintablePauseableUpgradeable.sol is explicitly excluded. The audit date is from the cover page: 'Published on : Sep 28, 2022'.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| [HAECHI AUDIT] Meter Bridge Smart Contract Audit Report v1.2.pdf | BasicFeeHandler | unmatched — not counted | — | listed in scope | no |
| [HAECHI AUDIT] Meter Bridge Smart Contract Audit Report v1.2.pdf | FeeHandlerWithOracle | unmatched — not counted | — | listed in scope | no |
| [HAECHI AUDIT] Meter Bridge Smart Contract Audit Report v1.2.pdf | ERC20Handler | unmatched — not counted | — | listed in scope | no |
| [HAECHI AUDIT] Meter Bridge Smart Contract Audit Report v1.2.pdf | ERC20HandlerUpgradeable | unmatched — not counted | — | listed in scope | no |
| [HAECHI AUDIT] Meter Bridge Smart Contract Audit Report v1.2.pdf | ERC721Handler | unmatched — not counted | — | listed in scope | no |
| [HAECHI AUDIT] Meter Bridge Smart Contract Audit Report v1.2.pdf | ERC721HandlerUpgradeable | unmatched — not counted | — | listed in scope | no |
| [HAECHI AUDIT] Meter Bridge Smart Contract Audit Report v1.2.pdf | ERC1155Handler | unmatched — not counted | — | listed in scope | no |
| [HAECHI AUDIT] Meter Bridge Smart Contract Audit Report v1.2.pdf | ERC1155HandlerUpgradeable | unmatched — not counted | — | listed in scope | no |
| [HAECHI AUDIT] Meter Bridge Smart Contract Audit Report v1.2.pdf | GenericHandler | unmatched — not counted | — | listed in scope | no |
| [HAECHI AUDIT] Meter Bridge Smart Contract Audit Report v1.2.pdf | GenericHandlerUpgradeable | unmatched — not counted | — | listed in scope | no |
| [HAECHI AUDIT] Meter Bridge Smart Contract Audit Report v1.2.pdf | HandlerHelpers | unmatched — not counted | — | listed in scope | no |
| [HAECHI AUDIT] Meter Bridge Smart Contract Audit Report v1.2.pdf | HandlerHelpersUpgradeable | unmatched — not counted | — | listed in scope | no |
| [HAECHI AUDIT] Meter Bridge Smart Contract Audit Report v1.2.pdf | IBridge | unmatched — not counted | — | listed in scope | no |
| [HAECHI AUDIT] Meter Bridge Smart Contract Audit Report v1.2.pdf | IDepositExecute | unmatched — not counted | — | listed in scope | no |
| [HAECHI AUDIT] Meter Bridge Smart Contract Audit Report v1.2.pdf | IERCHandler | unmatched — not counted | — | listed in scope | no |
| [HAECHI AUDIT] Meter Bridge Smart Contract Audit Report v1.2.pdf | IERCMintBurn | unmatched — not counted | — | listed in scope | no |
| [HAECHI AUDIT] Meter Bridge Smart Contract Audit Report v1.2.pdf | IFeeHandler | unmatched — not counted | — | listed in scope | no |
| [HAECHI AUDIT] Meter Bridge Smart Contract Audit Report v1.2.pdf | IGenericHandler | unmatched — not counted | — | listed in scope | no |
| [HAECHI AUDIT] Meter Bridge Smart Contract Audit Report v1.2.pdf | IWETH | unmatched — not counted | — | listed in scope | no |
| [HAECHI AUDIT] Meter Bridge Smart Contract Audit Report v1.2.pdf | ERC1967Proxy | unmatched — not counted | — | listed in scope | no |
| [HAECHI AUDIT] Meter Bridge Smart Contract Audit Report v1.2.pdf | ERC1967Upgradeable | unmatched — not counted | — | listed in scope | no |
| [HAECHI AUDIT] Meter Bridge Smart Contract Audit Report v1.2.pdf | Proxy | unmatched — not counted | — | listed in scope | no |
| [HAECHI AUDIT] Meter Bridge Smart Contract Audit Report v1.2.pdf | TransparentUpgradeableProxy | unmatched — not counted | — | listed in scope | no |
| [HAECHI AUDIT] Meter Bridge Smart Contract Audit Report v1.2.pdf | AccessControl | unmatched — not counted | — | listed in scope | no |
| [HAECHI AUDIT] Meter Bridge Smart Contract Audit Report v1.2.pdf | AccessControlUpgradeable | unmatched — not counted | — | listed in scope | no |
| [HAECHI AUDIT] Meter Bridge Smart Contract Audit Report v1.2.pdf | Address | unmatched — not counted | — | listed in scope | no |
| [HAECHI AUDIT] Meter Bridge Smart Contract Audit Report v1.2.pdf | Pausable | unmatched — not counted | — | listed in scope | no |
| [HAECHI AUDIT] Meter Bridge Smart Contract Audit Report v1.2.pdf | PausableUpgradeable | unmatched — not counted | — | listed in scope | no |
| [HAECHI AUDIT] Meter Bridge Smart Contract Audit Report v1.2.pdf | SafeCast | unmatched — not counted | — | listed in scope | no |
| [HAECHI AUDIT] Meter Bridge Smart Contract Audit Report v1.2.pdf | SafeMath | unmatched — not counted | — | listed in scope | no |
| [HAECHI AUDIT] Meter Bridge Smart Contract Audit Report v1.2.pdf | StorageSlot | unmatched — not counted | — | listed in scope | no |
| [HAECHI AUDIT] Meter Bridge Smart Contract Audit Report v1.2.pdf | Bridge | unmatched — not counted | — | listed in scope | no |
| [HAECHI AUDIT] Meter Bridge Smart Contract Audit Report v1.2.pdf | BridgeUpgradeable | unmatched — not counted | — | listed in scope | no |
| [HAECHI AUDIT] Meter Bridge Smart Contract Audit Report v1.2.pdf | CentrifugeAsset | unmatched — not counted | — | listed in scope | no |
| [HAECHI AUDIT] Meter Bridge Smart Contract Audit Report v1.2.pdf | ERC20MinterBurnerPauser | unmatched — not counted | — | listed in scope | no |
| [HAECHI AUDIT] Meter Bridge Smart Contract Audit Report v1.2.pdf | ERC20Safe | unmatched — not counted | — | listed in scope | no |
| [HAECHI AUDIT] Meter Bridge Smart Contract Audit Report v1.2.pdf | ERC721MinterBurnerPauser | unmatched — not counted | — | listed in scope | no |
| [HAECHI AUDIT] Meter Bridge Smart Contract Audit Report v1.2.pdf | ERC721Safe | unmatched — not counted | — | listed in scope | no |
| [HAECHI AUDIT] Meter Bridge Smart Contract Audit Report v1.2.pdf | ERC1155Safe | unmatched — not counted | — | listed in scope | no |
| [HAECHI AUDIT] Meter Bridge Smart Contract Audit Report v1.2.pdf | Forwarder | unmatched — not counted | — | listed in scope | no |
| [HAECHI AUDIT] Meter Bridge Smart Contract Audit Report v1.2.pdf | Migrations | unmatched — not counted | — | listed in scope | no |
| [HAECHI AUDIT] Meter Bridge Smart Contract Audit Report v1.2.pdf | Signatures | unmatched — not counted | — | listed in scope | no |
| [HAECHI AUDIT] Meter Bridge Smart Contract Audit Report v1.2.pdf | SignaturesUpgradeable | unmatched — not counted | — | listed in scope | no |
| [HAECHI AUDIT] Meter Bridge Smart Contract Audit Report v1.1.pdf | BasicFeeHandler | unmatched — not counted | — | listed in Audit Scope | no |
| [HAECHI AUDIT] Meter Bridge Smart Contract Audit Report v1.1.pdf | FeeHandlerWithOracle | unmatched — not counted | — | listed in Audit Scope | no |
| [HAECHI AUDIT] Meter Bridge Smart Contract Audit Report v1.1.pdf | ERC20Handler | unmatched — not counted | — | listed in Audit Scope | no |
| [HAECHI AUDIT] Meter Bridge Smart Contract Audit Report v1.1.pdf | ERC20HandlerUpgradeable | unmatched — not counted | — | listed in Audit Scope | no |
| [HAECHI AUDIT] Meter Bridge Smart Contract Audit Report v1.1.pdf | ERC721Handler | unmatched — not counted | — | listed in Audit Scope | no |
| [HAECHI AUDIT] Meter Bridge Smart Contract Audit Report v1.1.pdf | ERC721HandlerUpgradeable | unmatched — not counted | — | listed in Audit Scope | no |
| [HAECHI AUDIT] Meter Bridge Smart Contract Audit Report v1.1.pdf | ERC1155Handler | unmatched — not counted | — | listed in Audit Scope | no |
| [HAECHI AUDIT] Meter Bridge Smart Contract Audit Report v1.1.pdf | ERC1155HandlerUpgradeable | unmatched — not counted | — | listed in Audit Scope | no |
| [HAECHI AUDIT] Meter Bridge Smart Contract Audit Report v1.1.pdf | GenericHandler | unmatched — not counted | — | listed in Audit Scope | no |
| [HAECHI AUDIT] Meter Bridge Smart Contract Audit Report v1.1.pdf | GenericHandlerUpgradeable | unmatched — not counted | — | listed in Audit Scope | no |
| [HAECHI AUDIT] Meter Bridge Smart Contract Audit Report v1.1.pdf | HandlerHelpers | unmatched — not counted | — | listed in Audit Scope | no |
| [HAECHI AUDIT] Meter Bridge Smart Contract Audit Report v1.1.pdf | HandlerHelpersUpgradeable | unmatched — not counted | — | listed in Audit Scope | no |
| [HAECHI AUDIT] Meter Bridge Smart Contract Audit Report v1.1.pdf | IBridge | unmatched — not counted | — | listed in Audit Scope | no |
| [HAECHI AUDIT] Meter Bridge Smart Contract Audit Report v1.1.pdf | IDepositExecute | unmatched — not counted | — | listed in Audit Scope | no |
| [HAECHI AUDIT] Meter Bridge Smart Contract Audit Report v1.1.pdf | IERCHandler | unmatched — not counted | — | listed in Audit Scope | no |
| [HAECHI AUDIT] Meter Bridge Smart Contract Audit Report v1.1.pdf | IERCMintBurn | unmatched — not counted | — | listed in Audit Scope | no |
| [HAECHI AUDIT] Meter Bridge Smart Contract Audit Report v1.1.pdf | IFeeHandler | unmatched — not counted | — | listed in Audit Scope | no |
| [HAECHI AUDIT] Meter Bridge Smart Contract Audit Report v1.1.pdf | IGenericHandler | unmatched — not counted | — | listed in Audit Scope | no |
| [HAECHI AUDIT] Meter Bridge Smart Contract Audit Report v1.1.pdf | IWETH | unmatched — not counted | — | listed in Audit Scope | no |
| [HAECHI AUDIT] Meter Bridge Smart Contract Audit Report v1.1.pdf | ERC1967Proxy | unmatched — not counted | — | listed in Audit Scope | no |
| [HAECHI AUDIT] Meter Bridge Smart Contract Audit Report v1.1.pdf | ERC1967Upgradeable | unmatched — not counted | — | listed in Audit Scope | no |
| [HAECHI AUDIT] Meter Bridge Smart Contract Audit Report v1.1.pdf | Proxy | unmatched — not counted | — | listed in Audit Scope | no |
| [HAECHI AUDIT] Meter Bridge Smart Contract Audit Report v1.1.pdf | TransparentUpgradeableProxy | unmatched — not counted | — | listed in Audit Scope | no |
| [HAECHI AUDIT] Meter Bridge Smart Contract Audit Report v1.1.pdf | AccessControl | unmatched — not counted | — | listed in Audit Scope | no |
| [HAECHI AUDIT] Meter Bridge Smart Contract Audit Report v1.1.pdf | AccessControlUpgradeable | unmatched — not counted | — | listed in Audit Scope | no |
| [HAECHI AUDIT] Meter Bridge Smart Contract Audit Report v1.1.pdf | Address | unmatched — not counted | — | listed in Audit Scope | no |
| [HAECHI AUDIT] Meter Bridge Smart Contract Audit Report v1.1.pdf | Pausable | unmatched — not counted | — | listed in Audit Scope | no |
| [HAECHI AUDIT] Meter Bridge Smart Contract Audit Report v1.1.pdf | PausableUpgradeable | unmatched — not counted | — | listed in Audit Scope | no |
| [HAECHI AUDIT] Meter Bridge Smart Contract Audit Report v1.1.pdf | SafeCast | unmatched — not counted | — | listed in Audit Scope | no |
| [HAECHI AUDIT] Meter Bridge Smart Contract Audit Report v1.1.pdf | SafeMath | unmatched — not counted | — | listed in Audit Scope | no |
| [HAECHI AUDIT] Meter Bridge Smart Contract Audit Report v1.1.pdf | StorageSlot | unmatched — not counted | — | listed in Audit Scope | no |
| [HAECHI AUDIT] Meter Bridge Smart Contract Audit Report v1.1.pdf | Bridge | unmatched — not counted | — | listed in Audit Scope | no |
| [HAECHI AUDIT] Meter Bridge Smart Contract Audit Report v1.1.pdf | BridgeUpgradeable | unmatched — not counted | — | listed in Audit Scope | no |
| [HAECHI AUDIT] Meter Bridge Smart Contract Audit Report v1.1.pdf | CentrifugeAsset | unmatched — not counted | — | listed in Audit Scope | no |
| [HAECHI AUDIT] Meter Bridge Smart Contract Audit Report v1.1.pdf | ERC20MinterBurnerPauser | unmatched — not counted | — | listed in Audit Scope | no |
| [HAECHI AUDIT] Meter Bridge Smart Contract Audit Report v1.1.pdf | ERC20Safe | unmatched — not counted | — | listed in Audit Scope | no |
| [HAECHI AUDIT] Meter Bridge Smart Contract Audit Report v1.1.pdf | ERC721MinterBurnerPauser | unmatched — not counted | — | listed in Audit Scope | no |
| [HAECHI AUDIT] Meter Bridge Smart Contract Audit Report v1.1.pdf | ERC721Safe | unmatched — not counted | — | listed in Audit Scope | no |
| [HAECHI AUDIT] Meter Bridge Smart Contract Audit Report v1.1.pdf | ERC1155Safe | unmatched — not counted | — | listed in Audit Scope | no |
| [HAECHI AUDIT] Meter Bridge Smart Contract Audit Report v1.1.pdf | Forwarder | unmatched — not counted | — | listed in Audit Scope | no |
| [HAECHI AUDIT] Meter Bridge Smart Contract Audit Report v1.1.pdf | Migrations | unmatched — not counted | — | listed in Audit Scope | no |
| [HAECHI AUDIT] Meter Bridge Smart Contract Audit Report v1.1.pdf | Signatures | unmatched — not counted | — | listed in Audit Scope | no |
| [HAECHI AUDIT] Meter Bridge Smart Contract Audit Report v1.1.pdf | SignaturesUpgradeable | unmatched — not counted | — | listed in Audit Scope | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0xbd2949...988a9f` | MeterGovERC20V1_1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x29e9fd...735e32` | MeterGovProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 78 |
| upstream | 1 |
| standard_library | 7 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 86 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=2
- Match method counts: n/a

Zero-match audit list:

- [21325] [HAECHI AUDIT] Meter Bridge Smart Contract Audit Report v1.2.pdf
- [21326] [HAECHI AUDIT] Meter Bridge Smart Contract Audit Report v1.1.pdf

Fork inheritance lineage and inherited audits are included when available.
