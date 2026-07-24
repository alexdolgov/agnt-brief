# Agentic Audit Brief: Ondo Finance

## Export Authority

- Production state: **published scope**
- Raw selected rows: 13 across 9 audit(s)
- Eligible audit results: 31 (9 matched; 22 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e40c73181a386361babecc6895e0f6c5587548f92814db09f88491f8b4a38d92`

## Project Overview

- Project: Ondo Finance (`ondo-finance`)
- Website: [https://ondo.finance](https://ondo.finance)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: arbitrum, bsc, ethereum, mantle, polygon, sei
- Contract surface: 291 unique implementations (291 raw deployments)
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
- Outside the address book: 261 discovered implementations shown in the inventory but excluded from coverage (4 third-party/infra; 1 standard proxy/library)
- Proxy deployments represented within implementation groups: 10
- Confirmed-live implementations: 29 of 291 unique; 262 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 6/109
- Verified + Unaudited implementations: 103
- Verified by bytecode match: 0
- Unverified implementations: 182
- Unique implementations: 291
- Raw deployments: 291
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

### ❓ Unverified (182)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x137ffdde73f370e1a2f0f94bd3e347cdd0b71ec2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x14dd822e1b75253525a209e3cc917cd0d54b6cae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x175a6528f23034013f6644171354e2df9306115f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2626fb9debd067b05659a0303db498b1382593f2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x263d65b865bd4b1ac0ff4d21f589f487d6908e4f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2826989983e3a66f0622132d019c2ae173eb6a43` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2889bcd2e5d6141f98106dffa8a66ab21b5c84d6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2c0cd063a3d55f5e15420ff01525b703cca6977d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2ced30744edcf9ede5799eb07a0a29ce4f012a0c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x30ac904273f6e326448a1ffbc2defa371d86125f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x310e14ac744970ff6e6a111392ba7fb69e915a78` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x32ef5c9b4be1462b9e459a64f0a52f6e42f70f42` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x336505ec1bcc1a020eede459f57581725d23465a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x355c78ef949270a32e31174c057562f7469fe831` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3a458cb6d4b2fe00bc2305c37dd7502a807b2092` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3c0417900f5231d448c32c7f4cad40e1efad36fc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3eb6c0f480678e0de35e9d3e7a5527d59d051ac8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3f7fa45fe79184b87e160ec5013344fc2098015d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x41df1cdd31bc5054fdf638f6b0192b1dc28c1a33` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4495a464cbc9f63f6618bf4dd31dbaf312dcb9ef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x449e59b2a2064014cd4ed359c397153ab8f8ffaf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x44cbf4d4db78a48f80d54b61fa1955979f07aefd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x478681587af321e6b055d3b08caf17140b138557` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4a0afacb521e04cbb067a378beb82097c649dea1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x533c5c15e073f56860b3091d7f7414f1cf6d4ae3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x54ac0e5f60ec257385f134d5fa490a00e5ddd17c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5577cf81459b742dbfe757f98cb3ed4ed8e7df30` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5c8ad93f75805fb504fac767378a170420671c32` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5e95db2dd76ddeeab34a4d510db5fc6e6c45d4fa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5f7d50242206993a4476c76b21950219a4ed2c91` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x60eec879cd31e47347058048433d9e381f510606` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6afa1566fee9285a4817fdbfafefe73694467009` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6cb0404daa9b412675be7acd555cd142399ceb83` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x70b45a68ca257db49dec455af6c725f7f1c904e8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x74baefea2f6f665f4ab966232405b125bb760f3d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x74e6389ac43a3fbddbc56d9159748e38b737e704` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x77ce3dc39075eb48f65d6829ebe5332ecc5ce6eb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7820dce1ed057193e8b9802647c4dc83eb3e3753` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7a17ad297b79f1fa7e40ff4f81a332be85d10f29` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7a607ea96d0c3f107f271e13a7383e191951cdd9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7ce91291846502d50d635163135b2d40a602dc70` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8058aff32bef3c17ade5f531be0fa8f82c892bf9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x826af1bc5148b1e83eeec03263bd5b41cbdd0a17` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x83005a65d0f57f5220a16e0aa74ce3732d0ca4d1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8886344a1b9b840bed590f2ef7379dd37e169c8e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x89cb664b5d11078afa20f0fa55a0ddf971ef4342` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9059ddb57b75ad44acd4415fcdd76b9419187fd0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x914d5cb27cb30e80bde8215ff577ed63eb986b79` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x926e34c104b96f1706e8ba4902555a78d779e563` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x943039a588046cb4fe0cdbb5dd7bb61b729880a9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x95fecdd21d48426d3bad195c6a3f0686e6b4d635` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-250332 | `0x96f6ef951840721adbf46ac996b59e0235cb985c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x98a5660c0c7d91b4013d8e8a116e1c4323d60f04` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x99b8d1d1c17a10cd1a878d1a44c11fd7e4dad7bc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9bc5e86baf8b3b2a10f8f5f8499da659ce3a7b43` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9daefaad9a31ae7cab8916cdbcbd9f109c688260` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9e9904eff49b996bacdf8ec56625334c1a96ff3d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa45099c00b25c96211cc7d100f764aaa49f5ee50` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa497f0d87f0e55ea2d9287de0de14272298e6d94` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa6275720b3fb1efe3e6ef2b5bf2293148852307d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa84792e8a43c9e111e83ecaa7d82c8486457d7c0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa8a823584ac88cb48e7f8f467d1be9c0601e43f8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xab5346a06fa672792233d22e7c5e326d080ba6b6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xabe1ffa8f3562708bed9255f55d55d4a4a011034` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-250337 | `0xace8e719899f6e91831b18ae746c9a965c2119f1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xade3060e848791aa1acd13634b32e18cafac5bf5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaecfd7160d4b540eeea0ee3921dbedacd6a433d3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaf25e3fe4e927f6783fdb672f2d3324889ea0063` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb279d1ed3848cee8ba6dba426be620a289ccef10` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb61c7ab643bb604cb0e46aa4c3a9c39cdbb73ef6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbd57260e0a833da5c07cc0af687cffae60179c26` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc0a9bed84f52a3033dcabeb4b6091028db000686` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc25aad03135e85e999a4c5aa347881c2a1022c08` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc2d15c40ff377c3637236346103ec3a0f8fb68f7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc945e476f0daa6495fdb6bb3bc723c8d6581eddd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcd28723f80a78a6f3e6f912c9bf0404c010b7f49` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd2746617c58b72254785bdb483e04f311c858d5f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd33692eada9bc6000d09b992028b60f689c20e4f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd5aae873c3954bf636592ba4d7fd31ac2e6e927f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd89655ecf4800251880f8f6ba9038970ad9813db` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-250339 | `0xd8c8174691d936e2c80114ec449037b13421b0a8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd99a5e910ce7ef34b87e63070284eff18f2a435f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdc757c6d1af8aaae4262fd4ceb5dbe06a8476267` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdf269a35a2ce0aaf4f72360d007723bc9f2142c6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe28afec27c50096b4e98cd5546eae8414b5e7542` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe3e19da1f3f621114bf357a959ac1568a6bc7397` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe59dbf08cccf8d1ab90156b9664d31fd20bb2ac7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe60f44aa6b7084d5ca05d0e9145921e94bc23cab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe7324bac7f105f8fd0d87a6c3da263c4a56f4b62` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe9b3c628103580702b465c052f67843cac61fb35` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xeaa87097991a874eee2c66b8a09c3dc90e45f6f0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xeac2181075ba0fc53d5141b17943ea9f913954e6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xeb18a4a10576c6414a098eae7c2c06b9f3cfa6a2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xec547e5aef5ce2e888604b1b6ec98a69ffdeaf2b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xee5ecb5f51ed4d60c7390049466e5a8a8379764f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-250340 | `0xf0bc39fc911f6437c84d16188dd8294f7110f451` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf1586e1beb654435e320a5fd0263f174af71f03e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf16c188c2d411627d39655a60409ec6707d3d5e8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf5aea8ea768d0a0203f3b54c5aa77d74e4c75f9f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf69c52bf2cf76250647c0bb5390d4ba8854a1d4a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf7c6b0405a02bcb1915bfbe3b7d7663a1dd9a1c3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfb4b0bf82f4ee261cf4d3acecd275c5913d2ab0d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfc5465d43ceafb8dd3d0f324dbc1c07190fbeb19` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfd48112e448417ca79305a518c4186df4b0a200a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfffcb6a61ba183ccd0c6a7c75f20991e0d4d76ba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x02763f3d752fd11720ee4d818c445dc8db0133e7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0c5114ed4c5833baf4d9badf5580c7aaee2453ac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x10c1d4a631c37db1ae290be4b16e0453c84cf8b3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x16dc9b6271c1dd8aacfd6aa6cf2211068fed1a51` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2405c161bcffa359ecf2f3e8ff8217dd4bbc0cba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2594905bc797b1a9005f2306f08a61e2d9e06928` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x28b2c711156efb3238a19efa6e0bf85f3523bac4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x30b00db488f556c7c387b7c6971e5e33123770ab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3679e40682e8625c1d35d678b8d059ce2e8d30f9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3debd08677602c1bd7c46882f114c1ba46cfd7d6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3e8aa5a0da924f6f7471d3dacc420a3dd6999bc5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3eb6c0f480678e0de35e9d3e7a5527d59d051ac8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4add3f4de0c7f7a5c1106d6b17d1047f1982f04b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4c488e49c8622dda2e39ec5786fb3eac68565f2f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x536a1457ff28f8eb006165936224cc5ddbb0f72f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x56137c084c6a927fd73942469abd4cddf6ee56a6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x57d665f901d7573ae7370bbb45df4b178816b9eb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x62670770037ca45933ef58050253a36bc2ee30d1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x62fbbe0312d31823579de46ab1d89fae0b798e61` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x63193d2ecc22f2b23d29156e00a954ecd98ea0c9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6658f677902e1df805adf42fac015e1124aebfdb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x675beebc731ee96291c066455ff9aa9afcccbc7d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6b614c9c82c2d91bc65e146e6ecffa01b864338d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6cbc0ab19616a5d579ee074ea13db3d67ed7d62d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6dc2c7f62c67f747cb1f6805465f47cbdc3b068f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x70a3d8984a8ba90865dfacdd1ae8d27539dc7069` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x75d1668c421c33d7ae91072cf81d5f57a20bc3e1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x76be569c94c39a2e2492de2f4d1c253f348250d0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x818d560d5197c6df7affc41833289c453adee738` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x81a7515ad371fb05ed3d5fe72de7b5271b84c136` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x83005a65d0f57f5220a16e0aa74ce3732d0ca4d1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x83783c0223fd0af69bebbc0d3feb35281d4757f7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x855acb52e46c271aabea3a0b62149b5b1a9db1c2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x861b880c17d4fad0ee8a57fa2d9f4235c0e44416` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x87c08ccfd073263effa9f870f09428b1113b5a03` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x89463c1f89ce06d3fcc3af7ab125669cce53f369` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8f332320cf9d587c2f36e1948b3314f5d85af5a9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-250350 | `0x91f8aff3738825e8eb16fc6f6b1a7a4647bdb299` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-250351 | `0x96b525b1a93f31e65f4aaf18c53842ed28525d48` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x974875d2c05388be817fcea84423dd0b5d74b88d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x990cab171edd156ab5d0b655d2e5caecad9375c2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x99ed3cafb35490e9d8b2ebf6e801f0e91a2723ce` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9a7f1234ad12bf773dd754310a1c2b9aa46fc575` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa8a823584ac88cb48e7f8f467d1be9c0601e43f8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xac45ddc441e5d9c81460b6a366a1f665266bdd39` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xaf25e3fe4e927f6783fdb672f2d3324889ea0063` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb070e3ecf90e9c0a245215e3a73aa947c1f7f674` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb61842828093ed72a51e862aac15a726555228c2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc26674c7e01562966b6fcef9d1087f99b42d967b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc35d14867d1ffb48f05f591aaf7d885ba8a7d7cc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc55f64236fa78340c9e85102d69481b1dc9dc235` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc58584ff45b06822f49ec8871ba8af9b8943a689` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xca9175d2b9041495cf4c1574fb706671f4ad58ba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xcd6d30a1a585eb67e0d0ef5c1ae601be20862897` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd8dd296e86a9b7ed70e12f6c80ce463f24b9c103` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xdb7f46ae1b8cb7cdab1a119b73ddd41e29f6e887` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe0dc736bf2079212921825b5b32bbb6feb4773a5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe373f8f5a1032ea11a7b3095222e385bdcd51628` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe437590b1cdf43145d63bac4d04d49574f74843c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe942afff95b85354fc03065b0ad00bff13589325` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xea676c839f80b498e8afc45327902b42e9843ccb` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | third_party_dependency | 0 | bsc | unit-250352 | `0xf4fd8a1b412633e10527454137a29db7aa35f15e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf7bddf2db59637bc3b56f744664ed490d979ed63` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xfe8a27375f29800b6bd5316eeb1977093b93eff3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xff77f28a0a2a0cfa7c205d80f49a9e4eec40347f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xfffcb6a61ba183ccd0c6a7c75f20991e0d4d76ba` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-250343 | `0x6b7443808acfcd48f1de212c2557462fa86ee945` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-250344 | `0x7cd852c0d7613aa869e632929560f310d4059ac1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-250345 | `0xba11c5effa33c4d6f8f593cfa394241cfe925811` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xcd40604bf36de5dbbd0afd1d7d89851c13bf6f3d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xe2aac1a4f2469f47fe5388d5d85f93136917abcf` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sei | unit-250342 | `0x54cd901491aef397084453f4372b93c33260e2a6` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | mantle | unit-250347 | `0xa96abbe61afedeb0d14a20440ae7100d9ab4882f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | mantle | unit-250348 | `0xab575258d37eaa5c8956efabe71f4ee8f6397cf3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xcdc59b5b4e323a878b0d635d458de8c736c0cca8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | mantle | unit-250349 | `0xdbd7a7d8807f0c98c9a58f7732f2799c8587e5c6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-250346 | `0x0be393dc46248e4285dc5caca3084bc7e9bfbb41` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 163
- Live contracts: 0
- Unknown liveness contracts: 163
- Source-verified contracts: 0
- Currently scope-matched contracts retained as-is: 0
- Classification counts: unverified unclassified=163

| Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|
| unverified unclassified | UnnamedContract<br>`0x137ffdde73f370e1a2f0f94bd3e347cdd0b71ec2` | non_address_book | unknown | unknown | unverified | n/a | `0xd06aed22088268e1f6bfd95b220c2da9fefc7977` |
| unverified unclassified | UnnamedContract<br>`0x14dd822e1b75253525a209e3cc917cd0d54b6cae` | non_address_book | unknown | unknown | unverified | n/a | `0x54b5aae5bda007db744ea762460a96f24bc1f4ad` |
| unverified unclassified | UnnamedContract<br>`0x175a6528f23034013f6644171354e2df9306115f` | non_address_book | unknown | unknown | unverified | n/a | `0xc6f4f6e36889d348c4a7475e9fe1c33a1a85cb1e` |
| unverified unclassified | UnnamedContract<br>`0x2626fb9debd067b05659a0303db498b1382593f2` | non_address_book | unknown | unknown | unverified | n/a | `0x05b137452a3531d2611616db1a797e7b0177b2e7` |
| unverified unclassified | UnnamedContract<br>`0x263d65b865bd4b1ac0ff4d21f589f487d6908e4f` | non_address_book | unknown | unknown | unverified | n/a | `0xc6f4f6e36889d348c4a7475e9fe1c33a1a85cb1e` |
| unverified unclassified | UnnamedContract<br>`0x2889bcd2e5d6141f98106dffa8a66ab21b5c84d6` | non_address_book | unknown | unknown | unverified | n/a | `0xc6f4f6e36889d348c4a7475e9fe1c33a1a85cb1e` |
| unverified unclassified | UnnamedContract<br>`0x2c0cd063a3d55f5e15420ff01525b703cca6977d` | non_address_book | unknown | unknown | unverified | n/a | `0x1bd19c16af985a60892f3c376514a983f47ab6e3` |
| unverified unclassified | UnnamedContract<br>`0x2ced30744edcf9ede5799eb07a0a29ce4f012a0c` | non_address_book | unknown | unknown | unverified | n/a | `0x54b5aae5bda007db744ea762460a96f24bc1f4ad` |
| unverified unclassified | UnnamedContract<br>`0x30ac904273f6e326448a1ffbc2defa371d86125f` | non_address_book | unknown | unknown | unverified | n/a | `0x05b137452a3531d2611616db1a797e7b0177b2e7` |
| unverified unclassified | UnnamedContract<br>`0x310e14ac744970ff6e6a111392ba7fb69e915a78` | non_address_book | unknown | unknown | unverified | n/a | `0xc6f4f6e36889d348c4a7475e9fe1c33a1a85cb1e` |
| unverified unclassified | UnnamedContract<br>`0x32ef5c9b4be1462b9e459a64f0a52f6e42f70f42` | non_address_book | unknown | unknown | unverified | n/a | `0x1bd19c16af985a60892f3c376514a983f47ab6e3` |
| unverified unclassified | UnnamedContract<br>`0x336505ec1bcc1a020eede459f57581725d23465a` | non_address_book | unknown | unknown | unverified | n/a | `0x1bd19c16af985a60892f3c376514a983f47ab6e3` |
| unverified unclassified | UnnamedContract<br>`0x355c78ef949270a32e31174c057562f7469fe831` | non_address_book | unknown | unknown | unverified | n/a | `0xc6f4f6e36889d348c4a7475e9fe1c33a1a85cb1e` |
| unverified unclassified | UnnamedContract<br>`0x3a458cb6d4b2fe00bc2305c37dd7502a807b2092` | non_address_book | unknown | unknown | unverified | n/a | `0x1bd19c16af985a60892f3c376514a983f47ab6e3` |
| unverified unclassified | UnnamedContract<br>`0x3c0417900f5231d448c32c7f4cad40e1efad36fc` | non_address_book | unknown | unknown | unverified | n/a | `0x1bd19c16af985a60892f3c376514a983f47ab6e3` |
| unverified unclassified | UnnamedContract<br>`0x3eb6c0f480678e0de35e9d3e7a5527d59d051ac8` | non_address_book | unknown | unknown | unverified | n/a | `0xc6f4f6e36889d348c4a7475e9fe1c33a1a85cb1e` |
| unverified unclassified | UnnamedContract<br>`0x3f7fa45fe79184b87e160ec5013344fc2098015d` | non_address_book | unknown | unknown | unverified | n/a | `0xc6f4f6e36889d348c4a7475e9fe1c33a1a85cb1e` |
| unverified unclassified | UnnamedContract<br>`0x41df1cdd31bc5054fdf638f6b0192b1dc28c1a33` | non_address_book | unknown | unknown | unverified | n/a | `0x1bd19c16af985a60892f3c376514a983f47ab6e3` |
| unverified unclassified | UnnamedContract<br>`0x4495a464cbc9f63f6618bf4dd31dbaf312dcb9ef` | non_address_book | unknown | unknown | unverified | n/a | `0x1bd19c16af985a60892f3c376514a983f47ab6e3` |
| unverified unclassified | UnnamedContract<br>`0x449e59b2a2064014cd4ed359c397153ab8f8ffaf` | non_address_book | unknown | unknown | unverified | n/a | `0x1bd19c16af985a60892f3c376514a983f47ab6e3` |
| unverified unclassified | UnnamedContract<br>`0x44cbf4d4db78a48f80d54b61fa1955979f07aefd` | non_address_book | unknown | unknown | unverified | n/a | `0x54b5aae5bda007db744ea762460a96f24bc1f4ad` |
| unverified unclassified | UnnamedContract<br>`0x478681587af321e6b055d3b08caf17140b138557` | non_address_book | unknown | unknown | unverified | n/a | `0x1bd19c16af985a60892f3c376514a983f47ab6e3` |
| unverified unclassified | UnnamedContract<br>`0x4a0afacb521e04cbb067a378beb82097c649dea1` | non_address_book | unknown | unknown | unverified | n/a | `0xc6f4f6e36889d348c4a7475e9fe1c33a1a85cb1e` |
| unverified unclassified | UnnamedContract<br>`0x533c5c15e073f56860b3091d7f7414f1cf6d4ae3` | non_address_book | unknown | unknown | unverified | n/a | `0x1bd19c16af985a60892f3c376514a983f47ab6e3` |
| unverified unclassified | UnnamedContract<br>`0x54ac0e5f60ec257385f134d5fa490a00e5ddd17c` | non_address_book | unknown | unknown | unverified | n/a | `0xc6f4f6e36889d348c4a7475e9fe1c33a1a85cb1e` |
| unverified unclassified | UnnamedContract<br>`0x5577cf81459b742dbfe757f98cb3ed4ed8e7df30` | non_address_book | unknown | unknown | unverified | n/a | `0x1bd19c16af985a60892f3c376514a983f47ab6e3` |
| unverified unclassified | UnnamedContract<br>`0x5c8ad93f75805fb504fac767378a170420671c32` | non_address_book | unknown | unknown | unverified | n/a | `0xc6f4f6e36889d348c4a7475e9fe1c33a1a85cb1e` |
| unverified unclassified | UnnamedContract<br>`0x5e95db2dd76ddeeab34a4d510db5fc6e6c45d4fa` | non_address_book | unknown | unknown | unverified | n/a | `0x1bd19c16af985a60892f3c376514a983f47ab6e3` |
| unverified unclassified | UnnamedContract<br>`0x5f7d50242206993a4476c76b21950219a4ed2c91` | non_address_book | unknown | unknown | unverified | n/a | `0x54b5aae5bda007db744ea762460a96f24bc1f4ad` |
| unverified unclassified | UnnamedContract<br>`0x60eec879cd31e47347058048433d9e381f510606` | non_address_book | unknown | unknown | unverified | n/a | `0x1bd19c16af985a60892f3c376514a983f47ab6e3` |
| unverified unclassified | UnnamedContract<br>`0x6afa1566fee9285a4817fdbfafefe73694467009` | non_address_book | unknown | unknown | unverified | n/a | `0x1bd19c16af985a60892f3c376514a983f47ab6e3` |
| unverified unclassified | UnnamedContract<br>`0x6cb0404daa9b412675be7acd555cd142399ceb83` | non_address_book | unknown | unknown | unverified | n/a | `0xc6f4f6e36889d348c4a7475e9fe1c33a1a85cb1e` |
| unverified unclassified | UnnamedContract<br>`0x70b45a68ca257db49dec455af6c725f7f1c904e8` | non_address_book | unknown | unknown | unverified | n/a | `0x1bd19c16af985a60892f3c376514a983f47ab6e3` |
| unverified unclassified | UnnamedContract<br>`0x74baefea2f6f665f4ab966232405b125bb760f3d` | non_address_book | unknown | unknown | unverified | n/a | `0xc6f4f6e36889d348c4a7475e9fe1c33a1a85cb1e` |
| unverified unclassified | UnnamedContract<br>`0x74e6389ac43a3fbddbc56d9159748e38b737e704` | non_address_book | unknown | unknown | unverified | n/a | `0xe619300c41024d4b9d179ae50fcd4e44ea03a3c9` |
| unverified unclassified | UnnamedContract<br>`0x77ce3dc39075eb48f65d6829ebe5332ecc5ce6eb` | non_address_book | unknown | unknown | unverified | n/a | `0x1bd19c16af985a60892f3c376514a983f47ab6e3` |
| unverified unclassified | UnnamedContract<br>`0x7820dce1ed057193e8b9802647c4dc83eb3e3753` | non_address_book | unknown | unknown | unverified | n/a | `0xc6f4f6e36889d348c4a7475e9fe1c33a1a85cb1e` |
| unverified unclassified | UnnamedContract<br>`0x7a17ad297b79f1fa7e40ff4f81a332be85d10f29` | non_address_book | unknown | unknown | unverified | n/a | `0x54b5aae5bda007db744ea762460a96f24bc1f4ad` |
| unverified unclassified | UnnamedContract<br>`0x7a607ea96d0c3f107f271e13a7383e191951cdd9` | non_address_book | unknown | unknown | unverified | n/a | `0xc6f4f6e36889d348c4a7475e9fe1c33a1a85cb1e` |
| unverified unclassified | UnnamedContract<br>`0x8058aff32bef3c17ade5f531be0fa8f82c892bf9` | non_address_book | unknown | unknown | unverified | n/a | `0xc6f4f6e36889d348c4a7475e9fe1c33a1a85cb1e` |
| unverified unclassified | UnnamedContract<br>`0x826af1bc5148b1e83eeec03263bd5b41cbdd0a17` | non_address_book | unknown | unknown | unverified | n/a | `0x1bd19c16af985a60892f3c376514a983f47ab6e3` |
| unverified unclassified | UnnamedContract<br>`0x83005a65d0f57f5220a16e0aa74ce3732d0ca4d1` | non_address_book | unknown | unknown | unverified | n/a | `0xc6f4f6e36889d348c4a7475e9fe1c33a1a85cb1e` |
| unverified unclassified | UnnamedContract<br>`0x8886344a1b9b840bed590f2ef7379dd37e169c8e` | non_address_book | unknown | unknown | unverified | n/a | `0x1bd19c16af985a60892f3c376514a983f47ab6e3` |
| unverified unclassified | UnnamedContract<br>`0x89cb664b5d11078afa20f0fa55a0ddf971ef4342` | non_address_book | unknown | unknown | unverified | n/a | `0x1bd19c16af985a60892f3c376514a983f47ab6e3` |
| unverified unclassified | UnnamedContract<br>`0x9059ddb57b75ad44acd4415fcdd76b9419187fd0` | non_address_book | unknown | unknown | unverified | n/a | `0x1bd19c16af985a60892f3c376514a983f47ab6e3` |
| unverified unclassified | UnnamedContract<br>`0x914d5cb27cb30e80bde8215ff577ed63eb986b79` | non_address_book | unknown | unknown | unverified | n/a | `0x54b5aae5bda007db744ea762460a96f24bc1f4ad` |
| unverified unclassified | UnnamedContract<br>`0x926e34c104b96f1706e8ba4902555a78d779e563` | non_address_book | unknown | unknown | unverified | n/a | `0x1bd19c16af985a60892f3c376514a983f47ab6e3` |
| unverified unclassified | UnnamedContract<br>`0x943039a588046cb4fe0cdbb5dd7bb61b729880a9` | non_address_book | unknown | unknown | unverified | n/a | `0x1bd19c16af985a60892f3c376514a983f47ab6e3` |
| unverified unclassified | UnnamedContract<br>`0x95fecdd21d48426d3bad195c6a3f0686e6b4d635` | non_address_book | unknown | unknown | unverified | n/a | `0x54b5aae5bda007db744ea762460a96f24bc1f4ad` |
| unverified unclassified | UnnamedContract<br>`0x98a5660c0c7d91b4013d8e8a116e1c4323d60f04` | non_address_book | unknown | unknown | unverified | n/a | `0x1bd19c16af985a60892f3c376514a983f47ab6e3` |
| unverified unclassified | UnnamedContract<br>`0x99b8d1d1c17a10cd1a878d1a44c11fd7e4dad7bc` | non_address_book | unknown | unknown | unverified | n/a | `0x094bee6b74ec29d32869ae3140a659cac0482882` |
| unverified unclassified | UnnamedContract<br>`0x9bc5e86baf8b3b2a10f8f5f8499da659ce3a7b43` | non_address_book | unknown | unknown | unverified | n/a | `0x1bd19c16af985a60892f3c376514a983f47ab6e3` |
| unverified unclassified | UnnamedContract<br>`0x9daefaad9a31ae7cab8916cdbcbd9f109c688260` | non_address_book | unknown | unknown | unverified | n/a | `0x05b137452a3531d2611616db1a797e7b0177b2e7` |
| unverified unclassified | UnnamedContract<br>`0x9e9904eff49b996bacdf8ec56625334c1a96ff3d` | non_address_book | unknown | unknown | unverified | n/a | `0xc6f4f6e36889d348c4a7475e9fe1c33a1a85cb1e` |
| unverified unclassified | UnnamedContract<br>`0xa45099c00b25c96211cc7d100f764aaa49f5ee50` | non_address_book | unknown | unknown | unverified | n/a | `0x54b5aae5bda007db744ea762460a96f24bc1f4ad` |
| unverified unclassified | UnnamedContract<br>`0xa497f0d87f0e55ea2d9287de0de14272298e6d94` | non_address_book | unknown | unknown | unverified | n/a | `0x1bd19c16af985a60892f3c376514a983f47ab6e3` |
| unverified unclassified | UnnamedContract<br>`0xa84792e8a43c9e111e83ecaa7d82c8486457d7c0` | non_address_book | unknown | unknown | unverified | n/a | `0x1bd19c16af985a60892f3c376514a983f47ab6e3` |
| unverified unclassified | UnnamedContract<br>`0xa8a823584ac88cb48e7f8f467d1be9c0601e43f8` | non_address_book | unknown | unknown | unverified | n/a | `0x1dd6bcf6d188f11d8de64b5c8575fb86c4b3d9ff` |
| unverified unclassified | UnnamedContract<br>`0xab5346a06fa672792233d22e7c5e326d080ba6b6` | non_address_book | unknown | unknown | unverified | n/a | `0x05b137452a3531d2611616db1a797e7b0177b2e7` |
| unverified unclassified | UnnamedContract<br>`0xabe1ffa8f3562708bed9255f55d55d4a4a011034` | non_address_book | unknown | unknown | unverified | n/a | `0x1bd19c16af985a60892f3c376514a983f47ab6e3` |
| unverified unclassified | UnnamedContract<br>`0xade3060e848791aa1acd13634b32e18cafac5bf5` | non_address_book | unknown | unknown | unverified | n/a | `0x6f368f8e9828d6f9530fd3e2300c2376312df1a6` |
| unverified unclassified | UnnamedContract<br>`0xaecfd7160d4b540eeea0ee3921dbedacd6a433d3` | non_address_book | unknown | unknown | unverified | n/a | `0x1bd19c16af985a60892f3c376514a983f47ab6e3` |
| unverified unclassified | UnnamedContract<br>`0xaf25e3fe4e927f6783fdb672f2d3324889ea0063` | non_address_book | unknown | unknown | unverified | n/a | `0xc6f4f6e36889d348c4a7475e9fe1c33a1a85cb1e` |
| unverified unclassified | UnnamedContract<br>`0xb279d1ed3848cee8ba6dba426be620a289ccef10` | non_address_book | unknown | unknown | unverified | n/a | `0x1bd19c16af985a60892f3c376514a983f47ab6e3` |
| unverified unclassified | UnnamedContract<br>`0xb61c7ab643bb604cb0e46aa4c3a9c39cdbb73ef6` | non_address_book | unknown | unknown | unverified | n/a | `0x1bd19c16af985a60892f3c376514a983f47ab6e3` |
| unverified unclassified | UnnamedContract<br>`0xbd57260e0a833da5c07cc0af687cffae60179c26` | non_address_book | unknown | unknown | unverified | n/a | `0x1bd19c16af985a60892f3c376514a983f47ab6e3` |
| unverified unclassified | UnnamedContract<br>`0xc0a9bed84f52a3033dcabeb4b6091028db000686` | non_address_book | unknown | unknown | unverified | n/a | `0xc6f4f6e36889d348c4a7475e9fe1c33a1a85cb1e` |
| unverified unclassified | UnnamedContract<br>`0xc25aad03135e85e999a4c5aa347881c2a1022c08` | non_address_book | unknown | unknown | unverified | n/a | `0xe619300c41024d4b9d179ae50fcd4e44ea03a3c9` |
| unverified unclassified | UnnamedContract<br>`0xc2d15c40ff377c3637236346103ec3a0f8fb68f7` | non_address_book | unknown | unknown | unverified | n/a | `0x1bd19c16af985a60892f3c376514a983f47ab6e3` |
| unverified unclassified | UnnamedContract<br>`0xc945e476f0daa6495fdb6bb3bc723c8d6581eddd` | non_address_book | unknown | unknown | unverified | n/a | `0x1bd19c16af985a60892f3c376514a983f47ab6e3` |
| unverified unclassified | UnnamedContract<br>`0xcd28723f80a78a6f3e6f912c9bf0404c010b7f49` | non_address_book | unknown | unknown | unverified | n/a | `0x1bd19c16af985a60892f3c376514a983f47ab6e3` |
| unverified unclassified | UnnamedContract<br>`0xd2746617c58b72254785bdb483e04f311c858d5f` | non_address_book | unknown | unknown | unverified | n/a | `0x54b5aae5bda007db744ea762460a96f24bc1f4ad` |
| unverified unclassified | UnnamedContract<br>`0xd33692eada9bc6000d09b992028b60f689c20e4f` | non_address_book | unknown | unknown | unverified | n/a | `0xc6f4f6e36889d348c4a7475e9fe1c33a1a85cb1e` |
| unverified unclassified | UnnamedContract<br>`0xd5aae873c3954bf636592ba4d7fd31ac2e6e927f` | non_address_book | unknown | unknown | unverified | n/a | `0x05b137452a3531d2611616db1a797e7b0177b2e7` |
| unverified unclassified | UnnamedContract<br>`0xd89655ecf4800251880f8f6ba9038970ad9813db` | non_address_book | unknown | unknown | unverified | n/a | `0x1bd19c16af985a60892f3c376514a983f47ab6e3` |
| unverified unclassified | UnnamedContract<br>`0xd99a5e910ce7ef34b87e63070284eff18f2a435f` | non_address_book | unknown | unknown | unverified | n/a | `0xc6f4f6e36889d348c4a7475e9fe1c33a1a85cb1e` |
| unverified unclassified | UnnamedContract<br>`0xdc757c6d1af8aaae4262fd4ceb5dbe06a8476267` | non_address_book | unknown | unknown | unverified | n/a | `0xe619300c41024d4b9d179ae50fcd4e44ea03a3c9` |
| unverified unclassified | UnnamedContract<br>`0xdf269a35a2ce0aaf4f72360d007723bc9f2142c6` | non_address_book | unknown | unknown | unverified | n/a | `0xc6f4f6e36889d348c4a7475e9fe1c33a1a85cb1e` |
| unverified unclassified | UnnamedContract<br>`0xe28afec27c50096b4e98cd5546eae8414b5e7542` | non_address_book | unknown | unknown | unverified | n/a | `0x094bee6b74ec29d32869ae3140a659cac0482882` |
| unverified unclassified | UnnamedContract<br>`0xe3e19da1f3f621114bf357a959ac1568a6bc7397` | non_address_book | unknown | unknown | unverified | n/a | `0x1bd19c16af985a60892f3c376514a983f47ab6e3` |
| unverified unclassified | UnnamedContract<br>`0xe59dbf08cccf8d1ab90156b9664d31fd20bb2ac7` | non_address_book | unknown | unknown | unverified | n/a | `0x54b5aae5bda007db744ea762460a96f24bc1f4ad` |
| unverified unclassified | UnnamedContract<br>`0xe60f44aa6b7084d5ca05d0e9145921e94bc23cab` | non_address_book | unknown | unknown | unverified | n/a | `0x54b5aae5bda007db744ea762460a96f24bc1f4ad` |
| unverified unclassified | UnnamedContract<br>`0xe7324bac7f105f8fd0d87a6c3da263c4a56f4b62` | non_address_book | unknown | unknown | unverified | n/a | `0x1bd19c16af985a60892f3c376514a983f47ab6e3` |
| unverified unclassified | UnnamedContract<br>`0xe9b3c628103580702b465c052f67843cac61fb35` | non_address_book | unknown | unknown | unverified | n/a | `0x094bee6b74ec29d32869ae3140a659cac0482882` |
| unverified unclassified | UnnamedContract<br>`0xeaa87097991a874eee2c66b8a09c3dc90e45f6f0` | non_address_book | unknown | unknown | unverified | n/a | `0x1bd19c16af985a60892f3c376514a983f47ab6e3` |
| unverified unclassified | UnnamedContract<br>`0xeac2181075ba0fc53d5141b17943ea9f913954e6` | non_address_book | unknown | unknown | unverified | n/a | `0x094bee6b74ec29d32869ae3140a659cac0482882` |
| unverified unclassified | UnnamedContract<br>`0xeb18a4a10576c6414a098eae7c2c06b9f3cfa6a2` | non_address_book | unknown | unknown | unverified | n/a | `0x094bee6b74ec29d32869ae3140a659cac0482882` |
| unverified unclassified | UnnamedContract<br>`0xec547e5aef5ce2e888604b1b6ec98a69ffdeaf2b` | non_address_book | unknown | unknown | unverified | n/a | `0x6f368f8e9828d6f9530fd3e2300c2376312df1a6` |
| unverified unclassified | UnnamedContract<br>`0xee5ecb5f51ed4d60c7390049466e5a8a8379764f` | non_address_book | unknown | unknown | unverified | n/a | `0x094bee6b74ec29d32869ae3140a659cac0482882` |
| unverified unclassified | UnnamedContract<br>`0xf1586e1beb654435e320a5fd0263f174af71f03e` | non_address_book | unknown | unknown | unverified | n/a | `0xc6f4f6e36889d348c4a7475e9fe1c33a1a85cb1e` |
| unverified unclassified | UnnamedContract<br>`0xf5aea8ea768d0a0203f3b54c5aa77d74e4c75f9f` | non_address_book | unknown | unknown | unverified | n/a | `0x05b137452a3531d2611616db1a797e7b0177b2e7` |
| unverified unclassified | UnnamedContract<br>`0xf69c52bf2cf76250647c0bb5390d4ba8854a1d4a` | non_address_book | unknown | unknown | unverified | n/a | `0x1bd19c16af985a60892f3c376514a983f47ab6e3` |
| unverified unclassified | UnnamedContract<br>`0xf7c6b0405a02bcb1915bfbe3b7d7663a1dd9a1c3` | non_address_book | unknown | unknown | unverified | n/a | `0xc6f4f6e36889d348c4a7475e9fe1c33a1a85cb1e` |
| unverified unclassified | UnnamedContract<br>`0xfb4b0bf82f4ee261cf4d3acecd275c5913d2ab0d` | non_address_book | unknown | unknown | unverified | n/a | `0xc6f4f6e36889d348c4a7475e9fe1c33a1a85cb1e` |
| unverified unclassified | UnnamedContract<br>`0xfc5465d43ceafb8dd3d0f324dbc1c07190fbeb19` | non_address_book | unknown | unknown | unverified | n/a | `0x1bd19c16af985a60892f3c376514a983f47ab6e3` |
| unverified unclassified | UnnamedContract<br>`0xfd48112e448417ca79305a518c4186df4b0a200a` | non_address_book | unknown | unknown | unverified | n/a | `0x54b5aae5bda007db744ea762460a96f24bc1f4ad` |
| unverified unclassified | UnnamedContract<br>`0xfffcb6a61ba183ccd0c6a7c75f20991e0d4d76ba` | non_address_book | unknown | unknown | unverified | n/a | `0xc6f4f6e36889d348c4a7475e9fe1c33a1a85cb1e` |
| unverified unclassified | UnnamedContract<br>`0x02763f3d752fd11720ee4d818c445dc8db0133e7` | non_address_book | unknown | unknown | unverified | n/a | `0xc6f4f6e36889d348c4a7475e9fe1c33a1a85cb1e` |
| unverified unclassified | UnnamedContract<br>`0x0c5114ed4c5833baf4d9badf5580c7aaee2453ac` | non_address_book | unknown | unknown | unverified | n/a | `0xc6f4f6e36889d348c4a7475e9fe1c33a1a85cb1e` |
| unverified unclassified | UnnamedContract<br>`0x10c1d4a631c37db1ae290be4b16e0453c84cf8b3` | non_address_book | unknown | unknown | unverified | n/a | `0xc6f4f6e36889d348c4a7475e9fe1c33a1a85cb1e` |
| unverified unclassified | UnnamedContract<br>`0x16dc9b6271c1dd8aacfd6aa6cf2211068fed1a51` | non_address_book | unknown | unknown | unverified | n/a | `0xc6f4f6e36889d348c4a7475e9fe1c33a1a85cb1e` |
| unverified unclassified | UnnamedContract<br>`0x2405c161bcffa359ecf2f3e8ff8217dd4bbc0cba` | non_address_book | unknown | unknown | unverified | n/a | `0xc6f4f6e36889d348c4a7475e9fe1c33a1a85cb1e` |
| unverified unclassified | UnnamedContract<br>`0x2594905bc797b1a9005f2306f08a61e2d9e06928` | non_address_book | unknown | unknown | unverified | n/a | `0xc6f4f6e36889d348c4a7475e9fe1c33a1a85cb1e` |
| unverified unclassified | UnnamedContract<br>`0x28b2c711156efb3238a19efa6e0bf85f3523bac4` | non_address_book | unknown | unknown | unverified | n/a | `0xc6f4f6e36889d348c4a7475e9fe1c33a1a85cb1e` |
| unverified unclassified | UnnamedContract<br>`0x30b00db488f556c7c387b7c6971e5e33123770ab` | non_address_book | unknown | unknown | unverified | n/a | `0xc6f4f6e36889d348c4a7475e9fe1c33a1a85cb1e` |
| unverified unclassified | UnnamedContract<br>`0x3679e40682e8625c1d35d678b8d059ce2e8d30f9` | non_address_book | unknown | unknown | unverified | n/a | `0xc6f4f6e36889d348c4a7475e9fe1c33a1a85cb1e` |
| unverified unclassified | UnnamedContract<br>`0x3debd08677602c1bd7c46882f114c1ba46cfd7d6` | non_address_book | unknown | unknown | unverified | n/a | `0xc6f4f6e36889d348c4a7475e9fe1c33a1a85cb1e` |
| unverified unclassified | UnnamedContract<br>`0x3e8aa5a0da924f6f7471d3dacc420a3dd6999bc5` | non_address_book | unknown | unknown | unverified | n/a | `0xc6f4f6e36889d348c4a7475e9fe1c33a1a85cb1e` |
| unverified unclassified | UnnamedContract<br>`0x3eb6c0f480678e0de35e9d3e7a5527d59d051ac8` | non_address_book | unknown | unknown | unverified | n/a | `0xc6f4f6e36889d348c4a7475e9fe1c33a1a85cb1e` |
| unverified unclassified | UnnamedContract<br>`0x4add3f4de0c7f7a5c1106d6b17d1047f1982f04b` | non_address_book | unknown | unknown | unverified | n/a | `0xc6f4f6e36889d348c4a7475e9fe1c33a1a85cb1e` |
| unverified unclassified | UnnamedContract<br>`0x4c488e49c8622dda2e39ec5786fb3eac68565f2f` | non_address_book | unknown | unknown | unverified | n/a | `0xc6f4f6e36889d348c4a7475e9fe1c33a1a85cb1e` |
| unverified unclassified | UnnamedContract<br>`0x536a1457ff28f8eb006165936224cc5ddbb0f72f` | non_address_book | unknown | unknown | unverified | n/a | `0x1dd6bcf6d188f11d8de64b5c8575fb86c4b3d9ff` |
| unverified unclassified | UnnamedContract<br>`0x56137c084c6a927fd73942469abd4cddf6ee56a6` | non_address_book | unknown | unknown | unverified | n/a | `0xc6f4f6e36889d348c4a7475e9fe1c33a1a85cb1e` |
| unverified unclassified | UnnamedContract<br>`0x57d665f901d7573ae7370bbb45df4b178816b9eb` | non_address_book | unknown | unknown | unverified | n/a | `0xc6f4f6e36889d348c4a7475e9fe1c33a1a85cb1e` |
| unverified unclassified | UnnamedContract<br>`0x62670770037ca45933ef58050253a36bc2ee30d1` | non_address_book | unknown | unknown | unverified | n/a | `0xc6f4f6e36889d348c4a7475e9fe1c33a1a85cb1e` |
| unverified unclassified | UnnamedContract<br>`0x62fbbe0312d31823579de46ab1d89fae0b798e61` | non_address_book | unknown | unknown | unverified | n/a | `0x1dd6bcf6d188f11d8de64b5c8575fb86c4b3d9ff` |
| unverified unclassified | UnnamedContract<br>`0x63193d2ecc22f2b23d29156e00a954ecd98ea0c9` | non_address_book | unknown | unknown | unverified | n/a | `0xc6f4f6e36889d348c4a7475e9fe1c33a1a85cb1e` |
| unverified unclassified | UnnamedContract<br>`0x6658f677902e1df805adf42fac015e1124aebfdb` | non_address_book | unknown | unknown | unverified | n/a | `0xc6f4f6e36889d348c4a7475e9fe1c33a1a85cb1e` |
| unverified unclassified | UnnamedContract<br>`0x675beebc731ee96291c066455ff9aa9afcccbc7d` | non_address_book | unknown | unknown | unverified | n/a | `0xc6f4f6e36889d348c4a7475e9fe1c33a1a85cb1e` |
| unverified unclassified | UnnamedContract<br>`0x6b614c9c82c2d91bc65e146e6ecffa01b864338d` | non_address_book | unknown | unknown | unverified | n/a | `0xc6f4f6e36889d348c4a7475e9fe1c33a1a85cb1e` |
| unverified unclassified | UnnamedContract<br>`0x6cbc0ab19616a5d579ee074ea13db3d67ed7d62d` | non_address_book | unknown | unknown | unverified | n/a | `0xc6f4f6e36889d348c4a7475e9fe1c33a1a85cb1e` |
| unverified unclassified | UnnamedContract<br>`0x6dc2c7f62c67f747cb1f6805465f47cbdc3b068f` | non_address_book | unknown | unknown | unverified | n/a | `0xc6f4f6e36889d348c4a7475e9fe1c33a1a85cb1e` |
| unverified unclassified | UnnamedContract<br>`0x70a3d8984a8ba90865dfacdd1ae8d27539dc7069` | non_address_book | unknown | unknown | unverified | n/a | `0xc6f4f6e36889d348c4a7475e9fe1c33a1a85cb1e` |
| unverified unclassified | UnnamedContract<br>`0x75d1668c421c33d7ae91072cf81d5f57a20bc3e1` | non_address_book | unknown | unknown | unverified | n/a | `0xc6f4f6e36889d348c4a7475e9fe1c33a1a85cb1e` |
| unverified unclassified | UnnamedContract<br>`0x76be569c94c39a2e2492de2f4d1c253f348250d0` | non_address_book | unknown | unknown | unverified | n/a | `0x1dd6bcf6d188f11d8de64b5c8575fb86c4b3d9ff` |
| unverified unclassified | UnnamedContract<br>`0x818d560d5197c6df7affc41833289c453adee738` | non_address_book | unknown | unknown | unverified | n/a | `0xc6f4f6e36889d348c4a7475e9fe1c33a1a85cb1e` |
| unverified unclassified | UnnamedContract<br>`0x81a7515ad371fb05ed3d5fe72de7b5271b84c136` | non_address_book | unknown | unknown | unverified | n/a | `0xc6f4f6e36889d348c4a7475e9fe1c33a1a85cb1e` |
| unverified unclassified | UnnamedContract<br>`0x83005a65d0f57f5220a16e0aa74ce3732d0ca4d1` | non_address_book | unknown | unknown | unverified | n/a | `0xc6f4f6e36889d348c4a7475e9fe1c33a1a85cb1e` |
| unverified unclassified | UnnamedContract<br>`0x83783c0223fd0af69bebbc0d3feb35281d4757f7` | non_address_book | unknown | unknown | unverified | n/a | `0xc6f4f6e36889d348c4a7475e9fe1c33a1a85cb1e` |
| unverified unclassified | UnnamedContract<br>`0x855acb52e46c271aabea3a0b62149b5b1a9db1c2` | non_address_book | unknown | unknown | unverified | n/a | `0xc6f4f6e36889d348c4a7475e9fe1c33a1a85cb1e` |
| unverified unclassified | UnnamedContract<br>`0x861b880c17d4fad0ee8a57fa2d9f4235c0e44416` | non_address_book | unknown | unknown | unverified | n/a | `0xc6f4f6e36889d348c4a7475e9fe1c33a1a85cb1e` |
| unverified unclassified | UnnamedContract<br>`0x87c08ccfd073263effa9f870f09428b1113b5a03` | non_address_book | unknown | unknown | unverified | n/a | `0xc6f4f6e36889d348c4a7475e9fe1c33a1a85cb1e` |
| unverified unclassified | UnnamedContract<br>`0x89463c1f89ce06d3fcc3af7ab125669cce53f369` | non_address_book | unknown | unknown | unverified | n/a | `0xc6f4f6e36889d348c4a7475e9fe1c33a1a85cb1e` |
| unverified unclassified | UnnamedContract<br>`0x8f332320cf9d587c2f36e1948b3314f5d85af5a9` | non_address_book | unknown | unknown | unverified | n/a | `0xc6f4f6e36889d348c4a7475e9fe1c33a1a85cb1e` |
| unverified unclassified | UnnamedContract<br>`0x974875d2c05388be817fcea84423dd0b5d74b88d` | non_address_book | unknown | unknown | unverified | n/a | `0xc6f4f6e36889d348c4a7475e9fe1c33a1a85cb1e` |
| unverified unclassified | UnnamedContract<br>`0x990cab171edd156ab5d0b655d2e5caecad9375c2` | non_address_book | unknown | unknown | unverified | n/a | `0xc6f4f6e36889d348c4a7475e9fe1c33a1a85cb1e` |
| unverified unclassified | UnnamedContract<br>`0x99ed3cafb35490e9d8b2ebf6e801f0e91a2723ce` | non_address_book | unknown | unknown | unverified | n/a | `0xc6f4f6e36889d348c4a7475e9fe1c33a1a85cb1e` |
| unverified unclassified | UnnamedContract<br>`0x9a7f1234ad12bf773dd754310a1c2b9aa46fc575` | non_address_book | unknown | unknown | unverified | n/a | `0xc6f4f6e36889d348c4a7475e9fe1c33a1a85cb1e` |
| unverified unclassified | UnnamedContract<br>`0xa8a823584ac88cb48e7f8f467d1be9c0601e43f8` | non_address_book | unknown | unknown | unverified | n/a | `0x1dd6bcf6d188f11d8de64b5c8575fb86c4b3d9ff` |
| unverified unclassified | UnnamedContract<br>`0xac45ddc441e5d9c81460b6a366a1f665266bdd39` | non_address_book | unknown | unknown | unverified | n/a | `0xc6f4f6e36889d348c4a7475e9fe1c33a1a85cb1e` |
| unverified unclassified | UnnamedContract<br>`0xaf25e3fe4e927f6783fdb672f2d3324889ea0063` | non_address_book | unknown | unknown | unverified | n/a | `0xc6f4f6e36889d348c4a7475e9fe1c33a1a85cb1e` |
| unverified unclassified | UnnamedContract<br>`0xb070e3ecf90e9c0a245215e3a73aa947c1f7f674` | non_address_book | unknown | unknown | unverified | n/a | `0xc6f4f6e36889d348c4a7475e9fe1c33a1a85cb1e` |
| unverified unclassified | UnnamedContract<br>`0xb61842828093ed72a51e862aac15a726555228c2` | non_address_book | unknown | unknown | unverified | n/a | `0xc6f4f6e36889d348c4a7475e9fe1c33a1a85cb1e` |
| unverified unclassified | UnnamedContract<br>`0xc26674c7e01562966b6fcef9d1087f99b42d967b` | non_address_book | unknown | unknown | unverified | n/a | `0xaa81b0c91ed3bb37c91ca2926a06e2af7295a943` |
| unverified unclassified | UnnamedContract<br>`0xc35d14867d1ffb48f05f591aaf7d885ba8a7d7cc` | non_address_book | unknown | unknown | unverified | n/a | `0xc6f4f6e36889d348c4a7475e9fe1c33a1a85cb1e` |
| unverified unclassified | UnnamedContract<br>`0xc55f64236fa78340c9e85102d69481b1dc9dc235` | non_address_book | unknown | unknown | unverified | n/a | `0xc6f4f6e36889d348c4a7475e9fe1c33a1a85cb1e` |
| unverified unclassified | UnnamedContract<br>`0xc58584ff45b06822f49ec8871ba8af9b8943a689` | non_address_book | unknown | unknown | unverified | n/a | `0x1dd6bcf6d188f11d8de64b5c8575fb86c4b3d9ff` |
| unverified unclassified | UnnamedContract<br>`0xca9175d2b9041495cf4c1574fb706671f4ad58ba` | non_address_book | unknown | unknown | unverified | n/a | `0xc6f4f6e36889d348c4a7475e9fe1c33a1a85cb1e` |
| unverified unclassified | UnnamedContract<br>`0xcd6d30a1a585eb67e0d0ef5c1ae601be20862897` | non_address_book | unknown | unknown | unverified | n/a | `0x1dd6bcf6d188f11d8de64b5c8575fb86c4b3d9ff` |
| unverified unclassified | UnnamedContract<br>`0xd8dd296e86a9b7ed70e12f6c80ce463f24b9c103` | non_address_book | unknown | unknown | unverified | n/a | `0xc6f4f6e36889d348c4a7475e9fe1c33a1a85cb1e` |
| unverified unclassified | UnnamedContract<br>`0xdb7f46ae1b8cb7cdab1a119b73ddd41e29f6e887` | non_address_book | unknown | unknown | unverified | n/a | `0xc6f4f6e36889d348c4a7475e9fe1c33a1a85cb1e` |
| unverified unclassified | UnnamedContract<br>`0xe0dc736bf2079212921825b5b32bbb6feb4773a5` | non_address_book | unknown | unknown | unverified | n/a | `0xc6f4f6e36889d348c4a7475e9fe1c33a1a85cb1e` |
| unverified unclassified | UnnamedContract<br>`0xe373f8f5a1032ea11a7b3095222e385bdcd51628` | non_address_book | unknown | unknown | unverified | n/a | `0xc6f4f6e36889d348c4a7475e9fe1c33a1a85cb1e` |
| unverified unclassified | UnnamedContract<br>`0xe437590b1cdf43145d63bac4d04d49574f74843c` | non_address_book | unknown | unknown | unverified | n/a | `0xc6f4f6e36889d348c4a7475e9fe1c33a1a85cb1e` |
| unverified unclassified | UnnamedContract<br>`0xe942afff95b85354fc03065b0ad00bff13589325` | non_address_book | unknown | unknown | unverified | n/a | `0xc6f4f6e36889d348c4a7475e9fe1c33a1a85cb1e` |
| unverified unclassified | UnnamedContract<br>`0xea676c839f80b498e8afc45327902b42e9843ccb` | non_address_book | unknown | unknown | unverified | n/a | `0xc6f4f6e36889d348c4a7475e9fe1c33a1a85cb1e` |
| unverified unclassified | UnnamedContract<br>`0xf7bddf2db59637bc3b56f744664ed490d979ed63` | non_address_book | unknown | unknown | unverified | n/a | `0xc6f4f6e36889d348c4a7475e9fe1c33a1a85cb1e` |
| unverified unclassified | UnnamedContract<br>`0xfe8a27375f29800b6bd5316eeb1977093b93eff3` | non_address_book | unknown | unknown | unverified | n/a | `0xc6f4f6e36889d348c4a7475e9fe1c33a1a85cb1e` |
| unverified unclassified | UnnamedContract<br>`0xff77f28a0a2a0cfa7c205d80f49a9e4eec40347f` | non_address_book | unknown | unknown | unverified | n/a | `0x1dd6bcf6d188f11d8de64b5c8575fb86c4b3d9ff` |
| unverified unclassified | UnnamedContract<br>`0xfffcb6a61ba183ccd0c6a7c75f20991e0d4d76ba` | non_address_book | unknown | unknown | unverified | n/a | `0xc6f4f6e36889d348c4a7475e9fe1c33a1a85cb1e` |
| unverified unclassified | UnnamedContract<br>`0xcd40604bf36de5dbbd0afd1d7d89851c13bf6f3d` | non_address_book | unknown | unknown | unverified | n/a | `0x10e80f4184bc34fe1931d85b8cbbfb1bf1087a8c` |
| unverified unclassified | UnnamedContract<br>`0xe2aac1a4f2469f47fe5388d5d85f93136917abcf` | non_address_book | unknown | unknown | unverified | n/a | `0x10e80f4184bc34fe1931d85b8cbbfb1bf1087a8c` |
| unverified unclassified | UnnamedContract<br>`0xcdc59b5b4e323a878b0d635d458de8c736c0cca8` | non_address_book | unknown | unknown | unverified | n/a | `0xb232d7d0db2b6b7d62328e009f89fc98e2436128` |

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
| February 2026 Cantina Audit | GMTokenLimitOrder | ambiguous — not counted | 0xf0bc39… (alternative) `0xf0bc39fc911f6437c84d16188dd8294f7110f451` — deployed 2026-02-07 01:29:47+03 — liveness: live (current_address_book_code)<br>0x96b525… (alternative) `0x96b525b1a93f31e65f4aaf18c53842ed28525d48` — deployed 2026-02-07 01:40:08+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
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
| December 2025 Cantina Audit | GMTokenLimitOrder | ambiguous — not counted | 0xf0bc39… (alternative) `0xf0bc39fc911f6437c84d16188dd8294f7110f451` — deployed 2026-02-07 01:29:47+03 — liveness: live (current_address_book_code)<br>0x96b525… (alternative) `0x96b525b1a93f31e65f4aaf18c53842ed28525d48` — deployed 2026-02-07 01:40:08+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| December 2025 Cantina Audit | IGMTokenLimitOrderErrors | unmatched — not counted | — | listed in scope | no |
| November 2025 Cantina Audit | ISyntheticSharesOracle | unmatched — not counted | — | listed in scope section | no |
| November 2025 Cantina Audit | SyntheticSharesOracle | ambiguous — not counted | 0xf4fd8a… (alternative) `0xf4fd8a1b412633e10527454137a29db7aa35f15e` — deployed 2026-01-15 23:51:31+03 — liveness: live (current_address_book_code)<br>SyntheticSharesOracle (alternative) `0x9bc39db6fbb44b91a48b8d5a6c208b82b1741be6` — deployed 2026-01-15 23:55:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
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
| July 2025 Cyfrin Audit | GMTokenManager | ambiguous — not counted | GMTokenManager (alternative) `0x2c158bc456e027b2affccadf1bdbd9f5fc4c5c8c` — deployed 2025-07-15 21:55:59+03 — liveness: live (current_address_book_code)<br>0x91f8af… (alternative) `0x91f8aff3738825e8eb16fc6f6b1a7a4647bdb299` — deployed 2025-10-09 19:54:19+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
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
| June 2025 Spearbit Audit | GMTokenManager | ambiguous — not counted | GMTokenManager (alternative) `0x2c158bc456e027b2affccadf1bdbd9f5fc4c5c8c` — deployed 2025-07-15 21:55:59+03 — liveness: live (current_address_book_code)<br>0x91f8af… (alternative) `0x91f8aff3738825e8eb16fc6f6b1a7a4647bdb299` — deployed 2025-10-09 19:54:19+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
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
| March 2025 Spearbit Audit | OUSG | ambiguous — not counted | 0xba11c5… (alternative) `0xba11c5effa33c4d6f8f593cfa394241cfe925811` — deployed 2023-06-02 19:37:44+03 — liveness: live (current_address_book_code)<br>CashKYCSenderReceiver (proxy) (alternative) `0x1b19c19393e2d034d8ff31ff34c81252fcbbee92` — deployed 2022-12-21 19:16:23+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
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
| August 2023 Zokyo Audit | usdy | ambiguous — not counted | 0x96f6ef… (alternative) `0x96f6ef951840721adbf46ac996b59e0235cb985c` — deployed 2023-07-11 21:46:23+03 — liveness: live (current_address_book_code)<br>TokenProxy (proxy) (alternative) `0x5be26527e817998a7206475496fde1e68957c5a6` — deployed 2023-10-24 20:49:14+03 — liveness: live (current_address_book_code)<br>0x54cd90… (alternative) `0x54cd901491aef397084453f4372b93c33260e2a6` — deployed 2025-12-29 18:57:05+03 — liveness: live (current_address_book_code)<br>USDY (proxy) (alternative) `0x35e050d3c0ec2d29d269a8ecea763a183bdf9a9d` — deployed 2024-08-07 22:02:37+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
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
| August 2023 Zokyo Audit | blocklist | ambiguous — not counted | 0xdbd7a7… (alternative) `0xdbd7a7d8807f0c98c9a58f7732f2799c8587e5c6` — deployed 2023-10-24 20:04:37+03 — liveness: live (current_address_book_code)<br>0xd8c817… (alternative) `0xd8c8174691d936e2c80114ec449037b13421b0a8` — deployed 2023-07-11 18:29:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
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
| January 2023 Code4rena Audit | CashManager | own contract | 0x6b7443… (selected) `0x6b7443808acfcd48f1de212c2557462fa86ee945` — deployed 2023-06-02 19:53:04+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
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
| May 2022 ABDK Audit | Registry | own contract | 0x7cd852… (selected) `0x7cd852c0d7613aa869e632929560f310d4059ac1` — deployed 2023-06-01 22:37:21+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
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
| January 2022 Quantstamp Audit | Registry | own contract | 0x7cd852… (selected) `0x7cd852c0d7613aa869e632929560f310d4059ac1` — deployed 2023-06-01 22:37:21+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
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
| May 2021 Peckshield Audit | Registry | own contract | 0x7cd852… (selected) `0x7cd852c0d7613aa869e632929560f310d4059ac1` — deployed 2023-06-01 22:37:21+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| May 2021 Peckshield Audit | AllPairCCO | unmatched — not counted | — | Target in findings PVE-003, PVE-005, PVE-006 | no |
| May 2021 Peckshield Audit | RolloverCCO | unmatched — not counted | — | Target in findings PVE-010, PVE-011 | no |
| May 2021 Peckshield Audit | TrancheToken | unmatched — not counted | — | Mentioned in description of PVE-002 | no |
| May 2021 Peckshield Audit | UniswapStrategy | unmatched — not counted | — | Mentioned in finding PVE-006 | no |
| May 2021 Peckshield Audit | SushiStrategyLP | unmatched — not counted | — | Target in findings PVE-007, PVE-009 | no |
| April 2021 Certik Audit | AllPairCCO | unmatched — not counted | — | listed in scope table and findings | no |
| April 2021 Certik Audit | OndoRegistryClient | unmatched — not counted | — | listed in scope table and findings | no |
| April 2021 Certik Audit | OndoRegistryClientInitializable | unmatched — not counted | — | listed in scope table and findings | no |
| April 2021 Certik Audit | Registry | own contract | 0x7cd852… (selected) `0x7cd852c0d7613aa869e632929560f310d4059ac1` — deployed 2023-06-01 22:37:21+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
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
| Ondo Peckshield Audit May_2021.pdf | Registry | own contract | 0x7cd852… (selected) `0x7cd852c0d7613aa869e632929560f310d4059ac1` — deployed 2023-06-01 22:37:21+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Ondo Peckshield Audit May_2021.pdf | AllPairCCO | unmatched — not counted | — | Target in findings PVE-003, PVE-005, PVE-006 | no |
| Ondo Peckshield Audit May_2021.pdf | RolloverCCO | unmatched — not counted | — | Target in findings PVE-010, PVE-011 | no |
| Ondo Peckshield Audit May_2021.pdf | TrancheToken | unmatched — not counted | — | Mentioned in description of PVE-002 | no |
| Ondo Peckshield Audit May_2021.pdf | UniswapStrategy | unmatched — not counted | — | Mentioned in finding PVE-006 | no |
| Ondo Peckshield Audit May_2021.pdf | SushiStrategyLP | unmatched — not counted | — | Target in findings PVE-006, PVE-007, PVE-009 | no |
| Ondo_Certik_Audit_April_2021 (2).pdf | AllPairCCO | unmatched — not counted | — | listed in scope table and findings | no |
| Ondo_Certik_Audit_April_2021 (2).pdf | OndoRegistryClient | unmatched — not counted | — | listed in scope table and findings | no |
| Ondo_Certik_Audit_April_2021 (2).pdf | OndoRegistryClientInitializable | unmatched — not counted | — | listed in scope table and findings | no |
| Ondo_Certik_Audit_April_2021 (2).pdf | Registry | own contract | 0x7cd852… (selected) `0x7cd852c0d7613aa869e632929560f310d4059ac1` — deployed 2023-06-01 22:37:21+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
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
| needs_review | 182 |

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
