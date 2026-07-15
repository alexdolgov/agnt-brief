# Agentic Audit Brief: 3F

## Export Authority

- Production state: **published scope**
- Raw selected rows: 6 across 4 audit(s)
- Eligible audit results: 4 (4 matched; 0 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

## Project Overview

- Project: 3F (`3f`)
- Website: [https://www.3f.xyz/](https://www.3f.xyz/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: ethereum, sepolia
- Contract surface: 377 unique implementations (379 raw deployments)
- Coverage basis: 3/4 confirmed own live verified implementations (75.0%); conservative 75.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $13,130,971.20
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for 3F. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 6 contract row(s) across ethereum, sepolia. Structural roles: 5 core, 1 supporting. 4 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 6
- Structural roles: core (5), supporting (1)
- Contract kinds: contract (6)
- Detected standards: ownable (3), erc1967proxy (1), erc20 (1)
- Frameworks: solady (3), openzeppelin (1)
- Upgradeable-pattern rows: 4

## Fork Analysis

0 of 58 contracts are derived from known codebases. 58 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x04e769...1a514e`, chain 1)
- UnnamedContract (`0x06e8ef...00b7a5`, chain 1)
- UnnamedContract (`0x15ad37...b23a62`, chain 1)
- UnnamedContract (`0x18c045...9551e2`, chain 1)
- UnnamedContract (`0x20ed12...54436f`, chain 1)
- UnnamedContract (`0x23deb2...85e451`, chain 1)
- UnnamedContract (`0x2e3ad0...657fae`, chain 1)
- UnnamedContract (`0x3a11fd...59fd6e`, chain 1)
- UnnamedContract (`0x3db868...5e0cfc`, chain 1)
- UnnamedContract (`0x40fc03...4a7a3b`, chain 1)
- UnnamedContract (`0x433d5b...79be4d`, chain 1)
- UnnamedContract (`0x4614f7...b68644`, chain 1)
- UnnamedContract (`0x476681...296a2a`, chain 1)
- UnnamedContract (`0x503cd4...0236af`, chain 1)
- UnnamedContract (`0x52ea2c...6493fc`, chain 1)
- UnnamedContract (`0x5a4ba8...274e6f`, chain 1)
- UnnamedContract (`0x5b5dab...2b7c98`, chain 1)
- UnnamedContract (`0x64debb...a0f338`, chain 1)
- UnnamedContract (`0x677fcc...366ad3`, chain 1)
- UnnamedContract (`0x6915ec...7b4a06`, chain 1)
- UnnamedContract (`0x69162d...56ea86`, chain 1)
- UnnamedContract (`0x7495a9...20da93`, chain 1)
- UnnamedContract (`0x7c3467...c2cd7d`, chain 1)
- UnnamedContract (`0x7e5436...6a0247`, chain 1)
- UnnamedContract (`0x8460f0...396c89`, chain 1)
- UnnamedContract (`0x84a32e...894747`, chain 1)
- UnnamedContract (`0x86f03b...363566`, chain 1)
- UnnamedContract (`0x88c24c...03f2f0`, chain 1)
- UnnamedContract (`0x8b4b3c...2b5b30`, chain 1)
- UnnamedContract (`0x970925...e98cfe`, chain 1)
- UnnamedContract (`0x9d565f...ce1bc6`, chain 1)
- UnnamedContract (`0xa0a3f5...f5a821`, chain 1)
- UnnamedContract (`0xa202dc...af6103`, chain 1)
- UnnamedContract (`0xa8b76a...f4a489`, chain 1)
- UnnamedContract (`0xb73465...d8e853`, chain 1)
- UnnamedContract (`0xbd0161...1113ec`, chain 1)
- UnnamedContract (`0xbf05cc...6eb03e`, chain 1)
- UnnamedContract (`0xbf1d0c...d4275f`, chain 1)
- UnnamedContract (`0xbf309b...49be60`, chain 1)
- UnnamedContract (`0xc31c2b...b51926`, chain 1)
- UnnamedContract (`0xc588f2...153219`, chain 1)
- UnnamedContract (`0xc728a3...4794ca`, chain 1)
- UnnamedContract (`0xcab791...ca60a4`, chain 1)
- UnnamedContract (`0xd27234...f15a88`, chain 1)
- UnnamedContract (`0xd8f2ad...92f49d`, chain 1)
- UnnamedContract (`0xdab29f...b46ef9`, chain 1)
- UnnamedContract (`0xdaecbb...2b2b65`, chain 1)
- UnnamedContract (`0xdd62e5...c94240`, chain 1)
- UnnamedContract (`0xe8642b...bde516`, chain 1)
- UnnamedContract (`0xeb10b3...70c099`, chain 1)
- UnnamedContract (`0xf458ad...16b7d9`, chain 1)
- UnnamedContract (`0xf51bb7...08cada`, chain 1)
- UnnamedContract (`0xf844fa...564832`, chain 1)
- FiatTokenProxy (`0xa0b869...06eb48`, chain 1)
- IdleCDOTranche (`0xc26a6f...84f99c`, chain 1)
- MorphoBorrowPosition (`0x0382f1...2a3440`, chain 1)
- ParetoFund (`0x0ce1fd...d35e59`, chain 1)
- USCCFund (`0x0e828a...94a733`, chain 1)

## Contract Surface Quality

- Indexed contracts: 6; live-surface contracts included: 6 (5 live, 1 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 58/108 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 3/4 (75.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 57 own, 42 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 278 discovered implementations excluded (14 third-party/infra; 28 standard proxy/library)
- Proxy deployments represented within implementation groups: 34
- Deployed-live implementations: 58 of 377 unique (rest dead/inactive/uninitialized)
- All verified address-book-owned implementations audited (incl. non-live): 3/4
- Verified + Unaudited implementations: 1
- Verified by bytecode match: 0
- Unverified implementations: 53
- Unique implementations: 377
- Raw deployments: 379
- Audits discovered: 4 (4 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 4
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-05 (fresh)
- Audit staleness (calendar age): 4 fresh, 0 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 3 match-unverified
- Tier 1 coverage: 75.0% (ChainSecurity, Spearbit)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| ChainSecurity | Tier 1 | 3 | 75.0% | 2026-04 |
| Spearbit | Tier 1 | 2 | 50.0% | 2026-05 |

## Contract Surface

### ✅ Verified + Audited (3)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| MorphoBorrowPosition | unknown | project_anchor | own_supporting | 0 | ethereum | unit-225187 | `0x0382f1...2a3440` | ✅ Audited |
| ParetoFund | unknown | project_anchor | own_supporting | 0 | ethereum | unit-225190 | `0x0ce1fd...d35e59` | ✅ Audited |
| USCCFund | unknown | project_anchor | own_supporting | 0 | ethereum | unit-225191 | `0x0e828a...94a733` | ✅ Audited |

### ⚠️ Verified + Unaudited (174)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AccessControlledAggregator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0086e1...01b423` | ⚠️ Unaudited |
| AccessControlledOCR2Aggregator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x04397a...c67ece` | ⚠️ Unaudited |
| AccessControlledOffchainAggregator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x00cac5...73d6d4` | ⚠️ Unaudited |
| AdaptiveCurveIrm | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-225217 | `0x870ac1...ba00bc` | ⚠️ Unaudited |
| AdminUpgradeabilityProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x08db22...ca23d8` | ⚠️ Unaudited |
| AdminUpgradeabilityProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x28fac5...3e07b5` | ⚠️ Unaudited |
| AdminUpgradeabilityProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x681825...e33ccb` | ⚠️ Unaudited |
| AllowList | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x42d75c...de8149` | ⚠️ Unaudited |
| AsyncVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x488079...46780b` | ⚠️ Unaudited |
| CentrifugeFund | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1c4940...ab5dec` | ⚠️ Unaudited |
| CentrifugeFundFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6e07ba...f3386b` | ⚠️ Unaudited |
| ChannelConfigStore | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1affdb...0160f3` | ⚠️ Unaudited |
| ChronicleVAO_Centrifuge_JAAA_Consumer_1 | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x02cf8c...6e8ec0` | ⚠️ Unaudited |
| CommitDeposit | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc3b2a7...f471fd` | ⚠️ Unaudited |
| Configurator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6d05b6...2e71b1` | ⚠️ Unaudited |
| ConfirmedTransactionModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x04b221...8748ba` | ⚠️ Unaudited |
| ConvexStrategyPlainPool3Token | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x03563d...d854d9` | ⚠️ Unaudited |
| DelegateStakingRewardsIDLE | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x747e81...7ff388` | ⚠️ Unaudited |
| DualAggregator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1eeb87...19a5df` | ⚠️ Unaudited |
| EACAggregatorProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x014f60...25e0a5` | ⚠️ Unaudited |
| EarlyRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa1f71e...5d88fc` | ⚠️ Unaudited |
| ERC1967Factory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x54f862...d4e82e` | ⚠️ Unaudited |
| EthenaCooldownRequest | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe0c4a2...e098d1` | ⚠️ Unaudited |
| EulerStakingPYTStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcf9347...098ffb` | ⚠️ Unaudited |
| Facility | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4e013c...8a4a4f` | ⚠️ Unaudited |
| FalconXAAAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x48fc1a...f57724` | ⚠️ Unaudited |
| FeeManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x48a42f...dcf649` | ⚠️ Unaudited |
| FiatToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8cbde2...77a91a` | ⚠️ Unaudited |
| FiatTokenProxy | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | ethereum | unit-225294 | `0xa0b869...06eb48` | ⚠️ Unaudited |
| FiatTokenUtil | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6315aa...0355a6` | ⚠️ Unaudited |
| FiatTokenV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x088247...57fe56` | ⚠️ Unaudited |
| FiatTokenV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb7277a...3778a2` | ⚠️ Unaudited |
| FiatTokenV2_1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa2327a...4cbdcf` | ⚠️ Unaudited |
| GnosisSafe | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4adfbf...9a993d` | ⚠️ Unaudited |
| GnosisSafeProxyFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xabc5f8...2e8c71` | ⚠️ Unaudited |
| GovernableFund | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x107a36...31b925` | ⚠️ Unaudited |
| GovernorAccessControl | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf02faf...1ed5e5` | ⚠️ Unaudited |
| GovernorAlpha | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2256b2...2fe31b` | ⚠️ Unaudited |
| Idle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x875773...c5d39e` | ⚠️ Unaudited |
| IdleAave | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0bc3bb...ef54f3` | ⚠️ Unaudited |
| IdleAaveV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3c5a5d...50a70c` | ⚠️ Unaudited |
| IdleBatchedMint | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4dbf03...805c69` | ⚠️ Unaudited |
| IdleCDO | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1ea9ae...9bb716` | ⚠️ Unaudited |
| IdleCDOEpochVariant | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x17979e...ceb5e8` | ⚠️ Unaudited |
| IdleCDOEpochVariantPrefunded | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x73fb8d...3a0f6a` | ⚠️ Unaudited |
| IdleCDOFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3c9916...c9a631` | ⚠️ Unaudited |
| IdleCDOInstadappLiteVariant | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0d0f8a...a73b27` | ⚠️ Unaudited |
| IdleCDOPoLidoVariant | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x56050f...5759a1` | ⚠️ Unaudited |
| IdleCDORegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x84fdee...d94d8e` | ⚠️ Unaudited |
| IdleCDOTranche | unknown | project_anchor | own_supporting | 0 | ethereum | unit-225230 | `0xc26a6f...84f99c` | ⚠️ Unaudited |
| IdleCDOUsualVariant | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x41b55b...9a7e8b` | ⚠️ Unaudited |
| IdleCompound | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x55583f...2c1edd` | ⚠️ Unaudited |
| IdleCompoundETH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9a7aca...5605ca` | ⚠️ Unaudited |
| IdleCompoundV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0c39da...8ccc66` | ⚠️ Unaudited |
| IdleCreditVaultFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2dcb01...b52a7e` | ⚠️ Unaudited |
| IdleCreditVaultImpliedPrice | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1745c0...500663` | ⚠️ Unaudited |
| IdleCreditVaultWriteOffEscrow | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1c89df...ca3254` | ⚠️ Unaudited |
| IdleDSR | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x587fe6...0c608a` | ⚠️ Unaudited |
| IdleEulerStakingStrategyPSM | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x956f65...cf5784` | ⚠️ Unaudited |
| IdleEulerStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x388655...ea45e0` | ⚠️ Unaudited |
| IdleFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5d4e70...b3ffd0` | ⚠️ Unaudited |
| IdleFulcrum | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x727d9c...be825e` | ⚠️ Unaudited |
| IdleFulcrumV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x02072a...cbe2e1` | ⚠️ Unaudited |
| IdleMcdBridge | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7ab2a7...137211` | ⚠️ Unaudited |
| IdleMStableStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7b8c3e...083619` | ⚠️ Unaudited |
| IdlePoLidoStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4916ee...a12569` | ⚠️ Unaudited |
| IdlePriceCalculator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaefb13...225358` | ⚠️ Unaudited |
| IdlePYT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd3af13...45553d` | ⚠️ Unaudited |
| IdlePYTClear | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa575b3...533559` | ⚠️ Unaudited |
| IdlePYTClearJunior | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xff31c6...d19d18` | ⚠️ Unaudited |
| IdlePYTClearPSM | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6fa860...0264d8` | ⚠️ Unaudited |
| IdleRebalancer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x781616...b753f4` | ⚠️ Unaudited |
| IdleRebalancerV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xec4707...75fc87` | ⚠️ Unaudited |
| IdleRebalancerV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x21fcd8...bc9582` | ⚠️ Unaudited |
| IdleRebalancerV3_1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2be5a5...86a84a` | ⚠️ Unaudited |
| IdleRebalancerV3SUSD | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6b98a5...e0a506` | ⚠️ Unaudited |
| IdleRebalancerV3USDT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x240345...80deb1` | ⚠️ Unaudited |
| IdleRibbonPSMStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x051ba9...9b0933` | ⚠️ Unaudited |
| IdleStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x10cecc...0ac2b9` | ⚠️ Unaudited |
| IdleTokenFungible | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0d41f8...e906ca` | ⚠️ Unaudited |
| IdleTokenV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x12b98c...3e3ca6` | ⚠️ Unaudited |
| IdleTokenV3_1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2fec85...40931a` | ⚠️ Unaudited |
| IdleTokenV3SUSD | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x51c776...83eef1` | ⚠️ Unaudited |
| IdleTokenV3USDT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x427406...1d862b` | ⚠️ Unaudited |
| IdleTokenWrapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x544897...ae18e1` | ⚠️ Unaudited |
| IdleTrancheAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x70728f...d41e6d` | ⚠️ Unaudited |
| IdleUsdcOtcSwap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x863a08...33e765` | ⚠️ Unaudited |
| IdleViewHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2adf7c...5dadec` | ⚠️ Unaudited |
| IntentDescriptor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcbeeaa...b56e55` | ⚠️ Unaudited |
| KeyringIdleWhitelist | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1a4d23...2bcc68` | ⚠️ Unaudited |
| LockedIDLE | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x02682c...4a4f48` | ⚠️ Unaudited |
| MasterMinter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x566c11...674335` | ⚠️ Unaudited |
| MerkleClaim | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x693695...d26485` | ⚠️ Unaudited |
| MetamorphoPYTStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x96dd27...448152` | ⚠️ Unaudited |
| MetaMorphoSnippets | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x603cb5...cfddca` | ⚠️ Unaudited |
| Morpho | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0xbbbbbb...eeffcb` | ⚠️ Unaudited |
| MorphoAavePYTStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9db5a6...03049e` | ⚠️ Unaudited |
| MorphoAaveV2SupplyVaultStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0cb45d...a9dfac` | ⚠️ Unaudited |
| MorphoBorrowPositionFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2b67d2...a2352d` | ⚠️ Unaudited |
| MorphoChainlinkOracleV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2e4eb0...b5d886` | ⚠️ Unaudited |
| MorphoFlashLoanRequest | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8426ee...ee7ed4` | ⚠️ Unaudited |
| MorphoFlashLoanRequestFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf2729c...915007` | ⚠️ Unaudited |
| MorphoRebalancer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x882ffc...e6e096` | ⚠️ Unaudited |
| MultiSend | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd975bd...b308cd` | ⚠️ Unaudited |
| ParetoDollar | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7b70fc...68c337` | ⚠️ Unaudited |
| ParetoDollarQueue | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x07ace8...a4c3fd` | ⚠️ Unaudited |
| ParetoFundFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb9dd14...bc039a` | ⚠️ Unaudited |
| PositionManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0472b7...79fa72` | ⚠️ Unaudited |
| PositionManagerFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8e0667...1fe5fa` | ⚠️ Unaudited |
| PriceOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x972a64...5ef181` | ⚠️ Unaudited |
| PriceOracleV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb5a8f0...95e8c5` | ⚠️ Unaudited |
| PriceOracleV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x886b10...c201f1` | ⚠️ Unaudited |
| ProgrammableBorrower | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x01d079...6d069b` | ⚠️ Unaudited |
| ProxyAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0138a8...8b725e` | ⚠️ Unaudited |
| Request | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x7a9c10...57c8ee`; ethereum `0xbb3ad4...523b43` | ⚠️ Unaudited |
| RequestFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xde2931...012ca5` | ⚠️ Unaudited |
| RequestWhitelist | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3fcd87...9daf9e` | ⚠️ Unaudited |
| Reservoir | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x031f71...1e42c6` | ⚠️ Unaudited |
| RewardManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1a2a2d...75e7ec` | ⚠️ Unaudited |
| SimpleReadAccessController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x70e7d9...a02ab9` | ⚠️ Unaudited |
| SimpleWriteAccessController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe0ba13...c3dcae` | ⚠️ Unaudited |
| SmartWalletChecker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2d8b5b...4169d3` | ⚠️ Unaudited |
| StakingRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4a0772...6cdb49` | ⚠️ Unaudited |
| SuperstateRestrictedWrappedAsset | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9cbf36...fe5e10` | ⚠️ Unaudited |
| SuperstateTokenV5_1 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x14d60e...74020c` | ⚠️ Unaudited |
| SyncDeposit | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfd893b...485c9a` | ⚠️ Unaudited |
| Timelock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd6dabb...dc2556` | ⚠️ Unaudited |
| Tranche | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5a0f93...7dcf64` | ⚠️ Unaudited |
| TranchesChainlinkOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0da050...42fb94` | ⚠️ Unaudited |
| TrancheWrapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcf96f4...1fe66d` | ⚠️ Unaudited |
| TrancheWrapperWSTETHBalancer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6bf9ea...bf723a` | ⚠️ Unaudited |
| TransferGuard | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x53cddf...f24ce0` | ⚠️ Unaudited |
| TransferGuardFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x44b68f...8dad2c` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x00d390...482c8b` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x0186e3...78a73b` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x019879...7a4cdc` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x01b8a7...1e175c` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x0962fb...42e6b6` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x0b4f69...1c8a3e` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x0cac67...da089a` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x0fe4fc...e71b04` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x16f6be...08083b` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x1d659f...62dcc8` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x1eb1b4...25344c` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x1f5a97...313c8e` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x25e733...518893` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x271c61...0edf16` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x271ce5...9920f0` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x29c794...387510` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x29d094...f24b21` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x351683...f77865` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x35df8a...5ac1c8` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x3687c0...ded5a0` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x37de1d...870dc5` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x3bcba0...d122cb` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x4473bc...dc382d` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x62b17c...8b58fb` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x9e0c5e...a9b52f` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0xbc4896...d02eb9` | ⚠️ Unaudited |
| UniswapAnchoredView | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x046728...63a58d` | ⚠️ Unaudited |
| Unitroller | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x275da8...cdb0be` | ⚠️ Unaudited |
| UpgradeableBeacon | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x320603...38a696`; ethereum `0xf53058...1020a3` | ⚠️ Unaudited |
| USCC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x41feb4...f6852b` | ⚠️ Unaudited |
| USCCFundFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x593e35...03717f` | ⚠️ Unaudited |
| USCCv2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5ce236...dea2e1` | ⚠️ Unaudited |
| USTB | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3986a1...51a1af` | ⚠️ Unaudited |
| USTBv2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x34ee70...8794da` | ⚠️ Unaudited |
| ValidatorProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x023824...ee7c3c` | ⚠️ Unaudited |
| Verifier | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa618f1...457d05` | ⚠️ Unaudited |
| VerifierProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaae5ec...ff6582` | ⚠️ Unaudited |
| VesterFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbf875f...089972` | ⚠️ Unaudited |
| Vyper_contract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0c3310...9c4320` | ⚠️ Unaudited |
| WrappedAsset | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2dad4f...8df340` | ⚠️ Unaudited |
| yxToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0d81b0...2685ce` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (200)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-225188 | `0x04e769...1a514e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x068198...09b1a3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-225189 | `0x06e8ef...00b7a5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x083420...93d123` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0b4070...5589d4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0f4db3...2442c4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0f85a0...8143d8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x110b1a...299746` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x157be9...d2b379` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-225192 | `0x15ad37...b23a62` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x15d4f8...f558f0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x173268...e73f3f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-225193 | `0x18c045...9551e2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1b6c8b...9852d7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1ce594...eae682` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1d03be...5c5497` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x209656...0b1cd4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-225194 | `0x20ed12...54436f` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x23a08f...b39459` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x23a685...19733e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x23b107...d5d87a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-225195 | `0x23deb2...85e451` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2776cd...59752a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x29c4c2...1ce684` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2aaf65...4de8a1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2c5c1d...166f52` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-225196 | `0x2e3ad0...657fae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2e44a8...b54655` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x321d1d...4b862d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x38abba...3879d0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x394546...20925d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x39a410...597edc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-225197 | `0x3a11fd...59fd6e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3b1367...4848b2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-225198 | `0x3db868...5e0cfc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-225199 | `0x40fc03...4a7a3b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-225200 | `0x433d5b...79be4d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4540f0...944a66` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x45c5a2...3126d8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-225201 | `0x4614f7...b68644` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-225202 | `0x476681...296a2a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x49ca36...076834` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4a9540...e87f02` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4ca6bc...0ccade` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4cdcdf...dfdf8b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4e85f9...7dba4b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-225203 | `0x503cd4...0236af` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x516002...c6333f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x516b22...23333f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x51b766...894e4f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-225204 | `0x52ea2c...6493fc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-225205 | `0x5a4ba8...274e6f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-225206 | `0x5b5dab...2b7c98` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5f23fe...319c70` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x615d2c...b31683` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x629ed3...336d95` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-225207 | `0x64debb...a0f338` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x67547e...5b5141` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-225208 | `0x677fcc...366ad3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x68066d...ee3cab` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-225209 | `0x6915ec...7b4a06` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-225210 | `0x69162d...56ea86` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x69f1a5...020541` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6a1725...42333f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6c72f1...9f2cbb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6efa0d...ea6626` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x71f94e...90421e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x73e718...b8b9bc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x745742...86686a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-225211 | `0x7495a9...20da93` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x758754...7d333f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x77a39d...2aed27` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7ad8e7...fbbc4f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-225212 | `0x7c3467...c2cd7d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-225213 | `0x7e5436...6a0247` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x809649...464622` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8321cc...81f8d8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-225214 | `0x8460f0...396c89` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-225215 | `0x84a32e...894747` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x86b495...e8ebfe` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-225216 | `0x86f03b...363566` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-225218 | `0x88c24c...03f2f0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8a2698...fbc073` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8a2c51...f62601` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-225219 | `0x8b4b3c...2b5b30` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8b857d...ea7c7a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8c4fd4...bf7958` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x8c5ddc...caba7c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8e0b1b...2cd9e8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x901237...10240c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x949a1d...0a7f9a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-225220 | `0x970925...e98cfe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x990ce1...ac42fe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9cce1e...f36108` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-225221 | `0x9d565f...ce1bc6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-225222 | `0xa0a3f5...f5a821` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-225223 | `0xa202dc...af6103` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa26290...a4477f` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0xa34950...19dd6b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa3693e...9b2c79` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-225224 | `0xa8b76a...f4a489` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa9c51d...f0333f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xac1101...4018b1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaf52dc...5816f2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaf895c...47ce7e` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0xaffd8f...9300d9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb22111...28a078` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-225225 | `0xb73465...d8e853` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb93482...60d0ee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb97b0d...66181c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbaced1...9428ce` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbaf52f...0066c8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-225226 | `0xbd0161...1113ec` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-225227 | `0xbf05cc...6eb03e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-225228 | `0xbf1d0c...d4275f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-225229 | `0xbf309b...49be60` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-225231 | `0xc31c2b...b51926` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc406dc...4cd4d6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-225232 | `0xc588f2...153219` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc59c1a...03497d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc7087a...c0333f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-225233 | `0xc728a3...4794ca` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-225234 | `0xcab791...ca60a4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcedb69...b5d343` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcfca9b...8fc5d1` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0xd011ee...424a14` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd18292...8fb0cf` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-225235 | `0xd27234...f15a88` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd53758...4b462a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd70da1...6725dd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd7c64a...ec8074` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd8e6e5...de362b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-225236 | `0xd8f2ad...92f49d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd98307...49b11a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-225237 | `0xdab29f...b46ef9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-225238 | `0xdaecbb...2b2b65` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-225239 | `0xdd62e5...c94240` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe2296b...7cfc07` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe5cb3b...86e3b7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe61eca...d7dba9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-225240 | `0xe8642b...bde516` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe9103e...667858` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe9fe68...b15a28` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-225241 | `0xeb10b3...70c099` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xee9e06...9b7079` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf06adb...7c9927` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf08434...b2333f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf0fc92...1e355a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf2fcfa...043c93` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf38dc6...a4147f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-225242 | `0xf458ad...16b7d9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-225243 | `0xf51bb7...08cada` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf58eb8...c04864` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf6fc1f...78db9d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-225244 | `0xf844fa...564832` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfb435c...921d2b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfbd0fd...792e18` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfcbda9...00333f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfd4752...492e81` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfed562...8e99ce` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-225245 | `0x068198...09b1a3` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-225246 | `0x0f4db3...2442c4` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-225247 | `0x0f85a0...8143d8` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-225248 | `0x15d4f8...f558f0` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-225250 | `0x1b6c8b...9852d7` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-225251 | `0x1d03be...5c5497` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | sepolia | unit-225252 | `0x23a08f...b39459` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-225253 | `0x29c4c2...1ce684` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-225254 | `0x2aaf65...4de8a1` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-225255 | `0x2c5c1d...166f52` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-225256 | `0x2e44a8...b54655` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-225257 | `0x38abba...3879d0` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-225258 | `0x39a410...597edc` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-225259 | `0x3b1367...4848b2` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-225260 | `0x49ca36...076834` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-225261 | `0x4a9540...e87f02` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-225264 | `0x51b766...894e4f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-225265 | `0x69f1a5...020541` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-225267 | `0x6c72f1...9f2cbb` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-225269 | `0x7ad8e7...fbbc4f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-225270 | `0x8321cc...81f8d8` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | sepolia | unit-225271 | `0x8c5ddc...caba7c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-225272 | `0x8e0b1b...2cd9e8` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | sepolia | unit-225273 | `0xa34950...19dd6b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-225275 | `0xbaced1...9428ce` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-225277 | `0xcedb69...b5d343` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | sepolia | unit-225278 | `0xd011ee...424a14` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-225279 | `0xd18292...8fb0cf` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-225280 | `0xd53758...4b462a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-225281 | `0xd7c64a...ec8074` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-225282 | `0xd8e6e5...de362b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-225283 | `0xe2296b...7cfc07` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-225284 | `0xe61eca...d7dba9` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-225285 | `0xe9103e...667858` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-225286 | `0xf06adb...7c9927` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-225288 | `0xf0fc92...1e355a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-225289 | `0xf38dc6...a4147f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-225290 | `0xf58eb8...c04864` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-225291 | `0xfbd0fd...792e18` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-225293 | `0xfed562...8e99ce` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [| Cantina | Fee Review | May 27, 2026 | [View ↗]() |](https://github.com/3FLabs/grunt/blob/main/audits/Cantina_3F_Grunt_FeeReview_2026-05-27.pdf) | Spearbit | Audit | 2026-05 | fresh | Direct | contract_name | matched | 1 | 0 | 0 | 7 | medium |
| [| Cantina | Grunt | May 13, 2026 | [View ↗]() |](https://github.com/3FLabs/grunt/blob/main/audits/Cantina_3F_Grunt_Audit_2026-05.pdf) | Spearbit | Audit | 2026-05 | fresh | Direct | contract_name | matched | 2 | 0 | 0 | 53 | high |
| [| ChainSecurity | Grunt | April 8, 2026 | [View ↗]() |](https://github.com/3FLabs/grunt/blob/main/audits/ChainSecurity_3F_Grunt_Audit_2026-04.pdf) | ChainSecurity | Audit | 2026-04 | fresh | Direct | contract_name | matched | 2 | 0 | 0 | 52 | high |
| [| ChainSecurity | Grunt Funds | April 3, 2026 | [View ↗]() |](https://github.com/3FLabs/grunt/blob/main/audits/ChainSecurity_3F_GruntFunds_Audit_2026-04.pdf) | ChainSecurity | Audit | 2026-04 | fresh | Direct | contract_name | matched | 1 | 0 | 0 | 7 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [19375] | Cantina | Fee Review | May 27, 2026 | [View ↗]() | — matched: No explicit scope section; contract names extracted from finding contexts. Audit date from cover page.
- [19376] | Cantina | Grunt | May 13, 2026 | [View ↗]() | — matched: Extracted all contracts from the scope section (Section 2.1) and file tree listing. Audit date from cover page: May 13, 2026.
- [19377] | ChainSecurity | Grunt | April 8, 2026 | [View ↗]() | — matched: Extracted all contracts from the scope table in section 2.1. The audit date is from the cover page: 'April 8, 2026'.
- [19378] | ChainSecurity | Grunt Funds | April 3, 2026 | [View ↗]() | — matched: Extracted 8 contracts from scope table and version 2 additions. Audit date from cover page.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| | Cantina | Fee Review | May 27, 2026 | [View ↗]() | | IPositionManagerAdmin | unmatched — not counted | — | Context in finding 3.1.1 | no |
| | Cantina | Fee Review | May 27, 2026 | [View ↗]() | | PositionManagerBase | unmatched — not counted | — | Context in findings 3.1.1, 3.1.2, 3.1.3 | no |
| | Cantina | Fee Review | May 27, 2026 | [View ↗]() | | LibStorage | unmatched — not counted | — | Context in findings 3.1.1, 3.1.4 | no |
| | Cantina | Fee Review | May 27, 2026 | [View ↗]() | | PositionManagerAdmin | unmatched — not counted | — | Context in finding 3.1.1 | no |
| | Cantina | Fee Review | May 27, 2026 | [View ↗]() | | LibView | unmatched — not counted | — | Context in findings 3.1.2, 3.1.3, 3.1.4 | no |
| | Cantina | Fee Review | May 27, 2026 | [View ↗]() | | MorphoBorrowPosition | own contract | MorphoBorrowPosition (selected) `0x0382f1...2a3440` — deployed 2026-05-14 16:26:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| | Cantina | Fee Review | May 27, 2026 | [View ↗]() | | PositionManager | unmatched — not counted | — | Context in finding 3.1.4 | no |
| | Cantina | Fee Review | May 27, 2026 | [View ↗]() | | IPositionManager | unmatched — not counted | — | Context in finding 3.1.4 | no |
| | Cantina | Grunt | May 13, 2026 | [View ↗]() | | MorphoBorrowPosition | own contract | MorphoBorrowPosition (selected) `0x0382f1...2a3440` — deployed 2026-05-14 16:26:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| | Cantina | Grunt | May 13, 2026 | [View ↗]() | | MorphoBorrowPositionFactory | unmatched — not counted | — | listed in scope | no |
| | Cantina | Grunt | May 13, 2026 | [View ↗]() | | Facility | unmatched — not counted | — | listed in scope | no |
| | Cantina | Grunt | May 13, 2026 | [View ↗]() | | IntentDescriptor | unmatched — not counted | — | listed in scope | no |
| | Cantina | Grunt | May 13, 2026 | [View ↗]() | | FacilityFunds | unmatched — not counted | — | listed in scope | no |
| | Cantina | Grunt | May 13, 2026 | [View ↗]() | | FacilityIntents | unmatched — not counted | — | listed in scope | no |
| | Cantina | Grunt | May 13, 2026 | [View ↗]() | | FacilityLP | unmatched — not counted | — | listed in scope | no |
| | Cantina | Grunt | May 13, 2026 | [View ↗]() | | FacilityPositionManager | unmatched — not counted | — | listed in scope | no |
| | Cantina | Grunt | May 13, 2026 | [View ↗]() | | FacilityRequests | unmatched — not counted | — | listed in scope | no |
| | Cantina | Grunt | May 13, 2026 | [View ↗]() | | FacilityRoles | unmatched — not counted | — | listed in scope | no |
| | Cantina | Grunt | May 13, 2026 | [View ↗]() | | FacilitySwap | unmatched — not counted | — | listed in scope | no |
| | Cantina | Grunt | May 13, 2026 | [View ↗]() | | USCCFund | own contract | USCCFund (selected) `0x0e828a...94a733` — deployed 2026-05-14 16:26:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| | Cantina | Grunt | May 13, 2026 | [View ↗]() | | USCCFundFactory | unmatched — not counted | — | listed in scope | no |
| | Cantina | Grunt | May 13, 2026 | [View ↗]() | | WrappedAsset | unmatched — not counted | — | listed in scope | no |
| | Cantina | Grunt | May 13, 2026 | [View ↗]() | | TransferGuard | unmatched — not counted | — | listed in scope | no |
| | Cantina | Grunt | May 13, 2026 | [View ↗]() | | TransferGuardFactory | unmatched — not counted | — | listed in scope | no |
| | Cantina | Grunt | May 13, 2026 | [View ↗]() | | Constants | unmatched — not counted | — | listed in scope | no |
| | Cantina | Grunt | May 13, 2026 | [View ↗]() | | LibBorrowErrors | unmatched — not counted | — | listed in scope | no |
| | Cantina | Grunt | May 13, 2026 | [View ↗]() | | MorphoBalancesLib | unmatched — not counted | — | listed in scope | no |
| | Cantina | Grunt | May 13, 2026 | [View ↗]() | | SharesMathLib | unmatched — not counted | — | listed in scope | no |
| | Cantina | Grunt | May 13, 2026 | [View ↗]() | | LibChecks | unmatched — not counted | — | listed in scope | no |
| | Cantina | Grunt | May 13, 2026 | [View ↗]() | | LibCommonErrors | unmatched — not counted | — | listed in scope | no |
| | Cantina | Grunt | May 13, 2026 | [View ↗]() | | LibPause | unmatched — not counted | — | listed in scope | no |
| | Cantina | Grunt | May 13, 2026 | [View ↗]() | | LibAddress | unmatched — not counted | — | listed in scope | no |
| | Cantina | Grunt | May 13, 2026 | [View ↗]() | | LibConstants | unmatched — not counted | — | listed in scope | no |
| | Cantina | Grunt | May 13, 2026 | [View ↗]() | | LibFacilityErrors | unmatched — not counted | — | listed in scope | no |
| | Cantina | Grunt | May 13, 2026 | [View ↗]() | | LibIntent | unmatched — not counted | — | listed in scope | no |
| | Cantina | Grunt | May 13, 2026 | [View ↗]() | | LibStorage | unmatched — not counted | — | listed in scope | no |
| | Cantina | Grunt | May 13, 2026 | [View ↗]() | | LibTokenBalances | unmatched — not counted | — | listed in scope | no |
| | Cantina | Grunt | May 13, 2026 | [View ↗]() | | LibFundsErrors | unmatched — not counted | — | listed in scope | no |
| | Cantina | Grunt | May 13, 2026 | [View ↗]() | | Order | unmatched — not counted | — | listed in scope | no |
| | Cantina | Grunt | May 13, 2026 | [View ↗]() | | LibExecutor | unmatched — not counted | — | listed in scope | no |
| | Cantina | Grunt | May 13, 2026 | [View ↗]() | | LibManagerErrors | unmatched — not counted | — | listed in scope | no |
| | Cantina | Grunt | May 13, 2026 | [View ↗]() | | LibOperations | unmatched — not counted | — | listed in scope | no |
| | Cantina | Grunt | May 13, 2026 | [View ↗]() | | LibView | unmatched — not counted | — | listed in scope | no |
| | Cantina | Grunt | May 13, 2026 | [View ↗]() | | Lib128Fields | unmatched — not counted | — | listed in scope | no |
| | Cantina | Grunt | May 13, 2026 | [View ↗]() | | LibAllowance | unmatched — not counted | — | listed in scope | no |
| | Cantina | Grunt | May 13, 2026 | [View ↗]() | | LibMintAuth | unmatched — not counted | — | listed in scope | no |
| | Cantina | Grunt | May 13, 2026 | [View ↗]() | | LibRequestErrors | unmatched — not counted | — | listed in scope | no |
| | Cantina | Grunt | May 13, 2026 | [View ↗]() | | LibTokenController | unmatched — not counted | — | listed in scope | no |
| | Cantina | Grunt | May 13, 2026 | [View ↗]() | | PositionManager | unmatched — not counted | — | listed in scope | no |
| | Cantina | Grunt | May 13, 2026 | [View ↗]() | | PositionManagerFactory | unmatched — not counted | — | listed in scope | no |
| | Cantina | Grunt | May 13, 2026 | [View ↗]() | | PositionManagerAdmin | unmatched — not counted | — | listed in scope | no |
| | Cantina | Grunt | May 13, 2026 | [View ↗]() | | PositionManagerBase | unmatched — not counted | — | listed in scope | no |
| | Cantina | Grunt | May 13, 2026 | [View ↗]() | | PositionManagerLP | unmatched — not counted | — | listed in scope | no |
| | Cantina | Grunt | May 13, 2026 | [View ↗]() | | PositionManagerRebalancing | unmatched — not counted | — | listed in scope | no |
| | Cantina | Grunt | May 13, 2026 | [View ↗]() | | MorphoRebalancer | unmatched — not counted | — | listed in scope | no |
| | Cantina | Grunt | May 13, 2026 | [View ↗]() | | Request | unmatched — not counted | — | listed in scope | no |
| | Cantina | Grunt | May 13, 2026 | [View ↗]() | | RequestFactory | unmatched — not counted | — | listed in scope | no |
| | Cantina | Grunt | May 13, 2026 | [View ↗]() | | Vault | unmatched — not counted | — | listed in scope | no |
| | Cantina | Grunt | May 13, 2026 | [View ↗]() | | OfferReceiver | unmatched — not counted | — | listed in scope | no |
| | Cantina | Grunt | May 13, 2026 | [View ↗]() | | ControlledToken | unmatched — not counted | — | listed in scope | no |
| | Cantina | Grunt | May 13, 2026 | [View ↗]() | | TokenController | unmatched — not counted | — | listed in scope | no |
| | Cantina | Grunt | May 13, 2026 | [View ↗]() | | ControlledVault | unmatched — not counted | — | listed in scope | no |
| | Cantina | Grunt | May 13, 2026 | [View ↗]() | | VaultController | unmatched — not counted | — | listed in scope | no |
| | ChainSecurity | Grunt | April 8, 2026 | [View ↗]() | | ControlledToken | unmatched — not counted | — | listed in scope table | no |
| | ChainSecurity | Grunt | April 8, 2026 | [View ↗]() | | TokenController | unmatched — not counted | — | listed in scope table | no |
| | ChainSecurity | Grunt | April 8, 2026 | [View ↗]() | | ControlledVault | unmatched — not counted | — | listed in scope table | no |
| | ChainSecurity | Grunt | April 8, 2026 | [View ↗]() | | VaultController | unmatched — not counted | — | listed in scope table | no |
| | ChainSecurity | Grunt | April 8, 2026 | [View ↗]() | | OfferReceiver | unmatched — not counted | — | listed in scope table | no |
| | ChainSecurity | Grunt | April 8, 2026 | [View ↗]() | | RequestFactory | unmatched — not counted | — | listed in scope table | no |
| | ChainSecurity | Grunt | April 8, 2026 | [View ↗]() | | Vault | unmatched — not counted | — | listed in scope table | no |
| | ChainSecurity | Grunt | April 8, 2026 | [View ↗]() | | Request | unmatched — not counted | — | listed in scope table | no |
| | ChainSecurity | Grunt | April 8, 2026 | [View ↗]() | | Facility | unmatched — not counted | — | listed in scope table | no |
| | ChainSecurity | Grunt | April 8, 2026 | [View ↗]() | | IntentDescriptor | unmatched — not counted | — | listed in scope table | no |
| | ChainSecurity | Grunt | April 8, 2026 | [View ↗]() | | FacilityFunds | unmatched — not counted | — | listed in scope table | no |
| | ChainSecurity | Grunt | April 8, 2026 | [View ↗]() | | FacilityIntents | unmatched — not counted | — | listed in scope table | no |
| | ChainSecurity | Grunt | April 8, 2026 | [View ↗]() | | FacilityLP | unmatched — not counted | — | listed in scope table | no |
| | ChainSecurity | Grunt | April 8, 2026 | [View ↗]() | | FacilityRequests | unmatched — not counted | — | listed in scope table | no |
| | ChainSecurity | Grunt | April 8, 2026 | [View ↗]() | | FacilityPositionManager | unmatched — not counted | — | listed in scope table | no |
| | ChainSecurity | Grunt | April 8, 2026 | [View ↗]() | | FacilityRoles | unmatched — not counted | — | listed in scope table | no |
| | ChainSecurity | Grunt | April 8, 2026 | [View ↗]() | | FacilitySwap | unmatched — not counted | — | listed in scope table | no |
| | ChainSecurity | Grunt | April 8, 2026 | [View ↗]() | | USCCFund | own contract | USCCFund (selected) `0x0e828a...94a733` — deployed 2026-05-14 16:26:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| | ChainSecurity | Grunt | April 8, 2026 | [View ↗]() | | USCCFundFactory | unmatched — not counted | — | listed in scope table | no |
| | ChainSecurity | Grunt | April 8, 2026 | [View ↗]() | | WrappedAsset | unmatched — not counted | — | listed in scope table | no |
| | ChainSecurity | Grunt | April 8, 2026 | [View ↗]() | | TransferGuard | unmatched — not counted | — | listed in scope table | no |
| | ChainSecurity | Grunt | April 8, 2026 | [View ↗]() | | TransferGuardFactory | unmatched — not counted | — | listed in scope table | no |
| | ChainSecurity | Grunt | April 8, 2026 | [View ↗]() | | MorphoBorrowPosition | own contract | MorphoBorrowPosition (selected) `0x0382f1...2a3440` — deployed 2026-05-14 16:26:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| | ChainSecurity | Grunt | April 8, 2026 | [View ↗]() | | MorphoBorrowPositionFactory | unmatched — not counted | — | listed in scope table | no |
| | ChainSecurity | Grunt | April 8, 2026 | [View ↗]() | | PositionManagerBase | unmatched — not counted | — | listed in scope table | no |
| | ChainSecurity | Grunt | April 8, 2026 | [View ↗]() | | PositionManagerAdmin | unmatched — not counted | — | listed in scope table | no |
| | ChainSecurity | Grunt | April 8, 2026 | [View ↗]() | | PositionManagerLP | unmatched — not counted | — | listed in scope table | no |
| | ChainSecurity | Grunt | April 8, 2026 | [View ↗]() | | PositionManagerRebalancing | unmatched — not counted | — | listed in scope table | no |
| | ChainSecurity | Grunt | April 8, 2026 | [View ↗]() | | PositionManager | unmatched — not counted | — | listed in scope table | no |
| | ChainSecurity | Grunt | April 8, 2026 | [View ↗]() | | PositionManagerFactory | unmatched — not counted | — | listed in scope table | no |
| | ChainSecurity | Grunt | April 8, 2026 | [View ↗]() | | MorphoRebalancer | unmatched — not counted | — | listed in scope table | no |
| | ChainSecurity | Grunt | April 8, 2026 | [View ↗]() | | SharesMathLib | unmatched — not counted | — | listed in scope table | no |
| | ChainSecurity | Grunt | April 8, 2026 | [View ↗]() | | LibBorrowErrors | unmatched — not counted | — | listed in scope table | no |
| | ChainSecurity | Grunt | April 8, 2026 | [View ↗]() | | LibChecks | unmatched — not counted | — | listed in scope table | no |
| | ChainSecurity | Grunt | April 8, 2026 | [View ↗]() | | LibCommonErrors | unmatched — not counted | — | listed in scope table | no |
| | ChainSecurity | Grunt | April 8, 2026 | [View ↗]() | | LibPause | unmatched — not counted | — | listed in scope table | no |
| | ChainSecurity | Grunt | April 8, 2026 | [View ↗]() | | LibAddress | unmatched — not counted | — | listed in scope table | no |
| | ChainSecurity | Grunt | April 8, 2026 | [View ↗]() | | LibConstants | unmatched — not counted | — | listed in scope table | no |
| | ChainSecurity | Grunt | April 8, 2026 | [View ↗]() | | LibFacilityErrors | unmatched — not counted | — | listed in scope table | no |
| | ChainSecurity | Grunt | April 8, 2026 | [View ↗]() | | LibIntent | unmatched — not counted | — | listed in scope table | no |
| | ChainSecurity | Grunt | April 8, 2026 | [View ↗]() | | LibStorage | unmatched — not counted | — | listed in scope table | no |
| | ChainSecurity | Grunt | April 8, 2026 | [View ↗]() | | LibTokenBalances | unmatched — not counted | — | listed in scope table | no |
| | ChainSecurity | Grunt | April 8, 2026 | [View ↗]() | | LibFundsErrors | unmatched — not counted | — | listed in scope table | no |
| | ChainSecurity | Grunt | April 8, 2026 | [View ↗]() | | Order | unmatched — not counted | — | listed in scope table | no |
| | ChainSecurity | Grunt | April 8, 2026 | [View ↗]() | | LibExecutor | unmatched — not counted | — | listed in scope table | no |
| | ChainSecurity | Grunt | April 8, 2026 | [View ↗]() | | LibManagerErrors | unmatched — not counted | — | listed in scope table | no |
| | ChainSecurity | Grunt | April 8, 2026 | [View ↗]() | | LibOperations | unmatched — not counted | — | listed in scope table | no |
| | ChainSecurity | Grunt | April 8, 2026 | [View ↗]() | | LibView | unmatched — not counted | — | listed in scope table | no |
| | ChainSecurity | Grunt | April 8, 2026 | [View ↗]() | | Lib128Fields | unmatched — not counted | — | listed in scope table | no |
| | ChainSecurity | Grunt | April 8, 2026 | [View ↗]() | | LibAllowance | unmatched — not counted | — | listed in scope table | no |
| | ChainSecurity | Grunt | April 8, 2026 | [View ↗]() | | LibMintAuth | unmatched — not counted | — | listed in scope table | no |
| | ChainSecurity | Grunt | April 8, 2026 | [View ↗]() | | LibRequestErrors | unmatched — not counted | — | listed in scope table | no |
| | ChainSecurity | Grunt | April 8, 2026 | [View ↗]() | | LibTokenController | unmatched — not counted | — | listed in scope table | no |
| | ChainSecurity | Grunt | April 8, 2026 | [View ↗]() | | Constants | unmatched — not counted | — | listed in scope table | no |
| | ChainSecurity | Grunt Funds | April 3, 2026 | [View ↗]() | | CentrifugeFund | unmatched — not counted | — | listed in scope table | no |
| | ChainSecurity | Grunt Funds | April 3, 2026 | [View ↗]() | | CentrifugeFundFactory | unmatched — not counted | — | listed in scope table | no |
| | ChainSecurity | Grunt Funds | April 3, 2026 | [View ↗]() | | ParetoFund | own contract | ParetoFund (selected) `0x0ce1fd...d35e59` — deployed 2026-06-09 12:35:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| | ChainSecurity | Grunt Funds | April 3, 2026 | [View ↗]() | | ParetoFundFactory | unmatched — not counted | — | listed in scope table | no |
| | ChainSecurity | Grunt Funds | April 3, 2026 | [View ↗]() | | SyncDeposit | unmatched — not counted | — | listed in scope table (Version 2) | no |
| | ChainSecurity | Grunt Funds | April 3, 2026 | [View ↗]() | | SyncWithdrawal | unmatched — not counted | — | listed in scope table (Version 2) | no |
| | ChainSecurity | Grunt Funds | April 3, 2026 | [View ↗]() | | MorphoFlashLoanRequest | unmatched — not counted | — | listed in scope table (Version 2) | no |
| | ChainSecurity | Grunt Funds | April 3, 2026 | [View ↗]() | | MorphoFlashLoanRequestFactory | unmatched — not counted | — | listed in scope table (Version 2) | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0xc26a6f...84f99c` | IdleCDOTranche | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 129 |
| upstream | 15 |
| standard_library | 33 |
| needs_review | 200 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Address-book scope dispositions: 6 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 119 unmatched
- Matched-own operational status: 6 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=3, medium=1
- Match method counts: unique_name=6

Fork inheritance lineage and inherited audits are included when available.
