# Agentic Audit Brief: Stake DAO

## Export Authority

- Production state: **published scope**
- Raw selected rows: 4 across 2 audit(s)
- Eligible audit results: 34 (2 matched; 32 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Stake DAO (`stake-dao`)
- Website: [https://stakedao.org/](https://stakedao.org/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, avalanche, base, bsc, ethereum, fraxtal, gnosis, linea, optimism, polygon, sonic
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

- UnnamedContract (`0x94818a7baa7e9f5dc62ce4da1b52ef9a760b80b8`, chain 1)
- UnnamedContract (`0xb0552b6860ce5c0202976db056b5e3cc4f9cc765`, chain 1)
- SDT (`0x73968b9a57c6e53d41345fd57a6e6ae27d6cdb2f`, chain 1)
- vlBoost (`0xab05ca46d1c78cabb051effe35099714cad2adda`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 2; live-surface rows included: 2 (2 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 4/5 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 1/2 (50.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 4 own, 1 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 1371 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 73 standard proxy/library)
- Proxy deployments represented within implementation groups: 168
- Confirmed-live implementations: 4 of 1376 unique; 1372 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 1/1373
- Verified + Unaudited implementations: 1372
- Verified by bytecode match: 0
- Unverified implementations: 3
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
| Trust Security | Tier 2 | 1 | 0.1% | 2026-04 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| vlBoost | unknown | project_anchor | own_supporting | 0 | ethereum | unit-393026 | `0xab05ca46d1c78cabb051effe35099714cad2adda` | ✅ Audited |

### ⚠️ Verified + Unaudited (1372)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AccessManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x4973b53b300d64ab72147eff8c9d962f6b1da02e` | ⚠️ Unaudited |
| Accountant | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x8f872ce018898ae7f218e5a3ce6fe267206697f8` | ⚠️ Unaudited |
| Accumulator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x23ab5100acaff53d00ad92bb8df75a72e7a3bc4a` | ⚠️ Unaudited |
| AccumulatorProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5892dff85a2ae0cee9a0efa4c95e5e977122d1b8` | ⚠️ Unaudited |
| ACL | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x17c719e19d33261081279e8b720ff9397a2f7c90` | ⚠️ Unaudited |
| ACLManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x44a57b7dbbfd703bfce59a0c17132738258c6f88` | ⚠️ Unaudited |
| ActionAddRemoveLiq | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3bbacda010e7f4347e54f2bf0f42ff30b5a897da` | ⚠️ Unaudited |
| ActionAddRemoveLiqV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x24ec4b068140dd3c0d63d904a24656c6fd002744` | ⚠️ Unaudited |
| ActionCallback | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x09f4acb1023fe06e0f7a2f8f1ae9ae2c011c3d07` | ⚠️ Unaudited |
| ActionInfoStatic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3f9f34113254cff59ce94af85982f7d75588f23b` | ⚠️ Unaudited |
| ActionMarketAuxStatic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x026644dc6fc4cf22a45ad14231090c7736d07507` | ⚠️ Unaudited |
| ActionMarketCoreStatic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2066a650af4b6895f72e618587aad5e8120b7790` | ⚠️ Unaudited |
| ActionMintRedeem | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4dba367d0f05bcd6a405f3d90c4c4fd93e185369` | ⚠️ Unaudited |
| ActionMintRedeemStatic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1812a77aa47f40c84fc46deb0644c1a486437ed6` | ⚠️ Unaudited |
| ActionMisc | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfc49c4fec5306c73cd21661f9b2fe4b14f94065c` | ⚠️ Unaudited |
| ActionStorageStatic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0a60b5d39b27e18f63aa937ad09acc2b3d46d2a1` | ⚠️ Unaudited |
| ActionSwapPT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6c0df4896b4b57dcc6d121aa4fd8569b4451bf50` | ⚠️ Unaudited |
| ActionSwapPTV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x209829e8082b96031fbc5f717aa4deab0c9747fd` | ⚠️ Unaudited |
| ActionSwapPTYT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5f438e5d032fd933fca63335a8097b466241c3b7` | ⚠️ Unaudited |
| ActionSwapYT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x41d81daf401a0aa7422a769243fa933f351a0d64` | ⚠️ Unaudited |
| ActionSwapYTV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x32ed8fc44a5608d22519dca5a5a135f9661d158d` | ⚠️ Unaudited |
| Adapter | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xf0000058000021003e4754dca700c766de7601c2` | ⚠️ Unaudited |
| AdapterFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1662a5c9ce635f2322a9aadeaa060654aaadccf4` | ⚠️ Unaudited |
| AdapterRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x84cce8cd93a643f36a1350f77369af5731df774d` | ⚠️ Unaudited |
| AdaptiveCurveIrm | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x870ac11d48b15db9a138cf899d20f13f79ba00bc` | ⚠️ Unaudited |
| Address | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1ed97638af0dac459c29b1c650edcfb4b4ea0aab` | ⚠️ Unaudited |
| AddressManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8c5d64d10394cfa070066e70ec19e67398b4dabe` | ⚠️ Unaudited |
| AdminUpgradeabilityProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x1e5accd956b3ef4c0a5b3c38667b6a0458bbf64d` | ⚠️ Unaudited |
| AdminUpgradeabilityProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x2b4d259a8f6e765ad881c4c1d04045d629da01b4` | ⚠️ Unaudited |
| AdminUpgradeabilityProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x7e983e4f98b16cee76f8f9a6a1e87b5861de8769` | ⚠️ Unaudited |
| Agent | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x13dff1809d1e9ddf9ac901f47817b7f45220a846` | ⚠️ Unaudited |
| AggMonetaryPolicy-monetarypolicybasedonaggregatedpricesforcrvUSD | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0901b541beff2cd44859701619e245e82f48e62b` | ⚠️ Unaudited |
| AggregationRouterHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x09d4b49b12f567b96b387ce5823059bb7ba1da29` | ⚠️ Unaudited |
| AggregatorBatchRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb21a277466e7db6934556a1ce12eb3f032815c8a` | ⚠️ Unaudited |
| AggregatorRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x013d4382f291be5688afbcc741ee8a24c66b2c92` | ⚠️ Unaudited |
| AggregatorStablePrice-aggregatorofstablecoinpricesforcrvUSD | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x18672b1b0c623a30089a280ed9256379fb0e4e62` | ⚠️ Unaudited |
| AHv2Repayment | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x141e0541d87c6cbdbf2a6a8104248b4b922f629e` | ⚠️ Unaudited |
| AladdinCRV | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x160d6e417be17e21712f004b87872a30799cb78f` | ⚠️ Unaudited |
| AladdinCRVZap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5eb30ce188b0abb89a942ced6cbe114f4d852082` | ⚠️ Unaudited |
| AladdinETH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7f6ce8b08bca036c60f71693cd9425614ab8f9be` | ⚠️ Unaudited |
| AladdinFXS | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x165a7a410c14054cd39d03b4b7cb392f61be6edc` | ⚠️ Unaudited |
| AladdinFXSV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd9cc44c567b1effddde8461acd6c67028af99258` | ⚠️ Unaudited |
| AladdinPriceOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x304047f1d867a00082c8549e81a2f0b389d869b4` | ⚠️ Unaudited |
| AladdinSdCRV | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x922837838aed2937742cff7b0adfd74157e3b9d7` | ⚠️ Unaudited |
| AllInOneGateway | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6e513d492ded19ad8211a57cc6b4493c9e6c857b` | ⚠️ Unaudited |
| AllMight | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0000000a3fc396b89e4c11841b39d9dff85a5d05` | ⚠️ Unaudited |
| Allocator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x91b69a17685d49fca9eda932ee58fae92d7228fd` | ⚠️ Unaudited |
| ALMSmartChefSimple | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb479fa3d145e4a2ef1e2860c04fe60563070224a` | ⚠️ Unaudited |
| AlpacaAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xaacd1d968f8b1de66da1daa4d5ac964150eeb022` | ⚠️ Unaudited |
| AMBeacon | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x09176eacaa413cc0722aa5ad716820e8f19682b7` | ⚠️ Unaudited |
| AMTransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x38b9b4884a5581e96ed3882aa2f7449bc321786c` | ⚠️ Unaudited |
| AngleAccumulator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9dddf9c8a7447993bcfef18f6b5421f28bd1c888` | ⚠️ Unaudited |
| AngleAccumulatorV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x943671e6c3a98e28abdbc60a7ac703b3c0c6aa51` | ⚠️ Unaudited |
| AngleAccumulatorV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5ed81291a4b978a25bea88b0c40cb42d63f72d2e` | ⚠️ Unaudited |
| AngleLocker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd13f8c25cced32cdfa79eb5ed654ce3e484dcaf5` | ⚠️ Unaudited |
| AngleMerklClaimer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x32ee46755ae81ce917392ed1fb21f74a8104515b` | ⚠️ Unaudited |
| AngleStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x22635427c72e8b0028feae1b5e1957508d9d7caf` | ⚠️ Unaudited |
| AngleVaultFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x66f3d3210f84fe8cc2c77a1f001a395b2ae0b801` | ⚠️ Unaudited |
| AngleVaultGamma | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1649ff31c30f9fc7ecae5c76ad00ae3aecf18ece` | ⚠️ Unaudited |
| AngleVaultGUni | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4ca321e4966a6bcbc26c13921cd76cac7d1f1b02` | ⚠️ Unaudited |
| AngleVoter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x103a24adf3c60e29ecf4d05ee742cadc7ba3fab8` | ⚠️ Unaudited |
| AngleVoterV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbabe5d223fb31a37ce184481678a6667ac8cd98b` | ⚠️ Unaudited |
| AngleVoterV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdde0f1755ded401a012617f706c66a59c6917efd` | ⚠️ Unaudited |
| AngleVoterV5 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0e0f27b9d5f2bc742bf547968d2f07decbcf1a23` | ⚠️ Unaudited |
| anyMIM Burner | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0c762a5cf063d55ef5b661f8f8c96f6c67f76807` | ⚠️ Unaudited |
| Api3AggregatorETH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x102ba7a2b0d6423659e6d2a6f7c387da53358909` | ⚠️ Unaudited |
| Api3Oracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x5368218848a4b5412dae4e6a4bd07a372a30d3f4` | ⚠️ Unaudited |
| APROracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4ddc33689380e6b56783a5442999b75a5b919361` | ⚠️ Unaudited |
| APRWithPoolOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x044dad5c0da888c93d8244261b67bd431b47ca14` | ⚠️ Unaudited |
| ApwBridger | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x174a1f4135fab6e7b6dbe207ff557dff14799d33` | ⚠️ Unaudited |
| ApwineAccumulator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x29bcfccb6cff577d68ea316f5685f343253070b2` | ⚠️ Unaudited |
| APWineAirdrop | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x6d496477692320d67b8f211ede5097f3c89abf63` | ⚠️ Unaudited |
| ApwineDepositor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfe928ca6a9c0cdf658a26a374b7373b9d6cefbcf` | ⚠️ Unaudited |
| ApwineLocker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe71e28a510bc3f98a9e77e847ae5aef9a2e5721d` | ⚠️ Unaudited |
| APWRewarder | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd0db1516dc4aa963fd8aa4de41e49502d06fc336` | ⚠️ Unaudited |
| APWToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x134c0591183e9c8a39250a9a04e6f8585bc8157f` | ⚠️ Unaudited |
| ArbitratorVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x25e12482a25cf36ec70fda2a09c1ed077fc21616` | ⚠️ Unaudited |
| Arbitrum Broadcaster | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x94630a56519c00be339bbd8bd26f342bf4bd7ee0` | ⚠️ Unaudited |
| Arbitrum Relayer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x55a1c26ce60490a15bdd6bd73de4f6346525e01e` | ⚠️ Unaudited |
| ArbitrumRootGaugeFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1c99324edc771c82a0dccb780cc7dda0045e50e7` | ⚠️ Unaudited |
| AToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x83f47f2930f6dd665cafa3fb5433bef7e8f46472` | ⚠️ Unaudited |
| AToken Burner | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x12129216800dbdf295505bc064ffae8998bd0664` | ⚠️ Unaudited |
| AuctionKicker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x17d6e65317d42ce40f06538b68e824669e1f679e` | ⚠️ Unaudited |
| AuraBalRewardPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc47162863a12227e5c3b0860715f9cf721651c0c` | ⚠️ Unaudited |
| AuraClaimZap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2e307704efae244c4aae6b63b601ee8da69e92a9` | ⚠️ Unaudited |
| AuraLocker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3fa73f1e5d8a792c80f426fc8f84fbf7ce9bbcac` | ⚠️ Unaudited |
| AuraMerkleDrop | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1a661cf8d8cd69dd2a423f3626a461a24280a8fb` | ⚠️ Unaudited |
| AuraMinter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x59a5ccd34943cd0adcf5ce703ee9f06889e13707` | ⚠️ Unaudited |
| AuraOFT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x1509706a6c66ca549ff0cb464de88231ddbe213b` | ⚠️ Unaudited |
| AuraPenaltyForwarder | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4043569200f7a7a1d989abbabc2de2bde1c20d1e` | ⚠️ Unaudited |
| AuraSidecar | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6aad2a6274843546c585cc22270fb02f26c87896` | ⚠️ Unaudited |
| AuraSidecarFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5db4c1a284bf14946cad63236c98b249d0942505` | ⚠️ Unaudited |
| AuraSidecarFactoryL2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x2a198e3c2064561f21fd82d815bd9fe2d4acc99d` | ⚠️ Unaudited |
| AuraSidecarL2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xa20543bf26d8f85613767f20a4ffb85f7dd2a6a7` | ⚠️ Unaudited |
| AuraStakingProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd9e863b7317a66fe0a4d2834910f604fd6f89c6c` | ⚠️ Unaudited |
| AuraToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x665d01dbd89a0d1b693bb806feea499b5359cf15` | ⚠️ Unaudited |
| AuraVestedEscrow | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x24346652e0e2ae0ce05c781501fdf4fe4553fac6` | ⚠️ Unaudited |
| Authorizer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x809b79b53f18e9bc08a961ed4678b901ac93213a` | ⚠️ Unaudited |
| AuthorizerAdaptor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x6cad2ea22bfa7f4c14aae92e47f510cd5c509bc7` | ⚠️ Unaudited |
| AuthorizerAdaptorEntrypoint | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x36cac20dd805d128c1a6dd16eea845c574b5a17c` | ⚠️ Unaudited |
| AuthorizerWithAdaptorValidation | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xa69e0ccf150a29369d8bbc0b3f510849db7e8eee` | ⚠️ Unaudited |
| AvalancheRootGaugeFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x22625eedd92c81a219a83e1dc48f88d54786b017` | ⚠️ Unaudited |
| BadgerHunt | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x22ba8eeac5bddf7b5a298d2169a24c6f9e12baa0` | ⚠️ Unaudited |
| BalancerAccumulator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8966893fe9c019b3697cd196bad1b21337c27776` | ⚠️ Unaudited |
| BalancerBoostProviderAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xe25217f8fd0e96a95f1cfd0130810c893a000e4f` | ⚠️ Unaudited |
| BalancerDepositor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3e0d44542972859de3cadaf856b1a4fd351b4d2e` | ⚠️ Unaudited |
| BalancerFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1a77424eb212a9c9580653c019cda7441850d81d` | ⚠️ Unaudited |
| BalancerFactoryL2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xf61c1bddfc0702d78267adc17d35bb8b13abd8cc` | ⚠️ Unaudited |
| BalancerGovernanceToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xba100000625a3754423978a60c9317c58a424e3d` | ⚠️ Unaudited |
| BalancerHelpers | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5addcca35b7a0d07c74063c48700c8590e87864e` | ⚠️ Unaudited |
| BalancerLocker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xea79d1a83da6db43a85942767c389fe0acf336a5` | ⚠️ Unaudited |
| BalancerMinter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x239e55f427d44c3cc793f49bfb507ebe76638a2b` | ⚠️ Unaudited |
| BalancerStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x168a0f1c14615b088ce0aab410dbcc09d94214c2` | ⚠️ Unaudited |
| BalancerStrategyL2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xe1f55d0ff61e0437dc62ecc9c4b702f5ff76b865` | ⚠️ Unaudited |
| BalancerVaultFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6e37f0f744377936205610591eb8787d7be7946f` | ⚠️ Unaudited |
| BalancerVoter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xff09a9b50a4e9b9ab95d2dcb552e8469f9c891ff` | ⚠️ Unaudited |
| BalLiquidityProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa7429af4deb16827dad0e71d8aeea9c2bf70e32c` | ⚠️ Unaudited |
| BALTokenHolderFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb848f50141f3d4255b37ac288c25c109104f2158` | ⚠️ Unaudited |
| BaseRewardPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x00a7ba8ae7bca0b10a32ea1f8e2a1da980c6cad2` | ⚠️ Unaudited |
| BaseSplitCodeFactoryContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0e669e08bd717d7f9c9de158636bd8561295fbb5` | ⚠️ Unaudited |
| BatchAddCard | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2953a32e7babe3c6b9d31c80c727ab9ca042f687` | ⚠️ Unaudited |
| BatchCheckpointer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf24917fb88261a37cc57f686ebc831a5c0b9fd39` | ⚠️ Unaudited |
| BatchFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1725738f3295d3f8eb68da864a2ade9c39194c01` | ⚠️ Unaudited |
| BatchRelayerLibrary | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x41b953164995c11c81da73d212ed8af25741b7ac` | ⚠️ Unaudited |
| BatchRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x136f1efcc3f8f88516b9e94110d56fdbfb1778d1` | ⚠️ Unaudited |
| BlackpoolAccumulator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfac788261da6e2affcd0e9ab340395378f8cbfbc` | ⚠️ Unaudited |
| BlackpoolDepositor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x219f7496fbd30e1f21a20613f9372d608a279993` | ⚠️ Unaudited |
| BlackpoolLocker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0a4df7809f83e130d8ffa297f03b75318e37b461` | ⚠️ Unaudited |
| BlackPoolToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0ec9f76202a7061eb9b3a7d6b59d36215a7e37da` | ⚠️ Unaudited |
| BlackScholesEstimate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8b4fd02326db6ebe095e0707e2973c9e045da3dc` | ⚠️ Unaudited |
| Block Hash Oracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x47ca04ee05f167583122833abfb0f14ac5677ee4` | ⚠️ Unaudited |
| BlockMiner | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc0dc493ce1b5908dd95b768c397dd581ef4fcaeb` | ⚠️ Unaudited |
| BnbGaugeVotingStateSender | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4829bc1280d0c41a890eebb8e82503e5a55cdcd1` | ⚠️ Unaudited |
| BnbPricePrediction | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x05b4c8785f4c8856c47a3c2ebce313343efa9c75` | ⚠️ Unaudited |
| BnbStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x187463a09569020659f4128c14fb13bce23b4208` | ⚠️ Unaudited |
| BnbStateSender | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4c1cf444bbbfd3ed6608659b61a1107af01181e5` | ⚠️ Unaudited |
| BokkyPooBahsDateTimeContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x90503d86e120b3b309cebf00c2ca013ab3624736` | ⚠️ Unaudited |
| Boost Delegation V2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x6b5da774890db7b7b96c6f44e6a4b0f657399e2e` | ⚠️ Unaudited |
| Boost Delegation V2.1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2cf8e145bdfe7c52b49ad9bb3c294a31b2736c59` | ⚠️ Unaudited |
| BoostCalculator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2ac44b31782a8c5ba896c29b3c2c0df1399c0ebc` | ⚠️ Unaudited |
| BoostDelegationV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2c06c9d02a3455f1b22b9365eb76bf558db1b947` | ⚠️ Unaudited |
| Booster | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x01363db6e185433ae63de4c745ca0aef49a569d8` | ⚠️ Unaudited |
| BoosterHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x82bbbc3c7b459913ae6063858832a6c2c43d0bd0` | ⚠️ Unaudited |
| BoosterLite | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x98ef32edd24e2c92525e59afc4475c1242a30184` | ⚠️ Unaudited |
| BoosterOwner | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x228a142081b456a9ff803d004504955032989f04` | ⚠️ Unaudited |
| BoosterOwnerSecondary | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x256e1bba846611c37cf89844a02435e6c098b86d` | ⚠️ Unaudited |
| BoosterPlaceholder | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa2cf21b157b2f203e37b616b619f438b5aa86ee5` | ⚠️ Unaudited |
| BoosterRewardManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x817ff43b8a18b8ab76485283e42b4bd632e82d24` | ⚠️ Unaudited |
| BoostMarketplace | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa52f3dd9c456f77d766075a727c7c045fcc407f0` | ⚠️ Unaudited |
| BorrowLogic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xd85bbd487b957857d10d7d96f3a08f6bab55f7e3` | ⚠️ Unaudited |
| BotMarket | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1adedfeee403e61d4cb9ef6de5f759a49ae3b2db` | ⚠️ Unaudited |
| BountyHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5ced8bbc7fca2fd370e50578786c3418848dc1ed` | ⚠️ Unaudited |
| BribeManager | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x2b6d357b0585be3dbc448366a23486437ba2015c` | ⚠️ Unaudited |
| BribeVotingReward | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x2c869c812bf8519e4a8dc42dcd8793ec09f776c1` | ⚠️ Unaudited |
| BridgeLogic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xc3b6ddc1c9876a922754f1d01d18893c7956a74d` | ⚠️ Unaudited |
| BridgeToken | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | `0xb3ed0a426155b79b898849803e3b36552f7ed507` | ⚠️ Unaudited |
| BufferRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x311334883921fb1b813826e585df1c2be4358615` | ⚠️ Unaudited |
| BulkSeller | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1a3753fa1eee1622fe327df0b7ec03463ef00f73` | ⚠️ Unaudited |
| BulkSellerFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x40ae6da2d92aa3dcb7f8d7a7209fd12bdfcb7c85` | ⚠️ Unaudited |
| BulkSellerOffchain | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9acc60f915dfcd190d270fc92567ae71776bd320` | ⚠️ Unaudited |
| BundleUtils | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd1a7b80a954e56bfd7bd889af6e2be8674719f5d` | ⚠️ Unaudited |
| BunnyAthleticGame | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf4c31dfeb3c0a2203472a3e20e49b1efe4bd588d` | ⚠️ Unaudited |
| BunnyFactoryV4 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5bd8a8d023f772ad2b6a181cc0bc2b15d5be13c7` | ⚠️ Unaudited |
| BunnyMintingFarm | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7c8b60d2b859a38c8b9b5b6cb4565485cb637c7a` | ⚠️ Unaudited |
| Burner | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xba9801acfdf3b8852865149d93acffef9120272d` | ⚠️ Unaudited |
| CakeAccumulator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xaa14ad0ad8b48406baf2473692901e47430414f5` | ⚠️ Unaudited |
| CAKEDepositor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x32ee46755ae81ce917392ed1fb21f74a8104515b` | ⚠️ Unaudited |
| CakeFeeReceiver | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x215c30bb5f21886b74796a1c32b2a5277e17a599` | ⚠️ Unaudited |
| CakeIFOFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x16c4a40c57af157b0acb42ab71b8788fc5f23741` | ⚠️ Unaudited |
| CakeLocker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1e6f87a9ddf744af31157d8daa1e3025648d042d` | ⚠️ Unaudited |
| CakePlatform | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0cc6e68b72526d5cf3002792d92e2bd65f92514d` | ⚠️ Unaudited |
| CakePlatformClaimProxyHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0bb31c617420907db54817b13ee3fe022c803c16` | ⚠️ Unaudited |
| CakeToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x086bef28ebfb560e787989d025c83bd1e288807b` | ⚠️ Unaudited |
| CakeVoter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3ac34fe88e434812ddc4a29caa8234328983a13c` | ⚠️ Unaudited |
| CallComparator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd3bfa85dc668aab38121be12d69dd180301dec25` | ⚠️ Unaudited |
| CampaignManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x15e4f4d96263a237111e9b418efd5af66a303bc7` | ⚠️ Unaudited |
| CampaignRemoteManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x53ad4cd1f1e52dd02aa9fc4a8250a1b74f351ca2` | ⚠️ Unaudited |
| CErc20Delegator | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x1066ab47a342152c564af62d179aa4b659a11f7d` | ⚠️ Unaudited |
| CEtherDelegator | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xf148cdec066b94410d403ac5fe1bb17ec75c5851` | ⚠️ Unaudited |
| ChefRewardHook | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0f29b765be2de395cb6b10d9ead46975057b51ed` | ⚠️ Unaudited |
| ChefToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4223aa5bfd783dedcc54585cdc1cfe9ea1587c0f` | ⚠️ Unaudited |
| Child Liquidity Gauge | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x59562f93c447656f6e4799fc1fc7c3d977c3324f` | ⚠️ Unaudited |
| Child Liquidity Gauge Factory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x871fbd4e01012e2e8457346059e8c189d664dba4` | ⚠️ Unaudited |
| ChildChainGaugeFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x2498a2b0d6462d2260eac50ae1c3e03f4829ba95` | ⚠️ Unaudited |
| CircuitBreakerLib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x956ccab09898c0af2aca5e6c229c3ad4e93d9288` | ⚠️ Unaudited |
| ClaimFeesHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6403972c1e8c6d01c57eed62e6322c191ccb28d8` | ⚠️ Unaudited |
| ClaimRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x633120100e108f03ace79d6c78aac9a56db1be0f` | ⚠️ Unaudited |
| ClaimRewardsV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x097d23d07f1061cb4ace410a3ddc634820bb79c6` | ⚠️ Unaudited |
| ClaimRewardsXChain | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xabf4368d120190b4f111c30c92cc9f8f6a6be233` | ⚠️ Unaudited |
| ClaimSignatureRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x03cbccbe8d2073a1dc186ae6bcd95390fcdff36f` | ⚠️ Unaudited |
| ClaimVecrvFees | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4940896e635ea177f1095009be9ee9ef02f15d0c` | ⚠️ Unaudited |
| ClaimZap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3f29cb4111cbda8081642da1f75b3c12decf2516` | ⚠️ Unaudited |
| CLeverAMOHarvesterFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd912d922e7e6d11d5caae204f7907f38e70abed2` | ⚠️ Unaudited |
| CLeverToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3c20ac688410be8f391be1fb00afc5c212972f86` | ⚠️ Unaudited |
| Cliff Escrow | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0ba8df4bfd13e3e15da3406e4fab312a8257e220` | ⚠️ Unaudited |
| CLLimitOrderHook | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x647a995b00b4dc23791f543516075bffd9bb87b3` | ⚠️ Unaudited |
| CLStableSwapHookFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x44de03599d1088b205d959b09a842448a0a63173` | ⚠️ Unaudited |
| CLStableSwapPoolFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3669ddd1a9ee009db9eb2174c5c760fffc66cfef` | ⚠️ Unaudited |
| CollateralMaximizer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x494ba8753a253bb314f1e8324c36f804d31b96c1` | ⚠️ Unaudited |
| ComboOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4462df433d01f32ac0c4adb0a76dcf255634490c` | ⚠️ Unaudited |
| ComboOracle_KyberSwapElastic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x734fd1fd1f3720379f52cb9d8168d76cd1ca4a73` | ⚠️ Unaudited |
| ComboOracle_UniV2_UniV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x184fe0694dd81dcfc4b1e94af10f72dfd2ab315b` | ⚠️ Unaudited |
| CommonRegistryXChain | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7d60f21072b585351dfd5e8b17109458d97ec120` | ⚠️ Unaudited |
| CommunalFarm_SaddleD4 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0639076265e9f88542c91dcdeda65127974a5ca5` | ⚠️ Unaudited |
| CompensationEscrow | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xda7b940be1bce0d6e2eecd96f5cf6ed0504b64c3` | ⚠️ Unaudited |
| COMPfarming | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1532eb6c6d134903a0dedfc840128007b36aa870` | ⚠️ Unaudited |
| ComposableStablePoolFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4bdcc2fb18aeb9e2d281b0278d946445070eada7` | ⚠️ Unaudited |
| ComposableStablePreview | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4a303b4e823b97689bcc77ae3dde6b6e5b5d3007` | ⚠️ Unaudited |
| ComposableStablePreviewProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x4239ddd3c50463383670e86c119220849bfaf64a` | ⚠️ Unaudited |
| ComposableStablePreviewV4 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x886c9a91bf10dbc5e3c66c29387be9421a00442d` | ⚠️ Unaudited |
| ComposableStablePreviewV5 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x39a65bfdb7b977a019564c2f9a81e1a29f7341fe` | ⚠️ Unaudited |
| CompositeLiquidityRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1311fbc9f60359639174c1e7cc2032dbdb5cc4d1` | ⚠️ Unaudited |
| ConcentratorAladdinETHVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x06dfaf0e53ce24d43eac332bbdc07b690894df74` | ⚠️ Unaudited |
| ConcentratorHarvesterFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1b544befd7a51d5cdb40f79eef5205f16a63cd98` | ⚠️ Unaudited |
| ConcentratorStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5432526e75d45369970b8616f54b25c831d1e2b2` | ⚠️ Unaudited |
| ConcentratorStrategyFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x23384dd4380b3677b829c6c88c0ea9cc41c099bb` | ⚠️ Unaudited |
| ConcentratorVaultForAsdCRV | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0a6e1167c9b8599ee1deccb331aac176e2aa0b97` | ⚠️ Unaudited |
| ConfiguratorLogic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x9660b39d0e38be0f7e09cc6c516bd335746262ee` | ⚠️ Unaudited |
| ConstantPriceFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x1cd776897ef4f647bf8241ec69549e4a9cb1d608` | ⚠️ Unaudited |
| Controller | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x29d3782825432255041db2eafcb7174f5273f08a` | ⚠️ Unaudited |
| ControllerModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb3f46356ca516664c305dad356ddee5491017945` | ⚠️ Unaudited |
| Converter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x90dd9a085f126c79992bb07da65b5abbe85c81c2` | ⚠️ Unaudited |
| ConverterDAItoYCRV | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x98158e133f7f56a574fc806e579e1355048039ca` | ⚠️ Unaudited |
| ConverterRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa617206663343b6353acf27566586ee9b53dfb2b` | ⚠️ Unaudited |
| ConvexLockerRecipient | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0000000095310137125f82f37fbe5d2f99279947` | ⚠️ Unaudited |
| ConvexRewarder | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9e01aac4b3e8781a85b21d9d9f848e72af77b362` | ⚠️ Unaudited |
| ConvexSidecar | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xef7cffdef21538b63cc541bf206bb382d922a216` | ⚠️ Unaudited |
| ConvexSidecarFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6dfa6232ec23e029d4322115f491a912de9cf9e7` | ⚠️ Unaudited |
| ConvexSidecarFactoryL2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf368a89e1731b9362670786d36866910c5334477` | ⚠️ Unaudited |
| ConvexSidecarL2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x735a969463967578fcc17ceb9bba32893d00f71d` | ⚠️ Unaudited |
| ConvexStakingWrapperAbra | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa0334c20700207ba4999a5596969fa63ec924ef8` | ⚠️ Unaudited |
| ConvexStakingWrapperFrax | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9dd9f3e3c25547c7fb6f6e3c99965677a7231beb` | ⚠️ Unaudited |
| ConvexStakingWrapperFraxLend | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa82bebc607cd258c66a6d5006a19401eafb786a4` | ⚠️ Unaudited |
| ConvexToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4e3fbd56cd56c3e72c1403e103b45db9da5b9d2b` | ⚠️ Unaudited |
| CowSwapBurner | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x9c0f9f476b50cf07e704c070366c1adbf39f264e` | ⚠️ Unaudited |
| CowSwapFeeBurner | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0e800d8d2e8b4694610aedc385aa6d763492b106` | ⚠️ Unaudited |
| CPITrackerOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x04baf30115d7bac714709910dd286718cfad8808` | ⚠️ Unaudited |
| Create2Factory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x317e6b6bca8862f514d1fa28488dcd9211731acc` | ⚠️ Unaudited |
| CRON | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8e14d03061705eb48fda6bc6e244c5eabe5d322e` | ⚠️ Unaudited |
| CrossFarmingToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd50fe67740acb99c9568ca390c6f750184076810` | ⚠️ Unaudited |
| CrossFarmingTokenDeployer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x96e752a2f8f3ece22209d6ac26094698dbc8919e` | ⚠️ Unaudited |
| CRVAccumulatorV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x963bacb5b0df6950814c572e3f9ea005458f6563` | ⚠️ Unaudited |
| CRVAccumulatorV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3e7b4de8a29c90e0052c27bad365bbfe2aaa7ec5` | ⚠️ Unaudited |
| CrvDepositor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8014595f2ab54cd7c604b00e9fb932176fdc86ae` | ⚠️ Unaudited |
| CRVDepositorV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x88c88aa6a9cedc2aff9b4ca6820292f39cc64026` | ⚠️ Unaudited |
| CrvDepositorWrapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x68655ad9852a99c87c0934c7290bb62cfa5d4123` | ⚠️ Unaudited |
| CRVPoolFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x04ef23094b40bca5655bbc8442886e1c45222619` | ⚠️ Unaudited |
| CRVStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x94155052e2be3c9ad6d57f1b13f914626946d8f7` | ⚠️ Unaudited |
| crvUSD Burner | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x14e11c1b8f04a7de306a7b5bf21bbca0d5cf79ff` | ⚠️ Unaudited |
| crvUSD Controller | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x17c6e1ddf1cce3d33240a53fce8a2ee48541f4d4` | ⚠️ Unaudited |
| crvUSDControllerFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc9332fdcb1c491dcc683bae86fe3cb70360738bc` | ⚠️ Unaudited |
| crvUSDdeleveragezap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2bc706b83ab08d0437b8a397242c3284b5f81d74` | ⚠️ Unaudited |
| crvUSDPoolRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x538e984c2d5f821d51932dd9c570dff192d3df2d` | ⚠️ Unaudited |
| CrvUsdRedeemer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x935bcf81c8a8d3a2b46560a8e2111b190057aae3` | ⚠️ Unaudited |
| crvUSDStablecoin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf939e0a03fb07f59a73314e73794be0e57ac1b4e` | ⚠️ Unaudited |
| CrvVaultSwapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7c022d19518356d71ba046be28d721e1b425b4a9` | ⚠️ Unaudited |
| CryptoFromPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3b38ce23799dc56664ff6048892510abffdb7a25` | ⚠️ Unaudited |
| CryptoFromPoolsRate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x38e7627eb98a40e7528bcce709a80083093ba2f8` | ⚠️ Unaudited |
| CryptoFromPoolsRateWAgg | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0a9ae947495034c0bbbab845fd75b5bbafc91aab` | ⚠️ Unaudited |
| CryptoFromPoolVaultWAgg | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x002688c4296a2c4d800f271fe6f01741111b09be` | ⚠️ Unaudited |
| CryptoFromPoolWAgg | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2d89d82ff68bae1357d746b3e8eac520bfe1d5ca` | ⚠️ Unaudited |
| CryptopoolLPOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x68e46918dc347e20cf180747996258be00dc461b` | ⚠️ Unaudited |
| CryptoWithStablePriceETH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x966cbdecefb60a289b0460f7638f4a75f432ca06` | ⚠️ Unaudited |
| CryptoWithStablePriceSfrxeth | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x28d7880b5b67fb4a0b1c6ed6c33c33f365113c29` | ⚠️ Unaudited |
| CryptoWithStablePriceTBTC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbef434e2acf0fbad1f0579d2376fed0d1cfc4217` | ⚠️ Unaudited |
| CryptoWithStablePriceWBTC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x07374b547cae235227635c13266c69847a3e46fa` | ⚠️ Unaudited |
| CryptoWithStablePriceWsteth | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x21f5f6d3f90d0f56a6de307a3bd359d0a151b304` | ⚠️ Unaudited |
| CTokens Burner | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf6da948ed5d4623a0028433c275f790e1940e540` | ⚠️ Unaudited |
| Curve DAO Token | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x365accfca291e7d3914637abf1f7635db165bb09` | ⚠️ Unaudited |
| Curve Fee Distribution | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd16d5ec345dd86fb63c6a9c43c517210f1027914` | ⚠️ Unaudited |
| CurveAccumulator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x11f78501e6b0cbc5de4c7e6bbabaacdb973eb4cd` | ⚠️ Unaudited |
| CurveDepositor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa50cb9dffcc740ee6b6f2d4b3cbc3a876b28c335` | ⚠️ Unaudited |
| CurveFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xef9bef9ab7b578eb0654f0cd2c75519c9a3f7fe1` | ⚠️ Unaudited |
| CurveFactoryL2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x3df990855c3cc206bb99a1528d54979a87c3df61` | ⚠️ Unaudited |
| CurveLendMinterFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd99391df68cdb38a89828a6d51f3976e3e76afff` | ⚠️ Unaudited |
| CurveLendOperator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb64e295a69928d3404e576a8ff3c8766559cb8f5` | ⚠️ Unaudited |
| CurveProxyXChain | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x73968b9a57c6e53d41345fd57a6e6ae27d6cdb2f` | ⚠️ Unaudited |
| CurveStableSwapNG | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x98b540fa89690969d111d045afca575c91519b1a` | ⚠️ Unaudited |
| CurveStableswapOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0833501fc146846d651d8f073e79a23bfb8193ae` | ⚠️ Unaudited |
| CurveStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb010c392f9572aeb5ea3817e94dc6745421b2bb5` | ⚠️ Unaudited |
| CurveStrategyL2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xded96cc511d96bda66f4ae65723db99cd8798308` | ⚠️ Unaudited |
| CurveVoter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb118fbe8b01db24ede7e87dfd19693cfca13e992` | ⚠️ Unaudited |
| CurveVoterProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x989aeb4d175e16225e39e87d0d97a3360524ad80` | ⚠️ Unaudited |
| CurveXChainLiquidityGaugeFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xf3a431008396df8a8b2df492c913706bdb0874ef` | ⚠️ Unaudited |
| CurveYCRVVoter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x52f541764e6e90eebc5c21ff570de0e2d63766b6` | ⚠️ Unaudited |
| CustomPriceFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa0ecd3893890829a4ce5b7a0cc7ae25517b531a0` | ⚠️ Unaudited |
| CvxCrvRari | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4fc2a279ffddde98cb154f04375e69205156b987` | ⚠️ Unaudited |
| CvxCrvStakingWrapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaa0c3f5f7dfd688c6e646f66cd2a6b66acdbe434` | ⚠️ Unaudited |
| CvxCrvStakingWrapperStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x94cc627db80253056b2130aac39abb252a75f345` | ⚠️ Unaudited |
| cvxCrvToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x616e8bfa43f920657b3497dbf40d6b1a02d4608d` | ⚠️ Unaudited |
| CvxCrvUtilities | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xadd2f542f9ff06405fabf8cae4a74bd0fe29c673` | ⚠️ Unaudited |
| CvxCrvWeightAdjuster | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7ed96ebcdad7ee5d98d6f7624dd18c54b8bf360b` | ⚠️ Unaudited |
| CvxDistribution | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x449f2fd99174e1785cf2a1c79e665fec3dd1ddc6` | ⚠️ Unaudited |
| cvxFpisStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfa87db3eaa93b7293021e38416650d2e666bc483` | ⚠️ Unaudited |
| cvxFpisToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa2847348b58ced0ca58d23c7e9106a49f1427df6` | ⚠️ Unaudited |
| cvxFxsStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x49b4d1df40442f0c31b1bbaea3ede7c38e37e31a` | ⚠️ Unaudited |
| CvxFxsStakingStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x36925622dc537c65cd6433703f7aeda5929b1cbf` | ⚠️ Unaudited |
| cvxFxsToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfeef77d3f69374f66429c91d732a244f074bdf74` | ⚠️ Unaudited |
| CvxLocker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5ae0fca14ed08a3122ffb8d624e063e07bce56a1` | ⚠️ Unaudited |
| CvxLockerV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x72a19342e8f1838460ebfccef09f6585e32db86e` | ⚠️ Unaudited |
| CvxMining | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3c75bfe6fbfda3a94e7e7e8c2216afc684de5343` | ⚠️ Unaudited |
| cvxRewardPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcf50b810e57ac33b91dcf525c6ddd9881b139332` | ⚠️ Unaudited |
| CvxStakingProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4401f14970a874d27fad5c8a945292cbe97943fa` | ⚠️ Unaudited |
| CvxStakingProxyV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb5bbc863bafe5006c68613b89130812a7b586a4e` | ⚠️ Unaudited |
| DAOFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2d75ff9fdca31a91f666187dd574f8ea8639a871` | ⚠️ Unaudited |
| DarkParadise | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbd4dc0bd2786f176d39cc1b24de540e6b2f56da1` | ⚠️ Unaudited |
| DarkParadiseV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x20d1b558ef44a6e23d9bf4bf8db1653626e642c3` | ⚠️ Unaudited |
| DEdgeAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x89da1b706a2e0641836205711b87488c17bed1ee` | ⚠️ Unaudited |
| DefaultReserveInterestRateStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x04911a68754e0f26f710562efcbd42797d3748ea` | ⚠️ Unaudited |
| DelegationAwareAToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x45420dc223c14355c62bae4264f21839895a6e99` | ⚠️ Unaudited |
| DelegationVerifier | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x1d04fcb6293690d75e9262a89ac3b816772e6841` | ⚠️ Unaudited |
| Deposit Burner | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0094ad026643994c8fb2136ec912d508b15fe0e5` | ⚠️ Unaudited |
| Depositor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x070df1b96059f5dc34fcb140ffdc8c41d6eef1ca` | ⚠️ Unaudited |
| DepositorV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x941e716833734c7cafafc38f6bb8fec1858201e0` | ⚠️ Unaudited |
| DepositorV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x56d27f6ba42ec4c4e37dae0561e8e872abb196ad` | ⚠️ Unaudited |
| DiamondCutFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9a3c5ec5de774e30074e623e2bf35395beee3c98` | ⚠️ Unaudited |
| DiamondLoupeFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x190c58357b8dab707fdce1f646ee147f5c0ed85b` | ⚠️ Unaudited |
| Directory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x702a893f712a59be72722e4078513a1fba5caf2d` | ⚠️ Unaudited |
| DistributeYFI | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x812ac0eaeb422efa44eac670aa2246a25ecfa017` | ⚠️ Unaudited |
| DistributionRewardsProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4b1b08313a290adf97d36a6f41f42bb19e368d6d` | ⚠️ Unaudited |
| DistributionScheduler | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x42b67611b208e2e9b4cc975f6d74c87b865ae066` | ⚠️ Unaudited |
| DomainClaimAchievement | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xea08f9e4267e30721d755a46bcaddbf993d8c59b` | ⚠️ Unaudited |
| DoubleEntrypointFixRelayer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xca96c4f198d343e251b1a01f3eba061ef3da73c1` | ⚠️ Unaudited |
| DSSLeverage | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x050cd4835b08babfc6ff92187971b3253e92640e` | ⚠️ Unaudited |
| Dummy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0d4bb5613cc2187b95958e18b7c13fe1a76d022a` | ⚠️ Unaudited |
| DummyMaster | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbb6fbb48d3bfddb2e0690e87894623e2e65bcacb` | ⚠️ Unaudited |
| dYFI | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x41252e8691e964f7de35156b68493bab6797a275` | ⚠️ Unaudited |
| dYFI Reward Pool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2391fc8f5e417526338f5aa3968b1851c16d894e` | ⚠️ Unaudited |
| DynamicSwap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x035fb9efa7ed40a688044af22282fb19b64b5f60` | ⚠️ Unaudited |
| DynamicVestingEscrow | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x16d96ba86512b4f8d10bd74b1061d9f576d9c55d` | ⚠️ Unaudited |
| EarlyZERO | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x40a59a3f3b16d9e74c811d24d8b7969664cfe180` | ⚠️ Unaudited |
| EclpLPOracleFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x2cf8e145bdfe7c52b49ad9bb3c294a31b2736c59` | ⚠️ Unaudited |
| EminenceCurrency | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4ccea6503e8e5525d3de0c60855b6332af559ad4` | ⚠️ Unaudited |
| EmissionManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x240f382f9f144016e99c6ac99316ef2741238c70` | ⚠️ Unaudited |
| EmissionSchedule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa978891e9d8fe36838891ba9e2ae77727ee63dc8` | ⚠️ Unaudited |
| EModeLogic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xb0b0b1d3c0f9823c13d4e0481e86387baff452a2` | ⚠️ Unaudited |
| EmptyUUPS | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3f69a9a183c62cff7ed5b07a3102a9c36e297807` | ⚠️ Unaudited |
| EnsoRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xa146d46823f3f594b785200102be5385cafce9b5` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x23d2923e15f5cce8a131cb37f0c7bcc5cad15639` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x2be6670de1ccec715bdbba2e3a6c1a05e496ec78` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x58d97b57bb95320f9a05dc918aef65434969c2b2` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x69d61428d089c2f35bf6a472f540d0f82d1ea2cd` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0xa52965bb24021ba649f3c23b74a8fb064be07950` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x428f2f93afac3f96b0de59854038c585e06165c8` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0x921b10eb4f4a2afdd1fcd0514022d18faf32fdbf` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0x9b9feca00fa6cf646c9b205e8c9c61df5807a0a5` | ⚠️ Unaudited |
| ERC20Mock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x0a885027d84155387b9bd47485b0fdec10c6b4ec` | ⚠️ Unaudited |
| ERC20Premined | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x940b45572b38bac32422fd7443f1436aa09e7b2b` | ⚠️ Unaudited |
| ERC4626CowSwapFeeBurner | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1cd776897ef4f647bf8241ec69549e4a9cb1d608` | ⚠️ Unaudited |
| ERC4626LinearPoolFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x161f4014c27773840ccb4ec1957113e6dd028846` | ⚠️ Unaudited |
| EthereumStateSender | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa1025644f5c3faac92b8672d3a537f4e4bddd46b` | ⚠️ Unaudited |
| EthReader | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7549b6b7e067f0c79e1f40c5f7465e7161391532` | ⚠️ Unaudited |
| EVMScriptRegistryFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd44d19d0d1ab4245bb747be73a0b131daa8351fd` | ⚠️ Unaudited |
| Executor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x74b7639503bb632ffe86382af7c5a3121a41613a` | ⚠️ Unaudited |
| ExternalWeightedMath | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x7920bfa1b2041911b354747ca7a6cdd2dfc50cfd` | ⚠️ Unaudited |
| ExtraRewardPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4223aa5bfd783dedcc54585cdc1cfe9ea1587c0f` | ⚠️ Unaudited |
| ExtraRewardsDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa3739b206097317c72ef416f0e75bb8f58fbd308` | ⚠️ Unaudited |
| ExtraRewardStashTokenRescue | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9dc3de2e9d6963bab146dc35dc3925add0cfc918` | ⚠️ Unaudited |
| ExtraRewardStashV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0dbffba31097510d291ad9150b150b3bb07d8852` | ⚠️ Unaudited |
| EzEthToUsdOracleProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x8053edf19352932f76ea65fceefbef9327b2619d` | ⚠️ Unaudited |
| Factory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1043eb60cef1f44654598338b1eb305cf54c421d` | ⚠️ Unaudited |
| FactorySNG | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x451113a917b91e7a47eca16ffeb16eeea5e0dbc4` | ⚠️ Unaudited |
| FairLaunchCapitalVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3a2d0e5773dd6a345eda543b14c6ca6b51c6cc0a` | ⚠️ Unaudited |
| Faketroller | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6257e36efc9c7c6057c119ea2af40907159fef3f` | ⚠️ Unaudited |
| FarmBooster | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3353c4161364fc7e3b181f5faaf1c41a7b1752ba` | ⚠️ Unaudited |
| FarmBoosterV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd611f8046f11fbfb7bdb2a0389f49b1c90b3655d` | ⚠️ Unaudited |
| FastBridgeL2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1f2af270029d028400265ce1dd0919ba8780dae1` | ⚠️ Unaudited |
| FastBridgeVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5ef620631aa46e7d2f6f963b6be4f6823521b9ec` | ⚠️ Unaudited |
| Faucet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xc6df4dddbfacb866e78dcc01b813a41c15a08c10` | ⚠️ Unaudited |
| Fee Distributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x851aaea3a2757d457e1ce88c3808c1690213e432` | ⚠️ Unaudited |
| FeeBridge | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd430246142084ec68f7ab090cbd9252a1d1410e9` | ⚠️ Unaudited |
| FeeBurner | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb911fcce8d5afcec73e072653107260bb23c1ee8` | ⚠️ Unaudited |
| FeeCollector | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x56ba5c600db7524c5ec253567f8821aaadfcdbea` | ⚠️ Unaudited |
| FeeDeposit | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcbec22233dad5e15ab9c02caa4d914f3c97323f7` | ⚠️ Unaudited |
| FeeDepositV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x29dba2751b5aa26f7d03657066c0984c66999178` | ⚠️ Unaudited |
| FeeDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x26743984e3357efc59f2fd6c1afdc310335a61c9` | ⚠️ Unaudited |
| FeeReceiver | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x60136fefe23d269af41ab72de483d186dc4318d6` | ⚠️ Unaudited |
| FeeReceiverCvxFpis | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3a562a8ceb9866bcf39bb5eda32f282d619e08e0` | ⚠️ Unaudited |
| FeeReceiverCvxFxs | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x31c5e6d1891d2af49dec041d41a3a663e03f8f24` | ⚠️ Unaudited |
| FeeReceiverPlatform | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd60d80d9c184d4f02ff1711844aaa4e94bec36cf` | ⚠️ Unaudited |
| FeeReceiverVeFxs | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6f94fe4dadd7a6f4ce67e607bab531a9d1717624` | ⚠️ Unaudited |
| FeeReceiverVlCvx | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb9a2120f32420f0da2777ee07beeea92d3d2c2b8` | ⚠️ Unaudited |
| FeeRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0f1dc3bd5fe8a3034d6df0a411efc7916830d19c` | ⚠️ Unaudited |
| FeeRegistryXChain | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1e9d6965a1af9d4c942e55f8d3415ed8786ade44` | ⚠️ Unaudited |
| FeesBuybackBurn | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x069b71236b163a941913c9804bd6c87a2d3d8423` | ⚠️ Unaudited |
| FeesClaimer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x38e63d8e3781e7e392a4e3ad351bcab9bcec7f29` | ⚠️ Unaudited |
| FeesClaimerLinea | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x4389a0d72781f4fffa6df040c98d50b625e85313` | ⚠️ Unaudited |
| FeesClaimSwap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x03a41c13378a816edd7ced1acaead4554b233f52` | ⚠️ Unaudited |
| FinalizeAndBroadcast | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcfaa9540332afa3974bceed79bdd24d86c5fd4ee` | ⚠️ Unaudited |
| FixedAggregator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x458ad5b487f4442245e4c5ea7249009e607a5583` | ⚠️ Unaudited |
| FixedPriceLBPoolFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7f246e7bab4cdc8c7ab41eada8290009a5b26e0d` | ⚠️ Unaudited |
| FixedPricePTAMM | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x39cd9cb33da6b5eb2a22cbe0a07647e2c3c76d23` | ⚠️ Unaudited |
| fKRW | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5c08b51ddbe8ba76e07be79975906c39aef2893a` | ⚠️ Unaudited |
| FlashLoanLogic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x15785c5d383fa33339cf5d5720546c24313bc66d` | ⚠️ Unaudited |
| FlashSeller | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0020609046710676cafc8eb5ce95fc110ccedeee` | ⚠️ Unaudited |
| FPI | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5ca135cb8527d76e932f34b5145575f9d8cbe08e` | ⚠️ Unaudited |
| FPIControllerPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0ae84c1a6e142ed90f8a35a7e7b216cb25469e37` | ⚠️ Unaudited |
| FPIS | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc2544a32872a91f4a553b404c6950e89de901fdb` | ⚠️ Unaudited |
| FpisAccumulator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0ca369a70ad74e52604abc63792abbe088a9f460` | ⚠️ Unaudited |
| FpisDepositor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x27445d3f59d6b966072abe20e41a29fbb6a7a04b` | ⚠️ Unaudited |
| FpisRewardHook | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb93989b104a3bc2eba16210748cecdf76ea3238d` | ⚠️ Unaudited |
| FractionalToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2a906eab9b088e6753670bc8d3840f9473745748` | ⚠️ Unaudited |
| FRAXShares | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3432b6a60d23ca0dfca7761b7ab56459d9c964d0` | ⚠️ Unaudited |
| FRAXStablecoin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x853d955acef822db058eb8505911ed77f175b99e` | ⚠️ Unaudited |
| FraxStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf285dec3217e779353350443fc276c07d05917c3` | ⚠️ Unaudited |
| FraxVoter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xae26e4478ff6bbc555eae020affea3b505fc4d05` | ⚠️ Unaudited |
| FrxETHMiniRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf17c04cf227e5e5db5cf3787468519db14792daa` | ⚠️ Unaudited |
| Furnace | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x18fa0ce2a350cc574f562fe3d02b885417c4f6c1` | ⚠️ Unaudited |
| fUSD | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3d7f0933ac403773d219cf0519de8082946dc10f` | ⚠️ Unaudited |
| FXNAccumulator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x87978ac2fdd851c99dcd9d2da6b3b262205bfb13` | ⚠️ Unaudited |
| FXNAccumulatorV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xab1938b685f72f34de7f4cc0a9e2bbefdb667ede` | ⚠️ Unaudited |
| FXNDepositor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7995192be61ea0b28ce14183dda51edf78f1c7ab` | ⚠️ Unaudited |
| FXNLocker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x75736518075a01034fa72d675d36a47e9b06b2fb` | ⚠️ Unaudited |
| FXNVoter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5181291355abe5f3f1812a0aa888a73b9a16c91f` | ⚠️ Unaudited |
| FXS1559_AMO | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9c6a04871d11b33645ab592f68c41bb2b41f51ee` | ⚠️ Unaudited |
| FXS1559_AMO_V3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7301bb959ee286d8abc46f341144afe443cedae5` | ⚠️ Unaudited |
| FxsAccumulator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1cc16bedaacd15848bca5eb80188e0931bc59fb2` | ⚠️ Unaudited |
| FxsDepositor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8f55d7c21bdff1a51afaa60f3de7590222a3181e` | ⚠️ Unaudited |
| FxsLocker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcd3a267de09196c48bbb1d9e842d7d7645ce448f` | ⚠️ Unaudited |
| FXSOracleWrapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xee0f15e5ffc105ebb3d1368cf84f43b40cab3480` | ⚠️ Unaudited |
| FXSRewardHook | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1a6980170fd45bdebf5902b597c53a2a0678f1f7` | ⚠️ Unaudited |
| GaguesOwner | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1e41e9885fe139cfaea3d174677e0a0c8c350830` | ⚠️ Unaudited |
| GasPoolReimburser | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4165ef806ec952bad7ba1d5db81aef2bdebc1c38` | ⚠️ Unaudited |
| Gauge | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x107717c98c8125a94d3d2cc82b86a1b705f3a27c` | ⚠️ Unaudited |
| Gauge Controller | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x037ee0c66d0ddba4319ab9d1a70a66ac800e5af9` | ⚠️ Unaudited |
| Gauge factory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x43cfc64f00b4e45619cfbc7964d982fa022e0b91` | ⚠️ Unaudited |
| Gauge registry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1d0fdcb628b2f8c0e22354d45b3b2d4ce9936f8b` | ⚠️ Unaudited |
| Gauge Type Oracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x74d6aabd6197e83d963f0b48be9c034f93e8e66d` | ⚠️ Unaudited |
| GaugeAdder | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2ffb7b215ae7f088ec2530c7aa8e1b24e398f26a` | ⚠️ Unaudited |
| GaugeAdderMigrationCoordinator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1b57f637ce3408f1f834b0b70f9a595b062daea7` | ⚠️ Unaudited |
| GaugeControllerQuerier | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8e5698dc4897dc12243c8642e77b4f21349db97c` | ⚠️ Unaudited |
| GaugeDepositorVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x210dfec4fc0c3b88e7984a86dc315f43aa07a68a` | ⚠️ Unaudited |
| GaugeExtraRewardDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x04bb59bd617f06eeeee00caeaffc8f3b68510330` | ⚠️ Unaudited |
| GaugeMultiRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3c310fc54c0534dc3c45312934508722284352d1` | ⚠️ Unaudited |
| GaugeProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x823fd217dcc5ce36ca6bc1489586ecb42b61081c` | ⚠️ Unaudited |
| GaugeRewardDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf57b53df7326e2c6bcfa81b4a128a92e69cb87b0` | ⚠️ Unaudited |
| GaugeTypeVerifier | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x47ca04ee05f167583122833abfb0f14ac5677ee4` | ⚠️ Unaudited |
| GaugeV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x49651bd58bbbb145b90891c33ea240fff29b1be6` | ⚠️ Unaudited |
| GaugeValidator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1c662cac382140bfc148f3003fd14b0d58dc9524` | ⚠️ Unaudited |
| GaugeVoter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x43f8f8472febd6e7481e0ab43f49a683f9fbedb7` | ⚠️ Unaudited |
| GaugeVoting | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xbcfbf7ed1756fe478b071687cb430c7b3eb682f1` | ⚠️ Unaudited |
| GaugeVotingBulk | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x52c17e45eb629688ea4838c9e4e99a6133179298` | ⚠️ Unaudited |
| GaugeVotingCalc | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4ff7c80df31e5864776314d89220ae18626a6d67` | ⚠️ Unaudited |
| GaugeWorkingBalanceHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xa7d524046ef89de9f8e4f2d7b029f66ccb738d48` | ⚠️ Unaudited |
| GearboxLinearPoolFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x9dd32684176638d977883448a4c914311c07bd62` | ⚠️ Unaudited |
| GelatoOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xbd5ade6009666f81456cfbeffdd01fc47572bb88` | ⚠️ Unaudited |
| GeneralTokenConverter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaf345c813ce17cc5837bfd14a910d365223f3b95` | ⚠️ Unaudited |
| GlobalRecipient | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x0974b559631428391e6519e21b35c87c818cac25` | ⚠️ Unaudited |
| GnosisSafeProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5da07af8913a4eaf09e5f569c20138b658906c17` | ⚠️ Unaudited |
| Governance | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc7212fc959bbb606f97036e8ac3da7aabf0cb735` | ⚠️ Unaudited |
| GovernanceRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4425779f145f6599cfceaa9443b497a7a2dfdb17` | ⚠️ Unaudited |
| GovernorAlpha | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x604cb55e89568b68e125e1c0272a71ff1faab46b` | ⚠️ Unaudited |
| Gyro2CLPPoolFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x043a2dad730d585c44fb79d2614f295d2d625412` | ⚠️ Unaudited |
| GyroECLPPoolFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x04d584195a96dffc7f8b695aa3c9d3c1606b69d1` | ⚠️ Unaudited |
| Harvester | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6d6bcac2266468a44da9fa482ca54aaed586e1e7` | ⚠️ Unaudited |
| HealthcalculatorzapforcrvUSDcontroller | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcf61ee62b136e3553fb545bd8fec11fb7f830d6a` | ⚠️ Unaudited |
| HegicERCPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7224f2e96061a1e3f51d152e32ccfab79ca1345a` | ⚠️ Unaudited |
| HegicOptions | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x30a086f5b7a8a6256b0d0e6c9ca4cd3577e4ae70` | ⚠️ Unaudited |
| HegicOptionsFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x06194062288575f35c0af45d5e7013b65e082f23` | ⚠️ Unaudited |
| Helper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x958ed2434101c1459d6e48e4ecdb1232caba1bd6` | ⚠️ Unaudited |
| Hooker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x7150ba598ba7341b7232ad6a13fd90d759407cc8` | ⚠️ Unaudited |
| HybridFactoryOwner | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0f4e1a1bcde549653e9302ba1caab403373f1048` | ⚠️ Unaudited |
| HybridVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd772edf092f155f3e81e2b261d96bcfae4fdc3ac` | ⚠️ Unaudited |
| HybridVaultFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbdc32268851c324c6185809271dfe6d8dab8dc5b` | ⚠️ Unaudited |
| HypernativeTrigger | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x113329d34e8f8148aed0b3b3f9358ac8abb6eeba` | ⚠️ Unaudited |
| ICakeV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3aa289c56ba2dd7576b3aea11ffecf827f22e98f` | ⚠️ Unaudited |
| iCollateral | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x78705df56477ff301b71b176a2bd3151b9f4e025` | ⚠️ Unaudited |
| iCollateralVaultFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb10e11f3e38dc35e06397689e45fa939eb3b0f69` | ⚠️ Unaudited |
| iCollateralVaultProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x06a8fee7a607c5c887f5f0672f7d8849583ddcc1` | ⚠️ Unaudited |
| iDAI | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6c5f9d1d115862ca99253e5738590f6d31ca35a0` | ⚠️ Unaudited |
| iDAIZapSwap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x260fbb4855b2a4a719097131016b573f95a867fa` | ⚠️ Unaudited |
| IDODeployerV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x60d88507a066770dce8ea5d5af68b210ab31fb9d` | ⚠️ Unaudited |
| IEarnAPR | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9cad8ab10daa9af1a9d2b878541f41b697268eec` | ⚠️ Unaudited |
| IEarnAPRWithPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x029feae8d773a3fe25f1a3e35a526bb54744c9bb` | ⚠️ Unaudited |
| IEarnManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x318135fbd0b40d48fcef431ccdf6c7926450edfb` | ⚠️ Unaudited |
| IEarnProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7b3680ad3bc9e84fc06c8a0647b82d2026884bb4` | ⚠️ Unaudited |
| IEther | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x75a4d0b18e98674199829ddd2a6477ea25cd25eb` | ⚠️ Unaudited |
| IFO | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4eff3a0a82f624b617aab7af92777deec521d820` | ⚠️ Unaudited |
| IFOByProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0366f1a242c37ca73c73834b7fcd4a66af1d5700` | ⚠️ Unaudited |
| IFODeployerV10 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1787053dfe47e24f397d61ff6a83fa10109a3124` | ⚠️ Unaudited |
| IFODeployerV8 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1a4dc7470d907fb0105a4ea1e9bbd8f9b2bff0c5` | ⚠️ Unaudited |
| IFOInitializableV8 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5b098f362f09f65038ad12901ea6d7d4cb33c396` | ⚠️ Unaudited |
| IFOUpgradeProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf0ae9b39ef4a2680d67c9fb252816725f22624b0` | ⚠️ Unaudited |
| ImplicitSwapfeeContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x43d03031fab845065e9cefe89dd122d63f72011f` | ⚠️ Unaudited |
| IncentiveGaugeHook | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x68654d460fdf3231b49b25817cbbd72d8d291fcf` | ⚠️ Unaudited |
| InflationaryVest | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1f5789030ff8aed85c20baf614368c605b31b112` | ⚠️ Unaudited |
| InflationReceiver | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8f78ddf344e20b92b03c13d82d1316fc0a66820e` | ⚠️ Unaudited |
| InitializableAdminUpgradeabilityProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x7fc513b2823a89c6e0430fe44b91e859fd4741a7` | ⚠️ Unaudited |
| InitializableAdminUpgradeabilityProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | linea | n/a | `0x89fec31dad373922879bd6279ccdc3666c5d1b7a` | ⚠️ Unaudited |
| insuredVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa53e9e63793e55c533fe98d0ed178992942863d9` | ⚠️ Unaudited |
| insurerVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb8813d297ffff9ffa67b8fe91ac703caaa457bcf` | ⚠️ Unaudited |
| InterestRateCalculatorV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1972b5d65a690de0bc36278ac93d47fd98bc14f7` | ⚠️ Unaudited |
| iTrade | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x14a5ca87175cc04b90cd31b2f13fbf88d9104e3e` | ⚠️ Unaudited |
| JointVaultManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x599113b0403e3fa613c318af0bf75826bedfb9ec` | ⚠️ Unaudited |
| KarakDepositor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5cf40cc1056225d38c87d68c83178315f4b74772` | ⚠️ Unaudited |
| Keep3r | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x30f3581ef6469334c8752d9b6ca3fb39c72f57f1` | ⚠️ Unaudited |
| Keep3rHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb41772890c8b1564c5015a12c0dc6f18b0af955e` | ⚠️ Unaudited |
| Keep3rJob | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb68e7deb279eaa11f234dff4931458d2c002d10d` | ⚠️ Unaudited |
| Keep3rV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1ceb5cb57c4d4e2b2433641b95dd330a33185a44` | ⚠️ Unaudited |
| Keep3rV1Helper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1530a2924805aed2385f8b91849cab7fe95a5df9` | ⚠️ Unaudited |
| Keep3rV1JobRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7396899638410094b3690f8bd2b56f07fdab620c` | ⚠️ Unaudited |
| Keep3rV1Library | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdaef201ba1ba0354d71848893dd6d56905924c93` | ⚠️ Unaudited |
| Keep3rV1Oracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x73353801921417f465377c8d898c6f4c0270282c` | ⚠️ Unaudited |
| Keep3rV1OracleUSD | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0a03b4f6d5314bb257540dc7702c326f97f5c080` | ⚠️ Unaudited |
| Keep3rV1Volatility | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x173ed6531818456f29fc74011a3b1fb4b6132dc9` | ⚠️ Unaudited |
| Keep3rV2Helper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1bf16291d2336ac3320f17cad646b56bd5c8f6c0` | ⚠️ Unaudited |
| Keep3rV2OracleFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2266be1ee5d345914976fd4ce9f4be65737880cb` | ⚠️ Unaudited |
| Keep3rV3OracleUSD | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1542ec733b1a938be7d30acf49e7f4a6a5ba0f82` | ⚠️ Unaudited |
| Kernel | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x47d62ed9fe6ef6810eac3165053d95579059e827` | ⚠️ Unaudited |
| L1CrossDomainMessenger | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x126bcc31bc076b3d515f60fbc81fdde0b0d542ed` | ⚠️ Unaudited |
| L1ERC721Bridge | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7b07f9fe593ab0b035b2dce1e925a77f57b3b878` | ⚠️ Unaudited |
| L1StandardBridge | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x34c0bd5877a5ee7099d0f5688d65f4bb9158bde2` | ⚠️ Unaudited |
| L2 Voting Escrow Oracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x361aa6d20fbf6185490eb2ddf1dd1d3f301c201d` | ⚠️ Unaudited |
| L2BalancerPseudoMinter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x0c5538098ebe88175078972f514c9e101d325d4f` | ⚠️ Unaudited |
| L2GaugeCheckpointer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf23b4db826dba14c0e857029dff076b1c0264843` | ⚠️ Unaudited |
| L2MessengerLZ | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x14e11c1b8f04a7de306a7b5bf21bbca0d5cf79ff` | ⚠️ Unaudited |
| L2OutputOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x66cc916ed5c6c2fa97014f7d1cd141528ae171e4` | ⚠️ Unaudited |
| L2StandardERC20 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x0994206dfe8de6ec6920ff4d779b0d950605fb53` | ⚠️ Unaudited |
| LazyHarvest | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9ea775672e4424c403f048ab08c7f56015c5d0f3` | ⚠️ Unaudited |
| LBPController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2e0561e87bb1c29d7e6259e163b03b7ab93e2987` | ⚠️ Unaudited |
| LBPMigrationRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x4eff2d77d9ffbaefb4b141a3e494c085b3ff4cb5` | ⚠️ Unaudited |
| LBPoolFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x02916d8f0891309806fcb347bf4191692cbddcaf` | ⚠️ Unaudited |
| LeftoverDistributorHook | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x7a3830c1383312985cc2256f22ba6a0ce25c4304` | ⚠️ Unaudited |
| LEVAMM | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x07cedaadf49552cbdbf684824323e631ceba305e` | ⚠️ Unaudited |
| LeveragedToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x92d0cb7e56806bf977e7f5296ea2fe84b475fe83` | ⚠️ Unaudited |
| LeveragezapforcrvUSDcontroller(sfrxETHmarket) | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb556fa4c4752321b3154f08dfbdfcf34847f2eac` | ⚠️ Unaudited |
| LftLocker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd059575a78508b02e89ef9ae0c1b409b07853d37` | ⚠️ Unaudited |
| LimitBackendHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5996098a8bfa69fdff93e21228d895ba3608bfcd` | ⚠️ Unaudited |
| LinearAPRModel | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5ebe0aa2601f2a23ddd9a34fdaf06509ccc0ba32` | ⚠️ Unaudited |
| LinearDiscountModel | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x000ba125995363abbdf086f075d5481aee859e61` | ⚠️ Unaudited |
| LinearPreview | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x73187e5b27f2aadd5ffee023d6a9e179365f2ad6` | ⚠️ Unaudited |
| LiquidationLogic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x7fab93af49ce663dbc2f94bc4def5c84d6605663` | ⚠️ Unaudited |
| LiquidationOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd82f6d42356e225bf79b870a05aac79062a3e8ce` | ⚠️ Unaudited |
| Liquidity Gauge | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x008c2d6e93cc7eb61b6bea1e012214b851d781f7` | ⚠️ Unaudited |
| Liquidity Gauge v4 Strat XChain | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8996cb5f5abc5e8dd6425baa7d32179e38ccc265` | ⚠️ Unaudited |
| Liquidity Gauge v4 XChain | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0735f098c80dd0cb39118b595d46ccd67b68672d` | ⚠️ Unaudited |
| LiquidityBootstrappingPoolFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x751a0bc0e3f75b38e01cf25bfce7ff36de1c87de` | ⚠️ Unaudited |
| LiquidityFeeRecipient | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x576d7ad8eae92d9a972104aac56c15255ddbe080` | ⚠️ Unaudited |
| LiquidityGaugeFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4e7bbd911cf1efa442bc1b2e9ea01ffe785412ec` | ⚠️ Unaudited |
| LiquidityGaugev4 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x08d36c723b8213122f678025c2d9eb1ec7ab8f9d` | ⚠️ Unaudited |
| LiquidityGaugeV6 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x00b71a425db7c8b65a46cf39c23a188e10a2de99` | ⚠️ Unaudited |
| LiquidityIncome | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x28832484e8124634a248f2bc520f26e8345a56cd` | ⚠️ Unaudited |
| LiquiditySeedingHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x203d3a2fd52973a34bab6fc50e3b69863bdb769c` | ⚠️ Unaudited |
| LiquidRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x02dd79b4a88fefe639d2a88e20f8013edea9440d` | ⚠️ Unaudited |
| LiquidTransferProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x30285a1ce301fc7eb57628a7f53d02fbded3288f` | ⚠️ Unaudited |
| ListingContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x4c076e26b86b819b214b54ab8f26188bdf3df531` | ⚠️ Unaudited |
| LLAMMA - crvUSD AMM | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0ec8e0c868541df59ced49b39cc930c3a8dbd93a` | ⚠️ Unaudited |
| LockerAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x98e28afb9c11aa979ae754e1ea2e9877cb0d418c` | ⚠️ Unaudited |
| LockerLP | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x251c11eecbfe5fc0c4272eeaafabfd6a29edd44a` | ⚠️ Unaudited |
| LockerPreLaunch | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5c5ccb2e511fcdeaa16737810787a47507cf0922` | ⚠️ Unaudited |
| LockerToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x01475c4e87252ad066e0a7de08e7ac80171c10e7` | ⚠️ Unaudited |
| LockupDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x58adf9953e5a2d175a15dc5807aca3520bf46cb3` | ⚠️ Unaudited |
| LongOTokenPut | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x12c51dac6e63faac989abe39d1c698dad8ce3aa6` | ⚠️ Unaudited |
| Lottery | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x127551b5cd5d21bd736483cb829b580a4cd13280` | ⚠️ Unaudited |
| LotteryNFT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1900e0d289ebc5b7b75aff8232464b9f99e4992e` | ⚠️ Unaudited |
| LotteryRewardProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6b4dc78b8303d65476e2fcdde5be262e8abfc3ba` | ⚠️ Unaudited |
| LPBurner | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4c62ac3f6088e882c9b2a315056bc298d22128bd` | ⚠️ Unaudited |
| LPOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x303598dddebb8a48ce0132b3ba6c2fdc14986647` | ⚠️ Unaudited |
| LT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0b0d8bccf062555ec18d5e4d8fe895e64e3f1eb4` | ⚠️ Unaudited |
| LTMigrator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2cdb9f485e718f551cfeea6c33cb7062ed37066c` | ⚠️ Unaudited |
| LzSender | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2b8a260154c5c6b0ed6d9f8908e9aa9fa86eaeaa` | ⚠️ Unaudited |
| LzXdaoBridger | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x10b97ce0b66a2e18a5b2ef78090d7970e6affe52` | ⚠️ Unaudited |
| ManagedPoolAddRemoveTokenLib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xb19382073c7a0addbb56ac6af1808fa49e377b75` | ⚠️ Unaudited |
| ManagedPoolAmmLib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x7d2248f194755dca9a1887099394f39476d28c9a` | ⚠️ Unaudited |
| ManagedPoolFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x956ccab09898c0af2aca5e6c229c3ad4e93d9288` | ⚠️ Unaudited |
| ManualTokenTrackerAMO | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1be588641fb28eb8c2a51f1129707fb1e2683f5a` | ⚠️ Unaudited |
| Market | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x505002bbadac4ebc17666b1622cff0605fe90bd5` | ⚠️ Unaudited |
| MarketMathStatic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4f9433e9b5272e0f8f3ee33e5fd718407a2e4f50` | ⚠️ Unaudited |
| MasterChef | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x01d41bb9964e95df586974fe68996e3bd4e3b40e` | ⚠️ Unaudited |
| MasterChefRewardHook | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb5932c9cfde9adda6d578fa168d7f8d2688b84da` | ⚠️ Unaudited |
| MasterChefV3Operator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0a7ff29bc21d78a6f8a4d561a429fe6420576d45` | ⚠️ Unaudited |
| MAVDepositor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x177eaa1a7c26da6dc84c0cc3f9ae6fd0a470e7ec` | ⚠️ Unaudited |
| MaverickToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x64b88c73a5dfa78d1713fe1b4c69a22d7e0faaa7` | ⚠️ Unaudited |
| MAVLocker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xc5ccc20f6a4cd65fda979a2e292dbcf2c450c067` | ⚠️ Unaudited |
| Merkle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x414cbb5c7cf637b7030965b5ee84504c64c10c29` | ⚠️ Unaudited |
| MerkleAirdropFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa1bc2cf69d474b39b91665e24e7f2606ed142991` | ⚠️ Unaudited |
| MerkleDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7cf29182e8d262b34a36a912736bbc777fa64db5` | ⚠️ Unaudited |
| MerkleDistributor3CRV | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbeb3e5cd895c1b7e95d5cd39b1ac1efb6c3c3a5c` | ⚠️ Unaudited |
| MerkleDistributorSdt | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2de8e91b6fdb5f6575cafb0827aca9fa1d0d4f5f` | ⚠️ Unaudited |
| MerkleOrchard | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x9805dcfd25e6de36bad8fe9d3fe2c9b44b764102` | ⚠️ Unaudited |
| MerkleOwner | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x725703341245e2391716bc4fe90193aa8e73451c` | ⚠️ Unaudited |
| MessageDigestVerifier | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x3d8eadb739d1ef95dd53d718e4810721837c69c1` | ⚠️ Unaudited |
| MetaCLever | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x057810cf20efd30745b368ec42f0b39879ca4eb1` | ⚠️ Unaudited |
| MetaFurnace | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6f77685ae7a1288d2480440b7bb0fa2c317950f9` | ⚠️ Unaudited |
| MetaKeep3r | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x93dfa873b15ad496ba8116ce6cfec52ef30a9372` | ⚠️ Unaudited |
| MetaMorphoV1_1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x13aa4f80ad5f06ce4f1a3a3ca58c37059f0ee4c5` | ⚠️ Unaudited |
| MetaMorphoV1_1Factory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1897a8997241c1cd4bd0698647e4eb7213535c24` | ⚠️ Unaudited |
| MetaStablePreview | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x21a9fd7212f37c35b030e9374510f99128d59cd3` | ⚠️ Unaudited |
| MetaZapNG | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x2243b97d9318361db8f68ccf30d43432035ec20c` | ⚠️ Unaudited |
| MevCaptureHook | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1bca39b01f451b0a05d7030e6e6981a73b716b1c` | ⚠️ Unaudited |
| MicroVeFXSStaker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2aac16f2eec7a2e1dc7b4e7fc7aa47bb8c0a3ca2` | ⚠️ Unaudited |
| MigrationHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5cce1098be1734b8910e22e240aa0673ab9083fc` | ⚠️ Unaudited |
| Minter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x0094ad026643994c8fb2136ec912d508b15fe0e5` | ⚠️ Unaudited |
| Minter Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xc0b338da0fdd43dc48539837594cf6363795feea` | ⚠️ Unaudited |
| MixedQuoter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2e6d57ee6c3e9dbf32066681463566570eb18b39` | ⚠️ Unaudited |
| MockAggregator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x1c2b983e1fe9830b80c315b7dd2a331960c842dc` | ⚠️ Unaudited |
| MockERC20 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2989df9c8c9897f07d464366607dcbfaebf7448c` | ⚠️ Unaudited |
| MockERC4626Token | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x4638ab64022927c9bd5947607459d13f57f1551c` | ⚠️ Unaudited |
| MockGearboxDieselToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xb521dd5c8e13fe202626cac98873fea2b7760ce4` | ⚠️ Unaudited |
| MockGearboxVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x79e435875ccee3cd9e8da23fe34f9a011d05ea6c` | ⚠️ Unaudited |
| MockStaticAToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x698caed853be9cea96c268f565e2b61d3b2bcda4` | ⚠️ Unaudited |
| MockToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x08d6cfd1371aeb5a769843d4339954c811bd9021` | ⚠️ Unaudited |
| MockVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4fb47126fa83a8734991e41b942ac29a3266c968` | ⚠️ Unaudited |
| MonolithicCurveMorphoMarketFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf863337ee1a65ec8c95392c8aaa8eded86b7b80f` | ⚠️ Unaudited |
| Morpho | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbbbbbbbbbb9cc5e90e3b3af64bdaf62c37eeffcb` | ⚠️ Unaudited |
| MorphoChainlinkOracleV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcc00d98162fef57d6a1057a36c25d5326e3805c8` | ⚠️ Unaudited |
| MorphoChainlinkOracleV2Factory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3a7bb36ee3f3ee32a60e9f2b33c1e5f2e83ad766` | ⚠️ Unaudited |
| MorphoLiquidationModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x80854d61608cbc6baf238b85868d9248d644124c` | ⚠️ Unaudited |
| MorphoStrategyWrapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x12d706f0adff3be5d9fa119424a85388fecd6960` | ⚠️ Unaudited |
| MSIGHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x977eadb6fa9b8e1a2a950ccde1a75a7b527a8cbb` | ⚠️ Unaudited |
| Multicall3p | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb782c60c9e27dd66b8b63e3694b45d8636d2d202` | ⚠️ Unaudited |
| MultiClaim | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x32facb5a46e02decaf5f939ab12c123eee203a5f` | ⚠️ Unaudited |
| MultiMerkleStash | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x03e34b085c52985f6a5d27243f20c84bddc01db4` | ⚠️ Unaudited |
| MultipleVestHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x572deca882f4c9abcbdc6f020601a1b789d11983` | ⚠️ Unaudited |
| MultiRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xafd3d38fecebcdda6d934979d4ac7f17330a96ca` | ⚠️ Unaudited |
| NewStrategyAngleStakeDao | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x79b738e404208e9607c3b4d4b3800ed0d4a0e05f` | ⚠️ Unaudited |
| NexusMutualCover | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x93a2880f657793a1d839653c8f8cef52f3de7a28` | ⚠️ Unaudited |
| NFTBoosterVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa324a2e3a6f64bd588565e0e1e2dd50e7a68bdd9` | ⚠️ Unaudited |
| NFTHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x83d85aedd308261d847c3eb8d7146457bd8f38e8` | ⚠️ Unaudited |
| NoopRewardsDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x48d9a9e67e9decfd493efe2b3d3b5291fc802e5f` | ⚠️ Unaudited |
| NoProtocolFeeLiquidityBootstrappingPoolFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x0c6052254551eae3ecac77b01dfcf1025418828f` | ⚠️ Unaudited |
| Normalizer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9214a67186965fd5fe582a64a8646ff058f023aa` | ⚠️ Unaudited |
| Null Minter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1025cf97b8a91cbd8e6d2cbf972437a54d017214` | ⚠️ Unaudited |
| NullVotingEscrow | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x475d18169be8a89357a9ee3ab00ca386d20fa229` | ⚠️ Unaudited |
| OmnichainProposalSenderL1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xad9981763552383c92500c5242981bf270f302ed` | ⚠️ Unaudited |
| OmnichainStakingToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x022105571d4fb943f05ff4ff8e589584c8740222` | ⚠️ Unaudited |
| OmniVotingEscrowAdaptor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6817149cb753bf529565b4d023d7507ed2ff4bc0` | ⚠️ Unaudited |
| OneWayLendingFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x34024ba3b6edaf5cdd1c24fefe1df5d03041f38c` | ⚠️ Unaudited |
| OnlyBoostAllocator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3680cce0d97bbbfa47765d7429ff207d03a7364f` | ⚠️ Unaudited |
| OnlyBoostAllocatorL2V2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x18e8a91764f07ecabb904de3d41934748754b657` | ⚠️ Unaudited |
| Optimism Block Hash oracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x3c0a405e914337139992625d5100ea141a9c4d11` | ⚠️ Unaudited |
| Optimism Broadcaster | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe0fe4416214e95f0c67dc044aaf1e63d6972e0b9` | ⚠️ Unaudited |
| Optimism Relayer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x5191946500e75f0a74476f146df7d386e52961d9` | ⚠️ Unaudited |
| OptimismMintableERC20 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x4158734d47fc9692176b5085e0f52ee0da5d47f1` | ⚠️ Unaudited |
| OptimismMintableERC20Factory | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x11fe3be54ac01c13dd985ce2bdd10ed77e1376cc` | ⚠️ Unaudited |
| OptimismPortalCGT | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x36cb65c1967a0fb0eee11569c51c2f2aa1ca6f6d` | ⚠️ Unaudited |
| OptimismRootGaugeFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3083a1c455ff38d39e58dbac5040f465cf73c5c8` | ⚠️ Unaudited |
| OptimisticRootGaugeFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x18cc3c68a5e64b40c846aa6e45312cbcbb94f71b` | ⚠️ Unaudited |
| Optimizer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x48af330a99a4cee2f367a4ab447ba816d091bce7` | ⚠️ Unaudited |
| OptionsV1Library | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x48bc6de14fc64418da9d0b5befdb404e3e76cdd5` | ⚠️ Unaudited |
| OptionsV1Reserve | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x00fbd1774093e9240beb559f7a1300d291d86309` | ⚠️ Unaudited |
| OpynBuyVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4ca4e12fd8e37e30ed3a37bccf61ba8edf85012c` | ⚠️ Unaudited |
| OpynPerpVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x404d7730c59f28ed8476ea411f88320df98b86ca` | ⚠️ Unaudited |
| OpynPerpVaultBtc | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaa25cb1b10b8252480cc6a3b17c22e6c0e00bcb4` | ⚠️ Unaudited |
| OpynPerpVaultEth | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc10b7ca0383f0357edeed233dc806b5229dcf4a5` | ⚠️ Unaudited |
| Oracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x000000009271842f0d4db92a7ef5544d1f70bc1a` | ⚠️ Unaudited |
| OracleLib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x02176d640657740539f70eea98501ebbf1c10ecc` | ⚠️ Unaudited |
| OracleProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | `0x4b1b0c225944808b9017f16e9b10305faa934cef` | ⚠️ Unaudited |
| OSMedianizer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcf63089a8ad2a9d8bd6bb8022f3190eb7e1ed0f1` | ⚠️ Unaudited |
| OTCRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x53e375f10bb81b149dd424c7ff8e060b0b0461b5` | ⚠️ Unaudited |
| OwnershipFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x359eb1d2f45dbe9e74c8c8f51fde70fbf76f230f` | ⚠️ Unaudited |
| OwnershipMiddlemanV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2efde17037b2917062ca3e22197a275f6af21dcc` | ⚠️ Unaudited |
| OYfi | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdc1ba2a504430131c7a291b7d114b11e7baf9c22` | ⚠️ Unaudited |
| PancakeERC20Strategy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | `0x8e18cbfcebc24800170108d57abc1af2459548a5` | ⚠️ Unaudited |
| PancakeFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xacfc87ffe18eb69e7d3505ee1684946744a88258` | ⚠️ Unaudited |
| PancakeFixedStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xaf7cdbcc71887aa38dfdfa539d6d3a12b0f6de57` | ⚠️ Unaudited |
| PancakeGiftV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x68e5f51980e2acbb9817e34f3a2db71f5ce2ece3` | ⚠️ Unaudited |
| PancakeInfoSender | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7c5f8fd918621116682a6cdf4720cda4b6a17c64` | ⚠️ Unaudited |
| PancakeMasterchefStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x16a659d2226c3ecc16d9d2301f62b98bd03be58e` | ⚠️ Unaudited |
| PancakePredictionV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1cdc19b13729f16c5284a0ace825f83fc9d799f4` | ⚠️ Unaudited |
| PancakeRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x05ff2b0db69458a0750badebc4f9e13add608c7f` | ⚠️ Unaudited |
| PancakeStableSwapFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x09b7801527b4ff9a2ea6fa0e2f141f0960550534` | ⚠️ Unaudited |
| PancakeStableSwapFactoryOwner | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x737558000c162e2b9388740a14ae5a955227578d` | ⚠️ Unaudited |
| PancakeStableSwapInfo | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5a075d13469201cad4ac0c77aeff31f2217a9448` | ⚠️ Unaudited |
| PancakeStableSwapLPFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1179adfa22dd0e5050c1c00c9f8543a77f75a2c0` | ⚠️ Unaudited |
| PancakeStableSwapThreePoolDeployer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6af7a605953c0b462ee9540217f5bd80878c6b2e` | ⚠️ Unaudited |
| PancakeStableSwapThreePoolInfo | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5950ef6ba8edd7dd30e9bcd05061adab78c58f16` | ⚠️ Unaudited |
| PancakeStableSwapTwoPoolDeployer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xddfcdaacc836dd5a1ae2d375ffb153ce59dd09ff` | ⚠️ Unaudited |
| PancakeStableSwapTwoPoolInfo | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0d396b1e47143221b7d9fbac73ccb647ac7bed3a` | ⚠️ Unaudited |
| PancakeStableSwapWBNBHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x52e5d1e24a4308ef1a221c949cb2f7cbbafee090` | ⚠️ Unaudited |
| PancakeVaultFactoryXChain | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5f0c609921c214413f1e93ca5b592cc449dfde72` | ⚠️ Unaudited |
| PancakeVeSender | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x724172991249e85da9d3f67fcb45125e01512d86` | ⚠️ Unaudited |
| PancakeVeSenderV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x79d4d0e75b736b4131306e77e7cd2f2595d56628` | ⚠️ Unaudited |
| PancakeVoterProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4086d46a650517fa756f620507db704d3900da07` | ⚠️ Unaudited |
| PCSVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3b7c1b8482fc549bb5dc0b07eb0ac99068479212` | ⚠️ Unaudited |
| Peg Keeper Offboarding | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x81813e506cdb58cc2f2ed1619be6383fc3699ca8` | ⚠️ Unaudited |
| Peg Keeper Regulator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x36a04caffc681fa179558b2aaba30395cddd855f` | ⚠️ Unaudited |
| Peg Keeper V2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0a05ff644878b908ef8eb29542aa88c07d9797d3` | ⚠️ Unaudited |
| PegKeeper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1ef89ed0edd93d1ec09e4c07373f69c49f4dccae` | ⚠️ Unaudited |
| PegPrice | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x226845c2ba216b8bb1aaadfd4e14de69426c5445` | ⚠️ Unaudited |
| PENDLE | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x808507121b80c02388fad14726482e061b8da827` | ⚠️ Unaudited |
| PendleAaveV3OffchainRewardsSYUpg | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0x540e181d4e3c70632e6bb153282bead2886d0768` | ⚠️ Unaudited |
| PendleAaveV3SY | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8c28d28bad669afadc37b034a8070d6d7b9dfb74` | ⚠️ Unaudited |
| PendleAaveV3WithRewardsSYUpg | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x269b2a2d136a46b8d48842cb6f306668e0a98161` | ⚠️ Unaudited |
| PendleAerodromeVolatileSY | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0x02adf72d5d06a9c92136562eb237c07696833a84` | ⚠️ Unaudited |
| PendleAgETHSY | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb1b9150f2085f6a553b547099977181ca802752a` | ⚠️ Unaudited |
| PendleAuraBbAWethSwethSY | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcb611d0bd02a74c491b75d51d6ea5558f1887da3` | ⚠️ Unaudited |
| PendleAuraWethAnkrethSY | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc0ca1e345be44ea2c83202222e5084ae3a01e9dc` | ⚠️ Unaudited |
| PendleAuraWethAnkrethSYV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7f531a70a240fba0e40169e56eede1c6b7ef8463` | ⚠️ Unaudited |
| PendleAuraWethRethSY | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdf7083f2a0f8a191ab5eeafebe92ed21cd3dd915` | ⚠️ Unaudited |
| PendleAuraWethRocketEthSYV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9bdb1dfd15d9051d127c3cd6882e194ca1c89e56` | ⚠️ Unaudited |
| PendleAuraWethVethSY | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8c76e1c2c57c343afa77c4374471eb4eb6a159ea` | ⚠️ Unaudited |
| PendleAuraWethWstethSY | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8267fdabd1b8c8645138f2de5b0fe24988dc9820` | ⚠️ Unaudited |
| PendleAuraWstethAnkreth | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb5cd090010d4735f18306eb680d898ef9f36f044` | ⚠️ Unaudited |
| PendleBeraStoneVaultSY | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xd7b2a47ac9236d9685b573a2428f72ec45e97c45` | ⚠️ Unaudited |
| PendleBeraVedaBTCSY | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xaaa576f3c8b1f6f12afd37f3936ced36e1a6ab94` | ⚠️ Unaudited |
| PendleBeraVedaETHSY | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x042677ce7e0e63fa5881f44a0f00d33feb5f55da` | ⚠️ Unaudited |
| PendleBoringSolvBTCOneracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x98f8c6467b1875d07df0bfc9137a751eaa2589ed` | ⚠️ Unaudited |
| PendleBridgedPrincipalToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa28b2445c8e1751733e75e6794971aeea4806f45` | ⚠️ Unaudited |
| PendleCommonPoolDeployHelperV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x71364efef30cc27a9c7632ff91cb8be1dee6335d` | ⚠️ Unaudited |
| PendleCommonSYFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfe906f1ec1722029799da23bdc43179302c4fff4` | ⚠️ Unaudited |
| PendleConcreteLBTCSY | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x83cb5e4ea2d95327d33a15902c1da5671eba4723` | ⚠️ Unaudited |
| PendleConcreteSolvBTCBBNSY | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x24e9571c29d749e54246741ba137fe2d574f0b6b` | ⚠️ Unaudited |
| PendleConcreteSUSDESY | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7258e564c8123227616cadf5466dc9ee261e2790` | ⚠️ Unaudited |
| PendleConcreteUniBTCSY | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xa424366bcf639628b400d7c0e0607c6b2e2b4e68` | ⚠️ Unaudited |
| PendleConcreteVaultSY | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9a90fd7088cc1dc1099b25d2a99a6cee93440423` | ⚠️ Unaudited |
| PendleCornEBTCSY | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xc86cc613aa22ca1d476aeba2c3c437bac63ebfe7` | ⚠️ Unaudited |
| PendleCornLBTCSY | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9d6ec7a7b051b32205f74b140a0fa6f09d7f223e` | ⚠️ Unaudited |
| PendleCornSolvBTCBBNSYUpg | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x23e06828d1a1460aba63f92ba75396bdf88b5f80` | ⚠️ Unaudited |
| PendleCornUniBTCSYUpg | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x83e1d1a2ce8ed6c4674d9ac61b5bf51395cc5593` | ⚠️ Unaudited |
| PendleCurveFraxUsdcSY | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd393d1ddd6b8811a86d925f5e14014282581bc04` | ⚠️ Unaudited |
| PendleCurvePool2TokenSYUpg | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xba04c9a4297484aa671fd3425364994cf2ac8037` | ⚠️ Unaudited |
| PendleCUSDAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xae8bc036451af7c8f96fd90642e163392d21d33b` | ⚠️ Unaudited |
| PendleEBTCSY | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc7b6957a4feedfc3043e8675d51f75ee688c10a6` | ⚠️ Unaudited |
| PendleEBTCSYV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x7acdf2012aac69d70b86677fe91eb66e08961880` | ⚠️ Unaudited |
| PendleEEigenSYUpg | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x78237434ed20f2e2f4aadc7ef4e789644ab21923` | ⚠️ Unaudited |
| PendleERC20SY | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8b9d898327c0ac74b946ca3ca9fcfcbe9bc29c48` | ⚠️ Unaudited |
| PendleERC4626NoRedeemNoDepositUpgSY | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x8e5e017d6b3f567623b5d4a690a2a686bf7ba515` | ⚠️ Unaudited |
| PendleERC4626NoRedeemUpgSY | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x338e2cafa81e72ff422983e124e265eeccd718cb` | ⚠️ Unaudited |
| PendleERC4626NotRedeemableToAssetSY | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf6193c65cf3d1cedde0ff9d8cb9781ad21ec980f` | ⚠️ Unaudited |
| PendleERC4626OptRedeemSYUpg | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x86e2a16a5abc67467ce502e3dab511c909c185a8` | ⚠️ Unaudited |
| PendleERC4626SY | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x90f1935f733dd8826dca2bd01ccfc600f20e978e` | ⚠️ Unaudited |
| PendleERC4626SYV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcf120a4812b8a33830caf83d1cf843a2f4d5eab0` | ⚠️ Unaudited |
| PendleERC4626UpgSYV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x0a91166428d71777e1a9b338b84eb9452e520b78` | ⚠️ Unaudited |
| PendleEUSDSY | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7e16e4253ce4a1c96422a9567b23b4b5ebc207f1` | ⚠️ Unaudited |
| PendleExchangeRateOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x78d686134aaf149aa767dce1ad0cd2799a3cd7a0` | ⚠️ Unaudited |
| PendleExchangeRateOracleApp | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb6d07db872eb82717794d2a3d64aad04d0024d33` | ⚠️ Unaudited |
| PendleFeeDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb0caa67c712d96809f2abaf2c95369ef942ce8cb` | ⚠️ Unaudited |
| PendleFeeDistributorV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x8c237520a8e14d658170a633d96f8e80764433b9` | ⚠️ Unaudited |
| PendleFeeSetter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd4dfcf062783b9ec27034c459e73caf930d09f10` | ⚠️ Unaudited |
| PendleFluxLendingSY | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdeaa5833d09179c20b55601453b9dd22216f2d76` | ⚠️ Unaudited |
| PendleFXSaveSY | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x13945b761b2ed3219a497a46d15a8923f418d2ab` | ⚠️ Unaudited |
| PendleGaugeControllerMainchainUpg | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7762cbfa8f62999a8a40d800b751686e99a31c9a` | ⚠️ Unaudited |
| PendleGaugeControllerUpg | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0x17f100fb4be2707675c6439468d38249dd993d58` | ⚠️ Unaudited |
| PendleGovernanceProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x6f1bfdedd980badbbbfe1c79e9fc9a8c690b4188` | ⚠️ Unaudited |
| PendleHwHLPSY | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x86f6817c22a14393550b135710ea58f311e457ed` | ⚠️ Unaudited |
| PendleInstadappLendingSY | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x4726fcb2fbe4398449bb7ce44eb458dbd7141191` | ⚠️ Unaudited |
| PendleKarakVaultSUSDESY | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x1b641894e66aec7bf5ab86517e8d81763cc8e19e` | ⚠️ Unaudited |
| PendleKarakVaultUSDESY | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd63a351dae6523a65a9d8c8291da80579785b0e8` | ⚠️ Unaudited |
| PendleKarakVaultWEETHSY | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x8db42af6b2de9e8aee47f3423570d8e9c3873796` | ⚠️ Unaudited |
| PendleL2LRTUpgSY | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0x09c9ac55f2cd0d6549e43053a1f7ab27d2c355be` | ⚠️ Unaudited |
| PendleLBTCBaseSY | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0xb261266cb30c255cb9c73ebf4a3ead9398d23ab4` | ⚠️ Unaudited |
| PendleLBTCBaseSYScaled18 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0x67e64af30e04a7277ab2d4f09ace3f77a15801f9` | ⚠️ Unaudited |
| PendleLBTCExchangeRateOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x82199b840796cb8d910974b41175d9dfb1e5e43b` | ⚠️ Unaudited |
| PendleLBTCSY | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc781c0cc527cb8c351be3a64c690216c535c6f36` | ⚠️ Unaudited |
| PendleLevelUSDSY | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x14ff57675c9c34eeb9e1516ffda7cac6ed1b9748` | ⚠️ Unaudited |
| PendleLimitRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc20e5f2721a2553fa8135e447f2812495138f2db` | ⚠️ Unaudited |
| PendleLiquidBeraBTCSYScaled18 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x3d98195b252dbfec41dff573981224e4a4b01aff` | ⚠️ Unaudited |
| PendleLocker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd8fa8dc5adec503acc5e026a98f32ca5c1fa289a` | ⚠️ Unaudited |
| PendleMarketFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xefbfc43d3eccc1a7cfd08b9d057457c2341a8ee4` | ⚠️ Unaudited |
| PendleMarketFactoryV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc79aceac25dfce01f60d635397ffb442283a218b` | ⚠️ Unaudited |
| PendleMarketFactoryV6Upg | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xef0a480569eeafb156b09d4312d69f54f96839c4` | ⚠️ Unaudited |
| PendleMellow4626SYUpg | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x210e157a1323d945c7600e31b8cb6763d4f7422b` | ⚠️ Unaudited |
| PendleMellowRstETHSY | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x749087ee993fdfc141f6f0e0b1370fee2d0202f9` | ⚠️ Unaudited |
| PendleMellowSUSDESY | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xbcd9522eef626dd0363347bde6cab105c2c7797e` | ⚠️ Unaudited |
| PendleMellowVaultERC4626SYUpg | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7b91b60f96c1c587c830a0239e27431276df9718` | ⚠️ Unaudited |
| PendleMellowVaultSYBaseV2Upg | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x64046776c9c856fdc5c39c6eba101adc8e18291f` | ⚠️ Unaudited |
| PendleMellowVaultWstETHSYUpg | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x198139f26d42f2028c10427a161e2d0e8bb00346` | ⚠️ Unaudited |
| PendleMidasSY | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x01e0f0351be9f820f83a6d4175b8e5faa588bb5c` | ⚠️ Unaudited |
| PendleMorpho4626AssetSY | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8077b6f34e9193d5bbb0ef06a73119060534d130` | ⚠️ Unaudited |
| PendleMsgReceiveEndpointUpg | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0x0fe4a1bbe013b54e38ef4e4ec8ba1d64d12a0663` | ⚠️ Unaudited |
| PendleMsgSendEndpointUpg | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x07b1014c88f14c9e910092526db57a20052e989f` | ⚠️ Unaudited |
| PendleMulticall | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xca54acc50ede7f2fc098b6bfa5cebaaf40166640` | ⚠️ Unaudited |
| PendleMultiTokenMerkleDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x726db0396ba75efeb9362400e6067b7a1d609a19` | ⚠️ Unaudited |
| PendlePoolDeployHelperV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8a28d3b02591a2c9eb4e3e7ccf90c78cf26c9c24` | ⚠️ Unaudited |
| PendlePTOFTAdapterFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x905af80c4de82e0075a19fde2f5777f1a6636732` | ⚠️ Unaudited |
| PendlePtOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbbd487268a295531d299c125f3e5f749884a3e30` | ⚠️ Unaudited |
| PendlePufWETHSY | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x253008ba4ae2f3e6488dc998a5321d4eb1a0c905` | ⚠️ Unaudited |
| PendlePumpBTCSY | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x78f9afec0afd297bea08098ed01719b0b0f19ab2` | ⚠️ Unaudited |
| PendleReservoirUSDSY | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x43d6651ff941776976ae8e5b11ef513e054a7931` | ⚠️ Unaudited |
| PendleReservoirWsrUSDSY | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x212670e78cbec6f219204c52889763628bedd15e` | ⚠️ Unaudited |
| PendleREZtakeSY | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8eb1a6a1296f41ccaa20d13b952a7fca1b20c3e4` | ⚠️ Unaudited |
| PendleRLPSY | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9c846e93628ebfaeefd287457409f1f71f426f76` | ⚠️ Unaudited |
| PendleRsETHSY | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x730a5e2acebccaa5e9095723b3cb862739da793c` | ⚠️ Unaudited |
| PendleRswETHSY | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7786729eee8b9d30fe7d91fdff23a0f1d0c615d9` | ⚠️ Unaudited |
| PendleSavingUSDASY | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x8946f653aed1af1f82a8de6d7f54088afff5a14e` | ⚠️ Unaudited |
| PendleSENASY | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa36ecca8b7624d224f01cd6649c8afad3da12c3d` | ⚠️ Unaudited |
| PendleSfrxEthSY | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xeb83006b0aaddd15ad8afbebe2f4e0937f210673` | ⚠️ Unaudited |
| PendleSGHOSY | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xae14ae6818c1db507e471bcf90eb81288c71f609` | ⚠️ Unaudited |
| PendleSiloWithIncentiveSY | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe05082b184a34668cd8a904d85fa815802bbb04c` | ⚠️ Unaudited |
| PendleSolvBeraBTCSY | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x67e58f0240b432e78795dc010716e54b70c609d7` | ⚠️ Unaudited |
| PendleSolvBTCBBNBaseSYUpg | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0x4a2b38b9cbd83c86f261a4d64c243795d4d44abc` | ⚠️ Unaudited |
| PendleSolvBTCBBNBSCSYUpg | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | `0x141ec2d606f12ff959d7d07cde6811e5fdff2831` | ⚠️ Unaudited |
| PendleSolvBTCBBNSYUpg | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x859c11a2483fea4b65d1ae7d207cb5395a5b4e34` | ⚠️ Unaudited |
| PendleSophonFarmingSY | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbe9a9b386fdba0de5fd76fa2495b0940102ea1e4` | ⚠️ Unaudited |
| PendleSophonPointManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x74c5a0d5dfcc6d4527c849f09ecc360c5345d986` | ⚠️ Unaudited |
| PendleSparkLinearDiscountOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3fa71e3f2788f85d8c4f9c3a05b038eaf29e7d35` | ⚠️ Unaudited |
| PendleStakedLevelUSDSY | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x0a9b2c09f8756c743b0702973ed33970d16cf6f9` | ⚠️ Unaudited |
| PendleStakingSPKUSDSSY | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x0ee69a11b4391c5af5eb2fb088c2df5dd2a0d075` | ⚠️ Unaudited |
| PendleStakingUSDSSY | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdb01707567cf99c2e2215f1bd8ca567d998415de` | ⚠️ Unaudited |
| PendleStEURSY | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xd353ae1ffabd6647ee3bacd92e93af18c243dfde` | ⚠️ Unaudited |
| PendleStkGHOSY | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7fbd266872f72694f5bab474edc9505e25f71df1` | ⚠️ Unaudited |
| PendleStrataUSDESY | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x33e88943b00e699fc5b6597c5f8bcb0872af8bee` | ⚠️ Unaudited |
| PendleStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa7641acbc1e85a7ed70ea7bcffb91afb12ad0c54` | ⚠️ Unaudited |
| PendleSuperOETHSY | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0x67507f3e26e7e2fd0a42c48fbc85069ccfcbd2ff` | ⚠️ Unaudited |
| PendleSUSDESY | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xabf8165dd7a90ab75878161db15bf85f6f781d9b` | ⚠️ Unaudited |
| PendleSUSDSAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7ee16d58ab482922523b252634ecc324326bd155` | ⚠️ Unaudited |
| PendleSUSDSSY | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbe3d4ec488a0a042bb86f9176c24f8cd54018ba7` | ⚠️ Unaudited |
| PendleSwap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd33ae23316734ef20233f41437dbdd2590bfd782` | ⚠️ Unaudited |
| PendleSwapAggregator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9660ac0cb085f8fb39a6f383cf2067785364f924` | ⚠️ Unaudited |
| PendleSwapEthereum | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xddceec69d4a705970a5c60c8e6406ec81f2370bc` | ⚠️ Unaudited |
| PendleSyrupSY | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc9e9c85b33e87fde85c44dbf72b4b842a071551d` | ⚠️ Unaudited |
| PendleTerminalExternalCap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x89c649c644e9959ca8c2a9f12c1cca1ca44afe3e` | ⚠️ Unaudited |
| PendleTerminalSYScaled18 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x0d298432833e0d60372c70801feaf868eb7451b3` | ⚠️ Unaudited |
| PendleTreeHouseETHSY | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xb2dbc10f4fa6113ac75eea254806f6a2aa4bf20b` | ⚠️ Unaudited |
| PendleUmbrellaStake4626SY | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x39f47ae8a1fb6298260e642d5312e5d89fbe7830` | ⚠️ Unaudited |
| PendleUmbrellaStakeTokenSY | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x1d292b43171209ef02f00a239353f316c3d93151` | ⚠️ Unaudited |
| PendleUniBTCSYUpg | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x87b8e462080fa443a06d2bb119adb3828c407d78` | ⚠️ Unaudited |
| PendleUniETHSY | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc430db19339a3051192233b4c49f9ab3dc6d16b7` | ⚠️ Unaudited |
| PendleUSDESY | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x925a15bd6a1582fa7c0ebbfc3dbd29c34f58340e` | ⚠️ Unaudited |
| PendleUSDSSYWithCap | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x508defdb5dd2adeefe36f58fdcd75d6efa36697b` | ⚠️ Unaudited |
| PendleVaultFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4c1cf444bbbfd3ed6608659b61a1107af01181e5` | ⚠️ Unaudited |
| PendleVotingControllerUpg | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x44087e105137a5095c008aab6a6530182821f2f0` | ⚠️ Unaudited |
| PendleWcgUSDSY | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0x77d07ab8466a57fb8615aeb75c37abff25c06ebf` | ⚠️ Unaudited |
| PendleWEEthkSY | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xe2796707590384430d887f15bdf97c660d95894a` | ⚠️ Unaudited |
| PendleWEEthkWithRateSY | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbbf8cfc9f38d8ad4eaea405170743c9f4a982d32` | ⚠️ Unaudited |
| PendleWEEthsSY | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x772079c143d9ef931a6df44963bfc37190b3400a` | ⚠️ Unaudited |
| PendleWEEthsWithRateSY | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x012badcc6e824c2ea32bd5367ebda3be3402c9c5` | ⚠️ Unaudited |
| PendleWEEthSY | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xac0047886a985071476a1186be89222659970d65` | ⚠️ Unaudited |
| PendleWstETHPriceFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x90510946d780a5ac7616c30e067670ecdc63b3f2` | ⚠️ Unaudited |
| PendleWstEthSY | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcbc72d92b2dc8187414f6734718563898740c0bc` | ⚠️ Unaudited |
| PendleYearnBalancerLPSY | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xa47e357d68523ace098366888ad6b50e8d85f431` | ⚠️ Unaudited |
| PendleYieldContractFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x70ee0a6db4f5a2dc4d9c0b57be97b9987e75bafd` | ⚠️ Unaudited |
| PendleZerolendEBTCSYUpg | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x96af5d9e4d01fb892fd2d76bfc0e3c07aecf8b6b` | ⚠️ Unaudited |
| PendleZtakeEzETHSY | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x7a493be5c2ce014cd049bf178a1ac0db1b434744` | ⚠️ Unaudited |
| PendleZtakeRsETHSY | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x34349c5569e7b846c3558961552d2202760a9789` | ⚠️ Unaudited |
| PendleZtakeUSDESY | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x293c6937d8d82e05b01335f7b33fba0c8e256e30` | ⚠️ Unaudited |
| PendleZtakeWeETHSY | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xd7df7e085214743530aff339afc420c7c720bfa7` | ⚠️ Unaudited |
| PermastakerOperator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3419b3fff84b5fbf6eec061ba3f9b72809c955bf` | ⚠️ Unaudited |
| Platform | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0000000446b28e4c90dbf08ead10f3904eb27606` | ⚠️ Unaudited |
| PlatformClaimable | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2d57e7ee4b82ffc95469817eb8bc042dbec33fbf` | ⚠️ Unaudited |
| PlatformFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1abe682c785ccf18c91f4da045792115ae7744d1` | ⚠️ Unaudited |
| PlatformFeeBurner | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x695eb50a92ad2aebb89c6dd1f3c7546a28411403` | ⚠️ Unaudited |
| PlatformFeeDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd2791781c367b2f512396105c8ab26479876e973` | ⚠️ Unaudited |
| PlatformFeeSpliter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x32366846354db5c08e92b4ab0d2a510b2a2380c8` | ⚠️ Unaudited |
| Polygon zkEVM Broadcaster | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb5e7fe8ea8ecbd33504485756fcabb5f5d29c051` | ⚠️ Unaudited |
| PolygonRootGaugeFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4c4287b07d293e361281bceee8715c8cdeb64e34` | ⚠️ Unaudited |
| Pool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x8676e39b5d2f0d6e0d78a4208a0ccbc50504972e` | ⚠️ Unaudited |
| Pool_USDC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1864ca3d47aab98ee78d11fc9dcc5e7badda1c0d` | ⚠️ Unaudited |
| Pool_USDT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7d3fcd3825ae54e8e8ffd3d0ce95882330d54968` | ⚠️ Unaudited |
| PoolAddressesProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xaf9ab0c286a36a430c9bb7c58ebf0bf075dde595` | ⚠️ Unaudited |
| PoolAddressesProviderRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x5046c3c0d7a362709df433d5431d64973c7f08cb` | ⚠️ Unaudited |
| PoolConfigurator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x78ad3d53045b6582841e2a1a688c52be2ca2a7a7` | ⚠️ Unaudited |
| PoolHarvestHook | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe4d89e8267d2e8f03f751fa807b3bbdb36729f9a` | ⚠️ Unaudited |
| PoolInformation | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x6e230d0e457ea2398fb3a22fb7f9b7f68f06a14d` | ⚠️ Unaudited |
| PoolLogic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x5148c308d45d60011f18ad5b0d533d6d275d1f33` | ⚠️ Unaudited |
| PoolManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3b2d30734491ad77880d31e8afe2a4d8ac135a9c` | ⚠️ Unaudited |
| PoolManagerProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x16a04e58a77ab1ce561a37371dfb479a8594947a` | ⚠️ Unaudited |
| PoolManagerSecondaryProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x153dfc50f7a93c4f3d049c105dde9786d3cfc72a` | ⚠️ Unaudited |
| PoolManagerShutdownProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x73b1b12065d0ae21dff4848d5871ca2a5227889f` | ⚠️ Unaudited |
| PoolManagerTertiaryProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0ff33996d846200d5ada1a58aeb62c1b09feb3b2` | ⚠️ Unaudited |
| PoolManagerV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xae5f315a5b5dd4dbacd38862562a51490e500183` | ⚠️ Unaudited |
| PoolManagerV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8a849f4074726179f95ee08c59caa8f6f21b1e83` | ⚠️ Unaudited |
| PoolManagerV4 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0e4e9d97440182ea72d988d48eb9b156a0c02e11` | ⚠️ Unaudited |
| PoolMigrator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x12adde99768a82871eaaecfbdb065b12c56f0578` | ⚠️ Unaudited |
| PoolPauseHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1780e8185199dac45284039bb3e3b64060d943ab` | ⚠️ Unaudited |
| PoolPositionManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xc402d13b0d04867649a632f17528c753d8f6fbd2` | ⚠️ Unaudited |
| PoolRecoveryHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x03f3fb107e74f2eac9358862e91ad3c692712054` | ⚠️ Unaudited |
| PoolRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3051cc7114c07365c99cf82de13cd9d10e603a4a` | ⚠️ Unaudited |
| PoolRewardHook | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x723f9aa67fdd9b0e375ef8553eb2afc28ecd4a96` | ⚠️ Unaudited |
| PoolSwapFeeHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x254f3a2974b97dc2e675f6115c845567c55f83b0` | ⚠️ Unaudited |
| PoolTypes | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x52d85e14bf2bfb16ed4a8f3b5a0c8fc0baa78a9c` | ⚠️ Unaudited |
| PoolUtilities | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5fba69a794f395184b5760daf1134028608e5cd1` | ⚠️ Unaudited |
| PoolVoter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x36b06eb09459216bd6dba9755183531e8259ba26` | ⚠️ Unaudited |
| PositionInspector | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x550056a68cb155b6cc3def4a7fa656260e7842e2` | ⚠️ Unaudited |
| PositionsManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4592e45e0c5dbee94a135720ccff2e4353dac6de` | ⚠️ Unaudited |
| PredictionV2Admin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb509dbee68b273767cd8d45c1ce95453391741f6` | ⚠️ Unaudited |
| PredictionV2Keeper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x581619971c25a34d6b5a7900e06b43328e33c656` | ⚠️ Unaudited |
| PreLaunchLocker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb407ca355112f8645f0ffac4e15b7cf1559850e7` | ⚠️ Unaudited |
| PriceLens0 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4af614754b58168172d459c3ea81e2db14b3dc5a` | ⚠️ Unaudited |
| PriceProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3e94fa3c1e72f48ecbc1f944f393ae8a323be471` | ⚠️ Unaudited |
| PrincipalToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x032b7cc608c4855c89bd0a38c3c1a43c6e049c96` | ⚠️ Unaudited |
| PrincipalTokenUtil | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2bbd14976753f9748b421bba87a47faa0e6f1983` | ⚠️ Unaudited |
| PrismaClaimOperator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8e2e98e1ea79c31c9ab957e465c5529fc81880ab` | ⚠️ Unaudited |
| PrismaPSM | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x15b434fa5eb482b5aeb56f07df7a29bf261fff61` | ⚠️ Unaudited |
| ProposalGuardian | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc813f688ca38d37e35845fb2eb180efbc5002e76` | ⚠️ Unaudited |
| ProtocolController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2d8bce1fae00a959354acd9ebf9174337a64d4fb` | ⚠️ Unaudited |
| ProtocolFeeController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x2ff226cd12c80511a641a6101f071d853a4e5363` | ⚠️ Unaudited |
| ProtocolFeeControllerMigration | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x1b6f057520b4e826271d47b8bdab98e35af17e59` | ⚠️ Unaudited |
| ProtocolFeeHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x30ff095e22dda9751b5e1a67928611dcb6308d7e` | ⚠️ Unaudited |
| ProtocolFeePercentagesProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x97207b095e4d5c9a6e4cfbfcd2c3358e03b90c4a` | ⚠️ Unaudited |
| ProtocolFeeSweeper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x136f1efcc3f8f88516b9e94110d56fdbfb1778d1` | ⚠️ Unaudited |
| ProtocolFeesWithdrawer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5ef4c5352882b10893b70dbcaa0c000965bd23c5` | ⚠️ Unaudited |
| ProtocolIdRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5cf4928a3205728bd12830e1840f7db85c62a4b9` | ⚠️ Unaudited |
| ProtocolTimelock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb27afc7844988948fbd6210aef4e1362bc2d8e6a` | ⚠️ Unaudited |
| ProtocolVersions | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x3c7ea1c10eb783fe86e4eed202324dcfeeca9043` | ⚠️ Unaudited |
| Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3aa7e876880cb34371c01f1510b1e0a932dcb8c1` | ⚠️ Unaudited |
| ProxyAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x01b4314072fe86a497e97bd6ad48b635fbe7e1ee` | ⚠️ Unaudited |
| ProxyFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x66807b5598a848602734b82e432dd88dbe13fc8f` | ⚠️ Unaudited |
| ProxyFeeCollectorBurner | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x1d56495c76d99435d10ecd5b0c3bd6a8ee7cc3bb` | ⚠️ Unaudited |
| ProxyForCakePoolFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x03e80d537dca71e826eac6fe74fbb0db607a2727` | ⚠️ Unaudited |
| ProxyOFT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2b162de7fbd942f142aa21865f685f71a687a3bb` | ⚠️ Unaudited |
| PtAndLpToAsset | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xfa6b22fc4c3ad88b68c16b3061a16b1714f6bd57` | ⚠️ Unaudited |
| PublicAllocator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3df41890b6f4b723d9bb85f81d42990e0fca05c4` | ⚠️ Unaudited |
| PullRewardsTransferStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xd23f2a6c8a4f5ea62e2b468c89a14ef28ede2291` | ⚠️ Unaudited |
| PythAggregatorV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x0bd27617e20f09a8e7ffdae281e383b4b2f7a742` | ⚠️ Unaudited |
| PythUpdater | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x51897470ff1fe711b6998a8ecf3571de3a30480b` | ⚠️ Unaudited |
| RangeAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x51452b51fbb8e8b200d369a55366ec7a1564fde5` | ⚠️ Unaudited |
| RariFuseLendingAMO | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x843df6229c1b8fc41c1d74bcddc7e17788ddb0a2` | ⚠️ Unaudited |
| RateAdjustmentOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x032b7cc608c4855c89bd0a38c3c1a43c6e049c96` | ⚠️ Unaudited |
| RateOracleRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x73b4ffe5334b9b8c7757186871f966d606a437d6` | ⚠️ Unaudited |
| RebalancePool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3415fcd2885c486e2d848403d51077f7176473c7` | ⚠️ Unaudited |
| Receiver | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x642a16a7885d7a8b9353e2a4b68834f31389dc2c` | ⚠️ Unaudited |
| RecipientFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb539433ff0c477b350e50df5f36d049d28035a93` | ⚠️ Unaudited |
| ReClammPoolFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x0c8f71d19f87c0bd1b9bad2484ecc3388d5dbb98` | ⚠️ Unaudited |
| ReClammPoolHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x02916d8f0891309806fcb347bf4191692cbddcaf` | ⚠️ Unaudited |
| RecoveryModeHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x313a8d36b1d90a4cba3a505fdc3480c3870be053` | ⚠️ Unaudited |
| Redeem | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1d8a9c30e4e25033498347c1a054717bd0c4d356` | ⚠️ Unaudited |
| RefundLogic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2433477a10fc5d31b9513c638f19ee85caed53fd` | ⚠️ Unaudited |
| Registrar | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1c3a4d06532d9d1c631f99ec50dd72da43a5c6de` | ⚠️ Unaudited |
| Registry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0b26d0483b297a61c09a6442e5af4f694eaee1e5` | ⚠️ Unaudited |
| ReleaseRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb011e58afb69120a0d841cef3ab718ce3f1d395e` | ⚠️ Unaudited |
| RequestOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1f49037fa2979753545b51b7f58e20874a9f1d51` | ⚠️ Unaudited |
| RescueStrat | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcb354dff03c15499ab9834faa63b6839c3be9d21` | ⚠️ Unaudited |
| RescueToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb15ffb543211b558d40160811e5dcbcd7d5aaac9` | ⚠️ Unaudited |
| ReservesSetupHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x4cc1ab555dd8f9476d874743c8fabf9c3bad1dce` | ⚠️ Unaudited |
| ResolvStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1d2d1e12db390d5f6046102eee25dbf2cfd827e6` | ⚠️ Unaudited |
| ResolvStakingCheckpoints | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x253c6e08db15e2912cf3afe5a89f2a7a4d8f2784` | ⚠️ Unaudited |
| ResolvStakingHelpers | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x948aded191e90b94fcb94e0e2aa6775786f17970` | ⚠️ Unaudited |
| ResolvStakingSilo | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x502f9f85770437d102b767d6e311a4560ec88d4f` | ⚠️ Unaudited |
| ResolvStakingV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xfe4bce4b3949c35fb17691d8b03c3cadbe2e5e23` | ⚠️ Unaudited |
| RestrictedERC20 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x08b03db5f52e2975a8a0450ef4db85a606bec01f` | ⚠️ Unaudited |
| ResupplyPair | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd210bc75b822795a80672413e189312598e1e42b` | ⚠️ Unaudited |
| RevenueSharingPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9cac9745731d1cf2b483f257745a512f0938dd01` | ⚠️ Unaudited |
| RevenueSharingPoolFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xbbc86f201c14a4062ee0de8c580da38c6e38cd2e` | ⚠️ Unaudited |
| RevenueSharingPoolGateway | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x011f2a82846a4e9c62c2fc4fd6fdbad19147d94a` | ⚠️ Unaudited |
| RevenueSharingPoolKeeper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3fc88d8eef0901cb0b407f7a4bab6f5c73fa3874` | ⚠️ Unaudited |
| RewardClaimHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaf59d144357dcc8a852ad601f27bf6310b657a7f` | ⚠️ Unaudited |
| RewardDepositor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x922cf0e43f8c8dc02399a10fcf25f3f17c6c1096` | ⚠️ Unaudited |
| RewardFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x45aad11f2fa2c215bc9686eb6f06d46e0474f356` | ⚠️ Unaudited |
| RewardHandler | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x524fce03270c60279d604ea3b374194e96c3a3b3` | ⚠️ Unaudited |
| RewardManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1f3718c23f2f0f6bb7fe20f39ad73c668567c40a` | ⚠️ Unaudited |
| RewardPoolDepositWrapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb188b1cb84fb0ba13cb9ee1292769f903a9fec59` | ⚠️ Unaudited |
| RewardReceiver | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x78f1bba3868b67f4994b3e7f7ec9b0485dc85ad7` | ⚠️ Unaudited |
| RewardReceiverL2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x64d27cf5e981814b777cb0ca9be4bacb1aaa0add` | ⚠️ Unaudited |
| RewardReceiverMigrationModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2c043dd5adee81c93a5b5c2ccda00de9c4cbfd46` | ⚠️ Unaudited |
| RewardRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9a207a85e372fcdac3014f945a65868f2a05ba12` | ⚠️ Unaudited |
| RewardsAllocationPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa3ecf0cc8e88136134203aaafb21f7bd2da6359a` | ⚠️ Unaudited |
| RewardsController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x35ad7e59b5a0cf90cda5eea1a22c1909f8b0e02f` | ⚠️ Unaudited |
| RewardsDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x9055ebe4e01040c0c4a6d9bb84a13188981c62d4` | ⚠️ Unaudited |
| RewardToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x5ffec9bf14016420cdf073a3007f92a9764226f4` | ⚠️ Unaudited |
| RewardVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x69c1cb8f5e031d4044a45ed67abdb6be051b2992` | ⚠️ Unaudited |
| RiskOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0739311a9725779f109706b48a56763a8ae8fe50` | ⚠️ Unaudited |
| Root Liquidity Gauge Factory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x153029f2eb9bce707f7d74c9afdf2a15c29fc228` | ⚠️ Unaudited |
| Root Liquidity Gauge Implementation | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb47ea35baeab00f14faf0c0d60828ad1030fbb20` | ⚠️ Unaudited |
| Router | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0f08eef2c785aa5e7539684af04755dec1347b7c` | ⚠️ Unaudited |
| RouterModuleClaim | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x5d67df1ba3043c4135f2078571ea5a9a98410fb0` | ⚠️ Unaudited |
| RouterModuleDeposit | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x1c23b547b54edef64ed9a47a0843296f0dbf31bb` | ⚠️ Unaudited |
| RouterModuleEnso | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x2f744b1b2ee4e04980a9e144fa2b257832c7adea` | ⚠️ Unaudited |
| RouterModuleERC20Manager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x1928e57c7a5c65da3df0c02d1bade430e518963a` | ⚠️ Unaudited |
| RouterModuleLending | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x4561a21d738d05c10f2bb51f51e92d13916ade2c` | ⚠️ Unaudited |
| RouterModuleMigrationCurve | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0e5ca5f4989637d480968325b716db7a6e46466b` | ⚠️ Unaudited |
| RouterModuleMigrationStakeDAOV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x05ccbc721c12590201b66f47aa9b3dca63b455da` | ⚠️ Unaudited |
| RouterModuleMigrationYearn | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x267c77f0616d44ed6d816527974a624b2ba65ee3` | ⚠️ Unaudited |
| RouterModuleRewardsFetcher | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x00369a608d40d32ded9d49aa63c349c66f61289f` | ⚠️ Unaudited |
| RouterModuleSDToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3aa6aa7d4213da8bec2c6bcb4de67c382f2746dc` | ⚠️ Unaudited |
| RouterModuleVLSDT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8155b8858af2b12baf8a79e22021b14f91557707` | ⚠️ Unaudited |
| RouterModuleWBTC18 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x07a53c83821d793a0468bca7eea5e9b56f475390` | ⚠️ Unaudited |
| RouterModuleWithdraw | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5fcbc9ad6ea1ad51604896845b80ddeeba2a2c2d` | ⚠️ Unaudited |
| RouterStatic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7c0fa6ad8c14afc85706e28b6ed2d9cbacc47161` | ⚠️ Unaudited |
| RouterUtil | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x069cf003b37b53be58982f70a2f17beb311eed21` | ⚠️ Unaudited |
| SafeExecutor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5a7198ceb108dd0a4b0bf109dc6543f67fa9e3b3` | ⚠️ Unaudited |
| SafeProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x0070d9adc687a28fbacc0a0aab24b90c037ad24e` | ⚠️ Unaudited |
| SafeProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x64fd7a4b0b43f47527232392c1ea633826355107` | ⚠️ Unaudited |
| SafeProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x9690ed6301d89c51e159abe8c81af69d1e152e6a` | ⚠️ Unaudited |
| SafetyRedundancy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6bdfea3b1fc7d01bfed72e08fd395fc6d0fb3c40` | ⚠️ Unaudited |
| Sanctuary | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xac14864ce5a98af3248ffbf549441b04421247d3` | ⚠️ Unaudited |
| sAPE | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x47ba20283be4d72d4afb1862994f4203551539c5` | ⚠️ Unaudited |
| ScaledUIToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3bd52020b7ccaf85678dede39c586ff7e454c166` | ⚠️ Unaudited |
| scrvUSD oracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3195a313f409714e1f173ca095dba7bfbb5767f7` | ⚠️ Unaudited |
| ScrvusdProver | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x47ca04ee05f167583122833abfb0f14ac5677ee4` | ⚠️ Unaudited |
| ScrvusdVerifierV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x14e11c1b8f04a7de306a7b5bf21bbca0d5cf79ff` | ⚠️ Unaudited |
| sdCRV | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd1b5651e55d4ceed36251c61c50c889b36f6abb5` | ⚠️ Unaudited |
| SdCRVBribeBurner | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9d6dc3dbc7cc5e1d7241601473fd63d2bd1573f9` | ⚠️ Unaudited |
| sdFPIS | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x334cb66050049c1e392007b018321c44a1dbfac4` | ⚠️ Unaudited |
| SdLiquidityZapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2a3bd204d41c41804953558b9a29349e85d7e24b` | ⚠️ Unaudited |
| sdMAV | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x50687515e93c43964733282f9db8683f80bb02f9` | ⚠️ Unaudited |
| SDT | unknown | project_anchor | own_supporting | 0 | ethereum | unit-393024 | `0x73968b9a57c6e53d41345fd57a6e6ae27d6cdb2f` | ⚠️ Unaudited |
| SdtDistributorV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x10a4a0db6554bfd90cfce11c97d3cf1b296cc2b6` | ⚠️ Unaudited |
| sdToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0879c1a344910c2944c29b892a1cf0c216122c66` | ⚠️ Unaudited |
| Secondarymonetarypolicy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x188041ad83145351ef45f4bb91d08886648aeaf8` | ⚠️ Unaudited |
| SecondarymonetarypolicyforWBTC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4e1f162fd143e4a829341efd6dd451b018b10f9c` | ⚠️ Unaudited |
| SemiLog monetary policy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2a28789645776eaa95f6d491ff375781ea5b40dd` | ⚠️ Unaudited |
| sfrxETH2crvUSDleveragezap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x43ecffe6c6c1b9f24aeb5c180e659c2a6fce11bc` | ⚠️ Unaudited |
| ShortOTokenActionWithSwap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x36e0f6896ab1e02c0d86d0c10f2928dbd2df3845` | ⚠️ Unaudited |
| ShortOTokenActionWithSwapBtc | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb5a187cd9140b6b0db97f014f5c6af5802a3098d` | ⚠️ Unaudited |
| ShortOTokenActionWithSwapEth | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7946b98660c04a19475148c25c6d3bb3bf7417e2` | ⚠️ Unaudited |
| SignatureVerifier | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8958677ca44da460d487335c09c045fbd0c43382` | ⚠️ Unaudited |
| Signer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x10d7cb15642d540a4521a7b2840dab01287081fc` | ⚠️ Unaudited |
| SingleRecipientGaugeFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4fb47126fa83a8734991e41b942ac29a3266c968` | ⚠️ Unaudited |
| SingleSidedAMM | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x82bfdd53dd95efa2c3e92543f28d46c566bf4b8a` | ⚠️ Unaudited |
| SingleStakingManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x747fc744837deda8d1c568d8e90839e5d4495255` | ⚠️ Unaudited |
| SiphonToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa348a39a98418dd78b242e2fd7b14e18ac080e75` | ⚠️ Unaudited |
| SmartChef | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0124ed38db9c3a04a4a217172288454cd1d6dd16` | ⚠️ Unaudited |
| SmartChefFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc87e59aa9eeab27ebc0344cdea97e58bf58c506f` | ⚠️ Unaudited |
| SmartWalletChecker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x173f5f648b18cf1c7f6aac66a35bf462539f3b27` | ⚠️ Unaudited |
| SmartWalletCheckerCoordinator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x26575a44755e0aaa969fdda1e4291df22c5624ea` | ⚠️ Unaudited |
| SmartWalletWhitelist | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3557bd058d674dd0981a3ff10515432159f63318` | ⚠️ Unaudited |
| Snapshot Splitter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x168b92fc04eb8815a517b3f12341166bc5ada222` | ⚠️ Unaudited |
| SNXRecoveryCoordinator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x56a1baf2f7a163ce66067f0062da60930dd0cb31` | ⚠️ Unaudited |
| Sonic Block Hash oracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xe35a879e5efb4f1bb7f70dcf3250f2e19f096bd8` | ⚠️ Unaudited |
| SousChef | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xfaa221f0a3c36a17dacbecc1f19df4094871b4d3` | ⚠️ Unaudited |
| Spectra | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x100f22121d8c86367b14ba67968dca8001c9fa79` | ⚠️ Unaudited |
| Spectra4626Enhancer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x0c11059d1451aa6d6eb84ad5d28530b2661a9b3c` | ⚠️ Unaudited |
| SpectraBridge | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0x1f98f0eb72505e6a319431507aa7f05f6322f88b` | ⚠️ Unaudited |
| SpectraForwarder | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x2811b38f354d317716c0d35c3cfb9825b6bac642` | ⚠️ Unaudited |
| SpectraMinter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x09c9bcf56026283b69022d3bd5829aa3ba92538d` | ⚠️ Unaudited |
| SpectraPriceOracleFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3bc95ec05907cdb326c5da3c098ae4fb0808e57d` | ⚠️ Unaudited |
| SpectraVoter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x5c2b664564c932585484c4f2e7bd44a35168f3b9` | ⚠️ Unaudited |
| SpectraVotingEscrowAggregator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x4eafef6149c5b0c3e42ff444f79675b3e3125cb7` | ⚠️ Unaudited |
| SpectraWrappedAmphorLRT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x916cd56a5fbbeae186f488f4db83b00c103b46e7` | ⚠️ Unaudited |
| SpectraWrappedBedrockUniBTC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xacfee9a21fc48040f12793bd5a478dd155ac04fd` | ⚠️ Unaudited |
| SpectraWrappedILRT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0fc2fbd3e8391744426c8be5228b668481c59532` | ⚠️ Unaudited |
| SpectraWrappedRLP | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1f98f0eb72505e6a319431507aa7f05f6322f88b` | ⚠️ Unaudited |
| SpectraWrappedStkGHO | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x03e2ec137c6ab82978d52edb7b504ad2deb13f96` | ⚠️ Unaudited |
| SpectraWrappedXUSD | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x65cd78ef657abe315097a0eb6601f682ab306acc` | ⚠️ Unaudited |
| Stable Deposit Burner | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1d56495c76d99435d10ecd5b0c3bd6a8ee7cc3bb` | ⚠️ Unaudited |
| Stable LP Burner | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x04213a12f7462022c12efd8d44c67561f772d001` | ⚠️ Unaudited |
| StableAMM | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0670e207ccc46c18fc38cdb3305c5a0e889eb4cd` | ⚠️ Unaudited |
| StableCreditHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x404f9ecabd4a0d4507c81766e01f76fe52ca0acb` | ⚠️ Unaudited |
| StableCreditProtocol | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x15fe17da18288d1799643be1bb07fb939626f5f9` | ⚠️ Unaudited |
| StableDebtTokenDisabled | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x26e429ca67f0d6e0cd0ad34b7002f9daa9280ee4` | ⚠️ Unaudited |
| StableLPOracleFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x254f3a2974b97dc2e675f6115c845567c55f83b0` | ⚠️ Unaudited |
| StablePhantomPoolFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb08e16cfc07c684daa2f93c70323badb2a6cbfd2` | ⚠️ Unaudited |
| StablePoolFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1fc7f1f84cfe61a04224ac8d3f87f56214fec08c` | ⚠️ Unaudited |
| StableSurgeHook | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7c1b7a97bfacd39975de53e989a16c7bc4c78275` | ⚠️ Unaudited |
| StableSurgePoolFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x187a05fb9e4234dd310ae74215743560d1baa6ac` | ⚠️ Unaudited |
| StableSwapNGAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x095340538cf380a3c30b5b547d1992c6b24ee2e0` | ⚠️ Unaudited |
| StableYieldCredit | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x11980d4bb4465cb4fc77a57b98a16787b3d834e7` | ⚠️ Unaudited |
| Stake_FXS_WETH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa29367a3f057f3191b62bd4055845a33411892b6` | ⚠️ Unaudited |
| StakeDAOCRVVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0e20d8b0ec57ca8157d9bc2beec2c28a80eaae8a` | ⚠️ Unaudited |
| StakeDaoGovernance | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbe3e89d333ff21f920656f02c2400e7720cd782b` | ⚠️ Unaudited |
| StakeDaoHarvesterFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc56b67f58ecf4c9906548cb28d13ba6b8f18249c` | ⚠️ Unaudited |
| StakeDAOLockerProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0303e55b9b43fc5a0876bb8e41ca9efdd82e4768` | ⚠️ Unaudited |
| StakeDaoLockerRecipient | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0000000014814b037cf4a091fe00cba2defc6115` | ⚠️ Unaudited |
| StakeDaoNFT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdd4f84e4f3cd31d6c91d80122b5a26cb4ae66bd5` | ⚠️ Unaudited |
| StakeDaoNFT_V2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc5f572b705cae1893cdceb5161ce40e2fc5bb6cd` | ⚠️ Unaudited |
| StakeDaoNFT_V3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5ccbae7a340351d5253be99337626c6a341b02da` | ⚠️ Unaudited |
| StakeDaoNFTPalace | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x221738f73fa4bfca91918e77d112b87d918c751f` | ⚠️ Unaudited |
| StakedBPT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x46c5098f73fa656e82d7e9afbf3c00b32b7b1ee2` | ⚠️ Unaudited |
| StakedPendle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa98d1483781c08e60d944a63721b93fe40749032` | ⚠️ Unaudited |
| StakedTokenDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x212e81359f24fb871638c366f6df1c42fa789037` | ⚠️ Unaudited |
| StakelessGaugeCheckpointer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0c8f71d19f87c0bd1b9bad2484ecc3388d5dbb98` | ⚠️ Unaudited |
| StakeZap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4f76333e716788b0786b405fa8ea8928928e2dfd` | ⚠️ Unaudited |
| StakingProxyConvex | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd0841ab39826b0dafaeb008baa48876917d333df` | ⚠️ Unaudited |
| StakingProxyERC20 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1d0c890236261c3a2440af03ab10654e60476d80` | ⚠️ Unaudited |
| StakingProxyERC20Joint | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x64167f69a10ab360a8c45b8c7db31d7752111181` | ⚠️ Unaudited |
| StakingRewardsMultiGauge_StakeDAO | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xeb81b86248d3c2b618ccb071adb122109da96da2` | ⚠️ Unaudited |
| StakingV2FeeRecipient | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x239fe53f10fe77e9c6ed896e3ae4ab8e43eed082` | ⚠️ Unaudited |
| StandardArbERC20 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | `0x040d1edc9569d4bab2d15287dc5a4f10f56a56b8` | ⚠️ Unaudited |
| StashController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2f18e001b44dcc1a1968553a2f32ab8d45b12195` | ⚠️ Unaudited |
| StashFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x73f88bfc32f5946b0e0851ca53f277fe177bd87c` | ⚠️ Unaudited |
| StashFactoryV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x54da426efbb93fbab5cf81bef03f9b9f00a3e915` | ⚠️ Unaudited |
| StashTokenWrapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc19cf0eaa43ee080c3cb8fb7db388091d3a13eb7` | ⚠️ Unaudited |
| stETHGateway | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4c5c52d507066780500e627d592dbe11476e7c21` | ⚠️ Unaudited |
| Strategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbdf157c3bad2164ce6f9dc607fd115374010c5dc` | ⚠️ Unaudited |
| StrategyAngleStakeDao | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9eef1244ae7aeedeaa3df2a91b63eaabc4fce257` | ⚠️ Unaudited |
| StrategyAprOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x25e4b65445bf52a10d53ff5898b827e2068ead66` | ⚠️ Unaudited |
| StrategyBunchyDev | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7d3b52a6ae25545f825bc230f7011fc97e821911` | ⚠️ Unaudited |
| StrategyControllerV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2be5d998c95de70d9a38b3d78e49751f10f9e88b` | ⚠️ Unaudited |
| StrategyCreamYFI | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x40bd98e3cce4f34c087a73dd3d05558733549afb` | ⚠️ Unaudited |
| StrategyDForceDAI | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd643cf07344428770b84973e049a1c18b5d47ede` | ⚠️ Unaudited |
| StrategyDForceUSDC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x01b354a9fb34760455ee9cbe7d71d2ce5c11ab5c` | ⚠️ Unaudited |
| StrategyDForceUSDT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x787c771035bde631391ced5c083db424a4a64bd8` | ⚠️ Unaudited |
| StrategyMKRVaultDAIDelegate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x28e5a47820313da9c74b8f2295795da6e6e083a5` | ⚠️ Unaudited |
| StrategyMStableSavings | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x31641a4836c172640fa1c02999b09c5d1069156f` | ⚠️ Unaudited |
| StrategyMStableSavingsTUSD | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x442510ba285d5390cb5385a91a380d4268e0b81c` | ⚠️ Unaudited |
| StrategyProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x16c20cfeda6e9ebfb9e557e76a2dfbe85c597c7a` | ⚠️ Unaudited |
| StrategySNXSUSD | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2288c409e67b6ce52180f97a8cddf7abc24ec989` | ⚠️ Unaudited |
| StrategyVaultTUSD | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x35cee4c61b7619956e0b2015b5411f93cbba817a` | ⚠️ Unaudited |
| StrategyVaultUSDC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x25faca21dd2ad7edb3a027d543e617496820d8d6` | ⚠️ Unaudited |
| StrategyWrapperLeverageRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x07fa4cca2a020fa9477ef7db5848bd976b64eebc` | ⚠️ Unaudited |
| StrategyYffi | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbe197e668d13746bb92e675dea2868ff14da0b73` | ⚠️ Unaudited |
| StrategyYFIGovernance | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x395f93350d5102b6139abfc84a7d6ee70488797c` | ⚠️ Unaudited |
| StrategyYfii | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2de055fec2b826ed4a7478ceddbeff82c1edfa70` | ⚠️ Unaudited |
| SuperchainConfig | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x61ca43cb037ac9181d8fa5cd0073dc314065ccc4` | ⚠️ Unaudited |
| SupplyFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf2eb916605402e5c7e81f7d609d0e2204841978f` | ⚠️ Unaudited |
| SupplyLogic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x5e35d90db7118c2ae96a8de458401986879bb0ef` | ⚠️ Unaudited |
| SusdeMonetaryPolicy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf574cbebbd549273af82b42cd0230de9ea6efef7` | ⚠️ Unaudited |
| Swap Burner | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x004a476b5b76738e34c86c7144554b9d34402f13` | ⚠️ Unaudited |
| SwapHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4d6c977a6998544f667b0aeec8c93822504e1981` | ⚠️ Unaudited |
| Swapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2c73f6a362ef32b30585326ba57b5432c0d4695d` | ⚠️ Unaudited |
| SwapperV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4e6ae791cc33120d72392f2449dbb91dec6bf694` | ⚠️ Unaudited |
| SwapperV4 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0e1b2d617834994a74c14f255b56ef0b1100f853` | ⚠️ Unaudited |
| SWAuraVaultRewardsProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4302023584ff53808e039130d45711c3a5437009` | ⚠️ Unaudited |
| SWStkGHORewardsProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7e32f4c44e22ab20df287f8a15eb6c0f54da6e30` | ⚠️ Unaudited |
| SYASDCRVAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x42a16876c2db53a04af2017b6fb77e70672ff015` | ⚠️ Unaudited |
| SYASDPENDLEAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5680829a4ae3752902d786a368f93cfe35dfb062` | ⚠️ Unaudited |
| Synthetic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0485a423c0b8ff2f5aa2ec35a32d1c67a2e99b6c` | ⚠️ Unaudited |
| SyntheticRebaseDollar | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaa90d9cc2f41a150489da5fffba2060a2938ffdc` | ⚠️ Unaudited |
| SynthetixAMM | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5ed4a410a612f2fe625a8f3cb4d70f197ff8c8be` | ⚠️ Unaudited |
| SynthetixExchange | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0691cf9d171d6c9c3876598b14732248b204c2cf` | ⚠️ Unaudited |
| SynthToken Burner | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x070a5c8a99002f50c18b52b90e938bc477611b16` | ⚠️ Unaudited |
| SYRedeemAndSwap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb5005751f2ac076a5a612a8be8f3b953dd86823f` | ⚠️ Unaudited |
| SyrupBar | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x009cf7bc57584b7998236eff51b98a168dcea9b0` | ⚠️ Unaudited |
| SystemConfig | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x22052c592f763ca14a090d9974c5bf9fd3a44b8c` | ⚠️ Unaudited |
| TaikoBridger | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd4693b424b4bec067b086f48400b39ffa9bf7fef` | ⚠️ Unaudited |
| TaikoBroadcaster | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x05a3a7b57cb60419ff0b087e9eae8469c28ac8cd` | ⚠️ Unaudited |
| TendiesFarm | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x101dd6f1f5e396f6ab87407df637cce814e24a9f` | ⚠️ Unaudited |
| TestEIP1153 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa17d034ed28327a3c825647cee043f0b0df80d3b` | ⚠️ Unaudited |
| TestnetERC20 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x3fc90e521397b251d4aaa1fbeac7cc32f25e78fa` | ⚠️ Unaudited |
| TimeLoanPairFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2df93404574dff883e2b35911a684dab1760da0d` | ⚠️ Unaudited |
| Timelock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1994b59e02cd0d09d839b03660c205e88a929b81` | ⚠️ Unaudited |
| TimelockAuthorizerMigrator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x657dee983987e1a79a996d972fe68411aef05e8d` | ⚠️ Unaudited |
| TimelockAuthorizerTransitionMigrator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x76578ecf9a141296ec657847fb45b0585bcda3a6` | ⚠️ Unaudited |
| TimelockGovernance | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x026d4b8d693f6c446782c2c61ee357ec561dfb61` | ⚠️ Unaudited |
| TkMrsR | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcf0a32bbef8f064969f21f7e02328fb577382018` | ⚠️ Unaudited |
| TokemakAMO | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4e710b33c87cedf832cd82e11d743a011864f733` | ⚠️ Unaudited |
| Token | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x09f8d940ead55853c51045bcbfe67341b686c071` | ⚠️ Unaudited |
| TokenFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3c995e43e6ddd551e226f4c5544c77bfed147ab9` | ⚠️ Unaudited |
| TokenizedStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x206cefd7820d907f9d2c1332349001f7294bf802` | ⚠️ Unaudited |
| TokenSale | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x07867298d99b95772008583bd603cfa68b8c75e7` | ⚠️ Unaudited |
| TokenSender | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x223bb2252c2b1855c337b2a0d6d066c76d2a5d0b` | ⚠️ Unaudited |
| TokenTrackerAMO | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1e077b2a6a67f543629c8fccc97229452211a612` | ⚠️ Unaudited |
| TokenTrackerV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x37336ad1f3a145c710247e6a14c9acc7f34d09ee` | ⚠️ Unaudited |
| TokenVesting | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf840f3ee161756cec04a64d25eb497c557950935` | ⚠️ Unaudited |
| TokenVotingFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x076e298405b75a02c222d3860d703e4c92fb9e20` | ⚠️ Unaudited |
| TokenZapLogic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x21cea3a3cd10ae1feb0759750970b7e86d33cac5` | ⚠️ Unaudited |
| TradingFeeRebate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xfd30b4fec42cf0ea9beaeef0097a1071ca71ffcc` | ⚠️ Unaudited |
| TransferStrategySimple | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x5196bedd7b70027dd6ebe2eee72a751175e942b0` | ⚠️ Unaudited |
| TransferStrategyZERO | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x3a52bc36ebfaee3a098273db09c4db6b865c4735` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x06c03069de266f58d10a0724a4f65c3d4fefff4d` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x06f66bc79aed1b49a393bf5fcf68a70499a2b5dc` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x0e5caa5c889bdf053c9a76395f62267e653afbb0` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x1104b4df568fa7af90b1bed1d78a2f71e748dc8a` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x1c0d72a330f2768daf718def8a19bab019eead09` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x1c77c5b76f02ed1538d5af95a3b1f88e55178d2f` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x22cdf5fd02b76339126f79cc601a1be6fe9c2701` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x248f43b622ce2f35a14db3fc528284730b619cd5` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x259338656198ec7a76c729514d3cb45dfbf768a1` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x2b95a1dcc3d405535f9ed33c219ab38e8d7e0884` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x2c869c812bf8519e4a8dc42dcd8793ec09f776c1` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x375278d3c65f29c1a90e8550888f1439cfefe465` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x3cf54f3a1969be9916dad548f3c084331c4450b5` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x3e6eba46abc5ab18ed95f6667d8b2fd4020e4637` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x43e54c2e7b3e294de3a155785f52ab49d87b9922` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x49ee75278820f409ecd67063d8d717b38d66bd71` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x4b2c6f67bc775fd64de3cec188f0f3e960ce0750` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x4e91f1eb389242b0f718859158c1d912055afb32` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x5699d20732a2efa9a895ef04bb210aa751c4db96` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x6037bb1bba598bf88d816cad90a28cc00fe3ff64` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x606462126e4bd5c4d153fe09967e4c46c9c7fecf` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x6d247b1c044fa1e22e6b04fa9f71baf99eb29a9f` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x7185e3477ad54a8186e623768833e8c2686591d3` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x72170cdc48c33a6ae6b3e83cd387ca3fb9105da2` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x96c68d861ada016ed98c30c810879f9df7c64154` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0xae08c57475cb850751ad161917ea941e2552cdf8` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0xc80c48862e4254f37047235298edb6aa35717c24` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0xc8ff37f7d057df1bb9ad681b53fa4726f268e0e8` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0xd6e3bb7b1d6fa75a71d48cfb10096d59abbf99e1` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0x09f317b127bcc9d16f5dd17cadbeda9d034c0f8c` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0x0f47aee96fae2558b0081c8d2dffbb8512397e23` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0x27faf900007b4cba7803000251ec96bc69ff1bea` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0x414d3c8a26157085f286abe3bc6e1bb010733602` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x563f1e87a6a3cb4a84f7d438fcf4882133e59d6d` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0x5719acdb9abbbc6ba414c9dbff5b2967342f465d` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0x58b4441b97c577b66e46aa155e04dc4652fd0d34` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0x7eec75fe8d9ac678f9b4e0ecf2af7b445e0c5b4c` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0xe954c3b53b2cd8b9056737193780f0a541815bb2` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0xf2810f8ec028576354c4388d8b347ac1921c63a2` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | base | n/a | `0x03e2ec137c6ab82978d52edb7b504ad2deb13f96` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | base | n/a | `0x174a1f4135fab6e7b6dbe207ff557dff14799d33` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | base | n/a | `0x7f5efa1bb887a5080ceacd6f3e2c0fc16bd90c90` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | base | n/a | `0x7f7760dd8868aedc03128fa3709a04f0b96eecfd` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | base | n/a | `0x9e10848206ae6e74af868490554e2fac3e2cbf60` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | linea | n/a | `0x02eb736f88125c05c863da6cf061a5d4cfc0507b` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | linea | n/a | `0x0374ae8e866723adae4a62dce376129f292369b4` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | linea | n/a | `0x085a03f96bc203c54a3a711c838ad49fff451cf2` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | linea | n/a | `0x0d22219806af9db237cb73202398a67f27e2d24d` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | linea | n/a | `0x2666951a62d82860e8e1385581e2fb7669097647` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | linea | n/a | `0x55553e2381f6ff121dc9252dab662f3d2bbeaf03` | ⚠️ Unaudited |
| TreasuryFunds | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1389388d01708118b497f59521f6943be2541bb7` | ⚠️ Unaudited |
| TreasuryLend | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x04dd97255ddee29c941d85f5b5cde6ace8bd207f` | ⚠️ Unaudited |
| TreasuryManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x858847c21b075e45727fcb0b544bd843cd750361` | ⚠️ Unaudited |
| TreasuryManagerFrax | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9d464b601f74c8d3d42379921106b907f1055f80` | ⚠️ Unaudited |
| TreasuryRecipient | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4bf4d96dfa56744a42148711ac120a21e7ddac60` | ⚠️ Unaudited |
| TreasuryRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcab2bb34eeaa177bd8d36e46114b45528aac4507` | ⚠️ Unaudited |
| TreasurySwap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x00711e5c8fcd631ba9c6165d99e641face75d21d` | ⚠️ Unaudited |
| TreasuryVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x22d0b68a88bcff9a0d9f08fff03dd969eed094ca` | ⚠️ Unaudited |
| TreasuryZap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0665ef3556520b21368754fb644ed3ebf1993ad4` | ⚠️ Unaudited |
| TribeBALMinterCoordinator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x34ac9f7eba9213c827fe5abf5b09a16f4d0cc69b` | ⚠️ Unaudited |
| Tricrypto Factory LP Burner | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa6a0103f8f185786143f3efe3ddf268d8e070813` | ⚠️ Unaudited |
| TroveManagerGetters | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4404ff820dad76afc4f931079eb13fd418c9ae7a` | ⚠️ Unaudited |
| TWAMM_AMO | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x11fc7df1fb0e51f9c9ab8f575d9bbadc92fa425b` | ⚠️ Unaudited |
| TwapOracleFactorySNG | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x45f29aa9e671fa2a3f9568177694041c74f69fc9` | ⚠️ Unaudited |
| UiIncentiveDataProviderV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x94e637530ce5f80814e3b57422cc26ff4c3ab649` | ⚠️ Unaudited |
| UiPoolDataProviderV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x19dd9e60198d1a1b2f531005592222ed8dfdd826` | ⚠️ Unaudited |
| UnbalancedAddViaSwapRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x7fa49df302a98223d98d115fc4fcd275576f6faa` | ⚠️ Unaudited |
| UniformBoostProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7c3867e04d5a69b750332300643b36135313c5b7` | ⚠️ Unaudited |
| UniOracleFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x61da8b0808cea5281a912cd85421a6d12261d136` | ⚠️ Unaudited |
| UniV2TWAMMFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x54f454d747e037da288db568d4121117eab34e79` | ⚠️ Unaudited |
| UniV2TWAMMRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa007a9716dba05289df85a90d0fd9d39bee808de` | ⚠️ Unaudited |
| UniV3LiquidityAMO | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3814307b86b54b1d8e7b2ac34662de9125f8f4e6` | ⚠️ Unaudited |
| UniV3LiquidityAMO_V2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0e894387c073c6f62c9bbded21e33d3062847440` | ⚠️ Unaudited |
| UniV3TWAPOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x59985d79e1e69f659f4ab97db07a35ce73d9174b` | ⚠️ Unaudited |
| UniversalBoostRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x647405fb7bbc2d9a3e5df70df3a1d65fcd6bdd3b` | ⚠️ Unaudited |
| UniversalRewardsDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x000000006feee0b7a0564cd5ceb283e10347c4db` | ⚠️ Unaudited |
| UpdateZeroNFTScript | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x12205d78b28b7a3f350dbc703fc610db13d1b615` | ⚠️ Unaudited |
| UpgradeableBeacon | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x176d64576aca651e15973e77c2eb7f5ad178a300` | ⚠️ Unaudited |
| UpgradeableBeacon | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x414a78b16fa373663d3b5161a18f709ee6750e08` | ⚠️ Unaudited |
| UpgradeableBeacon | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | base | n/a | `0x050d38fee5209fa603bb54c97149c7f02fd1aa1d` | ⚠️ Unaudited |
| UpgradeableBeacon | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | base | n/a | `0x17601778002dab23c1c5233d1d4ccfb852da33bd` | ⚠️ Unaudited |
| UpgradeableBeacon | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | base | n/a | `0x214c042a5b407c48e21e39fe2c2f921d5a52e112` | ⚠️ Unaudited |
| UpgradeableBeacon | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | base | n/a | `0x22cdf5fd02b76339126f79cc601a1be6fe9c2701` | ⚠️ Unaudited |
| UpgradeableBeacon | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | base | n/a | `0x308c7ff9017bef0663b62899566829dc2fe0363a` | ⚠️ Unaudited |
| UpgradeableBeacon | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | base | n/a | `0x3945ce79f528906c232c6834d00c8f6a218b8bf5` | ⚠️ Unaudited |
| UpgradeableBeacon | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | base | n/a | `0x5828c58ea40876cba8bfc52be2611d482ee9ee8d` | ⚠️ Unaudited |
| UpgradeableBeacon | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | base | n/a | `0x68b42e99fa8ebc9d919e508c560fa31453e026ca` | ⚠️ Unaudited |
| UpgradeableBeacon | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | base | n/a | `0xaee874c7cf528b6e2a5409e995a33fcfc581d01d` | ⚠️ Unaudited |
| UpgradeProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8d8f5a44d92d3cff40806548d204ffe90e58faa6` | ⚠️ Unaudited |
| USD0LpOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2aeb5c8776567c4eeebda1450e343b1bef49ae32` | ⚠️ Unaudited |
| Utilities | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf37c41ef2281893b5971769370d6cdd35864b503` | ⚠️ Unaudited |
| V2WrapperFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9cf8b3fc842529ab64b3f59218e7a9afbf8ffe6d` | ⚠️ Unaudited |
| VariableDebtToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x0a8058203387c15a711204908ed9efed9f76e6a8` | ⚠️ Unaudited |
| Vault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x3c0a405e914337139992625d5100ea141a9c4d11` | ⚠️ Unaudited |
| VaultEarnedView | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x382cd669d473a35202c9c3c74168518e0ab3d925` | ⚠️ Unaudited |
| VaultExplorer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x22625eedd92c81a219a83e1dc48f88d54786b017` | ⚠️ Unaudited |
| VaultMessengerLZ | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x15945526b5c32d963391343e9bc080838fe3e6d9` | ⚠️ Unaudited |
| VaultRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x78f73705105a63e06b932611643e0b210fae93e9` | ⚠️ Unaudited |
| VaultSwapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf12eeab1c759dd7d8c012cca6d8715eed80e51b6` | ⚠️ Unaudited |
| VaultV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa4c78b49c9ec659df1f5b620f2dc8b80a0dc4f7a` | ⚠️ Unaudited |
| VaultV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x62663257c7958e411b98941f93925297940e27de` | ⚠️ Unaudited |
| VBMRecipient | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd69f52a4390eff6d4dd70c1d5b52055cedd25ade` | ⚠️ Unaudited |
| VBMUpdater | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4e5eeab31bad220979ffc651023ff3010ac213e1` | ⚠️ Unaudited |
| VCake | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5e8742800626fd0a0c40a114695c2be4598f1245` | ⚠️ Unaudited |
| VeArtProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x0fc8e6428909685845aded7475253d4a02c00a97` | ⚠️ Unaudited |
| veBALDeploymentCoordinator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xeb151668006cd04dadd098afd0a82e78f77076c3` | ⚠️ Unaudited |
| veBALGaugeFixCoordinator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xee47ef369cda5a65639d7794b70a4d247826ddf3` | ⚠️ Unaudited |
| veBALL2GaugeSetupCoordinator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd13afc362f619b840c8f4aac1d957ce219ef37ca` | ⚠️ Unaudited |
| VeBoostDelegation | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xce00ad8df94d8c365dc415b84963aa37a06be923` | ⚠️ Unaudited |
| VeBoostDelegationMultiRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xda9846665bdb44b0d0caffd0d1d4a539932bebdf` | ⚠️ Unaudited |
| VECake | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5692db8177a81a6c6afc8084c2976c9933ec1bab` | ⚠️ Unaudited |
| VECakeOwner | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe6cdc66a96458fbf11f632b50964153fbda78548` | ⚠️ Unaudited |
| VECakeSyncer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9d8a1061eccf444ff2dfc3c434d16ab97dc22798` | ⚠️ Unaudited |
| VecrvVerifier | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x38334e319d257d8f580f66393d25a6cd647a6abc` | ⚠️ Unaudited |
| veCurveVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x478bbc744811ee8310b461514bdc29d03739084d` | ⚠️ Unaudited |
| VeFeeGateway | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8fc7906fc6047679dad53c0c3b40e135486421e9` | ⚠️ Unaudited |
| veFPISYieldDistributorV4 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5814cbfb4f67cb384de981849d773a9da179fec9` | ⚠️ Unaudited |
| veFPISYieldDistributorV5 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe6d31c144ba99af564be7e81261f7bd951b802f6` | ⚠️ Unaudited |
| veFXSYieldDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x19a0a70a68fbc604bf20a03b787df8f7ac1d50f0` | ⚠️ Unaudited |
| veFXSYieldDistributorV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x62c4cf364078c98fa08afdb4d3d8d87e780ebd45` | ⚠️ Unaudited |
| veFXSYieldDistributorV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2aaa9ae7101e0a59c52916d8db9acda311b1c296` | ⚠️ Unaudited |
| veFXSYieldDistributorV4 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc6764e58b36e26b08fd1d2aed4538c02171fa872` | ⚠️ Unaudited |
| Verifier | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xc727cb1d104e7ad2a81d001a5f75e9558cc8d2d9` | ⚠️ Unaudited |
| VerifierV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x5c07805959e2371e5492ac4928ec23a9178700ad` | ⚠️ Unaudited |
| VerifierYB | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xd7b1ea25012ee5d93975b957fad4bbd7391824ca` | ⚠️ Unaudited |
| VeSDTFeeAngleProxyV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x059f78859a152e42dd590a49be44f2ebe9fcd1ac` | ⚠️ Unaudited |
| VeSDTRecipient | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1fe537bd59a221854a53a5b7a81585b572787fce` | ⚠️ Unaudited |
| VestedEscrow | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe98984ad858075813ada4261af47e68a64e28fcc` | ⚠️ Unaudited |
| VestedZeroNFT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x02a258c1aa2091d747f085357ee96a7386cd552b` | ⚠️ Unaudited |
| Vester | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x21aef9afc97301c9db61e45179dff1115ca16e60` | ⚠️ Unaudited |
| Vesting | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x28f5763b7779ed64b9e0da0a9862571ba4a7309b` | ⚠️ Unaudited |
| Vesting Escrow | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0cf5bf5e7ba48796d6ec641a75f55bd1d6db23ef` | ⚠️ Unaudited |
| VestingVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4f59818105abe05ae793a8caedb39fc2bea7f03c` | ⚠️ Unaudited |
| VestUiHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x917942d1e1e2ed144fe4c9fbe754800ad9a9f95b` | ⚠️ Unaudited |
| VestUiHelperV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x05ca37df1b23a58777f19d44f8242a32126e7997` | ⚠️ Unaudited |
| VirtualPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x125ca420ea1556a65bb926fa7bd5d72fc22af268` | ⚠️ Unaudited |
| vlCvxExtraRewardDistribution | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8ed4bbf39e3080b35da84a13a0d1a2fdce1e0602` | ⚠️ Unaudited |
| vlCVXRecipient | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xae86a3993d13c8d77ab77dbb8ccdb9b7bc18cd09` | ⚠️ Unaudited |
| vlSDT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x75d96b89e10a4a9a8341a1a180b19c9bf9e88ef1` | ⚠️ Unaudited |
| VoteBountyManagerFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x75289388d50364c3013583d97bd70ced0e183e32` | ⚠️ Unaudited |
| VoteBountyManagerFactoryCommon | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3deb1b1648edcd35088da8f4a428f7c900297886` | ⚠️ Unaudited |
| VoteDelegateExtension | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5349ffba494ac3c888ffa16fd438f44b8c67fb07` | ⚠️ Unaudited |
| Votemarket | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x105694fc5204787ed571842671d1262a54a8135b` | ⚠️ Unaudited |
| VotePowerV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x02c32d82ccab2c3b5b316d38cc76d00c3ccf92b0` | ⚠️ Unaudited |
| VoteProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x64acb0882c8b174c84dbd492ed307ef0ed4e732f` | ⚠️ Unaudited |
| VoterProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x07202292009dec5ea9b99c7005dc8e3ce05bfb73` | ⚠️ Unaudited |
| VoterProxyLite | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xc181edc719480bd089b94647c2dc504e2700a2b0` | ⚠️ Unaudited |
| VoterProxyOwner | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2b83552729067d1c32a2a31024776bd83c48816e` | ⚠️ Unaudited |
| VotersRewardsRecipient | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe42a462dbf54f281f95776e663d8c942dcf94f17` | ⚠️ Unaudited |
| VoteWeightRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x619edef2d18ec9758e96d8ff2c7dcbfb58dd5a5c` | ⚠️ Unaudited |
| Voting | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x82e631fe565e06ea51a00fabcd79645272f654eb` | ⚠️ Unaudited |
| Voting Escrow | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x13daffdf8863c47290363b0109b681e3f37470a0` | ⚠️ Unaudited |
| Voting Escrow v2.0.0 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x09943c4f27f2ada5bb58b845d27405a4b3a894a8` | ⚠️ Unaudited |
| VotingBalance | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4c4d57f69f3081694e721dcd1a42536062857ce9` | ⚠️ Unaudited |
| VotingBalanceMax | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x59ccbaabbfcac52e007a706242c5b81a48179bf2` | ⚠️ Unaudited |
| VotingBalanceV2Gauges | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1cc2cfed7e40bab890ca532ad0dbb413e072b988` | ⚠️ Unaudited |
| VotingEligibility | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbce1cbf6816d158e5f5d9713bcca805e37bbfb0f` | ⚠️ Unaudited |
| VotingEscrow | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0c93675719ad43648a1ab5f735dcaaa08e130be4` | ⚠️ Unaudited |
| VotingEscrowDelegationProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6f5a2ee11e7a772aeb5114a20d0d7c0ff61eb8a0` | ⚠️ Unaudited |
| VotingEscrowPendleMainchain | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4f30a9d41b80ecc5b94306ab4364951ae3170210` | ⚠️ Unaudited |
| VotingEscrowPendleSidechain | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x051dcd6a80f11fe68f77fb0ebde03853fa96b1fd` | ⚠️ Unaudited |
| VotingEscrowRemapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6b5da774890db7b7b96c6f44e6a4b0f657399e2e` | ⚠️ Unaudited |
| VotingPowerCondition | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2321a7facf817cfea12cd444d6d3cfa7ba0591b7` | ⚠️ Unaudited |
| VotingResultBroadcaster | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd8daa686de90bf52225628e238b7b392fa1c4744` | ⚠️ Unaudited |
| VotingRewardsFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x6cba8213deeafe86ffb38f295edd5625cae4dd05` | ⚠️ Unaudited |
| vsdCRVOFTAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x92b8d4d4db1555ba4e928ccdea02b52126921e95` | ⚠️ Unaudited |
| vsdToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7346aa8959fb138787bf9a579b4d86098a3834fc` | ⚠️ Unaudited |
| Vyper_contract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x004a476b5b76738e34c86c7144554b9d34402f13` | ⚠️ Unaudited |
| WalletBalanceProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x379714744cfdff811361c5a9ff421683c2a6d593` | ⚠️ Unaudited |
| WBTC-crvUSDleveragezap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa2518b71ee64e910741f5cf480b19e8e402de4d7` | ⚠️ Unaudited |
| weEthToUsdOracleProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x68c889e2243ad454f6c8bb6e3290b91f8f87adda` | ⚠️ Unaudited |
| WeightedLPOracleFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x05503b3ade04aca81c8d6f88ecb73ba156982d2b` | ⚠️ Unaudited |
| WeightedPool2Tokens | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5c6ee304399dbdb9c8ef030ab642b10820db8f56` | ⚠️ Unaudited |
| WeightedPoolFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x201efd508c8dfe9de1a13c2452863a78cb2a86cc` | ⚠️ Unaudited |
| WETH9Mock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xadc1eb4e8c72f03339638a7b43b2097fc1afb6c8` | ⚠️ Unaudited |
| Wrapped ETH Burner | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5191946500e75f0a74476f146df7d386e52961d9` | ⚠️ Unaudited |
| Wrapped stETH Burner | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x072c93f12dc274300c79e92eb61a0fecfa8e8918` | ⚠️ Unaudited |
| WrappedTokenGatewayV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x01d3bb31f1948ba32ee9c725435291e425c3e5ff` | ⚠️ Unaudited |
| WrappedYFI | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x017e71e96f2ae777c679740d2d8dc15ed4231981` | ⚠️ Unaudited |
| Wrapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9d03bb2092270648d7480049d0e58d2fcf0e5123` | ⚠️ Unaudited |
| WrapperFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6a5a26e5b91cc9eb1d84da16a8360bc1df8212bc` | ⚠️ Unaudited |
| wstETH-crvUSDleveragezap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x293436d4e4a15fbc6ccc400c14a01735e5fc74fd` | ⚠️ Unaudited |
| WstETHRateProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x72d07d7dca67b8a406ad1ec34ce969c90bfee768` | ⚠️ Unaudited |
| wstETHWrapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb09e34dd25d5e88a1e9ff6f6418109927675b658` | ⚠️ Unaudited |
| XChainLiquidityGaugeTransmitter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6172a9d638059130c39b33250138648006fc2762` | ⚠️ Unaudited |
| xTokenWrapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x829c3d9b01eb54a6acfffb06183b1fd489da5e44` | ⚠️ Unaudited |
| xVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0205ae93e18aa23d31e3df53899547b986e419c5` | ⚠️ Unaudited |
| XYZ Broadcaster | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7ba33456ec00812c6b6bb6c1c3dff579c34cc2cc` | ⚠️ Unaudited |
| XYZ Relayer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xe5de15a9c9bbedb4f5ec13b131e61245f2983a69` | ⚠️ Unaudited |
| yAffiliateFactoryV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x44ff2af361e4b6a2892523d513df5245fc53b367` | ⚠️ Unaudited |
| YbGovVoter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x82499d0f7b0a648e8a99c8ab395c2cd3a9b7b8fd` | ⚠️ Unaudited |
| YBSFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3ea13660e4b4319a1418c5a5e9fe98263e65ac4f` | ⚠️ Unaudited |
| YBSRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x262be1d31d0754399d8d5dc63b99c22146e9f738` | ⚠️ Unaudited |
| YBSRewardFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdbbf7d6d71397b33675ad16c31bd3505c6af0bd5` | ⚠️ Unaudited |
| YBSUtilities | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x499099832153c7d3cd88f9b8b5d6ca59fac505c3` | ⚠️ Unaudited |
| YBSUtilsFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x210e690ed371d69c7ea42ba716d8ab782041c6f0` | ⚠️ Unaudited |
| YBToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x01791f726b4103694969820be083196cc7c045ff` | ⚠️ Unaudited |
| yBUSD | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x04bc0ab673d88ae9dbc9da2380cb6b79c4bca9ae` | ⚠️ Unaudited |
| YbVoter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbe73256a4f337633eb825344af36efe3982297cd` | ⚠️ Unaudited |
| yCollateralVaultProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x24dd028bd027511482e701d08bae002cd6e82a5d` | ⚠️ Unaudited |
| yCRV | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x170411a2d872945ee8c59e4ef5c3402ebe2a221c` | ⚠️ Unaudited |
| YCRV Zap v4 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4ec30e8f98dcf08b29b02f46082ed05f88b23839` | ⚠️ Unaudited |
| YCRVSplitter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x05fc8174050f0a41deb7e562187911d45cd5e401` | ⚠️ Unaudited |
| ycUSDC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0597eaf957d896a5751aa35324bf24e1d9bc0f2c` | ⚠️ Unaudited |
| ycUSDT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x631d66f79191c86d7b7a7c0e2afae3ae943931a4` | ⚠️ Unaudited |
| yDAI | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x16de59092dae5ccf4a1e6439d611fd0653f0bd01` | ⚠️ Unaudited |
| yDAIv2Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x56ab71990783442f68fb25e0b466196c7ca6bd33` | ⚠️ Unaudited |
| yDelegate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x61025859c349dfbe6ef0dfca202ef3e84ca05f83` | ⚠️ Unaudited |
| yDelegatedVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2088ba482f2097eb47896a2ec5f3925637b73d99` | ⚠️ Unaudited |
| YearnLiquidationKeep3r | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x41303e87db5be5b1c7a341440d04ec6a11343eeb` | ⚠️ Unaudited |
| YearnLocker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf750162fd81f9a436d74d737ef6ee8fc08e98220` | ⚠️ Unaudited |
| YearnStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1be150a35bb8233d092747ebfdc75fb357c35168` | ⚠️ Unaudited |
| YearnVaultFactoryOwnable | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1efb2c804166be34a6956159646cae9d0063b7ff` | ⚠️ Unaudited |
| YFI | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0bc529c00c6401aef6d220be8c6ea1667f6ad93e` | ⚠️ Unaudited |
| YFIAccumulatorV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x92cff1bc1af2a3cb03d969f3b4a1f63d782e3356` | ⚠️ Unaudited |
| YFIAccumulatorV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc7793bc89724925615d7e4080bd6b893d50d5fde` | ⚠️ Unaudited |
| YFIDepositor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe56d9776fbb287a2f8ba3f11375f51a24d7e25db` | ⚠️ Unaudited |
| YFIDepositorHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9d967cf3043287ebae052a0a7cb6330f496f4510` | ⚠️ Unaudited |
| YFIDepositorV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf908c0281f4bafbca67e490edae816b8472608c8` | ⚠️ Unaudited |
| YieldBasisDepositor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfb9aa699f1badb31a7c4b40f7fa1f49469595785` | ⚠️ Unaudited |
| YieldBasisFallbackHandler | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x325229508513d484a90f3618e6aca8a9fb808ea9` | ⚠️ Unaudited |
| YieldnestAutocompoundedVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3610a0f4a36513d27128e110db999d6e1e6105d5` | ⚠️ Unaudited |
| YieldnestDepositor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8f0e636a19c1677fdf37da0e3af602f96da3352e` | ⚠️ Unaudited |
| YieldnestOFT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3610a0f4a36513d27128e110db999d6e1e6105d5` | ⚠️ Unaudited |
| YieldnestOFTAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xe0ffc03bb4086051090646a05ae4af43843a5b51` | ⚠️ Unaudited |
| yInsure | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x181aea6936b407514ebfc0754a37704eb8d98f91` | ⚠️ Unaudited |
| yInsureView | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6d2738fa41e83c5b5633f466f9aa11dae098340b` | ⚠️ Unaudited |
| YlockerDrops | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0a8bda95dd5404de1c56859d6b8b5d7ae7a0215c` | ⚠️ Unaudited |
| YND | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x7159cc276d7d17ab4b3beb19959e1f39368a45ba` | ⚠️ Unaudited |
| YPrismaFeeDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5aa86e9558f7701a90f343d90e0bc55aeb0046df` | ⚠️ Unaudited |
| YPrismaForwarderCallbackMinterV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5e0c38f5d10ac99d31d0b8badf8a7977da4d0bcd` | ⚠️ Unaudited |
| ySUSD | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x36324b8168f960a12a8fd01406c9c78143d41380` | ⚠️ Unaudited |
| YToken Burner | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xed7044a8dd66aec43cffb8d0be309594faea5f8a` | ⚠️ Unaudited |
| yTokenProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1d5ad987b743eb624662fe5c62b8f6015554203a` | ⚠️ Unaudited |
| yTokenRebalance | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x19b6424c58afcee6d0cb954d4b8d44b9b5e9cc09` | ⚠️ Unaudited |
| yTUSD | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x73a052500105205d34daf004eab301916da8190f` | ⚠️ Unaudited |
| yUSD | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x12c0681dca0deb095f2f192c3ab64bf320af3aff` | ⚠️ Unaudited |
| yUSDC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x26ea744e5b887e5205727f55dfbe8685e3b21951` | ⚠️ Unaudited |
| yUSDT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3118eec34240620ffd044dfa3aaa0a0f78b9aade` | ⚠️ Unaudited |
| yVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0fcda6f268d0c09cdfffe6bceac5233ac2367889` | ⚠️ Unaudited |
| yVaultCheck | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1bbe0f9af0cf852f9ff14637da2f0bc477a6d1ad` | ⚠️ Unaudited |
| yVaultFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x044deaa1e5a8593adcead599e8d66fb5d3f677b5` | ⚠️ Unaudited |
| YVEmpire | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xeb8d98f9e42a15b0eb35315f737bdfda1a8d2eaa` | ⚠️ Unaudited |
| yWBTC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x04aa51bbcb46541455ccf1b8bef2ebc5d3787ec9` | ⚠️ Unaudited |
| yWrappedVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x881b06da56bb5675c54e4ed311c21e54c5025298` | ⚠️ Unaudited |
| Zap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x018a56dc40ad9e0d973730f63d0dbc05c5e7986a` | ⚠️ Unaudited |
| ZapLockerLP | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xaec644fea891e35b17d4d5845105bc49f251146b` | ⚠️ Unaudited |
| ZeroCouponDiscountModel | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x000ba125995363abbdf086f075d5481aee859e61` | ⚠️ Unaudited |
| ZeroLend | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x78354f8dccb269a615a7e0a24f9b0718fdc3c7a7` | ⚠️ Unaudited |
| ZeroLendTest | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x3511257bdaee658918e832cacd0f9e11c3127590` | ⚠️ Unaudited |
| ZeroOFTAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x2d6f5b0c40f3e986a0da3074c1da8eeadd5b5693` | ⚠️ Unaudited |

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
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-393023 | `0x0c30476f66034e11782938df8e4384970b6c9e8a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-393025 | `0x94818a7baa7e9f5dc62ce4da1b52ef9a760b80b8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-393027 | `0xb0552b6860ce5c0202976db056b5e3cc4f9cc765` | ❓ Unverified |

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
| 2026_03_26_trust_security_vlsdt.pdf | vlBoost | own contract | vlBoost (selected) `0xab05ca46d1c78cabb051effe35099714cad2adda` — deployed 2026-04-15 17:00:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2026_03_26_trust_security_vlsdt.pdf | vlSDT | own contract | 0x94818a… (selected) `0x94818a7baa7e9f5dc62ce4da1b52ef9a760b80b8` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
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
| ethereum | `0x73968b9a57c6e53d41345fd57a6e6ae27d6cdb2f` | SDT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

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
