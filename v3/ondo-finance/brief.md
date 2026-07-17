# Agentic Audit Brief: Ondo Finance

## Export Authority

- Production state: **published scope**
- Raw selected rows: 13 across 9 audit(s)
- Eligible audit results: 31 (9 matched; 22 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Ondo Finance (`ondo-finance`)
- Website: [https://ondo.finance](https://ondo.finance)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, bsc, ethereum, mantle, polygon, sei
- Contract surface: 128 unique implementations (128 raw deployments)
- Coverage basis: 6/15 confirmed own live verified implementations (40.0%); conservative 40.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $3,552,276,760.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Ondo Finance. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 15 contract row(s) across arbitrum, bsc, ethereum, mantle, polygon, sei. Structural roles: 8 core, 7 supporting. 10 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 15
- Structural roles: core (8), supporting (7)
- Contract kinds: contract (10), abstract (5)
- Detected standards: accesscontrol (7), erc165 (7), erc1967proxy (7), pausable (1)
- Frameworks: openzeppelin (14), openzeppelin-upgradeable (10), chainlink (1)
- Upgradeable-pattern rows: 10

## Fork Analysis

0 of 29 contracts are derived from known codebases. 29 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x96f6ef951840721adbf46ac996b59e0235cb985c`, chain 1)
- UnnamedContract (`0xace8e719899f6e91831b18ae746c9a965c2119f1`, chain 1)
- UnnamedContract (`0xd8c8174691d936e2c80114ec449037b13421b0a8`, chain 1)
- UnnamedContract (`0xf0bc39fc911f6437c84d16188dd8294f7110f451`, chain 1)
- UnnamedContract (`0x91f8aff3738825e8eb16fc6f6b1a7a4647bdb299`, chain 56)
- UnnamedContract (`0x96b525b1a93f31e65f4aaf18c53842ed28525d48`, chain 56)
- UnnamedContract (`0xf4fd8a1b412633e10527454137a29db7aa35f15e`, chain 56)
- UnnamedContract (`0x6b7443808acfcd48f1de212c2557462fa86ee945`, chain 137)
- UnnamedContract (`0x7cd852c0d7613aa869e632929560f310d4059ac1`, chain 137)
- UnnamedContract (`0xba11c5effa33c4d6f8f593cfa394241cfe925811`, chain 137)
- UnnamedContract (`0x54cd901491aef397084453f4372b93c33260e2a6`, chain 1329)
- UnnamedContract (`0xab575258d37eaa5c8956efabe71f4ee8f6397cf3`, chain 5000)
- UnnamedContract (`0xdbd7a7d8807f0c98c9a58f7732f2799c8587e5c6`, chain 5000)
- UnnamedContract (`0x0be393dc46248e4285dc5caca3084bc7e9bfbb41`, chain 42161)
- CashKYCSenderReceiver (`0x1b19c19393e2d034d8ff31ff34c81252fcbbee92`, chain 1)
- GMTokenManager (`0x2c158bc456e027b2affccadf1bdbd9f5fc4c5c8c`, chain 1)
- GnosisSafe (`0x72be8c14b7564f7a61ba2f6b7e50d18dc1d4b63d`, chain 1)
- OndoOracle (`0x9cad45a8bf0ed41ff33074449b357c7a1fab4094`, chain 1)
- OUSG_InstantManager (`0x93358db73b6cd4b98d89c8f5f230e81a95c2643a`, chain 1)
- rUSDY (`0xaf37c1167910ebc994e266949387d2c7c326b879`, chain 1)
- RWADynamicOracle (`0xa0219aa5b31e65bc920b5b6dfb8edf0988121de0`, chain 1)
- SyntheticSharesOracle (`0x9bc39db6fbb44b91a48b8d5a6c208b82b1741be6`, chain 1)
- TokenProxy (`0x5be26527e817998a7206475496fde1e68957c5a6`, chain 5000)
- TransparentUpgradeableProxy (`0xcf6958d69d535fd03bd6df3f4fe6cdcd127d97df`, chain 1)
- USDon (`0x1f8955e640cbd9abc3c3bb408c9e2e1f5f20dfe6`, chain 56)
- USDonManager (`0x05ccbb4b74854f8a067b83475e8c34f5a413d7e1`, chain 1)
- USDY (`0x35e050d3c0ec2d29d269a8ecea763a183bdf9a9d`, chain 42161)
- USDY_InstantManager (`0xa42613c243b67bf6194ac327795b926b4b491f15`, chain 1)
- USDYc (`0xe86845788d6e3e5c2393ade1a051ae617d974c09`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 15; live-surface rows included: 15 (15 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 29/33 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 6/15 (40.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 29 own, 1 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 98 discovered implementations shown in the inventory but excluded from coverage (4 third-party/infra; 1 standard proxy/library)
- Proxy deployments represented within implementation groups: 10
- Confirmed-live implementations: 29 of 128 unique; 99 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 6/109
- Verified + Unaudited implementations: 103
- Verified by bytecode match: 0
- Unverified implementations: 19
- Unique implementations: 128
- Raw deployments: 128
- Audits discovered: 31 (31 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 9
- Active bug bounty: Immunefi ([program](https://immunefi.com/bug-bounty/ondofinance/information))
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-02 (fresh)
- Audit staleness (calendar age): 8 fresh, 4 aging, 16 stale, 2 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 8 match-unverified
- Tier 1 coverage: 20.0% (Code4rena)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Code4rena | Tier 1 | 3 | 2.8% | 2024-03 |
| Halborn | Tier 2 | 3 | 2.8% | 2025-02 |

## Contract Surface

### ✅ Verified + Audited (6)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| CashKYCSenderReceiver | unknown | project_anchor | own_supporting | 1 | ethereum | unit-250354 | `0x1b19c19393e2d034d8ff31ff34c81252fcbbee92` | ✅ Audited |
| OndoOracle | unknown | project_anchor | own_supporting | 0 | ethereum | unit-250334 | `0x9cad45a8bf0ed41ff33074449b357c7a1fab4094` | ✅ Audited |
| OUSG_InstantManager | unknown | project_anchor | own_supporting | 0 | ethereum | unit-250331 | `0x93358db73b6cd4b98d89c8f5f230e81a95c2643a` | ✅ Audited |
| rUSDY | unknown | project_anchor | own_supporting | 1 | ethereum | unit-250356 | `0xaf37c1167910ebc994e266949387d2c7c326b879` | ✅ Audited |
| RWADynamicOracle | unknown | project_anchor | third_party_dependency | 0 | ethereum | unit-250335 | `0xa0219aa5b31e65bc920b5b6dfb8edf0988121de0` | ✅ Audited |
| TransparentUpgradeableProxy | unknown | project_anchor | own_supporting | 1 | ethereum | unit-250353 | `0xcf6958d69d535fd03bd6df3f4fe6cdcd127d97df` | ✅ Audited |

### ⚠️ Verified + Unaudited (103)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AdminSubscriptionChecker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1cb2dcc325615d02ae384941149d1da6521fa018` | ⚠️ Unaudited |
| AllowlistFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0ed7968f45cba8b8a76b014531435737e98ac988` | ⚠️ Unaudited |
| AllowlistStub | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5cd9e3a4c9933133b512da1b6ba4672160e0c665` | ⚠️ Unaudited |
| AllPairVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2bb8de958134afd7543d4063cafad0b7c6de08bc` | ⚠️ Unaudited |
| BasicRecipient | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x10d8bbfae5df091dc1646a95685f7afae0c853e7` | ⚠️ Unaudited |
| BasicSource | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x27370016a46ff10255b8daabe7035f5203ce280e` | ⚠️ Unaudited |
| BeaconProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0x02d608506ca0048d0d991a11f1e7fb8cad1e44f8` | ⚠️ Unaudited |
| Blocklist | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5857feb095302407a718ba6386a53c35da0deddf` | ⚠️ Unaudited |
| BondStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd1c12131b5fd306279fc5bc571bd81049ee31154` | ⚠️ Unaudited |
| BridgeRegistrar | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x58d73026c64da97ce858766384477d2e8775e9ec` | ⚠️ Unaudited |
| BridgeRegistrarStub | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x55e0b3ac59d3f6a924483b25a9f3d83c0dd7c31c` | ⚠️ Unaudited |
| BuidlUSDCSource | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9f205e1ac7698f59edbaa0a28c4a4c4ed605b722` | ⚠️ Unaudited |
| CashKYCSenderReceiverFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcbf5d0b946ba15a0914d39c3e13c3c489d09b4a8` | ⚠️ Unaudited |
| CashManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3501883a646f1f8417bcb62162372550954d618f` | ⚠️ Unaudited |
| CCashDelegate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1927c38658dfc2f85d31d97e9cc011e0e1c322b9` | ⚠️ Unaudited |
| CDaiDelegate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8e1e54ee9516c40650d7bbee0c53aca9f95db18d` | ⚠️ Unaudited |
| CErc20DelegatorKYC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x049e2aab49813c7a34656a193777019ed74651a9` | ⚠️ Unaudited |
| Comptroller | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x076c8405d6e2ecb84ebe265b255519e0f0d527e0` | ⚠️ Unaudited |
| DestinationBridge | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbd8fb563a325dc853741907ae06e5f3c02c9235c` | ⚠️ Unaudited |
| FiatToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8cbde23b1416cac07a52591bba744c744d77a91a` | ⚠️ Unaudited |
| FiatTokenProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48` | ⚠️ Unaudited |
| FiatTokenUtil | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6315aa908c50376d1028412c028aa0629f0355a6` | ⚠️ Unaudited |
| FiatTokenV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0882477e7895bdc5cea7cb1552ed914ab157fe56` | ⚠️ Unaudited |
| FiatTokenV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb7277a6e95992041568d9391d09d0122023778a2` | ⚠️ Unaudited |
| FiatTokenV2_1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa2327a938febf5fec13bacfb16ae10ecbc4cbdcf` | ⚠️ Unaudited |
| FluxOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1c1f01765e60f3e695b3bba902e64daecc2280c5` | ⚠️ Unaudited |
| FluxStateSanityCheck | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe486b29da842b531b076c27d0f5085ab2d72cce2` | ⚠️ Unaudited |
| GMTokenFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x01bb8620c0aef4390c983a5a792d178af2733e82` | ⚠️ Unaudited |
| GMTokenLimitOrder | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x132fcd1fcfd0e1ba1d23a3efef9cd4a9cadd50a3` | ⚠️ Unaudited |
| GMTokenManager | unknown | project_anchor | own_supporting | 0 | ethereum | unit-250330 | `0x2c158bc456e027b2affccadf1bdbd9f5fc4c5c8c` | ⚠️ Unaudited |
| GnosisSafe | unknown | project_anchor | own_supporting | 1 | ethereum | unit-250357 | `0x72be8c14b7564f7a61ba2f6b7e50d18dc1d4b63d` | ⚠️ Unaudited |
| GovernerAlpha | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7554815084eb70e8de277141650fad7e3d50673f` | ⚠️ Unaudited |
| GovernorBravoDelegate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x20bd72c3ab333399a85da76bcc2784a2a0970a13` | ⚠️ Unaudited |
| Inspector | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0b34233a94c3433092009d8903080553039bb7a1` | ⚠️ Unaudited |
| InvestorBasedRateLimiter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9b013b4e03b87295a68a19b1a55e3c7dc3c56ffa` | ⚠️ Unaudited |
| IssuanceHours | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2d3fa4e1aab6e4bbd909cf81518a8084873c47b5` | ⚠️ Unaudited |
| IssuanceHoursAlwaysOpen | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x180eecc78a99d32e925ff6a0ed42ada2abfdd1bb` | ⚠️ Unaudited |
| IssuanceHoursStub | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8dd664d8a14558dc5d41baf767efaf96570d3c52` | ⚠️ Unaudited |
| JumpRateModelV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3342e31aed7fa9bcde181a38e85375db5bba06c2` | ⚠️ Unaudited |
| KYCRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x71923a93a1f4837e931d888c90a10de4e3678336` | ⚠️ Unaudited |
| MasterMinter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x566c11b5c2201b69c9269fe924e4395873674335` | ⚠️ Unaudited |
| Messenger | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xff2baba46df92919705e60120c477ae5b7341eb3` | ⚠️ Unaudited |
| MinimalWhitelistedMulticall | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc872aa5b6d7ddc2663ff7eee3eb94782e3992bc4` | ⚠️ Unaudited |
| OMMFFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x40f1ea5256fddf049d9a46a96ff82766ea80e793` | ⚠️ Unaudited |
| OMMFManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1d01be0296b99aadee94116e285cdb2c40be7929` | ⚠️ Unaudited |
| OMMFRebaseSetter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x463efa052e662c6272e8aef5e4492d99f088afa7` | ⚠️ Unaudited |
| Ondo | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3d72c761180781d86ed5f631aeb51231d0f462df` | ⚠️ Unaudited |
| OndoCoinlistDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x14efbbe9f0bbae2bea83570f4fcd590c59eb1e54` | ⚠️ Unaudited |
| OndoCompliance | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x156f73fc73197555e950743cb2b23f411c751002` | ⚠️ Unaudited |
| OndoComplianceGMView | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x54a8757c2fef8649830b158a8c19d3a670e80318` | ⚠️ Unaudited |
| OndoFees | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe1cb24077d77d2fe763fcac63e5653d97dc8d20c` | ⚠️ Unaudited |
| OndoIDRegistryFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2db71e3d748a86ae7d3013389094d2cc5fc5d891` | ⚠️ Unaudited |
| OndoIDRegistryView | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x56a5d911052323d688c731d516530878557463e7` | ⚠️ Unaudited |
| OndoMintBurnAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x0be393dc46248e4285dc5caca3084bc7e9bfbb41` | ⚠️ Unaudited |
| OndoOwner | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbc6d5c103a3f586e68bd475942a49d041b171c3e` | ⚠️ Unaudited |
| OndoPriceOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x526a13df3594637c08bc964ad1980181f2753c8e` | ⚠️ Unaudited |
| OndoRateLimiter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x98db502215da1ad9f626d4a0090a8a2f4971003c` | ⚠️ Unaudited |
| OndoSanityCheckOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x14032815b65f6b65f23d2532ad5f5dff7be48c03` | ⚠️ Unaudited |
| OndoTokenRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1ff19caa684093ceaa3743c65420b9ff6f48350f` | ⚠️ Unaudited |
| OUSGInstantManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1189bacb100676db9a495eec04a730a53a8ad97c` | ⚠️ Unaudited |
| OUSGManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xeb9a2304be212c01597e1ca352e44b151b81736b` | ⚠️ Unaudited |
| OUSGOracleWrapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xadc4966e4f8caaf12c777f07aa7a0ae8d894cdf3` | ⚠️ Unaudited |
| PauseManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0fdad576c5d9432fc424c2922efdce92f48cd578` | ⚠️ Unaudited |
| PortfolioEscrow | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1ff1b1af23b64645afea8eafa2808eec9ec83397` | ⚠️ Unaudited |
| PortfolioOrchestrator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2661c6e807a1bc6a3c871d62dfd45affcf6e0b09` | ⚠️ Unaudited |
| PortfolioTokenFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4a0afacb521e04cbb067a378beb82097c649dea1` | ⚠️ Unaudited |
| PortfolioTokenLimitOrder | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x713cb410dcbbc75eb8cfe996636a6a88bad193d5` | ⚠️ Unaudited |
| PortfolioTokenManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x096371519838ee2e5cc8c017447cced15817cae9` | ⚠️ Unaudited |
| PortfolioTokenRegistrar | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x38b0126f5a00ea026e606b06bd61f05b28b98835` | ⚠️ Unaudited |
| Pricer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0d269194548c874ec1ac7a6beb2a82bf7b78a07e` | ⚠️ Unaudited |
| PricerWithOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x14b113ca9100dff02641d6fcd6919b95b9f67b02` | ⚠️ Unaudited |
| ProxyAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x328ea3f8ad2c09ff50047d179956c8d2ef0f67b4` | ⚠️ Unaudited |
| RateLimiter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4d4e562d6882dc523b8d629d2e9df9230b699933` | ⚠️ Unaudited |
| Registry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1a05f3ef99e89caa2eea361fc3fae21fc60720ac` | ⚠️ Unaudited |
| ROUSGFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb3d770240446c1d01c2e48f3fd323ca1ddb0fbaa` | ⚠️ Unaudited |
| rUSDYFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x127123279f44c6c9a1da42852f06cb46fc6e6a74` | ⚠️ Unaudited |
| rUSDYW_Factory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x4109074822b86a6c41fdce1a92030dc7298c64d1` | ⚠️ Unaudited |
| RWAOracleExternalComparisonCheck | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0502c5ae08e7cd64fe1aeda7d6e229413ecc6abe` | ⚠️ Unaudited |
| RWAOracleRateCheck | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0576f565bdd00199b8e353f569ce903bb2eccc22` | ⚠️ Unaudited |
| RWAOracleTestOnly | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x70ec840bd57e4bbc563878297629b470755d41c4` | ⚠️ Unaudited |
| SourceBridge | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x1d29b8bf4ae4d45d019d21a5770298ac46fc111b` | ⚠️ Unaudited |
| SyntheticSharesOracle | unknown | project_anchor | third_party_dependency | 0 | ethereum | unit-250333 | `0x9bc39db6fbb44b91a48b8d5a6c208b82b1741be6` | ⚠️ Unaudited |
| Timelock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2c5898da4df1d45eab2b7b192a361c3b9eb18d9c` | ⚠️ Unaudited |
| TimelockController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3715b2154d2ff4c5b027c7a1f734b53f27bc34f1` | ⚠️ Unaudited |
| TokenManagerRegistrar | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa21ed4c3122fc51c6d6db0d668d968c3b3f689cb` | ⚠️ Unaudited |
| TokenPauseManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6334924c787ebd21c881740ef6237ef51962638f` | ⚠️ Unaudited |
| TokenProxy | unknown | project_anchor | own_supporting | 1 | mantle | unit-250359 | `0x5be26527e817998a7206475496fde1e68957c5a6` | ⚠️ Unaudited |
| TrancheToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1cc75c52c66960a70e4d94452f21037cd68839a1` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x03ec229b76b0cae686a86d8501c7a37be89bbb23` | ⚠️ Unaudited |
| Unitroller | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0a5fa0e21517d13e532904cfb1868d9d164659f4` | ⚠️ Unaudited |
| USDon | unknown | project_anchor | own_supporting | 1 | bsc | unit-250360 | `0x1f8955e640cbd9abc3c3bb408c9e2e1f5f20dfe6` | ⚠️ Unaudited |
| USDon_Factory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaa9427d8827e9042bb3956604c4b57a9a37ff8cf` | ⚠️ Unaudited |
| USDonConverter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x54f5eb3e9a3b1bb71f1a7a89c445fba55b1fc813` | ⚠️ Unaudited |
| USDonManager | unknown | project_anchor | own_supporting | 0 | ethereum | unit-250329 | `0x05ccbb4b74854f8a067b83475e8c34f5a413d7e1` | ⚠️ Unaudited |
| USDY | unknown | project_anchor | own_supporting | 1 | arbitrum | unit-250358 | `0x35e050d3c0ec2d29d269a8ecea763a183bdf9a9d` | ⚠️ Unaudited |
| USDY_InstantManager | unknown | project_anchor | own_supporting | 0 | ethereum | unit-250336 | `0xa42613c243b67bf6194ac327795b926b4b491f15` | ⚠️ Unaudited |
| USDYc | unknown | project_anchor | own_supporting | 1 | ethereum | unit-250355 | `0xe86845788d6e3e5c2393ade1a051ae617d974c09` | ⚠️ Unaudited |
| USDYFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x07c81ab894dc6b577222784360742c436d557a87` | ⚠️ Unaudited |
| USDYManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x25a103a1d6aec5967c1a4fe2039cdc514886b97e` | ⚠️ Unaudited |
| USDYOracleWrapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x87b126e5518b6a1bb8465779b4607c45c643df90` | ⚠️ Unaudited |
| USDYPricer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7fb0228c6338da4ec948df7b6a8e22ad2bb2bfb5` | ⚠️ Unaudited |
| USDYW_Factory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x36bd938202ed388ece7f9857cc526519ed7330c1` | ⚠️ Unaudited |
| WOMMFFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x02d77d39c3889bf1da64c96f6f3b9a22aee2b51d` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (19)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2826989983e3a66f0622132d019c2ae173eb6a43` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7ce91291846502d50d635163135b2d40a602dc70` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-250332 | `0x96f6ef951840721adbf46ac996b59e0235cb985c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa6275720b3fb1efe3e6ef2b5bf2293148852307d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-250337 | `0xace8e719899f6e91831b18ae746c9a965c2119f1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-250339 | `0xd8c8174691d936e2c80114ec449037b13421b0a8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-250340 | `0xf0bc39fc911f6437c84d16188dd8294f7110f451` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf16c188c2d411627d39655a60409ec6707d3d5e8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-250350 | `0x91f8aff3738825e8eb16fc6f6b1a7a4647bdb299` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-250351 | `0x96b525b1a93f31e65f4aaf18c53842ed28525d48` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | third_party_dependency | 0 | bsc | unit-250352 | `0xf4fd8a1b412633e10527454137a29db7aa35f15e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-250343 | `0x6b7443808acfcd48f1de212c2557462fa86ee945` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-250344 | `0x7cd852c0d7613aa869e632929560f310d4059ac1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-250345 | `0xba11c5effa33c4d6f8f593cfa394241cfe925811` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sei | unit-250342 | `0x54cd901491aef397084453f4372b93c33260e2a6` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | mantle | unit-250347 | `0xa96abbe61afedeb0d14a20440ae7100d9ab4882f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | mantle | unit-250348 | `0xab575258d37eaa5c8956efabe71f4ee8f6397cf3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | mantle | unit-250349 | `0xdbd7a7d8807f0c98c9a58f7732f2799c8587e5c6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-250346 | `0x0be393dc46248e4285dc5caca3084bc7e9bfbb41` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [DL audit link](https://skynet.certik.com/projects/ondofinance) | CertiK | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [Active Bug Bounty Program](https://immunefi.com/bug-bounty/ondofinance/information) | Immunefi | Bug Bounty | Ongoing | n/a | Direct | n/a | n/a | n/a | n/a | n/a | n/a | n/a |
| [February 2026 Cantina Audit](https://docs-v2-git-prod-ondo-docs.vercel.app/pdf/GM-LimitOrder-Protocol-Cantina-01-30-2026.pdf) | Spearbit | Audit | 2026-02 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 6 | high |
| [December 2025 Zellic Audit](https://docs-v2-git-prod-ondo-docs.vercel.app/pdf/GM-Solana-Zellic-12-29-2025.pdf) | Zellic | Audit | 2025-12 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [December 2025 Cantina Audit](https://docs-v2-git-prod-ondo-docs.vercel.app/pdf/report-cantinacode-ondo-1121.pdf) | Spearbit | Audit | 2025-12 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 8 | high |
| [December 2025 Cantina Audit](https://docs-v2-git-prod-ondo-docs.vercel.app/pdf/GM-LimitOrder-Protocol-Cantina-12-02-2025.pdf) | Spearbit | Audit | 2025-12 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [November 2025 Cantina Audit](https://docs-v2-git-prod-ondo-docs.vercel.app/pdf/GM-SyntheticShares-Cantina-11-18-2025.pdf) | Spearbit | Audit | 2025-11 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [November 2025 FYEO Audit](https://docs-v2-git-prod-ondo-docs.vercel.app/pdf/GM-Solana-FYEO-11-05-2025.pdf) | Spearbit | Audit | 2025-11 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 3 | medium |
| [October 2025 Cantina Audit](https://docs-v2-git-prod-ondo-docs.vercel.app/pdf/GM-USDonConverter-BridgeRegistrar-Cantina-10-06-2025.pdf) | Spearbit | Audit | 2025-10 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [September 2025 FYEO Audit](https://docs-v2-git-prod-ondo-docs.vercel.app/pdf/GM-Solana-FEYO-09-08-2025.pdf) | Spearbit | Audit | 2025-09 | fresh | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [July 2025 Cyfrin Audit](https://docs-v2-git-prod-ondo-docs.vercel.app/pdf/2025-07-14-cyfrin-ondo-global-markets-v2.0.pdf) | Cyfrin | Audit | 2025-07 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 16 | high |
| [June 2025 Spearbit Audit](https://docs-v2-git-prod-ondo-docs.vercel.app/pdf/report-cantinacode-ondo-0224-2.pdf) | Spearbit | Audit | 2025-07 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 17 | high |
| [March 2025 Spearbit Audit](https://cantina.xyz/portfolio/fb329103-8bd1-45ac-91d8-4f75e1abf812) | Spearbit | Audit | 2025-03 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 9 | medium |
| [February 2025 Halborn Audit](https://docs-v2-git-prod-ondo-docs.vercel.app/pdf/Ondo-Halborn-Audit-Feb-2025.pdf) | Halborn | Audit | 2025-02 | aging | Direct | contract_name | matched | 3 | 1 | 0 | 16 | high |
| [April 2024 Code4rena Audit](https://code4rena.com/reports/2024-03-ondo-finance) | Code4rena | Contest | 2024-03 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [April 2024 Cyfrin Audit](https://docs-v2-git-prod-ondo-docs.vercel.app/pdf/Ondo-Cyfrin-Audit-April-2024.pdf) | Cyfrin | Audit | 2024-04 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |
| [September 2023 Code4rena Audit](https://code4rena.com/reports/2023-09-ondo) | Code4rena | Contest | 2023-09 | stale | Direct | contract_name | matched | 2 | 1 | 0 | 4 | high |
| [August 2023 Zokyo Audit](https://docs-v2-git-prod-ondo-docs.vercel.app/pdf/Ondo-Zokyo-Audit-August-2023.pdf) | Code4rena | Contest | 2023-08 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 30 | high |
| [April 2023 NetherMind Audit](https://docs-v2-git-prod-ondo-docs.vercel.app/pdf/Ondo-NetherMind-Audit-April-2023.pdf) | Code4rena | Contest | 2023-04 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |
| [January 2023 Code4rena Audit](https://code4rena.com/reports/2023-01-ondo) | Code4rena | Contest | 2023-01 | stale | Direct | contract_name | matched | 2 | 1 | 0 | 18 | high |
| [July 2024 Halborn Audit (additional module)](https://docs-v2-git-prod-ondo-docs.vercel.app/pdf/Ondo-Halborn-Additional-Aura-Module-Audit-June-2024.pdf) | Halborn | Audit | 2024-07 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [June 2024 Halborn Audit](https://docs-v2-git-prod-ondo-docs.vercel.app/pdf/Ondo-Halborn-Audit-June-2024.pdf) | Halborn | Audit | 2024-06 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [May 2022 ABDK Audit](https://docs-v2-git-prod-ondo-docs.vercel.app/pdf/Ondo-ABDK-Audit-October-2022.pdf) | ABDK | Audit | 2022-05 | stale | Direct | contract_name | matched | 1 | 0 | 0 | 26 | high |
| [January 2022 Quantstamp Audit](https://docs-v2-git-prod-ondo-docs.vercel.app/pdf/Ondo-Quantstamp-Audit-January_2022.pdf) | Quantstamp | Audit | 2022-01 | stale | Direct | contract_name | matched | 1 | 0 | 0 | 25 | high |
| [September 2021 Quantstamp Audit](https://docs-v2-git-prod-ondo-docs.vercel.app/pdf/Ondo-Quantstamp-Audit-September_2021.pdf) | Quantstamp | Audit | 2021-09 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [May 2021 Peckshield Audit](https://docs-v2-git-prod-ondo-docs.vercel.app/pdf/Ondo-Peckshield-Audit-May_2021.pdf) | PeckShield | Audit | 2021-05 | stale | Direct | contract_name | matched | 1 | 0 | 0 | 6 | high |
| [April 2021 Certik Audit](https://docs-v2-git-prod-ondo-docs.vercel.app/pdf/Ondo-Certik-Audit-April_2021.pdf) | CertiK | Audit | 2021-04 | stale | Direct | contract_name | matched | 1 | 0 | 0 | 12 | high |
| [- [Audits]()](https://ondo-finance.gitbook.io/ondo-finance-users/architecture/audits.md) | unknown | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [Ondo Quantstamp Audit September 2021.pdf](https://2626940135-files.gitbook.io/~/files/v0/b/gitbook-legacy-files/o/assets%2F-MaFJpOcvUFsdZPcbjYl%2F-MkemwoXv45o-QyPb6Z6%2F-MkenlI2MZZkbzwrFKdT%2FOndo%20Quantstamp%20Audit%20September%202021.pdf) | Quantstamp | Audit | 2021-09 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [Ondo Peckshield Audit May_2021.pdf](https://2626940135-files.gitbook.io/~/files/v0/b/gitbook-legacy-files/o/assets%2F-MaFJpOcvUFsdZPcbjYl%2F-MkemwoXv45o-QyPb6Z6%2F-Mkenx8CYnEwiqHSa7AO%2FOndo%20Peckshield%20Audit%20May_2021.pdf) | PeckShield | Audit | 2021-05 | stale | Direct | contract_name | matched | 1 | 0 | 0 | 6 | high |
| [Ondo_Certik_Audit_April_2021 (2).pdf](https://2626940135-files.gitbook.io/~/files/v0/b/gitbook-legacy-files/o/assets%2F-MaFJpOcvUFsdZPcbjYl%2F-MkemwoXv45o-QyPb6Z6%2F-MkenzUoS6gy1eVNHwlY%2FOndo_Certik_Audit_April_2021%20(2).pdf) | CertiK | Audit | 2021-04 | stale | Direct | contract_name | matched | 1 | 0 | 0 | 12 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [17920] DL audit link — no match: The provided text is a CertiK Skynet project insight page, not an audit report. It contains no scope section, contract names, or audit date. The only contract address mentioned is 0xfaba6f8e4a5e8ab82f62fe7c39859fa577269be3, but it is not listed as an audited contract in a scope table.
- [17921] Active Bug Bounty Program — no match: The document is a bug bounty program page, not an audit report. It does not list specific contracts in scope; it only references previous audits and general assets. No contract names or audit date could be extracted.
- [17922] February 2026 Cantina Audit — no match: Scope section explicitly lists 6 files under contracts/ directory. Audit date is February 6, 2026 from the cover page.
- [17923] December 2025 Zellic Audit — no match: The scope section lists only the Solana program 'ondo-gm' from the repository 'gm-solana'. No individual contract files are named; the program is the sole target.
- [17924] December 2025 Cantina Audit — no match: Extracted contract names from the scope section listing state files. Audit date from cover page.
- [17925] December 2025 Cantina Audit — no match: Scope section explicitly lists three contracts under contracts/ directory.
- [17926] November 2025 Cantina Audit — no match: Scope section explicitly lists two contracts: ISyntheticSharesOracle.sol and SyntheticSharesOracle.sol. Audit date from cover page.
- [17927] November 2025 FYEO Audit — no match: No explicit scope section; contracts inferred from findings and file paths. Audit date from report header.
- [17928] October 2025 Cantina Audit — no match: Scope explicitly mentions USDonConverter.sol and BridgeRegistrar.sol from rwa-internal repo.
- [17929] September 2025 FYEO Audit — no match: The report is a security review update that does not list specific contracts in scope. It mentions file paths (e.g., programs/ondo-finance/src/instructions/admin_operations.rs) but no contract names are explicitly stated as being audited.
- [17930] July 2025 Cyfrin Audit — no match: Scope section explicitly lists all files under contracts/globalMarkets. Additional contracts (BaseRWAManager, OndoRateLimiter) are referenced in findings but not in scope; they are included as they are part of the audited codebase.
- [17931] June 2025 Spearbit Audit — no match: Extracted contract names from findings context and file paths. Audit date from report cover page.
- [17932] March 2025 Spearbit Audit — no match: No explicit scope section found; contracts extracted from findings and file paths mentioned in the report.
- [17933] February 2025 Halborn Audit — matched: Scope section lists contracts in scope; additional contracts referenced in findings are also included.
- [17934] April 2024 Code4rena Audit — no match: Scope section lists 3 smart contracts; extracted OUSGInstantManager and rOUSG from file paths, ROUSG from contract definition.
- [17935] April 2024 Cyfrin Audit — no match: All five contracts listed in the Audit Scope section of the report.
- [17936] September 2023 Code4rena Audit — matched: Extracted 6 contracts from scope section and file paths. Audit date from report header.
- [17937] August 2023 Zokyo Audit — no match: Extracted contract names from the scope section listing files and directories. The audit date is from the cover page: 'August 10th 2023'.
- [17938] April 2023 NetherMind Audit — no match: Four contracts explicitly listed in 'Audited Files' table and described in system overview.
- [17939] January 2023 Code4rena Audit — matched: Extracted 20 contract names from the scope description and file paths mentioned in the report. The audit date is from the report title page.
- [17940] July 2024 Halborn Audit (additional module) — no match: The audit scope is a Cosmos SDK module named 'aura' located in the 'x/aura' directory. No individual contract files are listed; the module is the scope item.
- [17941] June 2024 Halborn Audit — no match: The audit scope is a Cosmos SDK module named 'aura' (repository 'aura', path 'x/aura'). No individual smart contract files are listed; the scope is the entire module. The audit date range is June 3-21, 2024, so the end date is used.
- [17942] May 2022 ABDK Audit — matched: Extracted from 'Project scope' section listing files and interfaces.
- [17943] January 2022 Quantstamp Audit — matched: Extracted contract names from the appendix file signatures and findings sections. The audit date is from the re-audit date (January 25th 2022) mentioned in the changelog and executive summary.
- [17944] September 2021 Quantstamp Audit — no match: Audit report for Ondo Finance V2. Scope explicitly includes SushiStakingV2Strategy.sol and AlchemixUserReward.sol as per file signatures and findings. Other contracts mentioned (e.g., AllPairVault, TrancheToken) are part of the codebase but not explicitly listed as in-scope for this audit; only the two strategy contracts are consistently referenced as audited targets.
- [17945] May 2021 Peckshield Audit — matched: Contracts extracted from findings targets and descriptions. No explicit scope section found, but contracts are clearly audited.
- [17946] April 2021 Certik Audit — matched: Extracted from the 'Files In Scope' table and the findings sections. The audit date is from the cover page.
- [17947] - [Audits]() — no match: The document is an index page listing audit reports from Quantstamp, Peckshield, and Certik, but does not contain the actual audit reports or any contract names in scope.
- [17948] Ondo Quantstamp Audit September 2021.pdf — no match: Audit report for Ondo Finance V2. Scope explicitly includes SushiStakingV2Strategy.sol and AlchemixUserReward.sol as per file signatures and findings sections. Other contracts mentioned (e.g., AllPairVault, TrancheToken) are part of the codebase but not explicitly listed as in-scope for this audit; they appear in test results and coverage but not in the scope definition.
- [17949] Ondo Peckshield Audit May_2021.pdf — matched: Contracts extracted from findings targets and descriptions. No explicit scope table, but contracts are clearly audited.
- [17950] Ondo_Certik_Audit_April_2021 (2).pdf — matched: Extracted from the 'Files In Scope' table and the findings sections. The audit date is explicitly stated as 'Delivery Date April 19th, 2021'.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| February 2026 Cantina Audit | IGMTokenManager | unmatched — not counted | — | listed in scope | no |
| February 2026 Cantina Audit | GMTokenLimitOrder | ambiguous — not counted | 0xf0bc39… (alternative) `0xf0bc39fc911f6437c84d16188dd8294f7110f451` — liveness: live (current_address_book_code)<br>0x96b525… (alternative) `0x96b525b1a93f31e65f4aaf18c53842ed28525d48` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| February 2026 Cantina Audit | IGMTokenLimitOrder | unmatched — not counted | — | listed in scope | no |
| February 2026 Cantina Audit | LimitOrderLib | unmatched — not counted | — | listed in scope | no |
| February 2026 Cantina Audit | LimitOrderStorage | unmatched — not counted | — | listed in scope | no |
| February 2026 Cantina Audit | IOndoIDRegistry | unmatched — not counted | — | listed in scope | no |
| December 2025 Zellic Audit | ondo-gm | unmatched — not counted | — | listed in scope as program 'ondo-gm' | no |
| December 2025 Cantina Audit | GmTokenManagerState | unmatched — not counted | — | listed in scope | no |
| December 2025 Cantina Audit | USDonManagerState | unmatched — not counted | — | listed in scope | no |
| December 2025 Cantina Audit | TokenLimit | unmatched — not counted | — | listed in scope | no |
| December 2025 Cantina Audit | Roles | unmatched — not counted | — | listed in scope | no |
| December 2025 Cantina Audit | Attestation | unmatched — not counted | — | listed in scope | no |
| December 2025 Cantina Audit | OndoUser | unmatched — not counted | — | listed in scope | no |
| December 2025 Cantina Audit | OracleSanityCheck | unmatched — not counted | — | listed in scope | no |
| December 2025 Cantina Audit | Whitelist | unmatched — not counted | — | listed in scope | no |
| December 2025 Cantina Audit | IGMTokenManager | unmatched — not counted | — | listed in scope | no |
| December 2025 Cantina Audit | GMTokenLimitOrder | ambiguous — not counted | 0xf0bc39… (alternative) `0xf0bc39fc911f6437c84d16188dd8294f7110f451` — liveness: live (current_address_book_code)<br>0x96b525… (alternative) `0x96b525b1a93f31e65f4aaf18c53842ed28525d48` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| December 2025 Cantina Audit | IGMTokenLimitOrderErrors | unmatched — not counted | — | listed in scope | no |
| November 2025 Cantina Audit | ISyntheticSharesOracle | unmatched — not counted | — | listed in scope section | no |
| November 2025 Cantina Audit | SyntheticSharesOracle | ambiguous — not counted | 0xf4fd8a… (alternative) `0xf4fd8a1b412633e10527454137a29db7aa35f15e` — liveness: live (current_address_book_code)<br>SyntheticSharesOracle (alternative) `0x9bc39db6fbb44b91a48b8d5a6c208b82b1741be6` — deployed 2026-01-15 23:55:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| November 2025 FYEO Audit | token_manager | unmatched — not counted | — | mentioned in findings FYEO-ONDO-01, FYEO-ONDO-02, FYEO-ONDO-03, FYEO-ONDO-04 | no |
| November 2025 FYEO Audit | initialize_token_limit | unmatched — not counted | — | mentioned in finding FYEO-ONDO-06 | no |
| November 2025 FYEO Audit | constants | unmatched — not counted | — | mentioned in finding FYEO-ONDO-05 | no |
| October 2025 Cantina Audit | USDonConverter | unmatched — not counted | — | listed in scope section | no |
| October 2025 Cantina Audit | BridgeRegistrar | unmatched — not counted | — | listed in scope section | no |
| July 2025 Cyfrin Audit | OndoComplianceGMClientUpgradeable | unmatched — not counted | — | listed in scope | no |
| July 2025 Cyfrin Audit | OndoComplianceGMView | unmatched — not counted | — | listed in scope | no |
| July 2025 Cyfrin Audit | IssuanceHours | unmatched — not counted | — | listed in scope | no |
| July 2025 Cyfrin Audit | onUSDManager | unmatched — not counted | — | listed in scope | no |
| July 2025 Cyfrin Audit | OndoSanityCheckOracle | unmatched — not counted | — | listed in scope | no |
| July 2025 Cyfrin Audit | GMTokenFactory | unmatched — not counted | — | listed in scope | no |
| July 2025 Cyfrin Audit | GMTokenManager | ambiguous — not counted | GMTokenManager (alternative) `0x2c158bc456e027b2affccadf1bdbd9f5fc4c5c8c` — deployed 2025-07-15 21:55:59+03 — liveness: live (current_address_book_code)<br>0x91f8af… (alternative) `0x91f8aff3738825e8eb16fc6f6b1a7a4647bdb299` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| July 2025 Cyfrin Audit | TokenPauseManager | unmatched — not counted | — | listed in scope | no |
| July 2025 Cyfrin Audit | TokenPauseManagerClientUpgradeable | unmatched — not counted | — | listed in scope | no |
| July 2025 Cyfrin Audit | BridgeRegistrarStub | unmatched — not counted | — | listed in scope | no |
| July 2025 Cyfrin Audit | GMToken | unmatched — not counted | — | listed in scope | no |
| July 2025 Cyfrin Audit | onUSD | unmatched — not counted | — | listed in scope | no |
| July 2025 Cyfrin Audit | onUSDFactory | unmatched — not counted | — | listed in scope | no |
| July 2025 Cyfrin Audit | TokenManagerRegistrar | unmatched — not counted | — | listed in scope | no |
| July 2025 Cyfrin Audit | BaseRWAManager | unmatched — not counted | — | mentioned in findings as inherited contract | no |
| July 2025 Cyfrin Audit | OndoRateLimiter | unmatched — not counted | — | mentioned in findings as referenced contract | no |
| June 2025 Spearbit Audit | GMToken | unmatched — not counted | — | mentioned in findings context | no |
| June 2025 Spearbit Audit | GMTokenManager | ambiguous — not counted | GMTokenManager (alternative) `0x2c158bc456e027b2affccadf1bdbd9f5fc4c5c8c` — deployed 2025-07-15 21:55:59+03 — liveness: live (current_address_book_code)<br>0x91f8af… (alternative) `0x91f8aff3738825e8eb16fc6f6b1a7a4647bdb299` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| June 2025 Spearbit Audit | IGMTokenManager | unmatched — not counted | — | mentioned in findings context | no |
| June 2025 Spearbit Audit | OndoComplianceGMView | unmatched — not counted | — | mentioned in findings context | no |
| June 2025 Spearbit Audit | IssuanceHours | unmatched — not counted | — | mentioned in findings context | no |
| June 2025 Spearbit Audit | onUSD | unmatched — not counted | — | mentioned in findings context | no |
| June 2025 Spearbit Audit | onUSDFactory | unmatched — not counted | — | mentioned in findings context | no |
| June 2025 Spearbit Audit | IonUSDManagerEvents | unmatched — not counted | — | mentioned in findings context | no |
| June 2025 Spearbit Audit | OndoSanityCheckOracle | unmatched — not counted | — | mentioned in findings context | no |
| June 2025 Spearbit Audit | GMTokenFactory | unmatched — not counted | — | mentioned in findings context | no |
| June 2025 Spearbit Audit | IGMTokenManagerEvents | unmatched — not counted | — | mentioned in findings context | no |
| June 2025 Spearbit Audit | TokenPauseManagerClientUpgradeable | unmatched — not counted | — | mentioned in findings context | no |
| June 2025 Spearbit Audit | OndoComplianceGMClientUpgradeable | unmatched — not counted | — | mentioned in findings context | no |
| June 2025 Spearbit Audit | onUSDManager | unmatched — not counted | — | mentioned in findings context | no |
| June 2025 Spearbit Audit | TokenManagerRegistrar | unmatched — not counted | — | mentioned in findings context | no |
| June 2025 Spearbit Audit | BaseRWAManager | unmatched — not counted | — | mentioned in findings context | no |
| June 2025 Spearbit Audit | SimpleVerifier | unmatched — not counted | — | mentioned in findings context | no |
| March 2025 Spearbit Audit | OndoFees | unmatched — not counted | — | mentioned in findings and scope | no |
| March 2025 Spearbit Audit | rOUSG | unmatched — not counted | — | mentioned in findings | no |
| March 2025 Spearbit Audit | OUSG | ambiguous — not counted | 0xba11c5… (alternative) `0xba11c5effa33c4d6f8f593cfa394241cfe925811` — liveness: live (current_address_book_code)<br>CashKYCSenderReceiver (proxy) (alternative) `0x1b19c19393e2d034d8ff31ff34c81252fcbbee92` — deployed 2022-12-21 19:16:23+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| March 2025 Spearbit Audit | BuidlUSDCSource | unmatched — not counted | — | mentioned in findings | no |
| March 2025 Spearbit Audit | PSMSource | unmatched — not counted | — | mentioned in findings | no |
| March 2025 Spearbit Audit | OndoTokenRouter | unmatched — not counted | — | mentioned in findings | no |
| March 2025 Spearbit Audit | PauseManager | unmatched — not counted | — | mentioned in findings | no |
| March 2025 Spearbit Audit | IPauseManager | unmatched — not counted | — | mentioned in findings | no |
| March 2025 Spearbit Audit | ContinuousPriceOracle | unmatched — not counted | — | mentioned in findings | no |
| February 2025 Halborn Audit | OUSG_InstantManager | own contract | OUSG_InstantManager (selected) `0x93358db73b6cd4b98d89c8f5f230e81a95c2643a` — deployed 2025-03-28 02:06:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| February 2025 Halborn Audit | BaseRWAManager | unmatched — not counted | — | mentioned in scope and findings | no |
| February 2025 Halborn Audit | OndoCompliance | unmatched — not counted | — | mentioned in findings | no |
| February 2025 Halborn Audit | OndoFees | unmatched — not counted | — | mentioned in findings | no |
| February 2025 Halborn Audit | OndoIDRegistry | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0xcf6958d69d535fd03bd6df3f4fe6cdcd127d97df` — deployed 2025-03-28 01:52:59+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| February 2025 Halborn Audit | OndoIDRegistryView | unmatched — not counted | — | mentioned in findings | no |
| February 2025 Halborn Audit | OndoRateLimiter | unmatched — not counted | — | mentioned in findings | no |
| February 2025 Halborn Audit | PauseManager | unmatched — not counted | — | mentioned in findings | no |
| February 2025 Halborn Audit | UsdsPSMRecipient | unmatched — not counted | — | mentioned in findings | no |
| February 2025 Halborn Audit | BuidlUSDCSource | unmatched — not counted | — | mentioned in findings | no |
| February 2025 Halborn Audit | PSMSource | unmatched — not counted | — | mentioned in findings | no |
| February 2025 Halborn Audit | OndoTokenRouter | unmatched — not counted | — | mentioned in findings | no |
| February 2025 Halborn Audit | OndoOracle | own contract | OndoOracle (selected) `0x9cad45a8bf0ed41ff33074449b357c7a1fab4094` — deployed 2025-03-28 01:58:23+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| February 2025 Halborn Audit | AbstractRWAOracleWrapper | unmatched — not counted | — | mentioned in findings | no |
| February 2025 Halborn Audit | BasicRecipient | unmatched — not counted | — | mentioned in findings | no |
| February 2025 Halborn Audit | BasicSource | unmatched — not counted | — | mentioned in findings | no |
| February 2025 Halborn Audit | SusdsSource | unmatched — not counted | — | mentioned in findings | no |
| February 2025 Halborn Audit | IBaseRWAManagerEvents | unmatched — not counted | — | mentioned in findings | no |
| February 2025 Halborn Audit | AdminSubscriptionChecker | unmatched — not counted | — | mentioned in findings | no |
| April 2024 Code4rena Audit | OUSGInstantManager | unmatched — not counted | — | listed in scope | no |
| April 2024 Code4rena Audit | rOUSG | unmatched — not counted | — | contract name in source | no |
| April 2024 Cyfrin Audit | OUSGInstantManager | unmatched — not counted | — | listed in scope | no |
| April 2024 Cyfrin Audit | rOUSG | unmatched — not counted | — | listed in scope | no |
| April 2024 Cyfrin Audit | InvestorBasedRateLimiter | unmatched — not counted | — | listed in scope | no |
| April 2024 Cyfrin Audit | InstantMintTimeBasedRateLimiter | unmatched — not counted | — | listed in scope | no |
| April 2024 Cyfrin Audit | KYCRegistryClientUpgradeable | unmatched — not counted | — | listed in scope | no |
| September 2023 Code4rena Audit | SourceBridge | unmatched — not counted | — | listed in scope | no |
| September 2023 Code4rena Audit | DestinationBridge | unmatched — not counted | — | listed in scope | no |
| September 2023 Code4rena Audit | rUSDY | own proxy deployment | rUSDY (proxy) (selected) `0xaf37c1167910ebc994e266949387d2c7c326b879` — deployed 2024-05-01 01:54:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| September 2023 Code4rena Audit | rUSDYFactory | unmatched — not counted | — | listed in scope | no |
| September 2023 Code4rena Audit | RWADynamicOracle | own contract | RWADynamicOracle (selected) `0xa0219aa5b31e65bc920b5b6dfb8edf0988121de0` — deployed 2023-11-02 17:36:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| September 2023 Code4rena Audit | IRWADynamicOracle | unmatched — not counted | — | listed in scope | no |
| August 2023 Zokyo Audit | InstantMintTimeBasedRateLimiter | unmatched — not counted | — | listed in scope | no |
| August 2023 Zokyo Audit | RWAHubInstantMints | unmatched — not counted | — | listed in scope | no |
| August 2023 Zokyo Audit | Pricer | unmatched — not counted | — | listed in scope | no |
| August 2023 Zokyo Audit | RWAHubOffChainRedemptions | unmatched — not counted | — | listed in scope | no |
| August 2023 Zokyo Audit | usdy | ambiguous — not counted | 0x96f6ef… (alternative) `0x96f6ef951840721adbf46ac996b59e0235cb985c` — liveness: live (current_address_book_code)<br>TokenProxy (proxy) (alternative) `0x5be26527e817998a7206475496fde1e68957c5a6` — deployed 2023-10-24 20:49:14+03 — liveness: live (current_address_book_code)<br>0x54cd90… (alternative) `0x54cd901491aef397084453f4372b93c33260e2a6` — liveness: live (current_address_book_code)<br>USDY (proxy) (alternative) `0x35e050d3c0ec2d29d269a8ecea763a183bdf9a9d` — deployed 2024-08-07 22:02:37+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| August 2023 Zokyo Audit | RWAHub | unmatched — not counted | — | listed in scope | no |
| August 2023 Zokyo Audit | ommf | unmatched — not counted | — | listed in scope | no |
| August 2023 Zokyo Audit | ommfManager | unmatched — not counted | — | listed in scope | no |
| August 2023 Zokyo Audit | ommf_token | unmatched — not counted | — | listed in scope | no |
| August 2023 Zokyo Audit | wrappedOMMF | unmatched — not counted | — | listed in scope | no |
| August 2023 Zokyo Audit | ommf_factory | unmatched — not counted | — | listed in scope | no |
| August 2023 Zokyo Audit | wOMMF | unmatched — not counted | — | listed in scope | no |
| August 2023 Zokyo Audit | wOMMF_factory | unmatched — not counted | — | listed in scope | no |
| August 2023 Zokyo Audit | ISanctionsListClient | unmatched — not counted | — | listed in scope | no |
| August 2023 Zokyo Audit | SanctionsListClient | unmatched — not counted | — | listed in scope | no |
| August 2023 Zokyo Audit | SanctionsListClientUpgradeable | unmatched — not counted | — | listed in scope | no |
| August 2023 Zokyo Audit | USDYFactory | unmatched — not counted | — | listed in scope | no |
| August 2023 Zokyo Audit | USDYManager | unmatched — not counted | — | listed in scope | no |
| August 2023 Zokyo Audit | allowlist | unmatched — not counted | — | listed in scope | no |
| August 2023 Zokyo Audit | blocklist | ambiguous — not counted | 0xdbd7a7… (alternative) `0xdbd7a7d8807f0c98c9a58f7732f2799c8587e5c6` — liveness: live (current_address_book_code)<br>0xd8c817… (alternative) `0xd8c8174691d936e2c80114ec449037b13421b0a8` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| August 2023 Zokyo Audit | AllowlistClient | unmatched — not counted | — | listed in scope | no |
| August 2023 Zokyo Audit | AllowlistFactory | unmatched — not counted | — | listed in scope | no |
| August 2023 Zokyo Audit | AllowlistClientUpgradeable | unmatched — not counted | — | listed in scope | no |
| August 2023 Zokyo Audit | AllowlistUpgradeable | unmatched — not counted | — | listed in scope | no |
| August 2023 Zokyo Audit | BlocklistClient | unmatched — not counted | — | listed in scope | no |
| August 2023 Zokyo Audit | BlocklistClientUpgradeable | unmatched — not counted | — | listed in scope | no |
| August 2023 Zokyo Audit | ommf_rebaseSetter | unmatched — not counted | — | listed in scope | no |
| August 2023 Zokyo Audit | ousgManager | unmatched — not counted | — | listed in scope | no |
| August 2023 Zokyo Audit | RWAHubNonStableInstantMints | unmatched — not counted | — | listed in scope | no |
| August 2023 Zokyo Audit | IRWAHubNonStableInstantMint | unmatched — not counted | — | listed in scope | no |
| April 2023 NetherMind Audit | FluxOracle | unmatched — not counted | — | listed in scope table and system overview | no |
| April 2023 NetherMind Audit | RWAOracleRateCheck | unmatched — not counted | — | listed in scope table and system overview | no |
| April 2023 NetherMind Audit | RWAOracleExternalComparisonCheck | unmatched — not counted | — | listed in scope table and system overview | no |
| April 2023 NetherMind Audit | fTokenOracle | unmatched — not counted | — | listed in scope table and system overview | no |
| January 2023 Code4rena Audit | CashManager | own contract | 0x6b7443… (selected) `0x6b7443808acfcd48f1de212c2557462fa86ee945` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| January 2023 Code4rena Audit | KYCRegistry | unmatched — not counted | — | listed in scope | no |
| January 2023 Code4rena Audit | CTokenModified | unmatched — not counted | — | listed in scope | no |
| January 2023 Code4rena Audit | CTokenCash | unmatched — not counted | — | listed in scope | no |
| January 2023 Code4rena Audit | CCash | unmatched — not counted | — | listed in scope | no |
| January 2023 Code4rena Audit | CErc20 | unmatched — not counted | — | listed in scope | no |
| January 2023 Code4rena Audit | CCashDelegate | unmatched — not counted | — | listed in scope | no |
| January 2023 Code4rena Audit | CTokenDelegate | unmatched — not counted | — | listed in scope | no |
| January 2023 Code4rena Audit | CashFactory | unmatched — not counted | — | listed in scope | no |
| January 2023 Code4rena Audit | CashKYCSenderFactory | unmatched — not counted | — | listed in scope | no |
| January 2023 Code4rena Audit | CashKYCSenderReceiverFactory | unmatched — not counted | — | listed in scope | no |
| January 2023 Code4rena Audit | OndoPriceOracle | unmatched — not counted | — | listed in scope | no |
| January 2023 Code4rena Audit | OndoPriceOracleV2 | unmatched — not counted | — | listed in scope | no |
| January 2023 Code4rena Audit | JumpRateModelV2 | unmatched — not counted | — | listed in scope | no |
| January 2023 Code4rena Audit | Cash | unmatched — not counted | — | listed in scope | no |
| January 2023 Code4rena Audit | CashKYCSender | unmatched — not counted | — | listed in scope | no |
| January 2023 Code4rena Audit | CashKYCSenderReceiver | own proxy deployment | CashKYCSenderReceiver (proxy) (selected) `0x1b19c19393e2d034d8ff31ff34c81252fcbbee92` — deployed 2022-12-21 19:16:23+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| January 2023 Code4rena Audit | cErc20ModifiedDelegator | unmatched — not counted | — | listed in scope | no |
| January 2023 Code4rena Audit | CTokenInterfacesModifiedCash | unmatched — not counted | — | listed in scope | no |
| January 2023 Code4rena Audit | CTokenInterfacesModified | unmatched — not counted | — | listed in scope | no |
| July 2024 Halborn Audit (additional module) | aura | unmatched — not counted | — | Scope section: Items in scope: x/aura | no |
| June 2024 Halborn Audit | aura | unmatched — not counted | — | listed in scope as repository 'aura' and items in scope 'x/aura' | no |
| May 2022 ABDK Audit | OndoRegistryClientInitializable | unmatched — not counted | — | listed in scope | no |
| May 2022 ABDK Audit | OndoRegistryClient | unmatched — not counted | — | listed in scope | no |
| May 2022 ABDK Audit | Registry | own contract | 0x7cd852… (selected) `0x7cd852c0d7613aa869e632929560f310d4059ac1` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| May 2022 ABDK Audit | Multiex | unmatched — not counted | — | listed in scope | no |
| May 2022 ABDK Audit | IMultiex | unmatched — not counted | — | listed in scope | no |
| May 2022 ABDK Audit | IPairVault | unmatched — not counted | — | listed in scope | no |
| May 2022 ABDK Audit | IRegistry | unmatched — not counted | — | listed in scope | no |
| May 2022 ABDK Audit | IRollover | unmatched — not counted | — | listed in scope | no |
| May 2022 ABDK Audit | ISASStrategy | unmatched — not counted | — | listed in scope | no |
| May 2022 ABDK Audit | ISingleAssetVault | unmatched — not counted | — | listed in scope | no |
| May 2022 ABDK Audit | IStrategy | unmatched — not counted | — | listed in scope | no |
| May 2022 ABDK Audit | ITrancheToken | unmatched — not counted | — | listed in scope | no |
| May 2022 ABDK Audit | IWETH | unmatched — not counted | — | listed in scope | no |
| May 2022 ABDK Audit | OndoLibrary | unmatched — not counted | — | listed in scope | no |
| May 2022 ABDK Audit | SAStrategyAllPairVault | unmatched — not counted | — | listed in scope | no |
| May 2022 ABDK Audit | SAStrategyConvex | unmatched — not counted | — | listed in scope | no |
| May 2022 ABDK Audit | SAStrategyRollover | unmatched — not counted | — | listed in scope | no |
| May 2022 ABDK Audit | SingleAssetVault | unmatched — not counted | — | listed in scope | no |
| May 2022 ABDK Audit | AConvexAutocompounder | unmatched — not counted | — | listed in scope | no |
| May 2022 ABDK Audit | BalancerStrategy | unmatched — not counted | — | listed in scope | no |
| May 2022 ABDK Audit | BasePairLPStrategy | unmatched — not counted | — | listed in scope | no |
| May 2022 ABDK Audit | ConvexAutocompounderStrategy | unmatched — not counted | — | listed in scope | no |
| May 2022 ABDK Audit | IBalancerVault | unmatched — not counted | — | listed in scope | no |
| May 2022 ABDK Audit | IBaseRewardPool | unmatched — not counted | — | listed in scope | no |
| May 2022 ABDK Audit | IConvexBooster | unmatched — not counted | — | listed in scope | no |
| May 2022 ABDK Audit | ICurve_2 | unmatched — not counted | — | listed in scope | no |
| May 2022 ABDK Audit | ICurve_3 | unmatched — not counted | — | listed in scope | no |
| January 2022 Quantstamp Audit | AllPairVault | unmatched — not counted | — | listed in scope and findings | no |
| January 2022 Quantstamp Audit | OndoRegistryClient | unmatched — not counted | — | listed in scope | no |
| January 2022 Quantstamp Audit | OndoRegistryClientInitializable | unmatched — not counted | — | listed in scope | no |
| January 2022 Quantstamp Audit | Registry | own contract | 0x7cd852… (selected) `0x7cd852c0d7613aa869e632929560f310d4059ac1` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| January 2022 Quantstamp Audit | RolloverVault | unmatched — not counted | — | listed in scope and findings | no |
| January 2022 Quantstamp Audit | SampleFeeCollector | unmatched — not counted | — | listed in scope | no |
| January 2022 Quantstamp Audit | TrancheToken | unmatched — not counted | — | listed in scope and findings | no |
| January 2022 Quantstamp Audit | Ondo | unmatched — not counted | — | listed in scope and findings | no |
| January 2022 Quantstamp Audit | StakingPools | unmatched — not counted | — | listed in scope | no |
| January 2022 Quantstamp Audit | OndoLibrary | unmatched — not counted | — | listed in scope | no |
| January 2022 Quantstamp Audit | AlchemixUserReward | unmatched — not counted | — | listed in scope and findings | no |
| January 2022 Quantstamp Audit | UniswapStrategy | unmatched — not counted | — | listed in scope and findings | no |
| January 2022 Quantstamp Audit | SushiStrategyLP | unmatched — not counted | — | listed in scope and findings | no |
| January 2022 Quantstamp Audit | SushiStakingV2Strategy | unmatched — not counted | — | listed in scope and findings | no |
| January 2022 Quantstamp Audit | EdenStrategy | unmatched — not counted | — | listed in scope and findings | no |
| January 2022 Quantstamp Audit | DopexStrategy | unmatched — not counted | — | listed in scope and findings | no |
| January 2022 Quantstamp Audit | BondStrategy | unmatched — not counted | — | listed in scope and findings | no |
| January 2022 Quantstamp Audit | AlchemixLPStrategy | unmatched — not counted | — | listed in scope and findings | no |
| January 2022 Quantstamp Audit | BasePairLPStrategy | unmatched — not counted | — | listed in scope | no |
| January 2022 Quantstamp Audit | AUniswapStrategy | unmatched — not counted | — | listed in scope and findings | no |
| January 2022 Quantstamp Audit | ASushiswapStrategy | unmatched — not counted | — | listed in scope | no |
| January 2022 Quantstamp Audit | QuickSwapLibrary | unmatched — not counted | — | listed in scope | no |
| January 2022 Quantstamp Audit | QuickswapStrategyLP | unmatched — not counted | — | listed in scope | no |
| January 2022 Quantstamp Audit | PancakeSwapLibrary | unmatched — not counted | — | listed in scope | no |
| January 2022 Quantstamp Audit | PancakeStrategyLP | unmatched — not counted | — | listed in scope | no |
| January 2022 Quantstamp Audit | PancakeStrategy | unmatched — not counted | — | listed in scope | no |
| September 2021 Quantstamp Audit | SushiStakingV2Strategy | unmatched — not counted | — | listed in scope and findings | no |
| September 2021 Quantstamp Audit | AlchemixUserReward | unmatched — not counted | — | listed in scope and findings | no |
| May 2021 Peckshield Audit | BasePairLPStrategy | unmatched — not counted | — | Target in finding PVE-001 | no |
| May 2021 Peckshield Audit | Registry | own contract | 0x7cd852… (selected) `0x7cd852c0d7613aa869e632929560f310d4059ac1` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| May 2021 Peckshield Audit | AllPairCCO | unmatched — not counted | — | Target in findings PVE-003, PVE-005, PVE-006 | no |
| May 2021 Peckshield Audit | RolloverCCO | unmatched — not counted | — | Target in findings PVE-010, PVE-011 | no |
| May 2021 Peckshield Audit | TrancheToken | unmatched — not counted | — | Mentioned in description of PVE-002 | no |
| May 2021 Peckshield Audit | UniswapStrategy | unmatched — not counted | — | Mentioned in finding PVE-006 | no |
| May 2021 Peckshield Audit | SushiStrategyLP | unmatched — not counted | — | Target in findings PVE-007, PVE-009 | no |
| April 2021 Certik Audit | AllPairCCO | unmatched — not counted | — | listed in scope table and findings | no |
| April 2021 Certik Audit | OndoRegistryClient | unmatched — not counted | — | listed in scope table and findings | no |
| April 2021 Certik Audit | OndoRegistryClientInitializable | unmatched — not counted | — | listed in scope table and findings | no |
| April 2021 Certik Audit | Registry | own contract | 0x7cd852… (selected) `0x7cd852c0d7613aa869e632929560f310d4059ac1` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| April 2021 Certik Audit | TrancheToken | unmatched — not counted | — | listed in scope table and findings | no |
| April 2021 Certik Audit | IBasicCCO | unmatched — not counted | — | listed in scope table | no |
| April 2021 Certik Audit | IPairCCO | unmatched — not counted | — | listed in scope table | no |
| April 2021 Certik Audit | IRegistry | unmatched — not counted | — | listed in scope table | no |
| April 2021 Certik Audit | IStrategy | unmatched — not counted | — | listed in scope table | no |
| April 2021 Certik Audit | ITrancheToken | unmatched — not counted | — | listed in scope table | no |
| April 2021 Certik Audit | OndoLibrary | unmatched — not counted | — | listed in scope table and findings | no |
| April 2021 Certik Audit | BasePairLPStrategy | unmatched — not counted | — | listed in scope table and findings | no |
| April 2021 Certik Audit | UniswapStrategy | unmatched — not counted | — | listed in scope table and findings | no |
| Ondo Quantstamp Audit September 2021.pdf | SushiStakingV2Strategy | unmatched — not counted | — | Listed in file signatures and findings | no |
| Ondo Quantstamp Audit September 2021.pdf | AlchemixUserReward | unmatched — not counted | — | Listed in file signatures and findings | no |
| Ondo Peckshield Audit May_2021.pdf | BasePairLPStrategy | unmatched — not counted | — | Target in finding PVE-001 | no |
| Ondo Peckshield Audit May_2021.pdf | Registry | own contract | 0x7cd852… (selected) `0x7cd852c0d7613aa869e632929560f310d4059ac1` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Ondo Peckshield Audit May_2021.pdf | AllPairCCO | unmatched — not counted | — | Target in findings PVE-003, PVE-005, PVE-006 | no |
| Ondo Peckshield Audit May_2021.pdf | RolloverCCO | unmatched — not counted | — | Target in findings PVE-010, PVE-011 | no |
| Ondo Peckshield Audit May_2021.pdf | TrancheToken | unmatched — not counted | — | Mentioned in description of PVE-002 | no |
| Ondo Peckshield Audit May_2021.pdf | UniswapStrategy | unmatched — not counted | — | Mentioned in finding PVE-006 | no |
| Ondo Peckshield Audit May_2021.pdf | SushiStrategyLP | unmatched — not counted | — | Target in findings PVE-006, PVE-007, PVE-009 | no |
| Ondo_Certik_Audit_April_2021 (2).pdf | AllPairCCO | unmatched — not counted | — | listed in scope table and findings | no |
| Ondo_Certik_Audit_April_2021 (2).pdf | OndoRegistryClient | unmatched — not counted | — | listed in scope table and findings | no |
| Ondo_Certik_Audit_April_2021 (2).pdf | OndoRegistryClientInitializable | unmatched — not counted | — | listed in scope table and findings | no |
| Ondo_Certik_Audit_April_2021 (2).pdf | Registry | own contract | 0x7cd852… (selected) `0x7cd852c0d7613aa869e632929560f310d4059ac1` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Ondo_Certik_Audit_April_2021 (2).pdf | TrancheToken | unmatched — not counted | — | listed in scope table and findings | no |
| Ondo_Certik_Audit_April_2021 (2).pdf | IBasicCCO | unmatched — not counted | — | listed in scope table | no |
| Ondo_Certik_Audit_April_2021 (2).pdf | IPairCCO | unmatched — not counted | — | listed in scope table | no |
| Ondo_Certik_Audit_April_2021 (2).pdf | IRegistry | unmatched — not counted | — | listed in scope table | no |
| Ondo_Certik_Audit_April_2021 (2).pdf | IStrategy | unmatched — not counted | — | listed in scope table | no |
| Ondo_Certik_Audit_April_2021 (2).pdf | ITrancheToken | unmatched — not counted | — | listed in scope table | no |
| Ondo_Certik_Audit_April_2021 (2).pdf | OndoLibrary | unmatched — not counted | — | listed in scope table | no |
| Ondo_Certik_Audit_April_2021 (2).pdf | BasePairLPStrategy | unmatched — not counted | — | listed in scope table and findings | no |
| Ondo_Certik_Audit_April_2021 (2).pdf | UniswapStrategy | unmatched — not counted | — | listed in scope table and findings | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0x2c158bc456e027b2affccadf1bdbd9f5fc4c5c8c` | GMTokenManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x9bc39db6fbb44b91a48b8d5a6c208b82b1741be6` | SyntheticSharesOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | `0x5be26527e817998a7206475496fde1e68957c5a6` | TokenProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x1f8955e640cbd9abc3c3bb408c9e2e1f5f20dfe6` | USDon | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x05ccbb4b74854f8a067b83475e8c34f5a413d7e1` | USDonManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x35e050d3c0ec2d29d269a8ecea763a183bdf9a9d` | USDY | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xa42613c243b67bf6194ac327795b926b4b491f15` | USDY_InstantManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xe86845788d6e3e5c2393ade1a051ae617d974c09` | USDYc | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 103 |
| upstream | 0 |
| standard_library | 6 |
| needs_review | 19 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 21
- Inherited remapped matches: 0
- Address-book scope dispositions: 13 own (3 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 8 ambiguous, 231 unmatched
- Matched-own operational status: 13 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=25, low=4, medium=2
- Match method counts: unique_name=13

Zero-match audit list:

- [17920] DL audit link
- [17922] February 2026 Cantina Audit
- [17923] December 2025 Zellic Audit
- [17924] December 2025 Cantina Audit
- [17925] December 2025 Cantina Audit
- [17926] November 2025 Cantina Audit
- [17927] November 2025 FYEO Audit
- [17928] October 2025 Cantina Audit
- [17929] September 2025 FYEO Audit
- [17930] July 2025 Cyfrin Audit
- [17931] June 2025 Spearbit Audit
- [17932] March 2025 Spearbit Audit
- [17934] April 2024 Code4rena Audit
- [17935] April 2024 Cyfrin Audit
- [17937] August 2023 Zokyo Audit
- [17938] April 2023 NetherMind Audit
- [17940] July 2024 Halborn Audit (additional module)
- [17941] June 2024 Halborn Audit
- [17944] September 2021 Quantstamp Audit
- [17947] - [Audits]()
- [17948] Ondo Quantstamp Audit September 2021.pdf

Fork inheritance lineage and inherited audits are included when available.
