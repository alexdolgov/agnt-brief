# Agentic Audit Brief: Stake DAO

## Export Authority

- Production state: **published scope**
- Raw selected rows: 4 across 2 audit(s)
- Eligible audit results: 34 (2 matched; 32 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

## Project Overview

- Project: Stake DAO (`stake-dao`)
- Website: [https://stakedao.org/](https://stakedao.org/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, base, bsc, ethereum, linea, optimism, sonic
- Contract surface: 1376 unique implementations (1376 raw deployments)
- Coverage basis: 1/2 confirmed own live verified implementations (50.0%); conservative 50.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $97,414,337.77
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Stake DAO. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 2 contract row(s) across arbitrum, base, bsc, ethereum, linea, optimism, sonic. Structural roles: 1 core, 1 supporting. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 2
- Structural roles: core (1), supporting (1)
- Contract kinds: contract (2)
- Detected standards: erc20 (2), ownable (1)
- Frameworks: openzeppelin (2)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 4 contracts are derived from known codebases. 4 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x94818a...0b80b8`, chain 1)
- UnnamedContract (`0xb0552b...9cc765`, chain 1)
- SDT (`0x73968b...6cdb2f`, chain 1)
- vlBoost (`0xab05ca...d2adda`, chain 1)

## Contract Surface Quality

- Indexed contracts: 2; live-surface contracts included: 2 (2 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 4/5 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 1/2 (50.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 4 own, 1 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 1371 discovered implementations excluded (0 third-party/infra; 73 standard proxy/library)
- Proxy deployments represented within implementation groups: 168
- Deployed-live implementations: 4 of 1376 unique (rest dead/inactive/uninitialized)
- All verified address-book-owned implementations audited (incl. non-live): 1/2
- Verified + Unaudited implementations: 1
- Verified by bytecode match: 0
- Unverified implementations: 2
- Unique implementations: 1376
- Raw deployments: 1376
- Audits discovered: 19 (19 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-04 (fresh)
- Audit staleness (calendar age): 4 fresh, 6 aging, 6 stale, 3 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 2 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Trust Security | Tier 2 | 1 | 50.0% | 2026-04 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| vlBoost | unknown | project_anchor | own_supporting | 0 | ethereum | unit-393026 | `0xab05ca...d2adda` | ✅ Audited |

### ⚠️ Verified + Unaudited (1372)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AccessManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x4973b5...1da02e` | ⚠️ Unaudited |
| Accountant | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x8f872c...6697f8` | ⚠️ Unaudited |
| Accumulator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x23ab51...a3bc4a` | ⚠️ Unaudited |
| AccumulatorProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5892df...22d1b8` | ⚠️ Unaudited |
| ACL | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x17c719...2f7c90` | ⚠️ Unaudited |
| ACLManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x44a57b...8c6f88` | ⚠️ Unaudited |
| ActionAddRemoveLiq | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3bbacd...a897da` | ⚠️ Unaudited |
| ActionAddRemoveLiqV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x24ec4b...002744` | ⚠️ Unaudited |
| ActionCallback | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x09f4ac...1c3d07` | ⚠️ Unaudited |
| ActionInfoStatic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3f9f34...88f23b` | ⚠️ Unaudited |
| ActionMarketAuxStatic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x026644...d07507` | ⚠️ Unaudited |
| ActionMarketCoreStatic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2066a6...0b7790` | ⚠️ Unaudited |
| ActionMintRedeem | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4dba36...185369` | ⚠️ Unaudited |
| ActionMintRedeemStatic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1812a7...437ed6` | ⚠️ Unaudited |
| ActionMisc | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfc49c4...94065c` | ⚠️ Unaudited |
| ActionStorageStatic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0a60b5...46d2a1` | ⚠️ Unaudited |
| ActionSwapPT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6c0df4...51bf50` | ⚠️ Unaudited |
| ActionSwapPTV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x209829...9747fd` | ⚠️ Unaudited |
| ActionSwapPTYT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5f438e...41c3b7` | ⚠️ Unaudited |
| ActionSwapYT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x41d81d...1a0d64` | ⚠️ Unaudited |
| ActionSwapYTV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x32ed8f...1d158d` | ⚠️ Unaudited |
| Adapter | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xf00000...7601c2` | ⚠️ Unaudited |
| AdapterFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1662a5...adccf4` | ⚠️ Unaudited |
| AdapterRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x84cce8...df774d` | ⚠️ Unaudited |
| AdaptiveCurveIrm | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x870ac1...ba00bc` | ⚠️ Unaudited |
| Address | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1ed976...ea0aab` | ⚠️ Unaudited |
| AddressManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8c5d64...b4dabe` | ⚠️ Unaudited |
| AdminUpgradeabilityProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x1e5acc...bbf64d` | ⚠️ Unaudited |
| AdminUpgradeabilityProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x2b4d25...da01b4` | ⚠️ Unaudited |
| AdminUpgradeabilityProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x7e983e...de8769` | ⚠️ Unaudited |
| Agent | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x13dff1...20a846` | ⚠️ Unaudited |
| AggMonetaryPolicy-monetarypolicybasedonaggregatedpricesforcrvUSD | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0901b5...48e62b` | ⚠️ Unaudited |
| AggregationRouterHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x09d4b4...a1da29` | ⚠️ Unaudited |
| AggregatorBatchRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb21a27...815c8a` | ⚠️ Unaudited |
| AggregatorRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x013d43...6b2c92` | ⚠️ Unaudited |
| AggregatorStablePrice-aggregatorofstablecoinpricesforcrvUSD | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x18672b...0e4e62` | ⚠️ Unaudited |
| AHv2Repayment | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x141e05...2f629e` | ⚠️ Unaudited |
| AladdinCRV | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x160d6e...9cb78f` | ⚠️ Unaudited |
| AladdinCRVZap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5eb30c...852082` | ⚠️ Unaudited |
| AladdinETH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7f6ce8...b8f9be` | ⚠️ Unaudited |
| AladdinFXS | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x165a7a...be6edc` | ⚠️ Unaudited |
| AladdinFXSV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd9cc44...f99258` | ⚠️ Unaudited |
| AladdinPriceOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x304047...d869b4` | ⚠️ Unaudited |
| AladdinSdCRV | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x922837...e3b9d7` | ⚠️ Unaudited |
| AllInOneGateway | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6e513d...6c857b` | ⚠️ Unaudited |
| AllMight | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x000000...5a5d05` | ⚠️ Unaudited |
| Allocator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x91b69a...7228fd` | ⚠️ Unaudited |
| ALMSmartChefSimple | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb479fa...70224a` | ⚠️ Unaudited |
| AlpacaAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xaacd1d...eeb022` | ⚠️ Unaudited |
| AMBeacon | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x09176e...9682b7` | ⚠️ Unaudited |
| AMTransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x38b9b4...21786c` | ⚠️ Unaudited |
| AngleAccumulator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9dddf9...d1c888` | ⚠️ Unaudited |
| AngleAccumulatorV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x943671...c6aa51` | ⚠️ Unaudited |
| AngleAccumulatorV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5ed812...f72d2e` | ⚠️ Unaudited |
| AngleLocker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd13f8c...4dcaf5` | ⚠️ Unaudited |
| AngleMerklClaimer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x32ee46...04515b` | ⚠️ Unaudited |
| AngleStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x226354...9d7caf` | ⚠️ Unaudited |
| AngleVaultFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x66f3d3...e0b801` | ⚠️ Unaudited |
| AngleVaultGamma | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1649ff...f18ece` | ⚠️ Unaudited |
| AngleVaultGUni | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4ca321...1f1b02` | ⚠️ Unaudited |
| AngleVoter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x103a24...a3fab8` | ⚠️ Unaudited |
| AngleVoterV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbabe5d...8cd98b` | ⚠️ Unaudited |
| AngleVoterV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdde0f1...917efd` | ⚠️ Unaudited |
| AngleVoterV5 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0e0f27...cf1a23` | ⚠️ Unaudited |
| anyMIM Burner | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0c762a...f76807` | ⚠️ Unaudited |
| Api3AggregatorETH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x102ba7...358909` | ⚠️ Unaudited |
| Api3Oracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x536821...30d3f4` | ⚠️ Unaudited |
| APROracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4ddc33...919361` | ⚠️ Unaudited |
| APRWithPoolOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x044dad...47ca14` | ⚠️ Unaudited |
| ApwBridger | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x174a1f...799d33` | ⚠️ Unaudited |
| ApwineAccumulator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x29bcfc...3070b2` | ⚠️ Unaudited |
| APWineAirdrop | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x6d4964...9abf63` | ⚠️ Unaudited |
| ApwineDepositor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfe928c...cefbcf` | ⚠️ Unaudited |
| ApwineLocker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe71e28...e5721d` | ⚠️ Unaudited |
| APWRewarder | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd0db15...6fc336` | ⚠️ Unaudited |
| APWToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x134c05...c8157f` | ⚠️ Unaudited |
| ArbitratorVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x25e124...c21616` | ⚠️ Unaudited |
| Arbitrum Broadcaster | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x94630a...bd7ee0` | ⚠️ Unaudited |
| Arbitrum Relayer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x55a1c2...25e01e` | ⚠️ Unaudited |
| ArbitrumRootGaugeFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1c9932...5e50e7` | ⚠️ Unaudited |
| AToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x83f47f...f46472` | ⚠️ Unaudited |
| AToken Burner | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x121292...bd0664` | ⚠️ Unaudited |
| AuctionKicker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x17d6e6...1f679e` | ⚠️ Unaudited |
| AuraBalRewardPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc47162...651c0c` | ⚠️ Unaudited |
| AuraClaimZap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2e3077...9e92a9` | ⚠️ Unaudited |
| AuraLocker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3fa73f...9bbcac` | ⚠️ Unaudited |
| AuraMerkleDrop | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1a661c...80a8fb` | ⚠️ Unaudited |
| AuraMinter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x59a5cc...e13707` | ⚠️ Unaudited |
| AuraOFT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x150970...be213b` | ⚠️ Unaudited |
| AuraPenaltyForwarder | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x404356...c20d1e` | ⚠️ Unaudited |
| AuraSidecar | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6aad2a...c87896` | ⚠️ Unaudited |
| AuraSidecarFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5db4c1...942505` | ⚠️ Unaudited |
| AuraSidecarFactoryL2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x2a198e...acc99d` | ⚠️ Unaudited |
| AuraSidecarL2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xa20543...d2a6a7` | ⚠️ Unaudited |
| AuraStakingProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd9e863...f89c6c` | ⚠️ Unaudited |
| AuraToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x665d01...59cf15` | ⚠️ Unaudited |
| AuraVestedEscrow | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x243466...53fac6` | ⚠️ Unaudited |
| Authorizer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x809b79...93213a` | ⚠️ Unaudited |
| AuthorizerAdaptor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x6cad2e...509bc7` | ⚠️ Unaudited |
| AuthorizerAdaptorEntrypoint | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x36cac2...b5a17c` | ⚠️ Unaudited |
| AuthorizerWithAdaptorValidation | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xa69e0c...7e8eee` | ⚠️ Unaudited |
| AvalancheRootGaugeFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x22625e...86b017` | ⚠️ Unaudited |
| BadgerHunt | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x22ba8e...12baa0` | ⚠️ Unaudited |
| BalancerAccumulator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x896689...c27776` | ⚠️ Unaudited |
| BalancerBoostProviderAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xe25217...000e4f` | ⚠️ Unaudited |
| BalancerDepositor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3e0d44...1b4d2e` | ⚠️ Unaudited |
| BalancerFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1a7742...50d81d` | ⚠️ Unaudited |
| BalancerFactoryL2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xf61c1b...abd8cc` | ⚠️ Unaudited |
| BalancerGovernanceToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xba1000...424e3d` | ⚠️ Unaudited |
| BalancerHelpers | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5addcc...87864e` | ⚠️ Unaudited |
| BalancerLocker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xea79d1...f336a5` | ⚠️ Unaudited |
| BalancerMinter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x239e55...638a2b` | ⚠️ Unaudited |
| BalancerStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x168a0f...4214c2` | ⚠️ Unaudited |
| BalancerStrategyL2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xe1f55d...76b865` | ⚠️ Unaudited |
| BalancerVaultFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6e37f0...e7946f` | ⚠️ Unaudited |
| BalancerVoter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xff09a9...c891ff` | ⚠️ Unaudited |
| BalLiquidityProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa7429a...70e32c` | ⚠️ Unaudited |
| BALTokenHolderFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb848f5...4f2158` | ⚠️ Unaudited |
| BaseRewardPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x00a7ba...c6cad2` | ⚠️ Unaudited |
| BaseSplitCodeFactoryContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0e669e...95fbb5` | ⚠️ Unaudited |
| BatchAddCard | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2953a3...42f687` | ⚠️ Unaudited |
| BatchCheckpointer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf24917...b9fd39` | ⚠️ Unaudited |
| BatchFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x172573...194c01` | ⚠️ Unaudited |
| BatchRelayerLibrary | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x41b953...41b7ac` | ⚠️ Unaudited |
| BatchRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x136f1e...1778d1` | ⚠️ Unaudited |
| BlackpoolAccumulator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfac788...8cbfbc` | ⚠️ Unaudited |
| BlackpoolDepositor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x219f74...279993` | ⚠️ Unaudited |
| BlackpoolLocker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0a4df7...37b461` | ⚠️ Unaudited |
| BlackPoolToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0ec9f7...7e37da` | ⚠️ Unaudited |
| BlackScholesEstimate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8b4fd0...5da3dc` | ⚠️ Unaudited |
| Block Hash Oracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x47ca04...677ee4` | ⚠️ Unaudited |
| BlockMiner | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc0dc49...4fcaeb` | ⚠️ Unaudited |
| BnbGaugeVotingStateSender | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4829bc...5cdcd1` | ⚠️ Unaudited |
| BnbPricePrediction | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x05b4c8...fa9c75` | ⚠️ Unaudited |
| BnbStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x187463...3b4208` | ⚠️ Unaudited |
| BnbStateSender | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4c1cf4...1181e5` | ⚠️ Unaudited |
| BokkyPooBahsDateTimeContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x90503d...624736` | ⚠️ Unaudited |
| Boost Delegation V2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x6b5da7...399e2e` | ⚠️ Unaudited |
| Boost Delegation V2.1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2cf8e1...736c59` | ⚠️ Unaudited |
| BoostCalculator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2ac44b...9c0ebc` | ⚠️ Unaudited |
| BoostDelegationV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2c06c9...b1b947` | ⚠️ Unaudited |
| Booster | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x01363d...a569d8` | ⚠️ Unaudited |
| BoosterHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x82bbbc...3d0bd0` | ⚠️ Unaudited |
| BoosterLite | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x98ef32...a30184` | ⚠️ Unaudited |
| BoosterOwner | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x228a14...989f04` | ⚠️ Unaudited |
| BoosterOwnerSecondary | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x256e1b...98b86d` | ⚠️ Unaudited |
| BoosterPlaceholder | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa2cf21...a86ee5` | ⚠️ Unaudited |
| BoosterRewardManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x817ff4...e82d24` | ⚠️ Unaudited |
| BoostMarketplace | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa52f3d...c407f0` | ⚠️ Unaudited |
| BorrowLogic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xd85bbd...55f7e3` | ⚠️ Unaudited |
| BotMarket | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1adedf...e3b2db` | ⚠️ Unaudited |
| BountyHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5ced8b...8dc1ed` | ⚠️ Unaudited |
| BribeManager | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x2b6d35...a2015c` | ⚠️ Unaudited |
| BribeVotingReward | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x2c869c...f776c1` | ⚠️ Unaudited |
| BridgeLogic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xc3b6dd...56a74d` | ⚠️ Unaudited |
| BridgeToken | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | `0xb3ed0a...7ed507` | ⚠️ Unaudited |
| BufferRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x311334...358615` | ⚠️ Unaudited |
| BulkSeller | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1a3753...f00f73` | ⚠️ Unaudited |
| BulkSellerFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x40ae6d...cb7c85` | ⚠️ Unaudited |
| BulkSellerOffchain | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9acc60...6bd320` | ⚠️ Unaudited |
| BundleUtils | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd1a7b8...719f5d` | ⚠️ Unaudited |
| BunnyAthleticGame | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf4c31d...bd588d` | ⚠️ Unaudited |
| BunnyFactoryV4 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5bd8a8...be13c7` | ⚠️ Unaudited |
| BunnyMintingFarm | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7c8b60...637c7a` | ⚠️ Unaudited |
| Burner | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xba9801...20272d` | ⚠️ Unaudited |
| CakeAccumulator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xaa14ad...0414f5` | ⚠️ Unaudited |
| CAKEDepositor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x32ee46...04515b` | ⚠️ Unaudited |
| CakeFeeReceiver | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x215c30...17a599` | ⚠️ Unaudited |
| CakeIFOFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x16c4a4...f23741` | ⚠️ Unaudited |
| CakeLocker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1e6f87...8d042d` | ⚠️ Unaudited |
| CakePlatform | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0cc6e6...92514d` | ⚠️ Unaudited |
| CakePlatformClaimProxyHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0bb31c...803c16` | ⚠️ Unaudited |
| CakeToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x086bef...88807b` | ⚠️ Unaudited |
| CakeVoter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3ac34f...83a13c` | ⚠️ Unaudited |
| CallComparator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd3bfa8...1dec25` | ⚠️ Unaudited |
| CampaignManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x15e4f4...303bc7` | ⚠️ Unaudited |
| CampaignRemoteManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x53ad4c...351ca2` | ⚠️ Unaudited |
| CErc20Delegator | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x1066ab...a11f7d` | ⚠️ Unaudited |
| CEtherDelegator | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xf148cd...5c5851` | ⚠️ Unaudited |
| ChefRewardHook | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0f29b7...7b51ed` | ⚠️ Unaudited |
| ChefToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4223aa...587c0f` | ⚠️ Unaudited |
| Child Liquidity Gauge | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x59562f...c3324f` | ⚠️ Unaudited |
| Child Liquidity Gauge Factory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x871fbd...64dba4` | ⚠️ Unaudited |
| ChildChainGaugeFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x2498a2...29ba95` | ⚠️ Unaudited |
| CircuitBreakerLib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x956cca...3d9288` | ⚠️ Unaudited |
| ClaimFeesHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x640397...cb28d8` | ⚠️ Unaudited |
| ClaimRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x633120...b1be0f` | ⚠️ Unaudited |
| ClaimRewardsV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x097d23...bb79c6` | ⚠️ Unaudited |
| ClaimRewardsXChain | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xabf436...6be233` | ⚠️ Unaudited |
| ClaimSignatureRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x03cbcc...dff36f` | ⚠️ Unaudited |
| ClaimVecrvFees | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x494089...f15d0c` | ⚠️ Unaudited |
| ClaimZap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3f29cb...cf2516` | ⚠️ Unaudited |
| CLeverAMOHarvesterFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd912d9...0abed2` | ⚠️ Unaudited |
| CLeverToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3c20ac...972f86` | ⚠️ Unaudited |
| Cliff Escrow | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0ba8df...57e220` | ⚠️ Unaudited |
| CLLimitOrderHook | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x647a99...bb87b3` | ⚠️ Unaudited |
| CLStableSwapHookFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x44de03...a63173` | ⚠️ Unaudited |
| CLStableSwapPoolFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3669dd...66cfef` | ⚠️ Unaudited |
| CollateralMaximizer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x494ba8...1b96c1` | ⚠️ Unaudited |
| ComboOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4462df...34490c` | ⚠️ Unaudited |
| ComboOracle_KyberSwapElastic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x734fd1...ca4a73` | ⚠️ Unaudited |
| ComboOracle_UniV2_UniV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x184fe0...ab315b` | ⚠️ Unaudited |
| CommonRegistryXChain | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7d60f2...7ec120` | ⚠️ Unaudited |
| CommunalFarm_SaddleD4 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x063907...4a5ca5` | ⚠️ Unaudited |
| CompensationEscrow | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xda7b94...4b64c3` | ⚠️ Unaudited |
| COMPfarming | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1532eb...6aa870` | ⚠️ Unaudited |
| ComposableStablePoolFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4bdcc2...0eada7` | ⚠️ Unaudited |
| ComposableStablePreview | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4a303b...5d3007` | ⚠️ Unaudited |
| ComposableStablePreviewProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x4239dd...faf64a` | ⚠️ Unaudited |
| ComposableStablePreviewV4 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x886c9a...00442d` | ⚠️ Unaudited |
| ComposableStablePreviewV5 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x39a65b...7341fe` | ⚠️ Unaudited |
| CompositeLiquidityRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1311fb...5cc4d1` | ⚠️ Unaudited |
| ConcentratorAladdinETHVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x06dfaf...94df74` | ⚠️ Unaudited |
| ConcentratorHarvesterFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1b544b...63cd98` | ⚠️ Unaudited |
| ConcentratorStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x543252...d1e2b2` | ⚠️ Unaudited |
| ConcentratorStrategyFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x23384d...c099bb` | ⚠️ Unaudited |
| ConcentratorVaultForAsdCRV | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0a6e11...aa0b97` | ⚠️ Unaudited |
| ConfiguratorLogic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x9660b3...6262ee` | ⚠️ Unaudited |
| ConstantPriceFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x1cd776...b1d608` | ⚠️ Unaudited |
| Controller | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x29d378...73f08a` | ⚠️ Unaudited |
| ControllerModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb3f463...017945` | ⚠️ Unaudited |
| Converter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x90dd9a...5c81c2` | ⚠️ Unaudited |
| ConverterDAItoYCRV | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x98158e...8039ca` | ⚠️ Unaudited |
| ConverterRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa61720...3dfb2b` | ⚠️ Unaudited |
| ConvexLockerRecipient | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x000000...279947` | ⚠️ Unaudited |
| ConvexRewarder | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9e01aa...77b362` | ⚠️ Unaudited |
| ConvexSidecar | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xef7cff...22a216` | ⚠️ Unaudited |
| ConvexSidecarFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6dfa62...9cf9e7` | ⚠️ Unaudited |
| ConvexSidecarFactoryL2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf368a8...334477` | ⚠️ Unaudited |
| ConvexSidecarL2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x735a96...00f71d` | ⚠️ Unaudited |
| ConvexStakingWrapperAbra | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa0334c...924ef8` | ⚠️ Unaudited |
| ConvexStakingWrapperFrax | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9dd9f3...231beb` | ⚠️ Unaudited |
| ConvexStakingWrapperFraxLend | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa82beb...b786a4` | ⚠️ Unaudited |
| ConvexToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4e3fbd...5b9d2b` | ⚠️ Unaudited |
| CowSwapBurner | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x9c0f9f...9f264e` | ⚠️ Unaudited |
| CowSwapFeeBurner | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0e800d...92b106` | ⚠️ Unaudited |
| CPITrackerOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x04baf3...ad8808` | ⚠️ Unaudited |
| Create2Factory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x317e6b...731acc` | ⚠️ Unaudited |
| CRON | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8e14d0...5d322e` | ⚠️ Unaudited |
| CrossFarmingToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd50fe6...076810` | ⚠️ Unaudited |
| CrossFarmingTokenDeployer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x96e752...c8919e` | ⚠️ Unaudited |
| CRVAccumulatorV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x963bac...8f6563` | ⚠️ Unaudited |
| CRVAccumulatorV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3e7b4d...aa7ec5` | ⚠️ Unaudited |
| CrvDepositor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x801459...dc86ae` | ⚠️ Unaudited |
| CRVDepositorV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x88c88a...c64026` | ⚠️ Unaudited |
| CrvDepositorWrapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x68655a...5d4123` | ⚠️ Unaudited |
| CRVPoolFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x04ef23...222619` | ⚠️ Unaudited |
| CRVStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x941550...46d8f7` | ⚠️ Unaudited |
| crvUSD Burner | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x14e11c...cf79ff` | ⚠️ Unaudited |
| crvUSD Controller | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x17c6e1...41f4d4` | ⚠️ Unaudited |
| crvUSDControllerFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc9332f...0738bc` | ⚠️ Unaudited |
| crvUSDdeleveragezap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2bc706...f81d74` | ⚠️ Unaudited |
| crvUSDPoolRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x538e98...d3df2d` | ⚠️ Unaudited |
| CrvUsdRedeemer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x935bcf...57aae3` | ⚠️ Unaudited |
| crvUSDStablecoin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf939e0...ac1b4e` | ⚠️ Unaudited |
| CrvVaultSwapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7c022d...25b4a9` | ⚠️ Unaudited |
| CryptoFromPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3b38ce...db7a25` | ⚠️ Unaudited |
| CryptoFromPoolsRate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x38e762...3ba2f8` | ⚠️ Unaudited |
| CryptoFromPoolsRateWAgg | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0a9ae9...c91aab` | ⚠️ Unaudited |
| CryptoFromPoolVaultWAgg | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x002688...1b09be` | ⚠️ Unaudited |
| CryptoFromPoolWAgg | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2d89d8...e1d5ca` | ⚠️ Unaudited |
| CryptopoolLPOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x68e469...dc461b` | ⚠️ Unaudited |
| CryptoWithStablePriceETH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x966cbd...32ca06` | ⚠️ Unaudited |
| CryptoWithStablePriceSfrxeth | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x28d788...113c29` | ⚠️ Unaudited |
| CryptoWithStablePriceTBTC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbef434...fc4217` | ⚠️ Unaudited |
| CryptoWithStablePriceWBTC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x07374b...3e46fa` | ⚠️ Unaudited |
| CryptoWithStablePriceWsteth | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x21f5f6...51b304` | ⚠️ Unaudited |
| CTokens Burner | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf6da94...40e540` | ⚠️ Unaudited |
| Curve DAO Token | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x365acc...65bb09` | ⚠️ Unaudited |
| Curve Fee Distribution | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd16d5e...027914` | ⚠️ Unaudited |
| CurveAccumulator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x11f785...3eb4cd` | ⚠️ Unaudited |
| CurveDepositor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa50cb9...28c335` | ⚠️ Unaudited |
| CurveFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xef9bef...3f7fe1` | ⚠️ Unaudited |
| CurveFactoryL2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x3df990...c3df61` | ⚠️ Unaudited |
| CurveLendMinterFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd99391...76afff` | ⚠️ Unaudited |
| CurveLendOperator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb64e29...9cb8f5` | ⚠️ Unaudited |
| CurveProxyXChain | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x73968b...6cdb2f` | ⚠️ Unaudited |
| CurveStableSwapNG | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x98b540...519b1a` | ⚠️ Unaudited |
| CurveStableswapOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x083350...8193ae` | ⚠️ Unaudited |
| CurveStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb010c3...1b2bb5` | ⚠️ Unaudited |
| CurveStrategyL2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xded96c...798308` | ⚠️ Unaudited |
| CurveVoter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb118fb...13e992` | ⚠️ Unaudited |
| CurveVoterProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x989aeb...24ad80` | ⚠️ Unaudited |
| CurveXChainLiquidityGaugeFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xf3a431...0874ef` | ⚠️ Unaudited |
| CurveYCRVVoter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x52f541...3766b6` | ⚠️ Unaudited |
| CustomPriceFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa0ecd3...b531a0` | ⚠️ Unaudited |
| CvxCrvRari | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4fc2a2...56b987` | ⚠️ Unaudited |
| CvxCrvStakingWrapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaa0c3f...dbe434` | ⚠️ Unaudited |
| CvxCrvStakingWrapperStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x94cc62...75f345` | ⚠️ Unaudited |
| cvxCrvToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x616e8b...d4608d` | ⚠️ Unaudited |
| CvxCrvUtilities | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xadd2f5...29c673` | ⚠️ Unaudited |
| CvxCrvWeightAdjuster | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7ed96e...bf360b` | ⚠️ Unaudited |
| CvxDistribution | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x449f2f...d1ddc6` | ⚠️ Unaudited |
| cvxFpisStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfa87db...6bc483` | ⚠️ Unaudited |
| cvxFpisToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa28473...427df6` | ⚠️ Unaudited |
| cvxFxsStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x49b4d1...37e31a` | ⚠️ Unaudited |
| CvxFxsStakingStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x369256...9b1cbf` | ⚠️ Unaudited |
| cvxFxsToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfeef77...4bdf74` | ⚠️ Unaudited |
| CvxLocker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5ae0fc...ce56a1` | ⚠️ Unaudited |
| CvxLockerV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x72a193...2db86e` | ⚠️ Unaudited |
| CvxMining | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3c75bf...de5343` | ⚠️ Unaudited |
| cvxRewardPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcf50b8...139332` | ⚠️ Unaudited |
| CvxStakingProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4401f1...7943fa` | ⚠️ Unaudited |
| CvxStakingProxyV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb5bbc8...586a4e` | ⚠️ Unaudited |
| DAOFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2d75ff...39a871` | ⚠️ Unaudited |
| DarkParadise | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbd4dc0...f56da1` | ⚠️ Unaudited |
| DarkParadiseV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x20d1b5...e642c3` | ⚠️ Unaudited |
| DEdgeAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x89da1b...bed1ee` | ⚠️ Unaudited |
| DefaultReserveInterestRateStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x04911a...3748ea` | ⚠️ Unaudited |
| DelegationAwareAToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x45420d...5a6e99` | ⚠️ Unaudited |
| DelegationVerifier | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x1d04fc...2e6841` | ⚠️ Unaudited |
| Deposit Burner | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0094ad...5fe0e5` | ⚠️ Unaudited |
| Depositor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x070df1...eef1ca` | ⚠️ Unaudited |
| DepositorV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x941e71...8201e0` | ⚠️ Unaudited |
| DepositorV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x56d27f...b196ad` | ⚠️ Unaudited |
| DiamondCutFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9a3c5e...ee3c98` | ⚠️ Unaudited |
| DiamondLoupeFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x190c58...0ed85b` | ⚠️ Unaudited |
| Directory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x702a89...5caf2d` | ⚠️ Unaudited |
| DistributeYFI | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x812ac0...cfa017` | ⚠️ Unaudited |
| DistributionRewardsProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4b1b08...368d6d` | ⚠️ Unaudited |
| DistributionScheduler | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x42b676...5ae066` | ⚠️ Unaudited |
| DomainClaimAchievement | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xea08f9...d8c59b` | ⚠️ Unaudited |
| DoubleEntrypointFixRelayer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xca96c4...da73c1` | ⚠️ Unaudited |
| DSSLeverage | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x050cd4...92640e` | ⚠️ Unaudited |
| Dummy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0d4bb5...6d022a` | ⚠️ Unaudited |
| DummyMaster | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbb6fbb...5bcacb` | ⚠️ Unaudited |
| dYFI | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x41252e...97a275` | ⚠️ Unaudited |
| dYFI Reward Pool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2391fc...6d894e` | ⚠️ Unaudited |
| DynamicSwap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x035fb9...4b5f60` | ⚠️ Unaudited |
| DynamicVestingEscrow | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x16d96b...d9c55d` | ⚠️ Unaudited |
| EarlyZERO | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x40a59a...cfe180` | ⚠️ Unaudited |
| EclpLPOracleFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x2cf8e1...736c59` | ⚠️ Unaudited |
| EminenceCurrency | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4ccea6...559ad4` | ⚠️ Unaudited |
| EmissionManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x240f38...238c70` | ⚠️ Unaudited |
| EmissionSchedule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa97889...e63dc8` | ⚠️ Unaudited |
| EModeLogic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xb0b0b1...f452a2` | ⚠️ Unaudited |
| EmptyUUPS | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3f69a9...297807` | ⚠️ Unaudited |
| EnsoRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xa146d4...fce9b5` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x23d292...d15639` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x2be667...96ec78` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x58d97b...69c2b2` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x69d614...1ea2cd` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0xa52965...e07950` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x428f2f...6165c8` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0x921b10...32fdbf` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0x9b9fec...07a0a5` | ⚠️ Unaudited |
| ERC20Mock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x0a8850...c6b4ec` | ⚠️ Unaudited |
| ERC20Premined | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x940b45...9e7b2b` | ⚠️ Unaudited |
| ERC4626CowSwapFeeBurner | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1cd776...b1d608` | ⚠️ Unaudited |
| ERC4626LinearPoolFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x161f40...028846` | ⚠️ Unaudited |
| EthereumStateSender | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa10256...ddd46b` | ⚠️ Unaudited |
| EthReader | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7549b6...391532` | ⚠️ Unaudited |
| EVMScriptRegistryFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd44d19...8351fd` | ⚠️ Unaudited |
| Executor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x74b763...41613a` | ⚠️ Unaudited |
| ExternalWeightedMath | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x7920bf...c50cfd` | ⚠️ Unaudited |
| ExtraRewardPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4223aa...587c0f` | ⚠️ Unaudited |
| ExtraRewardsDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa3739b...fbd308` | ⚠️ Unaudited |
| ExtraRewardStashTokenRescue | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9dc3de...cfc918` | ⚠️ Unaudited |
| ExtraRewardStashV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0dbffb...7d8852` | ⚠️ Unaudited |
| EzEthToUsdOracleProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x8053ed...b2619d` | ⚠️ Unaudited |
| Factory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1043eb...4c421d` | ⚠️ Unaudited |
| FactorySNG | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x451113...e0dbc4` | ⚠️ Unaudited |
| FairLaunchCapitalVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3a2d0e...c6cc0a` | ⚠️ Unaudited |
| Faketroller | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6257e3...9fef3f` | ⚠️ Unaudited |
| FarmBooster | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3353c4...1752ba` | ⚠️ Unaudited |
| FarmBoosterV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd611f8...b3655d` | ⚠️ Unaudited |
| FastBridgeL2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1f2af2...80dae1` | ⚠️ Unaudited |
| FastBridgeVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5ef620...21b9ec` | ⚠️ Unaudited |
| Faucet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xc6df4d...a08c10` | ⚠️ Unaudited |
| Fee Distributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x851aae...13e432` | ⚠️ Unaudited |
| FeeBridge | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd43024...1410e9` | ⚠️ Unaudited |
| FeeBurner | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb911fc...3c1ee8` | ⚠️ Unaudited |
| FeeCollector | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x56ba5c...fcdbea` | ⚠️ Unaudited |
| FeeDeposit | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcbec22...7323f7` | ⚠️ Unaudited |
| FeeDepositV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x29dba2...999178` | ⚠️ Unaudited |
| FeeDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x267439...5a61c9` | ⚠️ Unaudited |
| FeeReceiver | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x60136f...4318d6` | ⚠️ Unaudited |
| FeeReceiverCvxFpis | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3a562a...9e08e0` | ⚠️ Unaudited |
| FeeReceiverCvxFxs | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x31c5e6...3f8f24` | ⚠️ Unaudited |
| FeeReceiverPlatform | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd60d80...ec36cf` | ⚠️ Unaudited |
| FeeReceiverVeFxs | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6f94fe...717624` | ⚠️ Unaudited |
| FeeReceiverVlCvx | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb9a212...d2c2b8` | ⚠️ Unaudited |
| FeeRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0f1dc3...30d19c` | ⚠️ Unaudited |
| FeeRegistryXChain | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1e9d69...6ade44` | ⚠️ Unaudited |
| FeesBuybackBurn | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x069b71...3d8423` | ⚠️ Unaudited |
| FeesClaimer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x38e63d...ec7f29` | ⚠️ Unaudited |
| FeesClaimerLinea | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x4389a0...e85313` | ⚠️ Unaudited |
| FeesClaimSwap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x03a41c...233f52` | ⚠️ Unaudited |
| FinalizeAndBroadcast | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcfaa95...5fd4ee` | ⚠️ Unaudited |
| FixedAggregator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x458ad5...7a5583` | ⚠️ Unaudited |
| FixedPriceLBPoolFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7f246e...b26e0d` | ⚠️ Unaudited |
| FixedPricePTAMM | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x39cd9c...c76d23` | ⚠️ Unaudited |
| fKRW | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5c08b5...f2893a` | ⚠️ Unaudited |
| FlashLoanLogic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x15785c...3bc66d` | ⚠️ Unaudited |
| FlashSeller | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x002060...cedeee` | ⚠️ Unaudited |
| FPI | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5ca135...cbe08e` | ⚠️ Unaudited |
| FPIControllerPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0ae84c...469e37` | ⚠️ Unaudited |
| FPIS | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc2544a...901fdb` | ⚠️ Unaudited |
| FpisAccumulator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0ca369...a9f460` | ⚠️ Unaudited |
| FpisDepositor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x27445d...a7a04b` | ⚠️ Unaudited |
| FpisRewardHook | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb93989...a3238d` | ⚠️ Unaudited |
| FractionalToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2a906e...745748` | ⚠️ Unaudited |
| FRAXShares | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3432b6...c964d0` | ⚠️ Unaudited |
| FRAXStablecoin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x853d95...75b99e` | ⚠️ Unaudited |
| FraxStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf285de...5917c3` | ⚠️ Unaudited |
| FraxVoter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xae26e4...fc4d05` | ⚠️ Unaudited |
| FrxETHMiniRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf17c04...792daa` | ⚠️ Unaudited |
| Furnace | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x18fa0c...c4f6c1` | ⚠️ Unaudited |
| fUSD | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3d7f09...6dc10f` | ⚠️ Unaudited |
| FXNAccumulator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x87978a...5bfb13` | ⚠️ Unaudited |
| FXNAccumulatorV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xab1938...667ede` | ⚠️ Unaudited |
| FXNDepositor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x799519...f1c7ab` | ⚠️ Unaudited |
| FXNLocker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x757365...06b2fb` | ⚠️ Unaudited |
| FXNVoter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x518129...16c91f` | ⚠️ Unaudited |
| FXS1559_AMO | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9c6a04...1f51ee` | ⚠️ Unaudited |
| FXS1559_AMO_V3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7301bb...cedae5` | ⚠️ Unaudited |
| FxsAccumulator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1cc16b...c59fb2` | ⚠️ Unaudited |
| FxsDepositor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8f55d7...a3181e` | ⚠️ Unaudited |
| FxsLocker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcd3a26...ce448f` | ⚠️ Unaudited |
| FXSOracleWrapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xee0f15...ab3480` | ⚠️ Unaudited |
| FXSRewardHook | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1a6980...78f1f7` | ⚠️ Unaudited |
| GaguesOwner | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1e41e9...350830` | ⚠️ Unaudited |
| GasPoolReimburser | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4165ef...bc1c38` | ⚠️ Unaudited |
| Gauge | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x107717...f3a27c` | ⚠️ Unaudited |
| Gauge Controller | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x037ee0...0e5af9` | ⚠️ Unaudited |
| Gauge factory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x43cfc6...2e0b91` | ⚠️ Unaudited |
| Gauge registry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1d0fdc...936f8b` | ⚠️ Unaudited |
| Gauge Type Oracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x74d6aa...e8e66d` | ⚠️ Unaudited |
| GaugeAdder | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2ffb7b...98f26a` | ⚠️ Unaudited |
| GaugeAdderMigrationCoordinator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1b57f6...2daea7` | ⚠️ Unaudited |
| GaugeControllerQuerier | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8e5698...9db97c` | ⚠️ Unaudited |
| GaugeDepositorVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x210dfe...07a68a` | ⚠️ Unaudited |
| GaugeExtraRewardDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x04bb59...510330` | ⚠️ Unaudited |
| GaugeMultiRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3c310f...4352d1` | ⚠️ Unaudited |
| GaugeProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x823fd2...61081c` | ⚠️ Unaudited |
| GaugeRewardDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf57b53...cb87b0` | ⚠️ Unaudited |
| GaugeTypeVerifier | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x47ca04...677ee4` | ⚠️ Unaudited |
| GaugeV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x49651b...9b1be6` | ⚠️ Unaudited |
| GaugeValidator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1c662c...dc9524` | ⚠️ Unaudited |
| GaugeVoter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x43f8f8...fbedb7` | ⚠️ Unaudited |
| GaugeVoting | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xbcfbf7...b682f1` | ⚠️ Unaudited |
| GaugeVotingBulk | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x52c17e...179298` | ⚠️ Unaudited |
| GaugeVotingCalc | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4ff7c8...6a6d67` | ⚠️ Unaudited |
| GaugeWorkingBalanceHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xa7d524...738d48` | ⚠️ Unaudited |
| GearboxLinearPoolFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x9dd326...07bd62` | ⚠️ Unaudited |
| GelatoOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xbd5ade...72bb88` | ⚠️ Unaudited |
| GeneralTokenConverter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaf345c...3f3b95` | ⚠️ Unaudited |
| GlobalRecipient | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x0974b5...8cac25` | ⚠️ Unaudited |
| GnosisSafeProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5da07a...906c17` | ⚠️ Unaudited |
| Governance | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc7212f...0cb735` | ⚠️ Unaudited |
| GovernanceRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x442577...dfdb17` | ⚠️ Unaudited |
| GovernorAlpha | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x604cb5...aab46b` | ⚠️ Unaudited |
| Gyro2CLPPoolFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x043a2d...625412` | ⚠️ Unaudited |
| GyroECLPPoolFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x04d584...6b69d1` | ⚠️ Unaudited |
| Harvester | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6d6bca...86e1e7` | ⚠️ Unaudited |
| HealthcalculatorzapforcrvUSDcontroller | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcf61ee...830d6a` | ⚠️ Unaudited |
| HegicERCPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7224f2...a1345a` | ⚠️ Unaudited |
| HegicOptions | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x30a086...e4ae70` | ⚠️ Unaudited |
| HegicOptionsFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x061940...082f23` | ⚠️ Unaudited |
| Helper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x958ed2...ba1bd6` | ⚠️ Unaudited |
| Hooker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x7150ba...407cc8` | ⚠️ Unaudited |
| HybridFactoryOwner | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0f4e1a...3f1048` | ⚠️ Unaudited |
| HybridVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd772ed...fdc3ac` | ⚠️ Unaudited |
| HybridVaultFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbdc322...b8dc5b` | ⚠️ Unaudited |
| HypernativeTrigger | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x113329...b6eeba` | ⚠️ Unaudited |
| ICakeV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3aa289...22e98f` | ⚠️ Unaudited |
| iCollateral | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x78705d...f4e025` | ⚠️ Unaudited |
| iCollateralVaultFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb10e11...3b0f69` | ⚠️ Unaudited |
| iCollateralVaultProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x06a8fe...3ddcc1` | ⚠️ Unaudited |
| iDAI | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6c5f9d...ca35a0` | ⚠️ Unaudited |
| iDAIZapSwap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x260fbb...a867fa` | ⚠️ Unaudited |
| IDODeployerV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x60d885...31fb9d` | ⚠️ Unaudited |
| IEarnAPR | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9cad8a...268eec` | ⚠️ Unaudited |
| IEarnAPRWithPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x029fea...44c9bb` | ⚠️ Unaudited |
| IEarnManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x318135...50edfb` | ⚠️ Unaudited |
| IEarnProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7b3680...884bb4` | ⚠️ Unaudited |
| IEther | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x75a4d0...cd25eb` | ⚠️ Unaudited |
| IFO | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4eff3a...21d820` | ⚠️ Unaudited |
| IFOByProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0366f1...1d5700` | ⚠️ Unaudited |
| IFODeployerV10 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x178705...9a3124` | ⚠️ Unaudited |
| IFODeployerV8 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1a4dc7...bff0c5` | ⚠️ Unaudited |
| IFOInitializableV8 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5b098f...33c396` | ⚠️ Unaudited |
| IFOUpgradeProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf0ae9b...2624b0` | ⚠️ Unaudited |
| ImplicitSwapfeeContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x43d030...72011f` | ⚠️ Unaudited |
| IncentiveGaugeHook | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x68654d...291fcf` | ⚠️ Unaudited |
| InflationaryVest | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1f5789...31b112` | ⚠️ Unaudited |
| InflationReceiver | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8f78dd...66820e` | ⚠️ Unaudited |
| InitializableAdminUpgradeabilityProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x7fc513...4741a7` | ⚠️ Unaudited |
| InitializableAdminUpgradeabilityProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | linea | n/a | `0x89fec3...5d1b7a` | ⚠️ Unaudited |
| insuredVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa53e9e...2863d9` | ⚠️ Unaudited |
| insurerVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb8813d...457bcf` | ⚠️ Unaudited |
| InterestRateCalculatorV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1972b5...bc14f7` | ⚠️ Unaudited |
| iTrade | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x14a5ca...104e3e` | ⚠️ Unaudited |
| JointVaultManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x599113...dfb9ec` | ⚠️ Unaudited |
| KarakDepositor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5cf40c...b74772` | ⚠️ Unaudited |
| Keep3r | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x30f358...2f57f1` | ⚠️ Unaudited |
| Keep3rHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb41772...af955e` | ⚠️ Unaudited |
| Keep3rJob | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb68e7d...02d10d` | ⚠️ Unaudited |
| Keep3rV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1ceb5c...185a44` | ⚠️ Unaudited |
| Keep3rV1Helper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1530a2...5a5df9` | ⚠️ Unaudited |
| Keep3rV1JobRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x739689...ab620c` | ⚠️ Unaudited |
| Keep3rV1Library | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdaef20...924c93` | ⚠️ Unaudited |
| Keep3rV1Oracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x733538...70282c` | ⚠️ Unaudited |
| Keep3rV1OracleUSD | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0a03b4...f5c080` | ⚠️ Unaudited |
| Keep3rV1Volatility | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x173ed6...132dc9` | ⚠️ Unaudited |
| Keep3rV2Helper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1bf162...c8f6c0` | ⚠️ Unaudited |
| Keep3rV2OracleFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2266be...7880cb` | ⚠️ Unaudited |
| Keep3rV3OracleUSD | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1542ec...ba0f82` | ⚠️ Unaudited |
| Kernel | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x47d62e...59e827` | ⚠️ Unaudited |
| L1CrossDomainMessenger | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x126bcc...d542ed` | ⚠️ Unaudited |
| L1ERC721Bridge | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7b07f9...b3b878` | ⚠️ Unaudited |
| L1StandardBridge | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x34c0bd...58bde2` | ⚠️ Unaudited |
| L2 Voting Escrow Oracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x361aa6...1c201d` | ⚠️ Unaudited |
| L2BalancerPseudoMinter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x0c5538...325d4f` | ⚠️ Unaudited |
| L2GaugeCheckpointer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf23b4d...264843` | ⚠️ Unaudited |
| L2MessengerLZ | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x14e11c...cf79ff` | ⚠️ Unaudited |
| L2OutputOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x66cc91...e171e4` | ⚠️ Unaudited |
| L2StandardERC20 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x099420...05fb53` | ⚠️ Unaudited |
| LazyHarvest | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9ea775...c5d0f3` | ⚠️ Unaudited |
| LBPController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2e0561...3e2987` | ⚠️ Unaudited |
| LBPMigrationRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x4eff2d...ff4cb5` | ⚠️ Unaudited |
| LBPoolFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x02916d...bddcaf` | ⚠️ Unaudited |
| LeftoverDistributorHook | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x7a3830...5c4304` | ⚠️ Unaudited |
| LEVAMM | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x07ceda...ba305e` | ⚠️ Unaudited |
| LeveragedToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x92d0cb...75fe83` | ⚠️ Unaudited |
| LeveragezapforcrvUSDcontroller(sfrxETHmarket) | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb556fa...7f2eac` | ⚠️ Unaudited |
| LftLocker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd05957...853d37` | ⚠️ Unaudited |
| LimitBackendHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x599609...08bfcd` | ⚠️ Unaudited |
| LinearAPRModel | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5ebe0a...c0ba32` | ⚠️ Unaudited |
| LinearDiscountModel | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x000ba1...859e61` | ⚠️ Unaudited |
| LinearPreview | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x73187e...5f2ad6` | ⚠️ Unaudited |
| LiquidationLogic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x7fab93...605663` | ⚠️ Unaudited |
| LiquidationOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd82f6d...a3e8ce` | ⚠️ Unaudited |
| Liquidity Gauge | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x008c2d...d781f7` | ⚠️ Unaudited |
| Liquidity Gauge v4 Strat XChain | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8996cb...ccc265` | ⚠️ Unaudited |
| Liquidity Gauge v4 XChain | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0735f0...68672d` | ⚠️ Unaudited |
| LiquidityBootstrappingPoolFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x751a0b...1c87de` | ⚠️ Unaudited |
| LiquidityFeeRecipient | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x576d7a...dbe080` | ⚠️ Unaudited |
| LiquidityGaugeFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4e7bbd...5412ec` | ⚠️ Unaudited |
| LiquidityGaugev4 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x08d36c...ab8f9d` | ⚠️ Unaudited |
| LiquidityGaugeV6 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x00b71a...a2de99` | ⚠️ Unaudited |
| LiquidityIncome | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x288324...5a56cd` | ⚠️ Unaudited |
| LiquiditySeedingHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x203d3a...db769c` | ⚠️ Unaudited |
| LiquidRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x02dd79...a9440d` | ⚠️ Unaudited |
| LiquidTransferProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x30285a...d3288f` | ⚠️ Unaudited |
| ListingContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x4c076e...3df531` | ⚠️ Unaudited |
| LLAMMA - crvUSD AMM | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0ec8e0...dbd93a` | ⚠️ Unaudited |
| LockerAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x98e28a...0d418c` | ⚠️ Unaudited |
| LockerLP | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x251c11...edd44a` | ⚠️ Unaudited |
| LockerPreLaunch | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5c5ccb...cf0922` | ⚠️ Unaudited |
| LockerToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x01475c...1c10e7` | ⚠️ Unaudited |
| LockupDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x58adf9...f46cb3` | ⚠️ Unaudited |
| LongOTokenPut | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x12c51d...ce3aa6` | ⚠️ Unaudited |
| Lottery | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x127551...d13280` | ⚠️ Unaudited |
| LotteryNFT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1900e0...e4992e` | ⚠️ Unaudited |
| LotteryRewardProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6b4dc7...bfc3ba` | ⚠️ Unaudited |
| LPBurner | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4c62ac...2128bd` | ⚠️ Unaudited |
| LPOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x303598...986647` | ⚠️ Unaudited |
| LT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0b0d8b...3f1eb4` | ⚠️ Unaudited |
| LTMigrator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2cdb9f...37066c` | ⚠️ Unaudited |
| LzSender | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2b8a26...6eaeaa` | ⚠️ Unaudited |
| LzXdaoBridger | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x10b97c...affe52` | ⚠️ Unaudited |
| ManagedPoolAddRemoveTokenLib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xb19382...377b75` | ⚠️ Unaudited |
| ManagedPoolAmmLib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x7d2248...d28c9a` | ⚠️ Unaudited |
| ManagedPoolFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x956cca...3d9288` | ⚠️ Unaudited |
| ManualTokenTrackerAMO | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1be588...683f5a` | ⚠️ Unaudited |
| Market | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x505002...e90bd5` | ⚠️ Unaudited |
| MarketMathStatic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4f9433...2e4f50` | ⚠️ Unaudited |
| MasterChef | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x01d41b...e3b40e` | ⚠️ Unaudited |
| MasterChefRewardHook | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb5932c...8b84da` | ⚠️ Unaudited |
| MasterChefV3Operator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0a7ff2...576d45` | ⚠️ Unaudited |
| MAVDepositor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x177eaa...70e7ec` | ⚠️ Unaudited |
| MaverickToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x64b88c...0faaa7` | ⚠️ Unaudited |
| MAVLocker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xc5ccc2...50c067` | ⚠️ Unaudited |
| Merkle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x414cbb...c10c29` | ⚠️ Unaudited |
| MerkleAirdropFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa1bc2c...142991` | ⚠️ Unaudited |
| MerkleDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7cf291...a64db5` | ⚠️ Unaudited |
| MerkleDistributor3CRV | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbeb3e5...3c3a5c` | ⚠️ Unaudited |
| MerkleDistributorSdt | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2de8e9...0d4f5f` | ⚠️ Unaudited |
| MerkleOrchard | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x9805dc...764102` | ⚠️ Unaudited |
| MerkleOwner | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x725703...73451c` | ⚠️ Unaudited |
| MessageDigestVerifier | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x3d8ead...7c69c1` | ⚠️ Unaudited |
| MetaCLever | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x057810...ca4eb1` | ⚠️ Unaudited |
| MetaFurnace | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6f7768...7950f9` | ⚠️ Unaudited |
| MetaKeep3r | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x93dfa8...0a9372` | ⚠️ Unaudited |
| MetaMorphoV1_1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x13aa4f...0ee4c5` | ⚠️ Unaudited |
| MetaMorphoV1_1Factory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1897a8...535c24` | ⚠️ Unaudited |
| MetaStablePreview | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x21a9fd...d59cd3` | ⚠️ Unaudited |
| MetaZapNG | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x2243b9...5ec20c` | ⚠️ Unaudited |
| MevCaptureHook | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1bca39...716b1c` | ⚠️ Unaudited |
| MicroVeFXSStaker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2aac16...0a3ca2` | ⚠️ Unaudited |
| MigrationHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5cce10...9083fc` | ⚠️ Unaudited |
| Minter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x0094ad...5fe0e5` | ⚠️ Unaudited |
| Minter Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xc0b338...95feea` | ⚠️ Unaudited |
| MixedQuoter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2e6d57...b18b39` | ⚠️ Unaudited |
| MockAggregator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x1c2b98...c842dc` | ⚠️ Unaudited |
| MockERC20 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2989df...f7448c` | ⚠️ Unaudited |
| MockERC4626Token | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x4638ab...f1551c` | ⚠️ Unaudited |
| MockGearboxDieselToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xb521dd...760ce4` | ⚠️ Unaudited |
| MockGearboxVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x79e435...05ea6c` | ⚠️ Unaudited |
| MockStaticAToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x698cae...2bcda4` | ⚠️ Unaudited |
| MockToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x08d6cf...bd9021` | ⚠️ Unaudited |
| MockVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4fb471...66c968` | ⚠️ Unaudited |
| MonolithicCurveMorphoMarketFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf86333...b7b80f` | ⚠️ Unaudited |
| Morpho | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbbbbbb...eeffcb` | ⚠️ Unaudited |
| MorphoChainlinkOracleV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcc00d9...3805c8` | ⚠️ Unaudited |
| MorphoChainlinkOracleV2Factory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3a7bb3...3ad766` | ⚠️ Unaudited |
| MorphoLiquidationModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x80854d...44124c` | ⚠️ Unaudited |
| MorphoStrategyWrapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x12d706...cd6960` | ⚠️ Unaudited |
| MSIGHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x977ead...7a8cbb` | ⚠️ Unaudited |
| Multicall3p | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb782c6...d2d202` | ⚠️ Unaudited |
| MultiClaim | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x32facb...203a5f` | ⚠️ Unaudited |
| MultiMerkleStash | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x03e34b...c01db4` | ⚠️ Unaudited |
| MultipleVestHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x572dec...d11983` | ⚠️ Unaudited |
| MultiRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xafd3d3...0a96ca` | ⚠️ Unaudited |
| NewStrategyAngleStakeDao | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x79b738...a0e05f` | ⚠️ Unaudited |
| NexusMutualCover | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x93a288...de7a28` | ⚠️ Unaudited |
| NFTBoosterVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa324a2...68bdd9` | ⚠️ Unaudited |
| NFTHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x83d85a...8f38e8` | ⚠️ Unaudited |
| NoopRewardsDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x48d9a9...802e5f` | ⚠️ Unaudited |
| NoProtocolFeeLiquidityBootstrappingPoolFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x0c6052...18828f` | ⚠️ Unaudited |
| Normalizer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9214a6...f023aa` | ⚠️ Unaudited |
| Null Minter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1025cf...017214` | ⚠️ Unaudited |
| NullVotingEscrow | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x475d18...0fa229` | ⚠️ Unaudited |
| OmnichainProposalSenderL1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xad9981...f302ed` | ⚠️ Unaudited |
| OmnichainStakingToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x022105...740222` | ⚠️ Unaudited |
| OmniVotingEscrowAdaptor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x681714...ff4bc0` | ⚠️ Unaudited |
| OneWayLendingFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x34024b...41f38c` | ⚠️ Unaudited |
| OnlyBoostAllocator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3680cc...a7364f` | ⚠️ Unaudited |
| OnlyBoostAllocatorL2V2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x18e8a9...54b657` | ⚠️ Unaudited |
| Optimism Block Hash oracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x3c0a40...9c4d11` | ⚠️ Unaudited |
| Optimism Broadcaster | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe0fe44...72e0b9` | ⚠️ Unaudited |
| Optimism Relayer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x519194...2961d9` | ⚠️ Unaudited |
| OptimismMintableERC20 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x415873...5d47f1` | ⚠️ Unaudited |
| OptimismMintableERC20Factory | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x11fe3b...1376cc` | ⚠️ Unaudited |
| OptimismPortalCGT | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x36cb65...ca6f6d` | ⚠️ Unaudited |
| OptimismRootGaugeFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3083a1...73c5c8` | ⚠️ Unaudited |
| OptimisticRootGaugeFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x18cc3c...94f71b` | ⚠️ Unaudited |
| Optimizer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x48af33...91bce7` | ⚠️ Unaudited |
| OptionsV1Library | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x48bc6d...76cdd5` | ⚠️ Unaudited |
| OptionsV1Reserve | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x00fbd1...d86309` | ⚠️ Unaudited |
| OpynBuyVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4ca4e1...85012c` | ⚠️ Unaudited |
| OpynPerpVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x404d77...8b86ca` | ⚠️ Unaudited |
| OpynPerpVaultBtc | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaa25cb...00bcb4` | ⚠️ Unaudited |
| OpynPerpVaultEth | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc10b7c...dcf4a5` | ⚠️ Unaudited |
| Oracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x000000...70bc1a` | ⚠️ Unaudited |
| OracleLib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x02176d...c10ecc` | ⚠️ Unaudited |
| OracleProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | `0x4b1b0c...934cef` | ⚠️ Unaudited |
| OSMedianizer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcf6308...1ed0f1` | ⚠️ Unaudited |
| OTCRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x53e375...0461b5` | ⚠️ Unaudited |
| OwnershipFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x359eb1...6f230f` | ⚠️ Unaudited |
| OwnershipMiddlemanV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2efde1...f21dcc` | ⚠️ Unaudited |
| OYfi | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdc1ba2...af9c22` | ⚠️ Unaudited |
| PancakeERC20Strategy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | `0x8e18cb...9548a5` | ⚠️ Unaudited |
| PancakeFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xacfc87...a88258` | ⚠️ Unaudited |
| PancakeFixedStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xaf7cdb...f6de57` | ⚠️ Unaudited |
| PancakeGiftV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x68e5f5...e2ece3` | ⚠️ Unaudited |
| PancakeInfoSender | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7c5f8f...a17c64` | ⚠️ Unaudited |
| PancakeMasterchefStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x16a659...3be58e` | ⚠️ Unaudited |
| PancakePredictionV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1cdc19...d799f4` | ⚠️ Unaudited |
| PancakeRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x05ff2b...608c7f` | ⚠️ Unaudited |
| PancakeStableSwapFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x09b780...550534` | ⚠️ Unaudited |
| PancakeStableSwapFactoryOwner | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x737558...27578d` | ⚠️ Unaudited |
| PancakeStableSwapInfo | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5a075d...7a9448` | ⚠️ Unaudited |
| PancakeStableSwapLPFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1179ad...75a2c0` | ⚠️ Unaudited |
| PancakeStableSwapThreePoolDeployer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6af7a6...8c6b2e` | ⚠️ Unaudited |
| PancakeStableSwapThreePoolInfo | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5950ef...c58f16` | ⚠️ Unaudited |
| PancakeStableSwapTwoPoolDeployer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xddfcda...dd09ff` | ⚠️ Unaudited |
| PancakeStableSwapTwoPoolInfo | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0d396b...7bed3a` | ⚠️ Unaudited |
| PancakeStableSwapWBNBHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x52e5d1...fee090` | ⚠️ Unaudited |
| PancakeVaultFactoryXChain | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5f0c60...dfde72` | ⚠️ Unaudited |
| PancakeVeSender | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x724172...512d86` | ⚠️ Unaudited |
| PancakeVeSenderV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x79d4d0...d56628` | ⚠️ Unaudited |
| PancakeVoterProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4086d4...00da07` | ⚠️ Unaudited |
| PCSVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3b7c1b...479212` | ⚠️ Unaudited |
| Peg Keeper Offboarding | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x81813e...699ca8` | ⚠️ Unaudited |
| Peg Keeper Regulator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x36a04c...dd855f` | ⚠️ Unaudited |
| Peg Keeper V2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0a05ff...9797d3` | ⚠️ Unaudited |
| PegKeeper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1ef89e...4dccae` | ⚠️ Unaudited |
| PegPrice | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x226845...6c5445` | ⚠️ Unaudited |
| PENDLE | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x808507...8da827` | ⚠️ Unaudited |
| PendleAaveV3OffchainRewardsSYUpg | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0x540e18...6d0768` | ⚠️ Unaudited |
| PendleAaveV3SY | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8c28d2...9dfb74` | ⚠️ Unaudited |
| PendleAaveV3WithRewardsSYUpg | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x269b2a...a98161` | ⚠️ Unaudited |
| PendleAerodromeVolatileSY | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0x02adf7...833a84` | ⚠️ Unaudited |
| PendleAgETHSY | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb1b915...02752a` | ⚠️ Unaudited |
| PendleAuraBbAWethSwethSY | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcb611d...887da3` | ⚠️ Unaudited |
| PendleAuraWethAnkrethSY | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc0ca1e...01e9dc` | ⚠️ Unaudited |
| PendleAuraWethAnkrethSYV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7f531a...ef8463` | ⚠️ Unaudited |
| PendleAuraWethRethSY | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdf7083...3dd915` | ⚠️ Unaudited |
| PendleAuraWethRocketEthSYV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9bdb1d...c89e56` | ⚠️ Unaudited |
| PendleAuraWethVethSY | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8c76e1...a159ea` | ⚠️ Unaudited |
| PendleAuraWethWstethSY | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8267fd...dc9820` | ⚠️ Unaudited |
| PendleAuraWstethAnkreth | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb5cd09...36f044` | ⚠️ Unaudited |
| PendleBeraStoneVaultSY | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xd7b2a4...e97c45` | ⚠️ Unaudited |
| PendleBeraVedaBTCSY | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xaaa576...a6ab94` | ⚠️ Unaudited |
| PendleBeraVedaETHSY | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x042677...5f55da` | ⚠️ Unaudited |
| PendleBoringSolvBTCOneracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x98f8c6...2589ed` | ⚠️ Unaudited |
| PendleBridgedPrincipalToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa28b24...806f45` | ⚠️ Unaudited |
| PendleCommonPoolDeployHelperV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x71364e...e6335d` | ⚠️ Unaudited |
| PendleCommonSYFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfe906f...c4fff4` | ⚠️ Unaudited |
| PendleConcreteLBTCSY | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x83cb5e...ba4723` | ⚠️ Unaudited |
| PendleConcreteSolvBTCBBNSY | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x24e957...4f0b6b` | ⚠️ Unaudited |
| PendleConcreteSUSDESY | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7258e5...1e2790` | ⚠️ Unaudited |
| PendleConcreteUniBTCSY | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xa42436...2b4e68` | ⚠️ Unaudited |
| PendleConcreteVaultSY | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9a90fd...440423` | ⚠️ Unaudited |
| PendleCornEBTCSY | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xc86cc6...3ebfe7` | ⚠️ Unaudited |
| PendleCornLBTCSY | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9d6ec7...7f223e` | ⚠️ Unaudited |
| PendleCornSolvBTCBBNSYUpg | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x23e068...8b5f80` | ⚠️ Unaudited |
| PendleCornUniBTCSYUpg | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x83e1d1...cc5593` | ⚠️ Unaudited |
| PendleCurveFraxUsdcSY | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd393d1...81bc04` | ⚠️ Unaudited |
| PendleCurvePool2TokenSYUpg | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xba04c9...ac8037` | ⚠️ Unaudited |
| PendleCUSDAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xae8bc0...21d33b` | ⚠️ Unaudited |
| PendleEBTCSY | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc7b695...8c10a6` | ⚠️ Unaudited |
| PendleEBTCSYV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x7acdf2...961880` | ⚠️ Unaudited |
| PendleEEigenSYUpg | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x782374...b21923` | ⚠️ Unaudited |
| PendleERC20SY | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8b9d89...c29c48` | ⚠️ Unaudited |
| PendleERC4626NoRedeemNoDepositUpgSY | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x8e5e01...7ba515` | ⚠️ Unaudited |
| PendleERC4626NoRedeemUpgSY | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x338e2c...d718cb` | ⚠️ Unaudited |
| PendleERC4626NotRedeemableToAssetSY | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf6193c...ec980f` | ⚠️ Unaudited |
| PendleERC4626OptRedeemSYUpg | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x86e2a1...c185a8` | ⚠️ Unaudited |
| PendleERC4626SY | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x90f193...0e978e` | ⚠️ Unaudited |
| PendleERC4626SYV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcf120a...d5eab0` | ⚠️ Unaudited |
| PendleERC4626UpgSYV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x0a9116...520b78` | ⚠️ Unaudited |
| PendleEUSDSY | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7e16e4...c207f1` | ⚠️ Unaudited |
| PendleExchangeRateOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x78d686...3cd7a0` | ⚠️ Unaudited |
| PendleExchangeRateOracleApp | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb6d07d...024d33` | ⚠️ Unaudited |
| PendleFeeDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb0caa6...2ce8cb` | ⚠️ Unaudited |
| PendleFeeDistributorV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x8c2375...4433b9` | ⚠️ Unaudited |
| PendleFeeSetter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd4dfcf...d09f10` | ⚠️ Unaudited |
| PendleFluxLendingSY | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdeaa58...6f2d76` | ⚠️ Unaudited |
| PendleFXSaveSY | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x13945b...18d2ab` | ⚠️ Unaudited |
| PendleGaugeControllerMainchainUpg | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7762cb...a31c9a` | ⚠️ Unaudited |
| PendleGaugeControllerUpg | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0x17f100...993d58` | ⚠️ Unaudited |
| PendleGovernanceProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x6f1bfd...0b4188` | ⚠️ Unaudited |
| PendleHwHLPSY | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x86f681...e457ed` | ⚠️ Unaudited |
| PendleInstadappLendingSY | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x4726fc...141191` | ⚠️ Unaudited |
| PendleKarakVaultSUSDESY | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x1b6418...c8e19e` | ⚠️ Unaudited |
| PendleKarakVaultUSDESY | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd63a35...85b0e8` | ⚠️ Unaudited |
| PendleKarakVaultWEETHSY | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x8db42a...873796` | ⚠️ Unaudited |
| PendleL2LRTUpgSY | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0x09c9ac...c355be` | ⚠️ Unaudited |
| PendleLBTCBaseSY | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0xb26126...d23ab4` | ⚠️ Unaudited |
| PendleLBTCBaseSYScaled18 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0x67e64a...5801f9` | ⚠️ Unaudited |
| PendleLBTCExchangeRateOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x82199b...e5e43b` | ⚠️ Unaudited |
| PendleLBTCSY | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc781c0...5c6f36` | ⚠️ Unaudited |
| PendleLevelUSDSY | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x14ff57...1b9748` | ⚠️ Unaudited |
| PendleLimitRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc20e5f...38f2db` | ⚠️ Unaudited |
| PendleLiquidBeraBTCSYScaled18 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x3d9819...b01aff` | ⚠️ Unaudited |
| PendleLocker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd8fa8d...fa289a` | ⚠️ Unaudited |
| PendleMarketFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xefbfc4...1a8ee4` | ⚠️ Unaudited |
| PendleMarketFactoryV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc79ace...3a218b` | ⚠️ Unaudited |
| PendleMarketFactoryV6Upg | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xef0a48...6839c4` | ⚠️ Unaudited |
| PendleMellow4626SYUpg | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x210e15...f7422b` | ⚠️ Unaudited |
| PendleMellowRstETHSY | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x749087...0202f9` | ⚠️ Unaudited |
| PendleMellowSUSDESY | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xbcd952...c7797e` | ⚠️ Unaudited |
| PendleMellowVaultERC4626SYUpg | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7b91b6...df9718` | ⚠️ Unaudited |
| PendleMellowVaultSYBaseV2Upg | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x640467...18291f` | ⚠️ Unaudited |
| PendleMellowVaultWstETHSYUpg | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x198139...b00346` | ⚠️ Unaudited |
| PendleMidasSY | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x01e0f0...88bb5c` | ⚠️ Unaudited |
| PendleMorpho4626AssetSY | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8077b6...34d130` | ⚠️ Unaudited |
| PendleMsgReceiveEndpointUpg | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0x0fe4a1...2a0663` | ⚠️ Unaudited |
| PendleMsgSendEndpointUpg | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x07b101...2e989f` | ⚠️ Unaudited |
| PendleMulticall | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xca54ac...166640` | ⚠️ Unaudited |
| PendleMultiTokenMerkleDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x726db0...609a19` | ⚠️ Unaudited |
| PendlePoolDeployHelperV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8a28d3...6c9c24` | ⚠️ Unaudited |
| PendlePTOFTAdapterFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x905af8...636732` | ⚠️ Unaudited |
| PendlePtOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbbd487...4a3e30` | ⚠️ Unaudited |
| PendlePufWETHSY | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x253008...a0c905` | ⚠️ Unaudited |
| PendlePumpBTCSY | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x78f9af...f19ab2` | ⚠️ Unaudited |
| PendleReservoirUSDSY | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x43d665...4a7931` | ⚠️ Unaudited |
| PendleReservoirWsrUSDSY | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x212670...edd15e` | ⚠️ Unaudited |
| PendleREZtakeSY | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8eb1a6...20c3e4` | ⚠️ Unaudited |
| PendleRLPSY | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9c846e...426f76` | ⚠️ Unaudited |
| PendleRsETHSY | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x730a5e...da793c` | ⚠️ Unaudited |
| PendleRswETHSY | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x778672...c615d9` | ⚠️ Unaudited |
| PendleSavingUSDASY | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x8946f6...f5a14e` | ⚠️ Unaudited |
| PendleSENASY | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa36ecc...a12c3d` | ⚠️ Unaudited |
| PendleSfrxEthSY | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xeb8300...210673` | ⚠️ Unaudited |
| PendleSGHOSY | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xae14ae...71f609` | ⚠️ Unaudited |
| PendleSiloWithIncentiveSY | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe05082...bbb04c` | ⚠️ Unaudited |
| PendleSolvBeraBTCSY | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x67e58f...c609d7` | ⚠️ Unaudited |
| PendleSolvBTCBBNBaseSYUpg | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0x4a2b38...d44abc` | ⚠️ Unaudited |
| PendleSolvBTCBBNBSCSYUpg | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | `0x141ec2...ff2831` | ⚠️ Unaudited |
| PendleSolvBTCBBNSYUpg | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x859c11...5b4e34` | ⚠️ Unaudited |
| PendleSophonFarmingSY | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbe9a9b...2ea1e4` | ⚠️ Unaudited |
| PendleSophonPointManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x74c5a0...45d986` | ⚠️ Unaudited |
| PendleSparkLinearDiscountOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3fa71e...9e7d35` | ⚠️ Unaudited |
| PendleStakedLevelUSDSY | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x0a9b2c...6cf6f9` | ⚠️ Unaudited |
| PendleStakingSPKUSDSSY | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x0ee69a...a0d075` | ⚠️ Unaudited |
| PendleStakingUSDSSY | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdb0170...8415de` | ⚠️ Unaudited |
| PendleStEURSY | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xd353ae...43dfde` | ⚠️ Unaudited |
| PendleStkGHOSY | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7fbd26...f71df1` | ⚠️ Unaudited |
| PendleStrataUSDESY | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x33e889...af8bee` | ⚠️ Unaudited |
| PendleStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa7641a...ad0c54` | ⚠️ Unaudited |
| PendleSuperOETHSY | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0x67507f...cbd2ff` | ⚠️ Unaudited |
| PendleSUSDESY | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xabf816...781d9b` | ⚠️ Unaudited |
| PendleSUSDSAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7ee16d...6bd155` | ⚠️ Unaudited |
| PendleSUSDSSY | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbe3d4e...018ba7` | ⚠️ Unaudited |
| PendleSwap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd33ae2...bfd782` | ⚠️ Unaudited |
| PendleSwapAggregator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9660ac...64f924` | ⚠️ Unaudited |
| PendleSwapEthereum | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xddceec...2370bc` | ⚠️ Unaudited |
| PendleSyrupSY | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc9e9c8...71551d` | ⚠️ Unaudited |
| PendleTerminalExternalCap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x89c649...4afe3e` | ⚠️ Unaudited |
| PendleTerminalSYScaled18 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x0d2984...7451b3` | ⚠️ Unaudited |
| PendleTreeHouseETHSY | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xb2dbc1...4bf20b` | ⚠️ Unaudited |
| PendleUmbrellaStake4626SY | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x39f47a...be7830` | ⚠️ Unaudited |
| PendleUmbrellaStakeTokenSY | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x1d292b...d93151` | ⚠️ Unaudited |
| PendleUniBTCSYUpg | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x87b8e4...407d78` | ⚠️ Unaudited |
| PendleUniETHSY | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc430db...6d16b7` | ⚠️ Unaudited |
| PendleUSDESY | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x925a15...58340e` | ⚠️ Unaudited |
| PendleUSDSSYWithCap | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x508def...36697b` | ⚠️ Unaudited |
| PendleVaultFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4c1cf4...1181e5` | ⚠️ Unaudited |
| PendleVotingControllerUpg | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x44087e...21f2f0` | ⚠️ Unaudited |
| PendleWcgUSDSY | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0x77d07a...c06ebf` | ⚠️ Unaudited |
| PendleWEEthkSY | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xe27967...95894a` | ⚠️ Unaudited |
| PendleWEEthkWithRateSY | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbbf8cf...982d32` | ⚠️ Unaudited |
| PendleWEEthsSY | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x772079...b3400a` | ⚠️ Unaudited |
| PendleWEEthsWithRateSY | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x012bad...02c9c5` | ⚠️ Unaudited |
| PendleWEEthSY | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xac0047...970d65` | ⚠️ Unaudited |
| PendleWstETHPriceFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x905109...63b3f2` | ⚠️ Unaudited |
| PendleWstEthSY | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcbc72d...40c0bc` | ⚠️ Unaudited |
| PendleYearnBalancerLPSY | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xa47e35...85f431` | ⚠️ Unaudited |
| PendleYieldContractFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x70ee0a...75bafd` | ⚠️ Unaudited |
| PendleZerolendEBTCSYUpg | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x96af5d...cf8b6b` | ⚠️ Unaudited |
| PendleZtakeEzETHSY | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x7a493b...434744` | ⚠️ Unaudited |
| PendleZtakeRsETHSY | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x34349c...0a9789` | ⚠️ Unaudited |
| PendleZtakeUSDESY | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x293c69...256e30` | ⚠️ Unaudited |
| PendleZtakeWeETHSY | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xd7df7e...20bfa7` | ⚠️ Unaudited |
| PermastakerOperator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3419b3...c955bf` | ⚠️ Unaudited |
| Platform | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x000000...b27606` | ⚠️ Unaudited |
| PlatformClaimable | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2d57e7...c33fbf` | ⚠️ Unaudited |
| PlatformFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1abe68...7744d1` | ⚠️ Unaudited |
| PlatformFeeBurner | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x695eb5...411403` | ⚠️ Unaudited |
| PlatformFeeDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd27917...76e973` | ⚠️ Unaudited |
| PlatformFeeSpliter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x323668...2380c8` | ⚠️ Unaudited |
| Polygon zkEVM Broadcaster | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb5e7fe...29c051` | ⚠️ Unaudited |
| PolygonRootGaugeFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4c4287...b64e34` | ⚠️ Unaudited |
| Pool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x8676e3...04972e` | ⚠️ Unaudited |
| Pool_USDC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1864ca...da1c0d` | ⚠️ Unaudited |
| Pool_USDT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7d3fcd...d54968` | ⚠️ Unaudited |
| PoolAddressesProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xaf9ab0...dde595` | ⚠️ Unaudited |
| PoolAddressesProviderRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x5046c3...7f08cb` | ⚠️ Unaudited |
| PoolConfigurator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x78ad3d...a2a7a7` | ⚠️ Unaudited |
| PoolHarvestHook | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe4d89e...729f9a` | ⚠️ Unaudited |
| PoolInformation | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x6e230d...06a14d` | ⚠️ Unaudited |
| PoolLogic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x5148c3...5d1f33` | ⚠️ Unaudited |
| PoolManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3b2d30...135a9c` | ⚠️ Unaudited |
| PoolManagerProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x16a04e...94947a` | ⚠️ Unaudited |
| PoolManagerSecondaryProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x153dfc...cfc72a` | ⚠️ Unaudited |
| PoolManagerShutdownProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x73b1b1...27889f` | ⚠️ Unaudited |
| PoolManagerTertiaryProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0ff339...feb3b2` | ⚠️ Unaudited |
| PoolManagerV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xae5f31...500183` | ⚠️ Unaudited |
| PoolManagerV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8a849f...1b1e83` | ⚠️ Unaudited |
| PoolManagerV4 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0e4e9d...c02e11` | ⚠️ Unaudited |
| PoolMigrator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x12adde...6f0578` | ⚠️ Unaudited |
| PoolPauseHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1780e8...d943ab` | ⚠️ Unaudited |
| PoolPositionManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xc402d1...f6fbd2` | ⚠️ Unaudited |
| PoolRecoveryHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x03f3fb...712054` | ⚠️ Unaudited |
| PoolRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3051cc...603a4a` | ⚠️ Unaudited |
| PoolRewardHook | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x723f9a...cd4a96` | ⚠️ Unaudited |
| PoolSwapFeeHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x254f3a...5f83b0` | ⚠️ Unaudited |
| PoolTypes | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x52d85e...a78a9c` | ⚠️ Unaudited |
| PoolUtilities | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5fba69...8e5cd1` | ⚠️ Unaudited |
| PoolVoter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x36b06e...59ba26` | ⚠️ Unaudited |
| PositionInspector | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x550056...7842e2` | ⚠️ Unaudited |
| PositionsManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4592e4...dac6de` | ⚠️ Unaudited |
| PredictionV2Admin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb509db...1741f6` | ⚠️ Unaudited |
| PredictionV2Keeper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x581619...33c656` | ⚠️ Unaudited |
| PreLaunchLocker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb407ca...9850e7` | ⚠️ Unaudited |
| PriceLens0 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4af614...b3dc5a` | ⚠️ Unaudited |
| PriceProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3e94fa...3be471` | ⚠️ Unaudited |
| PrincipalToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x032b7c...049c96` | ⚠️ Unaudited |
| PrincipalTokenUtil | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2bbd14...6f1983` | ⚠️ Unaudited |
| PrismaClaimOperator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8e2e98...1880ab` | ⚠️ Unaudited |
| PrismaPSM | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x15b434...1fff61` | ⚠️ Unaudited |
| ProposalGuardian | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc813f6...002e76` | ⚠️ Unaudited |
| ProtocolController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2d8bce...64d4fb` | ⚠️ Unaudited |
| ProtocolFeeController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x2ff226...4e5363` | ⚠️ Unaudited |
| ProtocolFeeControllerMigration | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x1b6f05...f17e59` | ⚠️ Unaudited |
| ProtocolFeeHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x30ff09...308d7e` | ⚠️ Unaudited |
| ProtocolFeePercentagesProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x97207b...b90c4a` | ⚠️ Unaudited |
| ProtocolFeeSweeper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x136f1e...1778d1` | ⚠️ Unaudited |
| ProtocolFeesWithdrawer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5ef4c5...bd23c5` | ⚠️ Unaudited |
| ProtocolIdRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5cf492...62a4b9` | ⚠️ Unaudited |
| ProtocolTimelock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb27afc...2d8e6a` | ⚠️ Unaudited |
| ProtocolVersions | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x3c7ea1...ca9043` | ⚠️ Unaudited |
| Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3aa7e8...dcb8c1` | ⚠️ Unaudited |
| ProxyAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x01b431...e7e1ee` | ⚠️ Unaudited |
| ProxyFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x66807b...13fc8f` | ⚠️ Unaudited |
| ProxyFeeCollectorBurner | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x1d5649...7cc3bb` | ⚠️ Unaudited |
| ProxyForCakePoolFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x03e80d...7a2727` | ⚠️ Unaudited |
| ProxyOFT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2b162d...87a3bb` | ⚠️ Unaudited |
| PtAndLpToAsset | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xfa6b22...f6bd57` | ⚠️ Unaudited |
| PublicAllocator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3df418...ca05c4` | ⚠️ Unaudited |
| PullRewardsTransferStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xd23f2a...de2291` | ⚠️ Unaudited |
| PythAggregatorV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x0bd276...f7a742` | ⚠️ Unaudited |
| PythUpdater | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x518974...30480b` | ⚠️ Unaudited |
| RangeAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x51452b...64fde5` | ⚠️ Unaudited |
| RariFuseLendingAMO | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x843df6...ddb0a2` | ⚠️ Unaudited |
| RateAdjustmentOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x032b7c...049c96` | ⚠️ Unaudited |
| RateOracleRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x73b4ff...a437d6` | ⚠️ Unaudited |
| RebalancePool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3415fc...6473c7` | ⚠️ Unaudited |
| Receiver | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x642a16...89dc2c` | ⚠️ Unaudited |
| RecipientFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb53943...035a93` | ⚠️ Unaudited |
| ReClammPoolFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x0c8f71...5dbb98` | ⚠️ Unaudited |
| ReClammPoolHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x02916d...bddcaf` | ⚠️ Unaudited |
| RecoveryModeHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x313a8d...0be053` | ⚠️ Unaudited |
| Redeem | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1d8a9c...c4d356` | ⚠️ Unaudited |
| RefundLogic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x243347...ed53fd` | ⚠️ Unaudited |
| Registrar | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1c3a4d...a5c6de` | ⚠️ Unaudited |
| Registry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0b26d0...aee1e5` | ⚠️ Unaudited |
| ReleaseRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb011e5...1d395e` | ⚠️ Unaudited |
| RequestOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1f4903...9f1d51` | ⚠️ Unaudited |
| RescueStrat | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcb354d...be9d21` | ⚠️ Unaudited |
| RescueToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb15ffb...5aaac9` | ⚠️ Unaudited |
| ReservesSetupHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x4cc1ab...ad1dce` | ⚠️ Unaudited |
| ResolvStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1d2d1e...d827e6` | ⚠️ Unaudited |
| ResolvStakingCheckpoints | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x253c6e...8f2784` | ⚠️ Unaudited |
| ResolvStakingHelpers | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x948ade...f17970` | ⚠️ Unaudited |
| ResolvStakingSilo | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x502f9f...c88d4f` | ⚠️ Unaudited |
| ResolvStakingV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xfe4bce...2e5e23` | ⚠️ Unaudited |
| RestrictedERC20 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x08b03d...bec01f` | ⚠️ Unaudited |
| ResupplyPair | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd210bc...e1e42b` | ⚠️ Unaudited |
| RevenueSharingPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9cac97...38dd01` | ⚠️ Unaudited |
| RevenueSharingPoolFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xbbc86f...38cd2e` | ⚠️ Unaudited |
| RevenueSharingPoolGateway | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x011f2a...47d94a` | ⚠️ Unaudited |
| RevenueSharingPoolKeeper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3fc88d...fa3874` | ⚠️ Unaudited |
| RewardClaimHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaf59d1...657a7f` | ⚠️ Unaudited |
| RewardDepositor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x922cf0...6c1096` | ⚠️ Unaudited |
| RewardFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x45aad1...74f356` | ⚠️ Unaudited |
| RewardHandler | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x524fce...c3a3b3` | ⚠️ Unaudited |
| RewardManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1f3718...67c40a` | ⚠️ Unaudited |
| RewardPoolDepositWrapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb188b1...9fec59` | ⚠️ Unaudited |
| RewardReceiver | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x78f1bb...c85ad7` | ⚠️ Unaudited |
| RewardReceiverL2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x64d27c...aa0add` | ⚠️ Unaudited |
| RewardReceiverMigrationModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2c043d...cbfd46` | ⚠️ Unaudited |
| RewardRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9a207a...05ba12` | ⚠️ Unaudited |
| RewardsAllocationPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa3ecf0...a6359a` | ⚠️ Unaudited |
| RewardsController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x35ad7e...b0e02f` | ⚠️ Unaudited |
| RewardsDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x9055eb...1c62d4` | ⚠️ Unaudited |
| RewardToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x5ffec9...4226f4` | ⚠️ Unaudited |
| RewardVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x69c1cb...1b2992` | ⚠️ Unaudited |
| RiskOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x073931...e8fe50` | ⚠️ Unaudited |
| Root Liquidity Gauge Factory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x153029...9fc228` | ⚠️ Unaudited |
| Root Liquidity Gauge Implementation | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb47ea3...0fbb20` | ⚠️ Unaudited |
| Router | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0f08ee...347b7c` | ⚠️ Unaudited |
| RouterModuleClaim | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x5d67df...410fb0` | ⚠️ Unaudited |
| RouterModuleDeposit | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x1c23b5...bf31bb` | ⚠️ Unaudited |
| RouterModuleEnso | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x2f744b...c7adea` | ⚠️ Unaudited |
| RouterModuleERC20Manager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x1928e5...18963a` | ⚠️ Unaudited |
| RouterModuleLending | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x4561a2...6ade2c` | ⚠️ Unaudited |
| RouterModuleMigrationCurve | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0e5ca5...46466b` | ⚠️ Unaudited |
| RouterModuleMigrationStakeDAOV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x05ccbc...b455da` | ⚠️ Unaudited |
| RouterModuleMigrationYearn | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x267c77...a65ee3` | ⚠️ Unaudited |
| RouterModuleRewardsFetcher | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x00369a...61289f` | ⚠️ Unaudited |
| RouterModuleSDToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3aa6aa...2746dc` | ⚠️ Unaudited |
| RouterModuleVLSDT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8155b8...557707` | ⚠️ Unaudited |
| RouterModuleWBTC18 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x07a53c...475390` | ⚠️ Unaudited |
| RouterModuleWithdraw | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5fcbc9...2a2c2d` | ⚠️ Unaudited |
| RouterStatic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7c0fa6...c47161` | ⚠️ Unaudited |
| RouterUtil | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x069cf0...1eed21` | ⚠️ Unaudited |
| SafeExecutor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5a7198...a9e3b3` | ⚠️ Unaudited |
| SafeProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x0070d9...7ad24e` | ⚠️ Unaudited |
| SafeProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x64fd7a...355107` | ⚠️ Unaudited |
| SafeProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x9690ed...152e6a` | ⚠️ Unaudited |
| SafetyRedundancy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6bdfea...fb3c40` | ⚠️ Unaudited |
| Sanctuary | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xac1486...1247d3` | ⚠️ Unaudited |
| sAPE | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x47ba20...1539c5` | ⚠️ Unaudited |
| ScaledUIToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3bd520...54c166` | ⚠️ Unaudited |
| scrvUSD oracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3195a3...5767f7` | ⚠️ Unaudited |
| ScrvusdProver | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x47ca04...677ee4` | ⚠️ Unaudited |
| ScrvusdVerifierV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x14e11c...cf79ff` | ⚠️ Unaudited |
| sdCRV | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd1b565...f6abb5` | ⚠️ Unaudited |
| SdCRVBribeBurner | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9d6dc3...1573f9` | ⚠️ Unaudited |
| sdFPIS | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x334cb6...dbfac4` | ⚠️ Unaudited |
| SdLiquidityZapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2a3bd2...d7e24b` | ⚠️ Unaudited |
| sdMAV | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x506875...bb02f9` | ⚠️ Unaudited |
| SDT | unknown | project_anchor | own_supporting | 0 | ethereum | unit-393024 | `0x73968b...6cdb2f` | ⚠️ Unaudited |
| SdtDistributorV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x10a4a0...6cc2b6` | ⚠️ Unaudited |
| sdToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0879c1...122c66` | ⚠️ Unaudited |
| Secondarymonetarypolicy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x188041...8aeaf8` | ⚠️ Unaudited |
| SecondarymonetarypolicyforWBTC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4e1f16...b10f9c` | ⚠️ Unaudited |
| SemiLog monetary policy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2a2878...5b40dd` | ⚠️ Unaudited |
| sfrxETH2crvUSDleveragezap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x43ecff...ce11bc` | ⚠️ Unaudited |
| ShortOTokenActionWithSwap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x36e0f6...df3845` | ⚠️ Unaudited |
| ShortOTokenActionWithSwapBtc | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb5a187...a3098d` | ⚠️ Unaudited |
| ShortOTokenActionWithSwapEth | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7946b9...7417e2` | ⚠️ Unaudited |
| SignatureVerifier | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x895867...c43382` | ⚠️ Unaudited |
| Signer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x10d7cb...7081fc` | ⚠️ Unaudited |
| SingleRecipientGaugeFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4fb471...66c968` | ⚠️ Unaudited |
| SingleSidedAMM | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x82bfdd...bf4b8a` | ⚠️ Unaudited |
| SingleStakingManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x747fc7...495255` | ⚠️ Unaudited |
| SiphonToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa348a3...080e75` | ⚠️ Unaudited |
| SmartChef | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0124ed...d6dd16` | ⚠️ Unaudited |
| SmartChefFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc87e59...8c506f` | ⚠️ Unaudited |
| SmartWalletChecker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x173f5f...9f3b27` | ⚠️ Unaudited |
| SmartWalletCheckerCoordinator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x26575a...5624ea` | ⚠️ Unaudited |
| SmartWalletWhitelist | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3557bd...f63318` | ⚠️ Unaudited |
| Snapshot Splitter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x168b92...ada222` | ⚠️ Unaudited |
| SNXRecoveryCoordinator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x56a1ba...d0cb31` | ⚠️ Unaudited |
| Sonic Block Hash oracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xe35a87...096bd8` | ⚠️ Unaudited |
| SousChef | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xfaa221...71b4d3` | ⚠️ Unaudited |
| Spectra | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x100f22...c9fa79` | ⚠️ Unaudited |
| Spectra4626Enhancer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x0c1105...1a9b3c` | ⚠️ Unaudited |
| SpectraBridge | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0x1f98f0...22f88b` | ⚠️ Unaudited |
| SpectraForwarder | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x2811b3...bac642` | ⚠️ Unaudited |
| SpectraMinter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x09c9bc...92538d` | ⚠️ Unaudited |
| SpectraPriceOracleFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3bc95e...08e57d` | ⚠️ Unaudited |
| SpectraVoter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x5c2b66...68f3b9` | ⚠️ Unaudited |
| SpectraVotingEscrowAggregator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x4eafef...125cb7` | ⚠️ Unaudited |
| SpectraWrappedAmphorLRT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x916cd5...3b46e7` | ⚠️ Unaudited |
| SpectraWrappedBedrockUniBTC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xacfee9...ac04fd` | ⚠️ Unaudited |
| SpectraWrappedILRT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0fc2fb...c59532` | ⚠️ Unaudited |
| SpectraWrappedRLP | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1f98f0...22f88b` | ⚠️ Unaudited |
| SpectraWrappedStkGHO | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x03e2ec...b13f96` | ⚠️ Unaudited |
| SpectraWrappedXUSD | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x65cd78...306acc` | ⚠️ Unaudited |
| Stable Deposit Burner | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1d5649...7cc3bb` | ⚠️ Unaudited |
| Stable LP Burner | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x04213a...72d001` | ⚠️ Unaudited |
| StableAMM | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0670e2...9eb4cd` | ⚠️ Unaudited |
| StableCreditHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x404f9e...ca0acb` | ⚠️ Unaudited |
| StableCreditProtocol | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x15fe17...26f5f9` | ⚠️ Unaudited |
| StableDebtTokenDisabled | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x26e429...280ee4` | ⚠️ Unaudited |
| StableLPOracleFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x254f3a...5f83b0` | ⚠️ Unaudited |
| StablePhantomPoolFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb08e16...6cbfd2` | ⚠️ Unaudited |
| StablePoolFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1fc7f1...fec08c` | ⚠️ Unaudited |
| StableSurgeHook | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7c1b7a...c78275` | ⚠️ Unaudited |
| StableSurgePoolFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x187a05...baa6ac` | ⚠️ Unaudited |
| StableSwapNGAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x095340...4ee2e0` | ⚠️ Unaudited |
| StableYieldCredit | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x11980d...d834e7` | ⚠️ Unaudited |
| Stake_FXS_WETH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa29367...1892b6` | ⚠️ Unaudited |
| StakeDAOCRVVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0e20d8...eaae8a` | ⚠️ Unaudited |
| StakeDaoGovernance | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbe3e89...cd782b` | ⚠️ Unaudited |
| StakeDaoHarvesterFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc56b67...18249c` | ⚠️ Unaudited |
| StakeDAOLockerProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0303e5...2e4768` | ⚠️ Unaudited |
| StakeDaoLockerRecipient | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x000000...fc6115` | ⚠️ Unaudited |
| StakeDaoNFT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdd4f84...e66bd5` | ⚠️ Unaudited |
| StakeDaoNFT_V2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc5f572...5bb6cd` | ⚠️ Unaudited |
| StakeDaoNFT_V3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5ccbae...1b02da` | ⚠️ Unaudited |
| StakeDaoNFTPalace | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x221738...8c751f` | ⚠️ Unaudited |
| StakedBPT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x46c509...7b1ee2` | ⚠️ Unaudited |
| StakedPendle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa98d14...749032` | ⚠️ Unaudited |
| StakedTokenDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x212e81...789037` | ⚠️ Unaudited |
| StakelessGaugeCheckpointer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0c8f71...5dbb98` | ⚠️ Unaudited |
| StakeZap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4f7633...8e2dfd` | ⚠️ Unaudited |
| StakingProxyConvex | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd0841a...d333df` | ⚠️ Unaudited |
| StakingProxyERC20 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1d0c89...476d80` | ⚠️ Unaudited |
| StakingProxyERC20Joint | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x64167f...111181` | ⚠️ Unaudited |
| StakingRewardsMultiGauge_StakeDAO | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xeb81b8...a96da2` | ⚠️ Unaudited |
| StakingV2FeeRecipient | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x239fe5...eed082` | ⚠️ Unaudited |
| StandardArbERC20 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | `0x040d1e...6a56b8` | ⚠️ Unaudited |
| StashController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2f18e0...b12195` | ⚠️ Unaudited |
| StashFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x73f88b...7bd87c` | ⚠️ Unaudited |
| StashFactoryV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x54da42...a3e915` | ⚠️ Unaudited |
| StashTokenWrapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc19cf0...a13eb7` | ⚠️ Unaudited |
| stETHGateway | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4c5c52...6e7c21` | ⚠️ Unaudited |
| Strategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbdf157...10c5dc` | ⚠️ Unaudited |
| StrategyAngleStakeDao | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9eef12...fce257` | ⚠️ Unaudited |
| StrategyAprOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x25e4b6...8ead66` | ⚠️ Unaudited |
| StrategyBunchyDev | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7d3b52...821911` | ⚠️ Unaudited |
| StrategyControllerV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2be5d9...f9e88b` | ⚠️ Unaudited |
| StrategyCreamYFI | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x40bd98...549afb` | ⚠️ Unaudited |
| StrategyDForceDAI | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd643cf...d47ede` | ⚠️ Unaudited |
| StrategyDForceUSDC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x01b354...11ab5c` | ⚠️ Unaudited |
| StrategyDForceUSDT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x787c77...a64bd8` | ⚠️ Unaudited |
| StrategyMKRVaultDAIDelegate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x28e5a4...e083a5` | ⚠️ Unaudited |
| StrategyMStableSavings | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x31641a...69156f` | ⚠️ Unaudited |
| StrategyMStableSavingsTUSD | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x442510...e0b81c` | ⚠️ Unaudited |
| StrategyProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x16c20c...597c7a` | ⚠️ Unaudited |
| StrategySNXSUSD | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2288c4...4ec989` | ⚠️ Unaudited |
| StrategyVaultTUSD | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x35cee4...ba817a` | ⚠️ Unaudited |
| StrategyVaultUSDC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x25faca...20d8d6` | ⚠️ Unaudited |
| StrategyWrapperLeverageRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x07fa4c...64eebc` | ⚠️ Unaudited |
| StrategyYffi | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbe197e...da0b73` | ⚠️ Unaudited |
| StrategyYFIGovernance | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x395f93...88797c` | ⚠️ Unaudited |
| StrategyYfii | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2de055...edfa70` | ⚠️ Unaudited |
| SuperchainConfig | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x61ca43...65ccc4` | ⚠️ Unaudited |
| SupplyFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf2eb91...41978f` | ⚠️ Unaudited |
| SupplyLogic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x5e35d9...9bb0ef` | ⚠️ Unaudited |
| SusdeMonetaryPolicy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf574cb...6efef7` | ⚠️ Unaudited |
| Swap Burner | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x004a47...402f13` | ⚠️ Unaudited |
| SwapHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4d6c97...4e1981` | ⚠️ Unaudited |
| Swapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2c73f6...d4695d` | ⚠️ Unaudited |
| SwapperV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4e6ae7...6bf694` | ⚠️ Unaudited |
| SwapperV4 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0e1b2d...00f853` | ⚠️ Unaudited |
| SWAuraVaultRewardsProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x430202...437009` | ⚠️ Unaudited |
| SWStkGHORewardsProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7e32f4...da6e30` | ⚠️ Unaudited |
| SYASDCRVAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x42a168...2ff015` | ⚠️ Unaudited |
| SYASDPENDLEAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x568082...dfb062` | ⚠️ Unaudited |
| Synthetic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0485a4...e99b6c` | ⚠️ Unaudited |
| SyntheticRebaseDollar | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaa90d9...38ffdc` | ⚠️ Unaudited |
| SynthetixAMM | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5ed4a4...f8c8be` | ⚠️ Unaudited |
| SynthetixExchange | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0691cf...04c2cf` | ⚠️ Unaudited |
| SynthToken Burner | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x070a5c...611b16` | ⚠️ Unaudited |
| SYRedeemAndSwap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb50057...86823f` | ⚠️ Unaudited |
| SyrupBar | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x009cf7...cea9b0` | ⚠️ Unaudited |
| SystemConfig | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x22052c...a44b8c` | ⚠️ Unaudited |
| TaikoBridger | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd4693b...bf7fef` | ⚠️ Unaudited |
| TaikoBroadcaster | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x05a3a7...8ac8cd` | ⚠️ Unaudited |
| TendiesFarm | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x101dd6...e24a9f` | ⚠️ Unaudited |
| TestEIP1153 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa17d03...f80d3b` | ⚠️ Unaudited |
| TestnetERC20 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x3fc90e...5e78fa` | ⚠️ Unaudited |
| TimeLoanPairFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2df934...60da0d` | ⚠️ Unaudited |
| Timelock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1994b5...929b81` | ⚠️ Unaudited |
| TimelockAuthorizerMigrator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x657dee...f05e8d` | ⚠️ Unaudited |
| TimelockAuthorizerTransitionMigrator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x76578e...cda3a6` | ⚠️ Unaudited |
| TimelockGovernance | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x026d4b...1dfb61` | ⚠️ Unaudited |
| TkMrsR | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcf0a32...382018` | ⚠️ Unaudited |
| TokemakAMO | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4e710b...64f733` | ⚠️ Unaudited |
| Token | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x09f8d9...86c071` | ⚠️ Unaudited |
| TokenFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3c995e...147ab9` | ⚠️ Unaudited |
| TokenizedStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x206cef...4bf802` | ⚠️ Unaudited |
| TokenSale | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x078672...8c75e7` | ⚠️ Unaudited |
| TokenSender | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x223bb2...2a5d0b` | ⚠️ Unaudited |
| TokenTrackerAMO | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1e077b...11a612` | ⚠️ Unaudited |
| TokenTrackerV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x37336a...4d09ee` | ⚠️ Unaudited |
| TokenVesting | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf840f3...950935` | ⚠️ Unaudited |
| TokenVotingFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x076e29...fb9e20` | ⚠️ Unaudited |
| TokenZapLogic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x21cea3...33cac5` | ⚠️ Unaudited |
| TradingFeeRebate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xfd30b4...71ffcc` | ⚠️ Unaudited |
| TransferStrategySimple | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x5196be...e942b0` | ⚠️ Unaudited |
| TransferStrategyZERO | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x3a52bc...5c4735` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x06c030...efff4d` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x06f66b...a2b5dc` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x0e5caa...3afbb0` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x1104b4...48dc8a` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x1c0d72...eead09` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x1c77c5...178d2f` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x22cdf5...9c2701` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x248f43...619cd5` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x259338...f768a1` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x2b95a1...7e0884` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x2c869c...f776c1` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x375278...efe465` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x3cf54f...4450b5` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x3e6eba...0e4637` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x43e54c...7b9922` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x49ee75...66bd71` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x4b2c6f...ce0750` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x4e91f1...5afb32` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x5699d2...c4db96` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x6037bb...e3ff64` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x606462...c7fecf` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x6d247b...b29a9f` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x7185e3...6591d3` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x72170c...105da2` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x96c68d...c64154` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0xae08c5...52cdf8` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0xc80c48...717c24` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0xc8ff37...68e0e8` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0xd6e3bb...bf99e1` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0x09f317...4c0f8c` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0x0f47ae...397e23` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0x27faf9...ff1bea` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0x414d3c...733602` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x563f1e...e59d6d` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0x5719ac...2f465d` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0x58b444...fd0d34` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0x7eec75...0c5b4c` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0xe954c3...815bb2` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0xf2810f...1c63a2` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | base | n/a | `0x03e2ec...b13f96` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | base | n/a | `0x174a1f...799d33` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | base | n/a | `0x7f5efa...d90c90` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | base | n/a | `0x7f7760...6eecfd` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | base | n/a | `0x9e1084...2cbf60` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | linea | n/a | `0x02eb73...c0507b` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | linea | n/a | `0x0374ae...2369b4` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | linea | n/a | `0x085a03...451cf2` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | linea | n/a | `0x0d2221...e2d24d` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | linea | n/a | `0x266695...097647` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | linea | n/a | `0x55553e...beaf03` | ⚠️ Unaudited |
| TreasuryFunds | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x138938...541bb7` | ⚠️ Unaudited |
| TreasuryLend | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x04dd97...bd207f` | ⚠️ Unaudited |
| TreasuryManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x858847...750361` | ⚠️ Unaudited |
| TreasuryManagerFrax | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9d464b...055f80` | ⚠️ Unaudited |
| TreasuryRecipient | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4bf4d9...ddac60` | ⚠️ Unaudited |
| TreasuryRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcab2bb...ac4507` | ⚠️ Unaudited |
| TreasurySwap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x00711e...75d21d` | ⚠️ Unaudited |
| TreasuryVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x22d0b6...d094ca` | ⚠️ Unaudited |
| TreasuryZap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0665ef...993ad4` | ⚠️ Unaudited |
| TribeBALMinterCoordinator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x34ac9f...0cc69b` | ⚠️ Unaudited |
| Tricrypto Factory LP Burner | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa6a010...070813` | ⚠️ Unaudited |
| TroveManagerGetters | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4404ff...c9ae7a` | ⚠️ Unaudited |
| TWAMM_AMO | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x11fc7d...fa425b` | ⚠️ Unaudited |
| TwapOracleFactorySNG | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x45f29a...f69fc9` | ⚠️ Unaudited |
| UiIncentiveDataProviderV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x94e637...3ab649` | ⚠️ Unaudited |
| UiPoolDataProviderV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x19dd9e...fdd826` | ⚠️ Unaudited |
| UnbalancedAddViaSwapRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x7fa49d...6f6faa` | ⚠️ Unaudited |
| UniformBoostProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7c3867...13c5b7` | ⚠️ Unaudited |
| UniOracleFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x61da8b...61d136` | ⚠️ Unaudited |
| UniV2TWAMMFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x54f454...b34e79` | ⚠️ Unaudited |
| UniV2TWAMMRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa007a9...e808de` | ⚠️ Unaudited |
| UniV3LiquidityAMO | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x381430...f8f4e6` | ⚠️ Unaudited |
| UniV3LiquidityAMO_V2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0e8943...847440` | ⚠️ Unaudited |
| UniV3TWAPOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x59985d...d9174b` | ⚠️ Unaudited |
| UniversalBoostRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x647405...6bdd3b` | ⚠️ Unaudited |
| UniversalRewardsDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x000000...47c4db` | ⚠️ Unaudited |
| UpdateZeroNFTScript | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x12205d...d1b615` | ⚠️ Unaudited |
| UpgradeableBeacon | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x176d64...78a300` | ⚠️ Unaudited |
| UpgradeableBeacon | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x414a78...750e08` | ⚠️ Unaudited |
| UpgradeableBeacon | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | base | n/a | `0x050d38...d1aa1d` | ⚠️ Unaudited |
| UpgradeableBeacon | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | base | n/a | `0x176017...da33bd` | ⚠️ Unaudited |
| UpgradeableBeacon | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | base | n/a | `0x214c04...52e112` | ⚠️ Unaudited |
| UpgradeableBeacon | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | base | n/a | `0x22cdf5...9c2701` | ⚠️ Unaudited |
| UpgradeableBeacon | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | base | n/a | `0x308c7f...e0363a` | ⚠️ Unaudited |
| UpgradeableBeacon | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | base | n/a | `0x3945ce...8b8bf5` | ⚠️ Unaudited |
| UpgradeableBeacon | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | base | n/a | `0x5828c5...e9ee8d` | ⚠️ Unaudited |
| UpgradeableBeacon | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | base | n/a | `0x68b42e...e026ca` | ⚠️ Unaudited |
| UpgradeableBeacon | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | base | n/a | `0xaee874...81d01d` | ⚠️ Unaudited |
| UpgradeProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8d8f5a...58faa6` | ⚠️ Unaudited |
| USD0LpOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2aeb5c...49ae32` | ⚠️ Unaudited |
| Utilities | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf37c41...64b503` | ⚠️ Unaudited |
| V2WrapperFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9cf8b3...8ffe6d` | ⚠️ Unaudited |
| VariableDebtToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x0a8058...76e6a8` | ⚠️ Unaudited |
| Vault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x3c0a40...9c4d11` | ⚠️ Unaudited |
| VaultEarnedView | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x382cd6...b3d925` | ⚠️ Unaudited |
| VaultExplorer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x22625e...86b017` | ⚠️ Unaudited |
| VaultMessengerLZ | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x159455...e3e6d9` | ⚠️ Unaudited |
| VaultRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x78f737...ae93e9` | ⚠️ Unaudited |
| VaultSwapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf12eea...0e51b6` | ⚠️ Unaudited |
| VaultV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa4c78b...dc4f7a` | ⚠️ Unaudited |
| VaultV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x626632...0e27de` | ⚠️ Unaudited |
| VBMRecipient | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd69f52...d25ade` | ⚠️ Unaudited |
| VBMUpdater | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4e5eea...c213e1` | ⚠️ Unaudited |
| VCake | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5e8742...8f1245` | ⚠️ Unaudited |
| VeArtProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x0fc8e6...c00a97` | ⚠️ Unaudited |
| veBALDeploymentCoordinator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xeb1516...7076c3` | ⚠️ Unaudited |
| veBALGaugeFixCoordinator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xee47ef...26ddf3` | ⚠️ Unaudited |
| veBALL2GaugeSetupCoordinator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd13afc...ef37ca` | ⚠️ Unaudited |
| VeBoostDelegation | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xce00ad...6be923` | ⚠️ Unaudited |
| VeBoostDelegationMultiRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xda9846...2bebdf` | ⚠️ Unaudited |
| VECake | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5692db...ec1bab` | ⚠️ Unaudited |
| VECakeOwner | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe6cdc6...a78548` | ⚠️ Unaudited |
| VECakeSyncer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9d8a10...c22798` | ⚠️ Unaudited |
| VecrvVerifier | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x38334e...7a6abc` | ⚠️ Unaudited |
| veCurveVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x478bbc...39084d` | ⚠️ Unaudited |
| VeFeeGateway | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8fc790...6421e9` | ⚠️ Unaudited |
| veFPISYieldDistributorV4 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5814cb...79fec9` | ⚠️ Unaudited |
| veFPISYieldDistributorV5 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe6d31c...b802f6` | ⚠️ Unaudited |
| veFXSYieldDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x19a0a7...1d50f0` | ⚠️ Unaudited |
| veFXSYieldDistributorV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x62c4cf...0ebd45` | ⚠️ Unaudited |
| veFXSYieldDistributorV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2aaa9a...b1c296` | ⚠️ Unaudited |
| veFXSYieldDistributorV4 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc6764e...1fa872` | ⚠️ Unaudited |
| Verifier | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xc727cb...c8d2d9` | ⚠️ Unaudited |
| VerifierV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x5c0780...8700ad` | ⚠️ Unaudited |
| VerifierYB | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xd7b1ea...1824ca` | ⚠️ Unaudited |
| VeSDTFeeAngleProxyV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x059f78...fcd1ac` | ⚠️ Unaudited |
| VeSDTRecipient | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1fe537...787fce` | ⚠️ Unaudited |
| VestedEscrow | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe98984...e28fcc` | ⚠️ Unaudited |
| VestedZeroNFT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x02a258...cd552b` | ⚠️ Unaudited |
| Vester | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x21aef9...a16e60` | ⚠️ Unaudited |
| Vesting | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x28f576...a7309b` | ⚠️ Unaudited |
| Vesting Escrow | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0cf5bf...db23ef` | ⚠️ Unaudited |
| VestingVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4f5981...a7f03c` | ⚠️ Unaudited |
| VestUiHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x917942...a9f95b` | ⚠️ Unaudited |
| VestUiHelperV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x05ca37...6e7997` | ⚠️ Unaudited |
| VirtualPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x125ca4...2af268` | ⚠️ Unaudited |
| vlCvxExtraRewardDistribution | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8ed4bb...1e0602` | ⚠️ Unaudited |
| vlCVXRecipient | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xae86a3...18cd09` | ⚠️ Unaudited |
| vlSDT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x75d96b...e88ef1` | ⚠️ Unaudited |
| VoteBountyManagerFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x752893...183e32` | ⚠️ Unaudited |
| VoteBountyManagerFactoryCommon | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3deb1b...297886` | ⚠️ Unaudited |
| VoteDelegateExtension | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5349ff...67fb07` | ⚠️ Unaudited |
| Votemarket | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x105694...a8135b` | ⚠️ Unaudited |
| VotePowerV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x02c32d...cf92b0` | ⚠️ Unaudited |
| VoteProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x64acb0...4e732f` | ⚠️ Unaudited |
| VoterProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x072022...5bfb73` | ⚠️ Unaudited |
| VoterProxyLite | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xc181ed...00a2b0` | ⚠️ Unaudited |
| VoterProxyOwner | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2b8355...48816e` | ⚠️ Unaudited |
| VotersRewardsRecipient | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe42a46...f94f17` | ⚠️ Unaudited |
| VoteWeightRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x619ede...dd5a5c` | ⚠️ Unaudited |
| Voting | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x82e631...f654eb` | ⚠️ Unaudited |
| Voting Escrow | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x13daff...7470a0` | ⚠️ Unaudited |
| Voting Escrow v2.0.0 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x09943c...a894a8` | ⚠️ Unaudited |
| VotingBalance | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4c4d57...857ce9` | ⚠️ Unaudited |
| VotingBalanceMax | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x59ccba...179bf2` | ⚠️ Unaudited |
| VotingBalanceV2Gauges | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1cc2cf...72b988` | ⚠️ Unaudited |
| VotingEligibility | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbce1cb...bbfb0f` | ⚠️ Unaudited |
| VotingEscrow | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0c9367...130be4` | ⚠️ Unaudited |
| VotingEscrowDelegationProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6f5a2e...1eb8a0` | ⚠️ Unaudited |
| VotingEscrowPendleMainchain | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4f30a9...170210` | ⚠️ Unaudited |
| VotingEscrowPendleSidechain | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x051dcd...96b1fd` | ⚠️ Unaudited |
| VotingEscrowRemapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6b5da7...399e2e` | ⚠️ Unaudited |
| VotingPowerCondition | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2321a7...0591b7` | ⚠️ Unaudited |
| VotingResultBroadcaster | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd8daa6...1c4744` | ⚠️ Unaudited |
| VotingRewardsFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x6cba82...e4dd05` | ⚠️ Unaudited |
| vsdCRVOFTAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x92b8d4...921e95` | ⚠️ Unaudited |
| vsdToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7346aa...3834fc` | ⚠️ Unaudited |
| Vyper_contract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x004a47...402f13` | ⚠️ Unaudited |
| WalletBalanceProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x379714...a6d593` | ⚠️ Unaudited |
| WBTC-crvUSDleveragezap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa2518b...2de4d7` | ⚠️ Unaudited |
| weEthToUsdOracleProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x68c889...87adda` | ⚠️ Unaudited |
| WeightedLPOracleFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x05503b...982d2b` | ⚠️ Unaudited |
| WeightedPool2Tokens | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5c6ee3...db8f56` | ⚠️ Unaudited |
| WeightedPoolFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x201efd...2a86cc` | ⚠️ Unaudited |
| WETH9Mock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xadc1eb...afb6c8` | ⚠️ Unaudited |
| Wrapped ETH Burner | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x519194...2961d9` | ⚠️ Unaudited |
| Wrapped stETH Burner | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x072c93...8e8918` | ⚠️ Unaudited |
| WrappedTokenGatewayV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x01d3bb...c3e5ff` | ⚠️ Unaudited |
| WrappedYFI | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x017e71...231981` | ⚠️ Unaudited |
| Wrapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9d03bb...0e5123` | ⚠️ Unaudited |
| WrapperFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6a5a26...8212bc` | ⚠️ Unaudited |
| wstETH-crvUSDleveragezap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x293436...fc74fd` | ⚠️ Unaudited |
| WstETHRateProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x72d07d...fee768` | ⚠️ Unaudited |
| wstETHWrapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb09e34...75b658` | ⚠️ Unaudited |
| XChainLiquidityGaugeTransmitter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6172a9...fc2762` | ⚠️ Unaudited |
| xTokenWrapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x829c3d...da5e44` | ⚠️ Unaudited |
| xVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0205ae...e419c5` | ⚠️ Unaudited |
| XYZ Broadcaster | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7ba334...4cc2cc` | ⚠️ Unaudited |
| XYZ Relayer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xe5de15...983a69` | ⚠️ Unaudited |
| yAffiliateFactoryV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x44ff2a...53b367` | ⚠️ Unaudited |
| YbGovVoter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x82499d...b7b8fd` | ⚠️ Unaudited |
| YBSFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3ea136...65ac4f` | ⚠️ Unaudited |
| YBSRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x262be1...e9f738` | ⚠️ Unaudited |
| YBSRewardFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdbbf7d...af0bd5` | ⚠️ Unaudited |
| YBSUtilities | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x499099...c505c3` | ⚠️ Unaudited |
| YBSUtilsFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x210e69...41c6f0` | ⚠️ Unaudited |
| YBToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x01791f...c045ff` | ⚠️ Unaudited |
| yBUSD | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x04bc0a...bca9ae` | ⚠️ Unaudited |
| YbVoter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbe7325...2297cd` | ⚠️ Unaudited |
| yCollateralVaultProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x24dd02...e82a5d` | ⚠️ Unaudited |
| yCRV | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x170411...2a221c` | ⚠️ Unaudited |
| YCRV Zap v4 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4ec30e...b23839` | ⚠️ Unaudited |
| YCRVSplitter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x05fc81...d5e401` | ⚠️ Unaudited |
| ycUSDC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0597ea...bc0f2c` | ⚠️ Unaudited |
| ycUSDT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x631d66...3931a4` | ⚠️ Unaudited |
| yDAI | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x16de59...f0bd01` | ⚠️ Unaudited |
| yDAIv2Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x56ab71...a6bd33` | ⚠️ Unaudited |
| yDelegate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x610258...a05f83` | ⚠️ Unaudited |
| yDelegatedVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2088ba...b73d99` | ⚠️ Unaudited |
| YearnLiquidationKeep3r | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x41303e...343eeb` | ⚠️ Unaudited |
| YearnLocker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf75016...e98220` | ⚠️ Unaudited |
| YearnStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1be150...c35168` | ⚠️ Unaudited |
| YearnVaultFactoryOwnable | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1efb2c...63b7ff` | ⚠️ Unaudited |
| YFI | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0bc529...6ad93e` | ⚠️ Unaudited |
| YFIAccumulatorV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x92cff1...2e3356` | ⚠️ Unaudited |
| YFIAccumulatorV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc7793b...0d5fde` | ⚠️ Unaudited |
| YFIDepositor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe56d97...7e25db` | ⚠️ Unaudited |
| YFIDepositorHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9d967c...6f4510` | ⚠️ Unaudited |
| YFIDepositorV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf908c0...2608c8` | ⚠️ Unaudited |
| YieldBasisDepositor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfb9aa6...595785` | ⚠️ Unaudited |
| YieldBasisFallbackHandler | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x325229...808ea9` | ⚠️ Unaudited |
| YieldnestAutocompoundedVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3610a0...6105d5` | ⚠️ Unaudited |
| YieldnestDepositor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8f0e63...a3352e` | ⚠️ Unaudited |
| YieldnestOFT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3610a0...6105d5` | ⚠️ Unaudited |
| YieldnestOFTAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xe0ffc0...3a5b51` | ⚠️ Unaudited |
| yInsure | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x181aea...d98f91` | ⚠️ Unaudited |
| yInsureView | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6d2738...98340b` | ⚠️ Unaudited |
| YlockerDrops | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0a8bda...a0215c` | ⚠️ Unaudited |
| YND | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x7159cc...8a45ba` | ⚠️ Unaudited |
| YPrismaFeeDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5aa86e...0046df` | ⚠️ Unaudited |
| YPrismaForwarderCallbackMinterV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5e0c38...4d0bcd` | ⚠️ Unaudited |
| ySUSD | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x36324b...d41380` | ⚠️ Unaudited |
| YToken Burner | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xed7044...ea5f8a` | ⚠️ Unaudited |
| yTokenProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1d5ad9...54203a` | ⚠️ Unaudited |
| yTokenRebalance | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x19b642...e9cc09` | ⚠️ Unaudited |
| yTUSD | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x73a052...a8190f` | ⚠️ Unaudited |
| yUSD | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x12c068...af3aff` | ⚠️ Unaudited |
| yUSDC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x26ea74...b21951` | ⚠️ Unaudited |
| yUSDT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3118ee...b9aade` | ⚠️ Unaudited |
| yVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0fcda6...367889` | ⚠️ Unaudited |
| yVaultCheck | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1bbe0f...a6d1ad` | ⚠️ Unaudited |
| yVaultFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x044dea...f677b5` | ⚠️ Unaudited |
| YVEmpire | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xeb8d98...8d2eaa` | ⚠️ Unaudited |
| yWBTC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x04aa51...787ec9` | ⚠️ Unaudited |
| yWrappedVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x881b06...025298` | ⚠️ Unaudited |
| Zap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x018a56...e7986a` | ⚠️ Unaudited |
| ZapLockerLP | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xaec644...51146b` | ⚠️ Unaudited |
| ZeroCouponDiscountModel | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x000ba1...859e61` | ⚠️ Unaudited |
| ZeroLend | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x78354f...c3c7a7` | ⚠️ Unaudited |
| ZeroLendTest | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x351125...127590` | ⚠️ Unaudited |
| ZeroOFTAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x2d6f5b...5b5693` | ⚠️ Unaudited |

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
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-393023 | `0x0c3047...6c9e8a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-393025 | `0x94818a...0b80b8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-393027 | `0xb0552b...9cc765` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [2022-02-01_chainsecurity_vesdt_fxs_locker.pdf (also discovered via alternate URL)](https://github.com/stake-dao/audits/blob/main/misc/2022-02-01_chainsecurity_vesdt_fxs_locker.pdf) | ChainSecurity | Audit | 2022-02 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 6 | high |
| [2022-10-01_chainsecurity_liquid_lockers.pdf (also discovered via alternate URL)](https://github.com/stake-dao/audits/blob/main/misc/2022-10-01_chainsecurity_liquid_lockers.pdf) | ChainSecurity | Audit | 2022-10 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [2025-03-11_omniscia_zerolend_liquid_locker.pdf (also discovered via alternate URL)](https://github.com/stake-dao/audits/blob/main/misc/2025-03-11_omniscia_zerolend_liquid_locker.pdf) | Omniscia | Audit | 2025-03 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |
| [2025-08-27_trust_security_misc_curve_oracles.pdf (also discovered via alternate URL)](https://github.com/stake-dao/audits/blob/main/misc/2025-08-27_trust_security_misc_curve_oracles.pdf) | Trust Security | Audit | 2025-08 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [2023-11-22_zachobront_onlyboost.md (also discovered via alternate URL)](https://github.com/stake-dao/audits/blob/main/onlyboost/2023-11-22_zachobront_onlyboost.md) | zachobront | Audit | 2023-11 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 10 | high |
| [2024-02-01_trust_security_onlyboost_v1.pdf (also discovered via alternate URL)](https://github.com/stake-dao/audits/blob/main/onlyboost/2024-02-01_trust_security_onlyboost_v1.pdf) | trust_security | Audit | 2024-02 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 15 | high |
| [2024-02-15_trust_security_onlyboost_v2.pdf (also discovered via alternate URL)](https://github.com/stake-dao/audits/blob/main/onlyboost/2024-02-15_trust_security_onlyboost_v2.pdf) | trust_security | Audit | 2024-02 | stale | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [2025-04-01_trust_security_staking_v2.pdf (also discovered via alternate URL)](https://github.com/stake-dao/audits/blob/main/staking-v2/2025-04-01_trust_security_staking_v2.pdf) | Trust Security | Audit | 2025-04 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 15 | high |
| [2025-05-01_omniscia_staking_v2.pdf (also discovered via alternate URL)](https://github.com/stake-dao/audits/blob/main/staking-v2/2025-05-01_omniscia_staking_v2.pdf) | Omniscia | Audit | 2025-05 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 24 | high |
| [2025-08-08_pashov_staking_v2_morpho_support.pdf (also discovered via alternate URL)](https://github.com/stake-dao/audits/blob/main/staking-v2/2025-08-08_pashov_staking_v2_morpho_support.pdf) | Pashov Audit Group | Audit | 2025-08 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 7 | high |
| [2025-09-03_omniscia_staking_v2.pdf (also discovered via alternate URL)](https://github.com/stake-dao/audits/blob/main/staking-v2/2025-09-03_omniscia_staking_v2.pdf) | Omniscia | Audit | 2025-09 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [2026_03_26_trust_security_vlsdt.pdf (also discovered via alternate URL)](https://github.com/stake-dao/audits/blob/main/vlsdt/2026_03_26_trust_security_vlsdt.pdf) | Trust Security | Audit | 2026-04 | fresh | Direct | contract_name | matched | 2 | 0 | 0 | 9 | high |
| [2023-01-01_chainsecurity_votemarket_v1.pdf (also discovered via alternate URL)](https://github.com/stake-dao/audits/blob/main/votemarket/v1/2023-01-01_chainsecurity_votemarket_v1.pdf) | ChainSecurity | Audit | 2023-01 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [2024-09-01_trust_security_votemarket_v2.pdf (also discovered via alternate URL)](https://github.com/stake-dao/audits/blob/main/votemarket/v2/2024-09-01_trust_security_votemarket_v2.pdf) | Trust Security | Audit | 2024-09 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 10 | high |
| [2024-10-01_pashov_laposte.pdf (also discovered via alternate URL)](https://github.com/stake-dao/audits/blob/main/votemarket/v2/laposte/2024-10-01_pashov_laposte.pdf) | Pashov Audit Group | Audit | 2024-10 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 6 | high |
| [CertiK SkynetStake DAO project](https://skynet.certik.com/projects/stake-dao) | CertiK | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [Firepan SentinelSDT token, 0x73968b9a57c6e53d41345fd57a6e6ae27d6cdb2f](https://sentinel.firepan.com/token/ethereum/0x73968b9a57c6e53d41345fd57a6e6ae27d6cdb2f) | CertiK | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [audits (GitHub directory)](https://github.com/stake-dao/audits) | unknown | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [LaPoste contracts have been audited by [Pashov Audit Group]().](https://github.com/stake-dao/laposte/blob/main/audits/PashovGroup-LaPoste-security-review-October.pdf) | Pashov Audit Group | Audit | 2024-10 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 6 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [18213] 2022-02-01_chainsecurity_vesdt_fxs_locker.pdf — no match: Scope section explicitly lists three contracts for each version: Version 1 (sdFXSToken.sol, FraxLocker.sol, FxsDepositor.sol) and Version 2 (sdToken.sol, FxsLocker.sol, Depositor.sol). Audit date is Feb 15, 2022 from the cover page.
- [18214] 2022-10-01_chainsecurity_liquid_lockers.pdf — no match: Two contracts in scope: Platform and PlatformFactory. Audit date from cover page.
- [18215] 2025-03-11_omniscia_zerolend_liquid_locker.pdf — no match: Four contracts explicitly listed in scope table. Audit date from cover page: March 11, 2025.
- [18216] 2025-08-27_trust_security_misc_curve_oracles.pdf — no match: Scope section lists three Solidity files. Audit date from document properties: 27/08/2025.
- [18217] 2023-11-22_zachobront_onlyboost.md — no match: All contracts explicitly listed in scope section. Audit date range November 16 to 22, 2023; end date used.
- [18218] 2024-02-01_trust_security_onlyboost_v1.pdf — no match: All 15 files listed in scope section; audit date from cover page and versioning.
- [18219] 2024-02-15_trust_security_onlyboost_v2.pdf — no match: The provided text is a GitHub page navigation and marketing content, not the actual audit report PDF content. No contract names or audit date could be extracted.
- [18220] 2025-04-01_trust_security_staking_v2.pdf — no match: All 15 files listed in scope section; audit date from document versioning (19/04/2025).
- [18221] 2025-05-01_omniscia_staking_v2.pdf — no match: All contracts listed in the 'Target Contracts Assessed' table under the Scope section were extracted. The audit date is explicitly stated as 'May 20, 2025' at the top of the report.
- [18222] 2025-08-08_pashov_staking_v2_morpho_support.pdf — no match: Scope section explicitly lists 7 contracts: Accountant.sol, RewardVault.sol, CurveLendingMarketFactory.sol, CurveCryptoswapOracle.sol, CurveStableswapOracle.sol, MorphoMarketFactory.sol, StrategyWrapper.sol. Audit date is July 24th 2025 (end date of timeline).
- [18223] 2025-09-03_omniscia_staking_v2.pdf — no match: Only one contract in scope: StrategyWrapper. Audit date from cover page.
- [18224] 2026_03_26_trust_security_vlsdt.pdf — matched: All 11 files listed in scope section. Audit date from document properties: version 0.3 dated 10/04/2026.
- [18225] 2023-01-01_chainsecurity_votemarket_v1.pdf — no match: Two contracts in scope: Platform and PlatformFactory. Audit date from cover page.
- [18226] 2024-09-01_trust_security_votemarket_v2.pdf — no match: All 10 files listed in scope section. Audit date from document versioning: 10/09/2024.
- [18227] 2024-10-01_pashov_laposte.pdf — no match: Scope section lists 6 contracts: TokenFactory, Token, LaPoste, Adapter, Client, Chains. Audit date is October 24th (end date of range).
- [18228] CertiK SkynetStake DAO project — no match: The provided text is a CertiK Skynet project insight page for Stake DAO, not an audit report. It contains no audit scope, contract names, or audit date.
- [18229] Firepan SentinelSDT token, 0x73968b9a57c6e53d41345fd57a6e6ae27d6cdb2f — no match: The document is an automated risk summary for the Stake DAO Token (SDT) contract, not a formal audit report. No explicit scope section or list of audited contracts is provided. The only contract mentioned is SDT, but it is not presented as part of an audit scope.
- [18230] audits (GitHub directory) — no match: The provided text is a README file listing audit reports by product name (e.g., Staking v2, OnlyBoost, Votemarket V2, vlSDT, Miscellaneous) but does not contain specific smart contract names, file paths, or a scope section with contract listings. No individual contracts are explicitly named as being in scope.
- [18231] LaPoste contracts have been audited by [Pashov Audit Group](). — no match: Scope section lists 6 contracts: TokenFactory, Token, LaPoste, Adapter, Client, Chains. Audit date is October 24th (end date of range).

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| 2022-02-01_chainsecurity_vesdt_fxs_locker.pdf | sdFXSToken | unmatched — not counted | — | listed in scope table for Version 1 | no |
| 2022-02-01_chainsecurity_vesdt_fxs_locker.pdf | FraxLocker | unmatched — not counted | — | listed in scope table for Version 1 | no |
| 2022-02-01_chainsecurity_vesdt_fxs_locker.pdf | FxsDepositor | unmatched — not counted | — | listed in scope table for Version 1 | no |
| 2022-02-01_chainsecurity_vesdt_fxs_locker.pdf | sdToken | unmatched — not counted | — | listed in scope table for Version 2 | no |
| 2022-02-01_chainsecurity_vesdt_fxs_locker.pdf | FxsLocker | unmatched — not counted | — | listed in scope table for Version 2 | no |
| 2022-02-01_chainsecurity_vesdt_fxs_locker.pdf | Depositor | unmatched — not counted | — | listed in scope table for Version 2 | no |
| 2022-10-01_chainsecurity_liquid_lockers.pdf | Platform | unmatched — not counted | — | listed in scope table | no |
| 2022-10-01_chainsecurity_liquid_lockers.pdf | PlatformFactory | unmatched — not counted | — | listed in scope table | no |
| 2025-03-11_omniscia_zerolend_liquid_locker.pdf | Accumulator | unmatched — not counted | — | listed in scope table | no |
| 2025-03-11_omniscia_zerolend_liquid_locker.pdf | BaseDepositor | unmatched — not counted | — | listed in scope table | no |
| 2025-03-11_omniscia_zerolend_liquid_locker.pdf | BaseAccumulator | unmatched — not counted | — | listed in scope table | no |
| 2025-03-11_omniscia_zerolend_liquid_locker.pdf | Depositor | unmatched — not counted | — | listed in scope table | no |
| 2025-08-27_trust_security_misc_curve_oracles.pdf | BaseOracle | unmatched — not counted | — | listed in scope | no |
| 2025-08-27_trust_security_misc_curve_oracles.pdf | CurveCryptoswapOracle | unmatched — not counted | — | listed in scope | no |
| 2025-08-27_trust_security_misc_curve_oracles.pdf | CurveStableswapOracle | unmatched — not counted | — | listed in scope | no |
| 2023-11-22_zachobront_onlyboost.md | CRVStrategy | unmatched — not counted | — | listed in scope | no |
| 2023-11-22_zachobront_onlyboost.md | Strategy | unmatched — not counted | — | listed in scope | no |
| 2023-11-22_zachobront_onlyboost.md | OnlyBoost | unmatched — not counted | — | listed in scope | no |
| 2023-11-22_zachobront_onlyboost.md | Optimizer | unmatched — not counted | — | listed in scope | no |
| 2023-11-22_zachobront_onlyboost.md | Vault | unmatched — not counted | — | listed in scope | no |
| 2023-11-22_zachobront_onlyboost.md | SafeExecute | unmatched — not counted | — | listed in scope | no |
| 2023-11-22_zachobront_onlyboost.md | ConvexImplementation | unmatched — not counted | — | listed in scope | no |
| 2023-11-22_zachobront_onlyboost.md | ConvexMinimalProxyFactory | unmatched — not counted | — | listed in scope | no |
| 2023-11-22_zachobront_onlyboost.md | PoolFactory | unmatched — not counted | — | listed in scope | no |
| 2023-11-22_zachobront_onlyboost.md | CRVPoolFactory | unmatched — not counted | — | listed in scope | no |
| 2024-02-01_trust_security_onlyboost_v1.pdf | RewardVault | unmatched — not counted | — | listed in scope | no |
| 2024-02-01_trust_security_onlyboost_v1.pdf | Accountant | unmatched — not counted | — | listed in scope | no |
| 2024-02-01_trust_security_onlyboost_v1.pdf | Strategy | unmatched — not counted | — | listed in scope | no |
| 2024-02-01_trust_security_onlyboost_v1.pdf | ProtocolController | unmatched — not counted | — | listed in scope | no |
| 2024-02-01_trust_security_onlyboost_v1.pdf | Factory | unmatched — not counted | — | listed in scope | no |
| 2024-02-01_trust_security_onlyboost_v1.pdf | Allocator | unmatched — not counted | — | listed in scope | no |
| 2024-02-01_trust_security_onlyboost_v1.pdf | Sidecar | unmatched — not counted | — | listed in scope | no |
| 2024-02-01_trust_security_onlyboost_v1.pdf | ProtocolContext | unmatched — not counted | — | listed in scope | no |
| 2024-02-01_trust_security_onlyboost_v1.pdf | RewardReceiver | unmatched — not counted | — | listed in scope | no |
| 2024-02-01_trust_security_onlyboost_v1.pdf | SidecarFactory | unmatched — not counted | — | listed in scope | no |
| 2024-02-01_trust_security_onlyboost_v1.pdf | ConvexSidecarFactory | unmatched — not counted | — | listed in scope | no |
| 2024-02-01_trust_security_onlyboost_v1.pdf | CurveStrategy | unmatched — not counted | — | listed in scope | no |
| 2024-02-01_trust_security_onlyboost_v1.pdf | ConvexSidecar | unmatched — not counted | — | listed in scope | no |
| 2024-02-01_trust_security_onlyboost_v1.pdf | CurveFactory | unmatched — not counted | — | listed in scope | no |
| 2024-02-01_trust_security_onlyboost_v1.pdf | CurveAllocator | unmatched — not counted | — | listed in scope | no |
| 2025-04-01_trust_security_staking_v2.pdf | RewardVault | unmatched — not counted | — | listed in scope | no |
| 2025-04-01_trust_security_staking_v2.pdf | Accountant | unmatched — not counted | — | listed in scope | no |
| 2025-04-01_trust_security_staking_v2.pdf | Strategy | unmatched — not counted | — | listed in scope | no |
| 2025-04-01_trust_security_staking_v2.pdf | ProtocolController | unmatched — not counted | — | listed in scope | no |
| 2025-04-01_trust_security_staking_v2.pdf | Factory | unmatched — not counted | — | listed in scope | no |
| 2025-04-01_trust_security_staking_v2.pdf | Allocator | unmatched — not counted | — | listed in scope | no |
| 2025-04-01_trust_security_staking_v2.pdf | Sidecar | unmatched — not counted | — | listed in scope | no |
| 2025-04-01_trust_security_staking_v2.pdf | ProtocolContext | unmatched — not counted | — | listed in scope | no |
| 2025-04-01_trust_security_staking_v2.pdf | RewardReceiver | unmatched — not counted | — | listed in scope | no |
| 2025-04-01_trust_security_staking_v2.pdf | SidecarFactory | unmatched — not counted | — | listed in scope | no |
| 2025-04-01_trust_security_staking_v2.pdf | ConvexSidecarFactory | unmatched — not counted | — | listed in scope | no |
| 2025-04-01_trust_security_staking_v2.pdf | CurveStrategy | unmatched — not counted | — | listed in scope | no |
| 2025-04-01_trust_security_staking_v2.pdf | ConvexSidecar | unmatched — not counted | — | listed in scope | no |
| 2025-04-01_trust_security_staking_v2.pdf | CurveFactory | unmatched — not counted | — | listed in scope | no |
| 2025-04-01_trust_security_staking_v2.pdf | CurveAllocator | unmatched — not counted | — | listed in scope | no |
| 2025-05-01_omniscia_staking_v2.pdf | Allocator | unmatched — not counted | — | listed in scope table | no |
| 2025-05-01_omniscia_staking_v2.pdf | Accountant | unmatched — not counted | — | listed in scope table | no |
| 2025-05-01_omniscia_staking_v2.pdf | CurveFactory | unmatched — not counted | — | listed in scope table | no |
| 2025-05-01_omniscia_staking_v2.pdf | ConvexSidecar | unmatched — not counted | — | listed in scope table | no |
| 2025-05-01_omniscia_staking_v2.pdf | CurveStrategy | unmatched — not counted | — | listed in scope table | no |
| 2025-05-01_omniscia_staking_v2.pdf | CurveAllocator | unmatched — not counted | — | listed in scope table | no |
| 2025-05-01_omniscia_staking_v2.pdf | ConvexSidecarFactory | unmatched — not counted | — | listed in scope table | no |
| 2025-05-01_omniscia_staking_v2.pdf | Factory | unmatched — not counted | — | listed in scope table | no |
| 2025-05-01_omniscia_staking_v2.pdf | ImmutableArgsParser | unmatched — not counted | — | listed in scope table | no |
| 2025-05-01_omniscia_staking_v2.pdf | ProtocolContext | unmatched — not counted | — | listed in scope table | no |
| 2025-05-01_omniscia_staking_v2.pdf | ProtocolController | unmatched — not counted | — | listed in scope table | no |
| 2025-05-01_omniscia_staking_v2.pdf | Router | unmatched — not counted | — | listed in scope table | no |
| 2025-05-01_omniscia_staking_v2.pdf | RewardVault | unmatched — not counted | — | listed in scope table | no |
| 2025-05-01_omniscia_staking_v2.pdf | RewardReceiver | unmatched — not counted | — | listed in scope table | no |
| 2025-05-01_omniscia_staking_v2.pdf | RouterModuleClaim | unmatched — not counted | — | listed in scope table | no |
| 2025-05-01_omniscia_staking_v2.pdf | RouterModuleDeposit | unmatched — not counted | — | listed in scope table | no |
| 2025-05-01_omniscia_staking_v2.pdf | RouterModuleWithdraw | unmatched — not counted | — | listed in scope table | no |
| 2025-05-01_omniscia_staking_v2.pdf | RouterIdentifierMapping | unmatched — not counted | — | listed in scope table | no |
| 2025-05-01_omniscia_staking_v2.pdf | RouterModuleMigrationCurve | unmatched — not counted | — | listed in scope table | no |
| 2025-05-01_omniscia_staking_v2.pdf | RouterModuleMigrationYearn | unmatched — not counted | — | listed in scope table | no |
| 2025-05-01_omniscia_staking_v2.pdf | RouterModuleMigrationStakeDAOV1 | unmatched — not counted | — | listed in scope table | no |
| 2025-05-01_omniscia_staking_v2.pdf | Sidecar | unmatched — not counted | — | listed in scope table | no |
| 2025-05-01_omniscia_staking_v2.pdf | Strategy | unmatched — not counted | — | listed in scope table | no |
| 2025-05-01_omniscia_staking_v2.pdf | SidecarFactory | unmatched — not counted | — | listed in scope table | no |
| 2025-08-08_pashov_staking_v2_morpho_support.pdf | Accountant | unmatched — not counted | — | listed in scope section | no |
| 2025-08-08_pashov_staking_v2_morpho_support.pdf | RewardVault | unmatched — not counted | — | listed in scope section | no |
| 2025-08-08_pashov_staking_v2_morpho_support.pdf | CurveLendingMarketFactory | unmatched — not counted | — | listed in scope section | no |
| 2025-08-08_pashov_staking_v2_morpho_support.pdf | CurveCryptoswapOracle | unmatched — not counted | — | listed in scope section | no |
| 2025-08-08_pashov_staking_v2_morpho_support.pdf | CurveStableswapOracle | unmatched — not counted | — | listed in scope section | no |
| 2025-08-08_pashov_staking_v2_morpho_support.pdf | MorphoMarketFactory | unmatched — not counted | — | listed in scope section | no |
| 2025-08-08_pashov_staking_v2_morpho_support.pdf | StrategyWrapper | unmatched — not counted | — | listed in scope section | no |
| 2025-09-03_omniscia_staking_v2.pdf | StrategyWrapper | unmatched — not counted | — | listed in scope table as target contract | no |
| 2026_03_26_trust_security_vlsdt.pdf | BoostMarketplace | unmatched — not counted | — | listed in scope | no |
| 2026_03_26_trust_security_vlsdt.pdf | FeeDistributor | unmatched — not counted | — | listed in scope | no |
| 2026_03_26_trust_security_vlsdt.pdf | veSDT | unmatched — not counted | — | listed in scope | no |
| 2026_03_26_trust_security_vlsdt.pdf | vlBoost | own contract | vlBoost (selected) `0xab05ca...d2adda` — deployed 2026-04-15 17:00:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2026_03_26_trust_security_vlsdt.pdf | vlSDT | own contract | 0x94818a… (selected) `0x94818a...0b80b8` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2026_03_26_trust_security_vlsdt.pdf | IBoostMarketplace | unmatched — not counted | — | listed in scope | no |
| 2026_03_26_trust_security_vlsdt.pdf | IBoostRegistry | unmatched — not counted | — | listed in scope | no |
| 2026_03_26_trust_security_vlsdt.pdf | IVeSDT | unmatched — not counted | — | listed in scope | no |
| 2026_03_26_trust_security_vlsdt.pdf | IVlFeeDistributor | unmatched — not counted | — | listed in scope | no |
| 2026_03_26_trust_security_vlsdt.pdf | IVlSDT | unmatched — not counted | — | listed in scope | no |
| 2026_03_26_trust_security_vlsdt.pdf | IvlBoost | unmatched — not counted | — | listed in scope | no |
| 2023-01-01_chainsecurity_votemarket_v1.pdf | Platform | unmatched — not counted | — | listed in scope table | no |
| 2023-01-01_chainsecurity_votemarket_v1.pdf | PlatformFactory | unmatched — not counted | — | listed in scope table | no |
| 2024-09-01_trust_security_votemarket_v2.pdf | Votemarket | unmatched — not counted | — | listed in scope | no |
| 2024-09-01_trust_security_votemarket_v2.pdf | Verifier | unmatched — not counted | — | listed in scope | no |
| 2024-09-01_trust_security_votemarket_v2.pdf | Oracle | unmatched — not counted | — | listed in scope | no |
| 2024-09-01_trust_security_votemarket_v2.pdf | RLPDecoder | unmatched — not counted | — | listed in scope | no |
| 2024-09-01_trust_security_votemarket_v2.pdf | IVotemarket | unmatched — not counted | — | listed in scope | no |
| 2024-09-01_trust_security_votemarket_v2.pdf | OracleLens | unmatched — not counted | — | listed in scope | no |
| 2024-09-01_trust_security_votemarket_v2.pdf | IOracle | unmatched — not counted | — | listed in scope | no |
| 2024-09-01_trust_security_votemarket_v2.pdf | IHook | unmatched — not counted | — | listed in scope | no |
| 2024-09-01_trust_security_votemarket_v2.pdf | IGaugeController | unmatched — not counted | — | listed in scope | no |
| 2024-09-01_trust_security_votemarket_v2.pdf | IOracleLens | unmatched — not counted | — | listed in scope | no |
| 2024-10-01_pashov_laposte.pdf | TokenFactory | unmatched — not counted | — | listed in scope | no |
| 2024-10-01_pashov_laposte.pdf | Token | unmatched — not counted | — | listed in scope | no |
| 2024-10-01_pashov_laposte.pdf | LaPoste | unmatched — not counted | — | listed in scope | no |
| 2024-10-01_pashov_laposte.pdf | Adapter | unmatched — not counted | — | listed in scope | no |
| 2024-10-01_pashov_laposte.pdf | Client | unmatched — not counted | — | listed in scope | no |
| 2024-10-01_pashov_laposte.pdf | Chains | unmatched — not counted | — | listed in scope | no |
| LaPoste contracts have been audited by [Pashov Audit Group](). | TokenFactory | unmatched — not counted | — | listed in scope | no |
| LaPoste contracts have been audited by [Pashov Audit Group](). | Token | unmatched — not counted | — | listed in scope | no |
| LaPoste contracts have been audited by [Pashov Audit Group](). | LaPoste | unmatched — not counted | — | listed in scope | no |
| LaPoste contracts have been audited by [Pashov Audit Group](). | Adapter | unmatched — not counted | — | listed in scope | no |
| LaPoste contracts have been audited by [Pashov Audit Group](). | Client | unmatched — not counted | — | listed in scope | no |
| LaPoste contracts have been audited by [Pashov Audit Group](). | Chains | unmatched — not counted | — | listed in scope | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0x73968b...6cdb2f` | SDT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 1094 |
| upstream | 199 |
| standard_library | 80 |
| needs_review | 3 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 18
- Inherited remapped matches: 0
- Address-book scope dispositions: 2 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 120 unmatched
- Matched-own operational status: 2 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=15, low=4
- Match method counts: unique_name=4

Zero-match audit list:

- [18213] 2022-02-01_chainsecurity_vesdt_fxs_locker.pdf
- [18214] 2022-10-01_chainsecurity_liquid_lockers.pdf
- [18215] 2025-03-11_omniscia_zerolend_liquid_locker.pdf
- [18216] 2025-08-27_trust_security_misc_curve_oracles.pdf
- [18217] 2023-11-22_zachobront_onlyboost.md
- [18218] 2024-02-01_trust_security_onlyboost_v1.pdf
- [18219] 2024-02-15_trust_security_onlyboost_v2.pdf
- [18220] 2025-04-01_trust_security_staking_v2.pdf
- [18221] 2025-05-01_omniscia_staking_v2.pdf
- [18222] 2025-08-08_pashov_staking_v2_morpho_support.pdf
- [18223] 2025-09-03_omniscia_staking_v2.pdf
- [18225] 2023-01-01_chainsecurity_votemarket_v1.pdf
- [18226] 2024-09-01_trust_security_votemarket_v2.pdf
- [18227] 2024-10-01_pashov_laposte.pdf
- [18228] CertiK SkynetStake DAO project
- [18229] Firepan SentinelSDT token, 0x73968b9a57c6e53d41345fd57a6e6ae27d6cdb2f
- [18230] audits (GitHub directory)
- [18231] LaPoste contracts have been audited by [Pashov Audit Group]().

Fork inheritance lineage and inherited audits are included when available.
