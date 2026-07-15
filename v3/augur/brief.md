# Agentic Audit Brief: Augur

## Export Authority

- Production state: **published scope**
- Raw selected rows: 22 across 4 audit(s)
- Eligible audit results: 7 (4 matched; 3 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Augur (`augur`)
- Website: [https://augur.net/](https://augur.net/)
- Lifecycle: active (Tier 0, 90.5% below peak)
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: ethereum
- Contract surface: 135 unique implementations (145 raw deployments)
- Coverage basis: 9/23 confirmed own live verified implementations (39.1%); conservative 39.1% with 0 needs-review implementation(s)
- DeFi Llama TVL: $1,260,713.35
- On-chain TVL (included contracts): $4,454,398.26
- TVL by chain: Ethereum $4,454,398.26

## Project Description

This brief describes the observed EVM deployment and audit surface for Augur. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 23 contract row(s) across ethereum. Structural roles: 18 core, 4 supporting, 1 unclassified. 8 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 23
- Structural roles: core (18), supporting (4), unclassified (1)
- Contract kinds: contract (23)
- Detected standards: erc20 (2), erc1155 (1), erc20permit (1)
- Frameworks: openzeppelin (12), openzeppelin-upgradeable (8)
- Upgradeable-pattern rows: 8

## Fork Analysis

0 of 29 contracts are derived from known codebases. 29 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x1dd864...a20e18`, chain 1)
- UnnamedContract (`0x3a1b0d...3bf32a`, chain 1)
- UnnamedContract (`0x5836be...a35d7d`, chain 1)
- UnnamedContract (`0x739615...b18887`, chain 1)
- UnnamedContract (`0xc2930a...f91c4e`, chain 1)
- UnnamedContract (`0xd2a04e...75b9cf`, chain 1)
- Affiliates (`0x3a4131...e635b3`, chain 1)
- AffiliateValidator (`0x2a2565...0be659`, chain 1)
- Augur (`0x23916a...722f5d`, chain 1)
- AugurTrading (`0x63a1ee...02881e`, chain 1)
- AugurWalletRegistry (`0x9fa160...8e5128`, chain 1)
- BuyParticipationTokens (`0x1aacc9...602483`, chain 1)
- CancelOrder (`0x465bf8...cfb0d0`, chain 1)
- CreateOrder (`0x8a97cb...138937`, chain 1)
- Exchange (`0x61935c...93b7ef`, chain 1)
- FillOrder (`0xc42e71...66ba35`, chain 1)
- Orders (`0x483156...bd7a8f`, chain 1)
- ProfitLoss (`0x2c1672...f26c01`, chain 1)
- RedeemStake (`0x9ac7b2...f58401`, chain 1)
- RelayHub (`0x5648b6...ee0db5`, chain 1)
- ReputationToken (`0x221657...f5c9bb`, chain 1)
- ShareToken (`0x9e4799...df85f0`, chain 1)
- Trade (`0x0cd32f...915667`, chain 1)
- UniswapV2Factory (`0x5c69be...c5aa6f`, chain 1)
- UniswapV2Pair (`0xa478c2...33eb11`, chain 1)
- UniswapV2Router02 (`0x7a250d...f2488d`, chain 1)
- Universe (`0x49244b...46e5aa`, chain 1)
- WarpSync (`0xe0c69a...c7fc4d`, chain 1)
- ZeroXTrade (`0x8346f3...780eed`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 23; live-surface rows included: 23 (23 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 29/29 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 9/23 (39.1%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 29 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 106 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 4
- Confirmed-live implementations: 29 of 135 unique; 106 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 9/80
- Verified + Unaudited implementations: 71
- Verified by bytecode match: 0
- Unverified implementations: 55
- Unique implementations: 135
- Raw deployments: 145
- Audits discovered: 7 (7 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 4
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2018-03 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 7 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 9 match-unverified
- Tier 1 coverage: 4.3% (ChainSecurity)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Zeppelin | Tier 2 | 9 | 11.3% | 2018-03 |
| LeastAuthority | Tier 2 | 3 | 3.8% | 2017-12 |
| ChainSecurity | Tier 1 | 1 | 1.3% | 2017-12 |

## Contract Surface

### ✅ Verified + Audited (9)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| ReputationToken | token | project_anchor | own_supporting | 0 | ethereum | unit-227345 | `0x221657...f5c9bb` | ✅ Audited |
| Augur | unknown | project_anchor | own_supporting | 0 | ethereum | unit-227346 | `0x23916a...722f5d` | ✅ Audited |
| CancelOrder | unknown | project_anchor | own_supporting | 0 | ethereum | unit-227351 | `0x465bf8...cfb0d0` | ✅ Audited |
| CreateOrder | unknown | project_anchor | own_supporting | 0 | ethereum | unit-227361 | `0x8a97cb...138937` | ✅ Audited |
| FillOrder | unknown | project_anchor | own_supporting | 0 | ethereum | unit-227367 | `0xc42e71...66ba35` | ✅ Audited |
| Orders | unknown | project_anchor | own_supporting | 0 | ethereum | unit-227352 | `0x483156...bd7a8f` | ✅ Audited |
| ShareToken | unknown | project_anchor | own_supporting | 0 | ethereum | unit-227363 | `0x9e4799...df85f0` | ✅ Audited |
| Trade | unknown | project_anchor | own_supporting | 0 | ethereum | unit-227342 | `0x0cd32f...915667` | ✅ Audited |
| Universe | unknown | project_anchor | own_supporting | 0 | ethereum | unit-227353 | `0x49244b...46e5aa` | ✅ Audited |

### ⚠️ Verified + Unaudited (71)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Affiliates | unknown | project_anchor | own_supporting | 0 | ethereum | unit-227350 | `0x3a4131...e635b3` | ⚠️ Unaudited |
| AffiliateValidator | unknown | project_anchor | own_supporting | 0 | ethereum | unit-227347 | `0x2a2565...0be659` | ⚠️ Unaudited |
| Augur | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x75228d...551599` | ⚠️ Unaudited |
| AugurTrading | unknown | project_anchor | own_supporting | 0 | ethereum | unit-227357 | `0x63a1ee...02881e` | ⚠️ Unaudited |
| AugurWalletRegistry | unknown | project_anchor | own_supporting | 0 | ethereum | unit-227364 | `0x9fa160...8e5128` | ⚠️ Unaudited |
| BuyParticipationTokens | unknown | project_anchor | own_supporting | 0 | ethereum | unit-227343 | `0x1aacc9...602483` | ⚠️ Unaudited |
| CancelOrder | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x344820...1e3aaf` | ⚠️ Unaudited |
| CaptureTheFlag | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2faf44...006396` | ⚠️ Unaudited |
| Cash | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x9b4af4...ee960e`; ethereum `0xd55241...76b96b` | ⚠️ Unaudited |
| ChaiBridge | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x77c31e...4d7438` | ⚠️ Unaudited |
| ClaimTradingProceeds | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x433447...07872a` | ⚠️ Unaudited |
| CompleteSets | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa6bff4...afe5ab` | ⚠️ Unaudited |
| Controlled | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6da4e6...66759c` | ⚠️ Unaudited |
| Controller | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb33371...0ff3e7` | ⚠️ Unaudited |
| Coordinator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9401f3...f6a201` | ⚠️ Unaudited |
| CreateOrder | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7f27b0...e97999` | ⚠️ Unaudited |
| Delegator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x10b558...e15806`; ethereum `0xd7a140...db74d2` | ⚠️ Unaudited |
| DevUtils | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0xdaed44...e87046`; ethereum `0xf15fba...f8fb1e` | ⚠️ Unaudited |
| DisputeCrowdsourcer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x183614...c8d360` | ⚠️ Unaudited |
| DisputeCrowdsourcerFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1be986...733bf7` | ⚠️ Unaudited |
| ERC20BridgeProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8ed95d...b20db0` | ⚠️ Unaudited |
| Eth2DaiBridge | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0ac2d6...38ad3f` | ⚠️ Unaudited |
| Exchange | unknown | project_anchor | own_supporting | 1 | ethereum | unit-227370 | `0x61935c...93b7ef` | ⚠️ Unaudited |
| Exchange | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb27f1d...1400c0` | ⚠️ Unaudited |
| FeeToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe0dfed...e6e2de` | ⚠️ Unaudited |
| FeeTokenFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe86a4b...e808a8` | ⚠️ Unaudited |
| FeeWindow | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x56cc82...061881` | ⚠️ Unaudited |
| FeeWindowFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5b4140...c5b663` | ⚠️ Unaudited |
| FillOrder | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x39c230...bd0303` | ⚠️ Unaudited |
| Forwarder | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x132a04...cefa9a`; ethereum `0x4699d5...f24f53`; ethereum `0x4ef40d...dbc5ce` | ⚠️ Unaudited |
| InitialReporter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4fa2b6...fcde6d` | ⚠️ Unaudited |
| InitialReporterFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbca52c...0f4c59` | ⚠️ Unaudited |
| Mailbox | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4dcb58...4b3b66` | ⚠️ Unaudited |
| MailboxFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe33ca1...763540` | ⚠️ Unaudited |
| Map | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x94c014...0763d9` | ⚠️ Unaudited |
| MapFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x67f53b...86777e` | ⚠️ Unaudited |
| Market | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x380070...d8ce01`; ethereum `0xb9fb1a...fc1dcb` | ⚠️ Unaudited |
| MarketFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x518530...7494ee` | ⚠️ Unaudited |
| OICash | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x12f513...4fa4fe` | ⚠️ Unaudited |
| Order | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x75d789...005f8f` | ⚠️ Unaudited |
| Orders | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd0ba86...83191a` | ⚠️ Unaudited |
| OrdersFetcher | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa97a3e...b2e692` | ⚠️ Unaudited |
| OrdersFinder | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x01f2ab...6ba3df` | ⚠️ Unaudited |
| Penalizer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x67c6e8...e768fa` | ⚠️ Unaudited |
| ProfitLoss | unknown | project_anchor | own_supporting | 0 | ethereum | unit-227348 | `0x2c1672...f26c01` | ⚠️ Unaudited |
| RedeemStake | unknown | project_anchor | own_supporting | 0 | ethereum | unit-227362 | `0x9ac7b2...f58401` | ⚠️ Unaudited |
| RelayHub | unknown | project_anchor | own_supporting | 0 | ethereum | unit-227354 | `0x5648b6...ee0db5` | ⚠️ Unaudited |
| Reporting | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x12702a...d6e6ae` | ⚠️ Unaudited |
| RepPriceOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x023e27...686aa6` | ⚠️ Unaudited |
| ReputationToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6c114b...7e43d1` | ⚠️ Unaudited |
| ReputationTokenFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8fee0d...9a3643` | ⚠️ Unaudited |
| ShareToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2a21d9...f14663` | ⚠️ Unaudited |
| ShareTokenFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x60a977...50e51d` | ⚠️ Unaudited |
| StakeManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5ae81a...3141ea` | ⚠️ Unaudited |
| Staking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x2a17c3...2503f3`; ethereum `0x69cb36...4660e7`; ethereum `0xce0382...6fc0aa` | ⚠️ Unaudited |
| Staking | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x5fc73b...15b8b1`; ethereum `0xe533d7...356beb` | ⚠️ Unaudited |
| Staking | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xa26e80...ffa777` | ⚠️ Unaudited |
| StakingProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9c427e...f7ce12` | ⚠️ Unaudited |
| TestPaymasterEverythingAccepted | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf50b17...7476c7` | ⚠️ Unaudited |
| Time | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe9f0e0...2fc527` | ⚠️ Unaudited |
| Trade | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x24e2b1...3ca6cd` | ⚠️ Unaudited |
| TradingEscapeHatch | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9e130e...9e0d13` | ⚠️ Unaudited |
| UniswapV2Factory | registry | project_anchor | own_supporting | 0 | ethereum | unit-227356 | `0x5c69be...c5aa6f` | ⚠️ Unaudited |
| UniswapV2Pair | unknown | project_anchor | own_supporting | 0 | ethereum | unit-227365 | `0xa478c2...33eb11` | ⚠️ Unaudited |
| UniswapV2Router02 | adapter | project_anchor | own_supporting | 0 | ethereum | unit-227359 | `0x7a250d...f2488d` | ⚠️ Unaudited |
| Universe | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfbcd5e...a400ff` | ⚠️ Unaudited |
| UniverseFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe62e47...01bb95` | ⚠️ Unaudited |
| WarpSync | unknown | project_anchor | own_supporting | 0 | ethereum | unit-227369 | `0xe0c69a...c7fc4d` | ⚠️ Unaudited |
| ZeroExGovernor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7d3455...271392` | ⚠️ Unaudited |
| ZeroXTrade | unknown | project_anchor | own_supporting | 0 | ethereum | unit-227360 | `0x8346f3...780eed` | ⚠️ Unaudited |
| ZrxVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0xba7f8b...7a5eaf`; ethereum `0xce2a4b...7fa85e` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (55)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x061ba3...29bc92` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x06eb3b...eaacb9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x08d170...b0b0b8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x16c0e7...0c14cb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1c36b0...0c3312` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-227344 | `0x1dd864...a20e18` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1e8229...c5fcaf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x205019...495d3e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x251803...974091` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2d78ac...cc3e05` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x38a795...12c722` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3900f5...a15f72` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x393a1f...043088` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-227349 | `0x3a1b0d...3bf32a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3ba1f0...e6471b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3fc457...1664ff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x47b336...3960c4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x533344...f5355f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x55dc8f...68e335` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-227355 | `0x5836be...a35d7d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5ff2c4...97b14f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x60c880...249a96` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x60f7f3...117ed7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x65d136...e4193d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6a3b7c...7bf415` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6bc8cf...11eb37` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6cb9a1...2d6751` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x71995a...39caac` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-227358 | `0x739615...b18887` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7fbb87...73fd36` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8d69d7...8c6ead` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x96ddba...414744` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9c0906...cb62dd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9ea309...87edb8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa00703...ecc5aa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa3ac98...e289e3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xac8ba6...9dda9e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaef4d0...1b606e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb4fc3a...effb25` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbae04c...069ee4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbcc994...208799` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbf1e3a...28a9fe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbfe7b0...deb8be` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-227366 | `0xc2930a...f91c4e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc76121...7492dc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xccc243...fc463f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcd53c6...a26a2f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcf0c58...43c175` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-227368 | `0xd2a04e...75b9cf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd5ac4d...3b080e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd69769...25976d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe35e72...3aa1db` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe97ea9...7717f9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xeead9c...87b834` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf342f3...64ee62` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [ChainSecurity - Augur Core v1.pdf](https://github.com/AugurProject/augur-audits/blob/master/augur-core/ChainSecurity%20-%20Augur%20Core%20v1.pdf) | ChainSecurity | Audit | 2017-12 | stale | Direct | n/a | matched | 1 | 0 | 0 | 8 | n/a |
| [LeastAuthority - Augur Core v1.pdf](https://github.com/AugurProject/augur-audits/blob/master/augur-core/LeastAuthority%20-%20Augur%20Core%20v1.pdf) | LeastAuthority | Audit | 2017-12 | stale | Direct | n/a | matched | 3 | 0 | 0 | 9 | n/a |
| [Zeppelin - Augur Core v3.1.pdf](https://github.com/AugurProject/augur-audits/blob/master/augur-core/Zeppelin%20-%20Augur%20Core%20v3.1.pdf) | Zeppelin | Audit | 2018-03 | stale | Direct | n/a | matched | 9 | 0 | 0 | 35 | n/a |
| [Zeppelin - Augur Core v3.pdf](https://github.com/AugurProject/augur-audits/blob/master/augur-core/Zeppelin%20-%20Augur%20Core%20v3.pdf) | Zeppelin | Audit | 2018-03 | stale | Direct | n/a | matched | 9 | 0 | 0 | 86 | n/a |
| [keythereum-audit.md](https://github.com/AugurProject/augur-audits/blob/master/keythereum/keythereum-audit.md) | unknown | Audit | 2017-04 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [Zeppelin Solutions - Serpent Compiler Audit v1.0.0.pdf](https://github.com/AugurProject/augur-audits/blob/master/serpent-compiler/Zeppelin%20Solutions%20-%20Serpent%20Compiler%20Audit%20v1.0.0.pdf) | Zeppelin Solutions | Audit | 2017-07 | stale | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [Coinspect - Solidity Compiler Audit v1.0.pdf](https://github.com/AugurProject/augur-audits/blob/master/solidity-compiler/Coinspect%20-%20Solidity%20Compiler%20Audit%20v1.0.pdf) | Coinspect | Audit | 2017-11 | stale | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [2984] ChainSecurity - Augur Core v1.pdf — matched: No reason recorded
- [2985] LeastAuthority - Augur Core v1.pdf — matched: No reason recorded
- [2986] Zeppelin - Augur Core v3.1.pdf — matched: No reason recorded
- [2987] Zeppelin - Augur Core v3.pdf — matched: No reason recorded
- [2988] keythereum-audit.md — no match: Audit of JavaScript library keythereum; scope includes three source files. Date range March-April 2017, end date used.
- [2989] Zeppelin Solutions - Serpent Compiler Audit v1.0.0.pdf — no match: The audit is of the Serpent compiler itself, not specific smart contracts. No contract names are in scope.
- [2990] Coinspect - Solidity Compiler Audit v1.0.pdf — no match: The audit scope lists libraries (libdevcore, liblll, Libsolidity, solc) rather than specific smart contracts. No individual contract names are in scope.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| ChainSecurity - Augur Core v1.pdf | Cash.sol | unmatched — not counted | — | — | no |
| ChainSecurity - Augur Core v1.pdf | Controlled.sol | unmatched — not counted | — | — | no |
| ChainSecurity - Augur Core v1.pdf | Controller.sol | unmatched — not counted | — | — | no |
| ChainSecurity - Augur Core v1.pdf | Extractable.sol | unmatched — not counted | — | — | no |
| ChainSecurity - Augur Core v1.pdf | Mailbox.sol | unmatched — not counted | — | — | no |
| ChainSecurity - Augur Core v1.pdf | Market.sol | unmatched — not counted | — | — | no |
| ChainSecurity - Augur Core v1.pdf | Set.sol | unmatched — not counted | — | — | no |
| ChainSecurity - Augur Core v1.pdf | StakeToken.sol | unmatched — not counted | — | — | no |
| ChainSecurity - Augur Core v1.pdf | Universe.sol | own contract | Universe (selected) `0x49244b...46e5aa` — deployed 2020-07-28 00:50:55+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| LeastAuthority - Augur Core v1.pdf | ClaimTradingProceeds | unmatched — not counted | — | — | no |
| LeastAuthority - Augur Core v1.pdf | CompleteSets | unmatched — not counted | — | — | no |
| LeastAuthority - Augur Core v1.pdf | Controller | unmatched — not counted | — | — | no |
| LeastAuthority - Augur Core v1.pdf | Delegator | unmatched — not counted | — | — | no |
| LeastAuthority - Augur Core v1.pdf | FillOrder | own contract | FillOrder (selected) `0xc42e71...66ba35` — deployed 2020-07-28 00:27:44+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| LeastAuthority - Augur Core v1.pdf | Market | unmatched — not counted | — | — | no |
| LeastAuthority - Augur Core v1.pdf | RepPriceOracle | unmatched — not counted | — | — | no |
| LeastAuthority - Augur Core v1.pdf | Reporting | unmatched — not counted | — | — | no |
| LeastAuthority - Augur Core v1.pdf | ReportingWindow | unmatched — not counted | — | — | no |
| LeastAuthority - Augur Core v1.pdf | StakeToken | unmatched — not counted | — | — | no |
| LeastAuthority - Augur Core v1.pdf | Trade | own contract | Trade (selected) `0x0cd32f...915667` — deployed 2020-07-28 00:31:24+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| LeastAuthority - Augur Core v1.pdf | Universe | own contract | Universe (selected) `0x49244b...46e5aa` — deployed 2020-07-28 00:50:55+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Zeppelin - Augur Core v3.1.pdf | AddressArrays | unmatched — not counted | — | — | no |
| Zeppelin - Augur Core v3.1.pdf | Augur | own contract | Augur (selected) `0x23916a...722f5d` — deployed 2020-07-27 23:50:20+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Zeppelin - Augur Core v3.1.pdf | BaseReportingParticipant | unmatched — not counted | — | — | no |
| Zeppelin - Augur Core v3.1.pdf | BasicToken | unmatched — not counted | — | — | no |
| Zeppelin - Augur Core v3.1.pdf | Bytes32Arrays | unmatched — not counted | — | — | no |
| Zeppelin - Augur Core v3.1.pdf | CancelOrder | own contract | CancelOrder (selected) `0x465bf8...cfb0d0` — deployed 2020-07-28 00:24:01+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Zeppelin - Augur Core v3.1.pdf | Cash | unmatched — not counted | — | — | no |
| Zeppelin - Augur Core v3.1.pdf | CashAutoConverter | unmatched — not counted | — | — | no |
| Zeppelin - Augur Core v3.1.pdf | ClaimTradingProceeds | unmatched — not counted | — | — | no |
| Zeppelin - Augur Core v3.1.pdf | CompleteSets | unmatched — not counted | — | — | no |
| Zeppelin - Augur Core v3.1.pdf | ContractExists | unmatched — not counted | — | — | no |
| Zeppelin - Augur Core v3.1.pdf | Controller | unmatched — not counted | — | — | no |
| Zeppelin - Augur Core v3.1.pdf | CreateOrder | own contract | CreateOrder (selected) `0x8a97cb...138937` — deployed 2020-07-28 00:26:26+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Zeppelin - Augur Core v3.1.pdf | Delegator | unmatched — not counted | — | — | no |
| Zeppelin - Augur Core v3.1.pdf | DirectionExtentions | unmatched — not counted | — | — | no |
| Zeppelin - Augur Core v3.1.pdf | DisputeBond | unmatched — not counted | — | — | no |
| Zeppelin - Augur Core v3.1.pdf | DisputeCrowdsourcer | unmatched — not counted | — | — | no |
| Zeppelin - Augur Core v3.1.pdf | Extractable | unmatched — not counted | — | — | no |
| Zeppelin - Augur Core v3.1.pdf | FeeToken | unmatched — not counted | — | — | no |
| Zeppelin - Augur Core v3.1.pdf | FeeWindow | unmatched — not counted | — | — | no |
| Zeppelin - Augur Core v3.1.pdf | FillOrder | own contract | FillOrder (selected) `0xc42e71...66ba35` — deployed 2020-07-28 00:27:44+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Zeppelin - Augur Core v3.1.pdf | InitialReporter | unmatched — not counted | — | — | no |
| Zeppelin - Augur Core v3.1.pdf | LegacyReputationToken | unmatched — not counted | — | — | no |
| Zeppelin - Augur Core v3.1.pdf | Mailbox | unmatched — not counted | — | — | no |
| Zeppelin - Augur Core v3.1.pdf | Map | unmatched — not counted | — | — | no |
| Zeppelin - Augur Core v3.1.pdf | Market | unmatched — not counted | — | — | no |
| Zeppelin - Augur Core v3.1.pdf | MarketValidator | unmatched — not counted | — | — | no |
| Zeppelin - Augur Core v3.1.pdf | Orders | own contract | Orders (selected) `0x483156...bd7a8f` — deployed 2020-07-28 00:28:31+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Zeppelin - Augur Core v3.1.pdf | ParticipationToken | unmatched — not counted | — | — | no |
| Zeppelin - Augur Core v3.1.pdf | RepPriceOracle | unmatched — not counted | — | — | no |
| Zeppelin - Augur Core v3.1.pdf | Reporting | unmatched — not counted | — | — | no |
| Zeppelin - Augur Core v3.1.pdf | ReputationToken | own contract | ReputationToken (selected) `0x221657...f5c9bb` — deployed 2020-07-28 00:50:55+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Zeppelin - Augur Core v3.1.pdf | RunningAverage | unmatched — not counted | — | — | no |
| Zeppelin - Augur Core v3.1.pdf | SafeMathInt256 | unmatched — not counted | — | — | no |
| Zeppelin - Augur Core v3.1.pdf | SafeMathUint256 | unmatched — not counted | — | — | no |
| Zeppelin - Augur Core v3.1.pdf | Set | unmatched — not counted | — | — | no |
| Zeppelin - Augur Core v3.1.pdf | ShareToken | own contract | ShareToken (selected) `0x9e4799...df85f0` — deployed 2020-07-28 00:23:25+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Zeppelin - Augur Core v3.1.pdf | StakeToken | unmatched — not counted | — | — | no |
| Zeppelin - Augur Core v3.1.pdf | StandardToken | unmatched — not counted | — | — | no |
| Zeppelin - Augur Core v3.1.pdf | Trade | own contract | Trade (selected) `0x0cd32f...915667` — deployed 2020-07-28 00:31:24+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Zeppelin - Augur Core v3.1.pdf | TradingEscapeHatch | unmatched — not counted | — | — | no |
| Zeppelin - Augur Core v3.1.pdf | Uint256Arrays | unmatched — not counted | — | — | no |
| Zeppelin - Augur Core v3.1.pdf | Universe | own contract | Universe (selected) `0x49244b...46e5aa` — deployed 2020-07-28 00:50:55+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Zeppelin - Augur Core v3.1.pdf | VariableSupplyToken | unmatched — not counted | — | — | no |
| Zeppelin - Augur Core v3.pdf | AddressArrays | unmatched — not counted | — | — | no |
| Zeppelin - Augur Core v3.pdf | Augur | own contract | Augur (selected) `0x23916a...722f5d` — deployed 2020-07-27 23:50:20+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Zeppelin - Augur Core v3.pdf | BaseReportingParticipant | unmatched — not counted | — | — | no |
| Zeppelin - Augur Core v3.pdf | BasicToken | unmatched — not counted | — | — | no |
| Zeppelin - Augur Core v3.pdf | Bytes32Arrays | unmatched — not counted | — | — | no |
| Zeppelin - Augur Core v3.pdf | CancelOrder | own contract | CancelOrder (selected) `0x465bf8...cfb0d0` — deployed 2020-07-28 00:24:01+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Zeppelin - Augur Core v3.pdf | Cash | unmatched — not counted | — | — | no |
| Zeppelin - Augur Core v3.pdf | CashAutoConverter | unmatched — not counted | — | — | no |
| Zeppelin - Augur Core v3.pdf | ClaimTradingProceeds | unmatched — not counted | — | — | no |
| Zeppelin - Augur Core v3.pdf | CompleteSets | unmatched — not counted | — | — | no |
| Zeppelin - Augur Core v3.pdf | ContractDeployer | unmatched — not counted | — | — | no |
| Zeppelin - Augur Core v3.pdf | ContractExists | unmatched — not counted | — | — | no |
| Zeppelin - Augur Core v3.pdf | Controller | unmatched — not counted | — | — | no |
| Zeppelin - Augur Core v3.pdf | CreateOrder | own contract | CreateOrder (selected) `0x8a97cb...138937` — deployed 2020-07-28 00:26:26+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Zeppelin - Augur Core v3.pdf | Delegator | unmatched — not counted | — | — | no |
| Zeppelin - Augur Core v3.pdf | DirectionExtentions | unmatched — not counted | — | — | no |
| Zeppelin - Augur Core v3.pdf | DisputeBond | unmatched — not counted | — | — | no |
| Zeppelin - Augur Core v3.pdf | DisputeCrowdsourcer | unmatched — not counted | — | — | no |
| Zeppelin - Augur Core v3.pdf | Extractable | unmatched — not counted | — | — | no |
| Zeppelin - Augur Core v3.pdf | FeeToken | unmatched — not counted | — | — | no |
| Zeppelin - Augur Core v3.pdf | FeeWindow | unmatched — not counted | — | — | no |
| Zeppelin - Augur Core v3.pdf | FillOrder | own contract | FillOrder (selected) `0xc42e71...66ba35` — deployed 2020-07-28 00:27:44+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Zeppelin - Augur Core v3.pdf | IAugur | unmatched — not counted | — | — | no |
| Zeppelin - Augur Core v3.pdf | IAugurFactory | unmatched — not counted | — | — | no |
| Zeppelin - Augur Core v3.pdf | ICancelOrder | unmatched — not counted | — | — | no |
| Zeppelin - Augur Core v3.pdf | ICancelOrderFactory | unmatched — not counted | — | — | no |
| Zeppelin - Augur Core v3.pdf | ICash | unmatched — not counted | — | — | no |
| Zeppelin - Augur Core v3.pdf | ICashAutoConverter | unmatched — not counted | — | — | no |
| Zeppelin - Augur Core v3.pdf | ICashAutoConverterFactory | unmatched — not counted | — | — | no |
| Zeppelin - Augur Core v3.pdf | IClaimTradingProceeds | unmatched — not counted | — | — | no |
| Zeppelin - Augur Core v3.pdf | IClaimTradingProceedsFactory | unmatched — not counted | — | — | no |
| Zeppelin - Augur Core v3.pdf | ICompleteSets | unmatched — not counted | — | — | no |
| Zeppelin - Augur Core v3.pdf | ICompleteSetsFactory | unmatched — not counted | — | — | no |
| Zeppelin - Augur Core v3.pdf | IController | unmatched — not counted | — | — | no |
| Zeppelin - Augur Core v3.pdf | IControllerFactory | unmatched — not counted | — | — | no |
| Zeppelin - Augur Core v3.pdf | ICreateOrder | unmatched — not counted | — | — | no |
| Zeppelin - Augur Core v3.pdf | ICreateOrderFactory | unmatched — not counted | — | — | no |
| Zeppelin - Augur Core v3.pdf | IDisputeBond | unmatched — not counted | — | — | no |
| Zeppelin - Augur Core v3.pdf | IDisputeBondFactory | unmatched — not counted | — | — | no |
| Zeppelin - Augur Core v3.pdf | IDisputeCrowdsourcer | unmatched — not counted | — | — | no |
| Zeppelin - Augur Core v3.pdf | IDisputeCrowdsourcerFactory | unmatched — not counted | — | — | no |
| Zeppelin - Augur Core v3.pdf | IFeeToken | unmatched — not counted | — | — | no |
| Zeppelin - Augur Core v3.pdf | IFeeTokenFactory | unmatched — not counted | — | — | no |
| Zeppelin - Augur Core v3.pdf | IFeeWindow | unmatched — not counted | — | — | no |
| Zeppelin - Augur Core v3.pdf | IFeeWindowFactory | unmatched — not counted | — | — | no |
| Zeppelin - Augur Core v3.pdf | IFillOrder | unmatched — not counted | — | — | no |
| Zeppelin - Augur Core v3.pdf | IFillOrderFactory | unmatched — not counted | — | — | no |
| Zeppelin - Augur Core v3.pdf | IInitialReporter | unmatched — not counted | — | — | no |
| Zeppelin - Augur Core v3.pdf | IInitialReporterFactory | unmatched — not counted | — | — | no |
| Zeppelin - Augur Core v3.pdf | IMailbox | unmatched — not counted | — | — | no |
| Zeppelin - Augur Core v3.pdf | IMailboxFactory | unmatched — not counted | — | — | no |
| Zeppelin - Augur Core v3.pdf | IMarket | unmatched — not counted | — | — | no |
| Zeppelin - Augur Core v3.pdf | IMarketFactory | unmatched — not counted | — | — | no |
| Zeppelin - Augur Core v3.pdf | IOrders | unmatched — not counted | — | — | no |
| Zeppelin - Augur Core v3.pdf | IOrdersFactory | unmatched — not counted | — | — | no |
| Zeppelin - Augur Core v3.pdf | IParticipationToken | unmatched — not counted | — | — | no |
| Zeppelin - Augur Core v3.pdf | IParticipationTokenFactory | unmatched — not counted | — | — | no |
| Zeppelin - Augur Core v3.pdf | IRegistrationToken | unmatched — not counted | — | — | no |
| Zeppelin - Augur Core v3.pdf | IReportingWindow | unmatched — not counted | — | — | no |
| Zeppelin - Augur Core v3.pdf | IReportingWindowFactory | unmatched — not counted | — | — | no |
| Zeppelin - Augur Core v3.pdf | IReputationToken | unmatched — not counted | — | — | no |
| Zeppelin - Augur Core v3.pdf | IReputationTokenFactory | unmatched — not counted | — | — | no |
| Zeppelin - Augur Core v3.pdf | IShareToken | unmatched — not counted | — | — | no |
| Zeppelin - Augur Core v3.pdf | IShareTokenFactory | unmatched — not counted | — | — | no |
| Zeppelin - Augur Core v3.pdf | IStakeToken | unmatched — not counted | — | — | no |
| Zeppelin - Augur Core v3.pdf | IStakeTokenFactory | unmatched — not counted | — | — | no |
| Zeppelin - Augur Core v3.pdf | ITrade | unmatched — not counted | — | — | no |
| Zeppelin - Augur Core v3.pdf | ITradeFactory | unmatched — not counted | — | — | no |
| Zeppelin - Augur Core v3.pdf | ITradingEscapeHatch | unmatched — not counted | — | — | no |
| Zeppelin - Augur Core v3.pdf | ITradingEscapeHatchFactory | unmatched — not counted | — | — | no |
| Zeppelin - Augur Core v3.pdf | IUniverse | unmatched — not counted | — | — | no |
| Zeppelin - Augur Core v3.pdf | IUniverseFactory | unmatched — not counted | — | — | no |
| Zeppelin - Augur Core v3.pdf | InitialReporter | unmatched — not counted | — | — | no |
| Zeppelin - Augur Core v3.pdf | LegacyReputationToken | unmatched — not counted | — | — | no |
| Zeppelin - Augur Core v3.pdf | Mailbox | unmatched — not counted | — | — | no |
| Zeppelin - Augur Core v3.pdf | Map | unmatched — not counted | — | — | no |
| Zeppelin - Augur Core v3.pdf | Market | unmatched — not counted | — | — | no |
| Zeppelin - Augur Core v3.pdf | MarketValidator | unmatched — not counted | — | — | no |
| Zeppelin - Augur Core v3.pdf | Orders | own contract | Orders (selected) `0x483156...bd7a8f` — deployed 2020-07-28 00:28:31+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Zeppelin - Augur Core v3.pdf | ParticipationToken | unmatched — not counted | — | — | no |
| Zeppelin - Augur Core v3.pdf | RepPriceOracle | unmatched — not counted | — | — | no |
| Zeppelin - Augur Core v3.pdf | Reporting | unmatched — not counted | — | — | no |
| Zeppelin - Augur Core v3.pdf | ReputationToken | own contract | ReputationToken (selected) `0x221657...f5c9bb` — deployed 2020-07-28 00:50:55+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Zeppelin - Augur Core v3.pdf | RunningAverage | unmatched — not counted | — | — | no |
| Zeppelin - Augur Core v3.pdf | SafeMathInt256 | unmatched — not counted | — | — | no |
| Zeppelin - Augur Core v3.pdf | SafeMathUint256 | unmatched — not counted | — | — | no |
| Zeppelin - Augur Core v3.pdf | Set | unmatched — not counted | — | — | no |
| Zeppelin - Augur Core v3.pdf | ShareToken | own contract | ShareToken (selected) `0x9e4799...df85f0` — deployed 2020-07-28 00:23:25+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Zeppelin - Augur Core v3.pdf | StakeToken | unmatched — not counted | — | — | no |
| Zeppelin - Augur Core v3.pdf | StandardToken | unmatched — not counted | — | — | no |
| Zeppelin - Augur Core v3.pdf | Trade | own contract | Trade (selected) `0x0cd32f...915667` — deployed 2020-07-28 00:31:24+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Zeppelin - Augur Core v3.pdf | TradingEscapeHatch | unmatched — not counted | — | — | no |
| Zeppelin - Augur Core v3.pdf | Uint256Arrays | unmatched — not counted | — | — | no |
| Zeppelin - Augur Core v3.pdf | Universe | own contract | Universe (selected) `0x49244b...46e5aa` — deployed 2020-07-28 00:50:55+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Zeppelin - Augur Core v3.pdf | VariableSupplyToken | unmatched — not counted | — | — | no |
| keythereum-audit.md | index.js | unmatched — not counted | — | listed in scope | no |
| keythereum-audit.md | exports.js | unmatched — not counted | — | listed in scope | no |
| keythereum-audit.md | test/keys.js | unmatched — not counted | — | listed in scope | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0x3a4131...e635b3` | Affiliates | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x2a2565...0be659` | AffiliateValidator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x63a1ee...02881e` | AugurTrading | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x9fa160...8e5128` | AugurWalletRegistry | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x1aacc9...602483` | BuyParticipationTokens | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x61935c...93b7ef` | Exchange | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x2c1672...f26c01` | ProfitLoss | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x9ac7b2...f58401` | RedeemStake | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xe0c69a...c7fc4d` | WarpSync | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x8346f3...780eed` | ZeroXTrade | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 77 |
| upstream | 3 |
| standard_library | 0 |
| needs_review | 55 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 3
- Inherited remapped matches: 0
- Address-book scope dispositions: 22 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 141 unmatched
- Matched-own operational status: 22 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=1, low=2
- Match method counts: unique_name=22

Zero-match audit list:

- [2988] keythereum-audit.md
- [2989] Zeppelin Solutions - Serpent Compiler Audit v1.0.0.pdf
- [2990] Coinspect - Solidity Compiler Audit v1.0.pdf

Fork inheritance lineage and inherited audits are included when available.
