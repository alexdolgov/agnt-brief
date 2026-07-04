# Agentic Audit Brief: Perpetual Protocol

## Project Overview

- Project: Perpetual Protocol (`perpetual-protocol`)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:43.085Z
- Pipeline run: v2-2026-07-02-1ba3fd
- Chains: ethereum, optimism
- Contract surface: 40 unique implementations (40 raw deployments)
- DeFi Llama TVL: $459,102.12
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Derivatives. Structurally: 39 project-authored contract(s) across 2 chain(s); 2 ERC20 tokens; upgradeable via ERC1967/UUPS proxies; built on openzeppelin-upgradeable.

### Architecture

The protocol comprises 3 functional families. Its contracts share 12 common project-authored base contract(s) (safeownable, blockcontext, clearinghousecallee). Dominant framework: openzeppelin-upgradeable.

## Contract Surface Quality

- Indexed contracts: 40; live-surface contracts included: 40 (40 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/36 (0.0%)
- Deployed-live implementations: 40 of 40 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/40
- Verified + Unaudited implementations: 40
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 40
- Raw deployments: 40
- Audits discovered: 0 (0 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Audit staleness (calendar age): 0 fresh, 0 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (40)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AccountBalance | unknown | optimism | n/a | [`0x110efe...2291df`](./contracts/optimism-10/0x110efe74f9d619aae1949c252f17cf21d82291df/) | ⚠️ Unaudited |
| BandPriceFeed | unknown | optimism | n/a | [`0x1dde11...78e67f`](./contracts/optimism-10/0x1dde11b421bced5a9452ee5b84fe39dd0a78e67f/) | ⚠️ Unaudited |
| BaseToken | unknown | optimism | n/a | [`0x00a0b6...7d19dd`](./contracts/optimism-10/0x00a0b6d11ca762fce125597a52135f2b007d19dd/) | ⚠️ Unaudited |
| BaseVault | unknown | optimism | n/a | [`0x06e1c9...305563`](./contracts/optimism-10/0x06e1c95c83768de7ccc30debb84c08b596305563/) | ⚠️ Unaudited |
| Cashier | unknown | optimism | n/a | [`0xb70d93...51fc16`](./contracts/optimism-10/0xb70d9359ba2006417c2c5f21948d82462e51fc16/) | ⚠️ Unaudited |
| ClearingHouse | unknown | optimism | n/a | [`0x00f038...cf0729`](./contracts/optimism-10/0x00f0381b4509fee5fe51ecc0b241f67972cf0729/) | ⚠️ Unaudited |
| ClearingHouseConfig | unknown | optimism | n/a | [`0x044e6f...d894a2`](./contracts/optimism-10/0x044e6f675e092ccbd5c47e8c4f7b6ecc98d894a2/) | ⚠️ Unaudited |
| CollateralManager | unknown | optimism | n/a | [`0x032ed2...b719ec`](./contracts/optimism-10/0x032ed2fc1c42c47faafe6bbf54899a8ba1b719ec/) | ⚠️ Unaudited |
| DelegatableVault | unknown | optimism | n/a | [`0x20ee8f...835bae`](./contracts/optimism-10/0x20ee8f8ec44eec0aa4c559e49880ec6fbe835bae/) | ⚠️ Unaudited |
| DelegateApproval | unknown | optimism | n/a | [`0x0ca14d...3916b8`](./contracts/optimism-10/0x0ca14d901ffe8461b8196e593083d004993916b8/) | ⚠️ Unaudited |
| Exchange | unknown | optimism | n/a | [`0x0908c4...cc7cc7`](./contracts/optimism-10/0x0908c4646a8659ece6b3d6632435518d22cc7cc7/) | ⚠️ Unaudited |
| InsuranceFund | unknown | optimism | n/a | [`0x099b59...baa61b`](./contracts/optimism-10/0x099b59d7ac07b765e3de0ee16dfce846a0baa61b/) | ⚠️ Unaudited |
| KtbUniArbitrageur | unknown | optimism | n/a | [`0xaacc98...11364d`](./contracts/optimism-10/0xaacc98efafc86211a1b4ecb6824edbb8a011364d/) | ⚠️ Unaudited |
| L2StandardERC20 | unknown | optimism | n/a | [`0x9e1028...6840e0`](./contracts/optimism-10/0x9e1028f5f1d5ede59748ffcee5532509976840e0/) | ⚠️ Unaudited |
| LimitOrderBook | unknown | optimism | n/a | [`0x02ec0d...6645a7`](./contracts/optimism-10/0x02ec0d78a6e981dde14efef0792774fd236645a7/) | ⚠️ Unaudited |
| LimitOrderRewardVault | unknown | optimism | n/a | [`0x0315b8...030c75`](./contracts/optimism-10/0x0315b83b137ef6d1bbc6a29ae5c524666e030c75/) | ⚠️ Unaudited |
| MarketRegistry | unknown | optimism | n/a | [`0x053339...3febfa`](./contracts/optimism-10/0x05333977d60f3b687576493f825915407d3febfa/) | ⚠️ Unaudited |
| Multicall2 | unknown | optimism | n/a | [`0x7105b7...e2425b`](./contracts/optimism-10/0x7105b732f2f0d5a6f7bdb159f0074b8587e2425b/) | ⚠️ Unaudited |
| OrderBook | unknown | optimism | n/a | [`0x00cea6...725ecd`](./contracts/optimism-10/0x00cea6cd9fdd2acdcde88c5a7a5df87688725ecd/) | ⚠️ Unaudited |
| OtcMaker | unknown | optimism | n/a | [`0x08a725...06ccba`](./contracts/optimism-10/0x08a725f9431ae81f92987395f8e5fa295406ccba/) | ⚠️ Unaudited |
| PerpBuyback | unknown | optimism | n/a | [`0x199044...a29751`](./contracts/optimism-10/0x1990446cc2fe92b097e837985741404920a29751/) | ⚠️ Unaudited |
| PerpBuybackPool | unknown | optimism | n/a | [`0x116fc4...f17dff`](./contracts/optimism-10/0x116fc46c048ec547a960a0823b3c42fcccf17dff/) | ⚠️ Unaudited |
| PerpetualProtocolReferrer | unknown | optimism | n/a | [`0xbf0184...a09501`](./contracts/optimism-10/0xbf0184af499b6701a7e742ca265c858fbea09501/) | ⚠️ Unaudited |
| PerpLiquidityMining | unknown | optimism | n/a | [`0x0d1b56...3262e0`](./contracts/optimism-10/0x0d1b56799d7fc81ef6deaa55511c34b9133262e0/) | ⚠️ Unaudited |
| PerpPortal | unknown | optimism | n/a | [`0x6ab84f...ed8931`](./contracts/optimism-10/0x6ab84fc005d7b5d0899b621344634031a2ed8931/) | ⚠️ Unaudited |
| PerpPositionManager | unknown | optimism | n/a | [`0x211a3f...dce99b`](./contracts/optimism-10/0x211a3f48fa48043ce7b09eb4b5fa83a71ddce99b/) | ⚠️ Unaudited |
| PerpToken | unknown | ethereum | n/a | [`0xbc3966...233447`](./contracts/ethereum-1/0xbc396689893d065f41bc2c6ecbee5e0085233447/) | ⚠️ Unaudited |
| PriceFeedDispatcher | unknown | optimism | n/a | [`0x00e198...ebc960`](./contracts/optimism-10/0x00e198d71fb701f58b5d5c31759efcc911ebc960/) | ⚠️ Unaudited |
| PriceFeedUpdater | unknown | optimism | n/a | [`0x06e4c9...a12833`](./contracts/optimism-10/0x06e4c910d8abe386542e0b22eb08a30206a12833/) | ⚠️ Unaudited |
| ProxyAdmin | unknown | optimism | n/a | [`0x0e5a24...eee2bd`](./contracts/optimism-10/0x0e5a2456934bfa0e51d3eca870a9c4b38aeee2bd/) | ⚠️ Unaudited |
| Quoter | unknown | optimism | n/a | [`0x125e0c...e6c6ee`](./contracts/optimism-10/0x125e0cfb77ca7b369ee773c507cf59c019e6c6ee/) | ⚠️ Unaudited |
| QuoteToken | unknown | optimism | n/a | [`0x177932...e30b14`](./contracts/optimism-10/0x17793262e3625b1a57fb325b5a1f79b05de30b14/) | ⚠️ Unaudited |
| QuoteVault | unknown | optimism | n/a | [`0x2568b8...4957fc`](./contracts/optimism-10/0x2568b87f26d6719feba6b43444e2fa5e984957fc/) | ⚠️ Unaudited |
| RewardDelegate | unknown | optimism | n/a | [`0x2de8e1...1ca88d`](./contracts/optimism-10/0x2de8e18bdaef25c2de0bed29c8b72e49261ca88d/) | ⚠️ Unaudited |
| SurplusBeneficiary | unknown | optimism | n/a | [`0x78120c...2d6ee7`](./contracts/optimism-10/0x78120c1ca337007323de2226d677e7fcf42d6ee7/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | optimism | n/a | [`0x1a459f...26643f`](./contracts/optimism-10/0x1a459f2923212b9df6419fb8cede30445b26643f/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | optimism | n/a | [`0xa30423...566f5d`](./contracts/optimism-10/0xa3042385f775c52ad7e038cec45a95c2dc566f5d/) | ⚠️ Unaudited |
| Vault | unknown | optimism | n/a | [`0x015f7e...2cae01`](./contracts/optimism-10/0x015f7ea8fd10d050feb2905b0b2d7908572cae01/) | ⚠️ Unaudited |
| vePERPRewardDistributor | unknown | optimism | n/a | [`0x0b98bf...2c260b`](./contracts/optimism-10/0x0b98bf7a2b32606be08bd68dd3520773d22c260b/) | ⚠️ Unaudited |
| Vyper_contract | unknown | optimism | n/a | [`0x142408...0829cc`](./contracts/optimism-10/0x142408558527b1a63b736252472e35e1110829cc/) | ⚠️ Unaudited |

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

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| optimism | [`0x110efe...2291df`](./contracts/optimism-10/0x110efe74f9d619aae1949c252f17cf21d82291df/) | AccountBalance | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x1dde11...78e67f`](./contracts/optimism-10/0x1dde11b421bced5a9452ee5b84fe39dd0a78e67f/) | BandPriceFeed | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x00a0b6...7d19dd`](./contracts/optimism-10/0x00a0b6d11ca762fce125597a52135f2b007d19dd/) | BaseToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x06e1c9...305563`](./contracts/optimism-10/0x06e1c95c83768de7ccc30debb84c08b596305563/) | BaseVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0xb70d93...51fc16`](./contracts/optimism-10/0xb70d9359ba2006417c2c5f21948d82462e51fc16/) | Cashier | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x00f038...cf0729`](./contracts/optimism-10/0x00f0381b4509fee5fe51ecc0b241f67972cf0729/) | ClearingHouse | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x044e6f...d894a2`](./contracts/optimism-10/0x044e6f675e092ccbd5c47e8c4f7b6ecc98d894a2/) | ClearingHouseConfig | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x032ed2...b719ec`](./contracts/optimism-10/0x032ed2fc1c42c47faafe6bbf54899a8ba1b719ec/) | CollateralManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x20ee8f...835bae`](./contracts/optimism-10/0x20ee8f8ec44eec0aa4c559e49880ec6fbe835bae/) | DelegatableVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x0ca14d...3916b8`](./contracts/optimism-10/0x0ca14d901ffe8461b8196e593083d004993916b8/) | DelegateApproval | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x0908c4...cc7cc7`](./contracts/optimism-10/0x0908c4646a8659ece6b3d6632435518d22cc7cc7/) | Exchange | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x099b59...baa61b`](./contracts/optimism-10/0x099b59d7ac07b765e3de0ee16dfce846a0baa61b/) | InsuranceFund | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0xaacc98...11364d`](./contracts/optimism-10/0xaacc98efafc86211a1b4ecb6824edbb8a011364d/) | KtbUniArbitrageur | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x9e1028...6840e0`](./contracts/optimism-10/0x9e1028f5f1d5ede59748ffcee5532509976840e0/) | L2StandardERC20 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x02ec0d...6645a7`](./contracts/optimism-10/0x02ec0d78a6e981dde14efef0792774fd236645a7/) | LimitOrderBook | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x0315b8...030c75`](./contracts/optimism-10/0x0315b83b137ef6d1bbc6a29ae5c524666e030c75/) | LimitOrderRewardVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x053339...3febfa`](./contracts/optimism-10/0x05333977d60f3b687576493f825915407d3febfa/) | MarketRegistry | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x00cea6...725ecd`](./contracts/optimism-10/0x00cea6cd9fdd2acdcde88c5a7a5df87688725ecd/) | OrderBook | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x08a725...06ccba`](./contracts/optimism-10/0x08a725f9431ae81f92987395f8e5fa295406ccba/) | OtcMaker | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x199044...a29751`](./contracts/optimism-10/0x1990446cc2fe92b097e837985741404920a29751/) | PerpBuyback | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x116fc4...f17dff`](./contracts/optimism-10/0x116fc46c048ec547a960a0823b3c42fcccf17dff/) | PerpBuybackPool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0xbf0184...a09501`](./contracts/optimism-10/0xbf0184af499b6701a7e742ca265c858fbea09501/) | PerpetualProtocolReferrer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x0d1b56...3262e0`](./contracts/optimism-10/0x0d1b56799d7fc81ef6deaa55511c34b9133262e0/) | PerpLiquidityMining | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x6ab84f...ed8931`](./contracts/optimism-10/0x6ab84fc005d7b5d0899b621344634031a2ed8931/) | PerpPortal | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x211a3f...dce99b`](./contracts/optimism-10/0x211a3f48fa48043ce7b09eb4b5fa83a71ddce99b/) | PerpPositionManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xbc3966...233447`](./contracts/ethereum-1/0xbc396689893d065f41bc2c6ecbee5e0085233447/) | PerpToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x00e198...ebc960`](./contracts/optimism-10/0x00e198d71fb701f58b5d5c31759efcc911ebc960/) | PriceFeedDispatcher | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x06e4c9...a12833`](./contracts/optimism-10/0x06e4c910d8abe386542e0b22eb08a30206a12833/) | PriceFeedUpdater | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x125e0c...e6c6ee`](./contracts/optimism-10/0x125e0cfb77ca7b369ee773c507cf59c019e6c6ee/) | Quoter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x177932...e30b14`](./contracts/optimism-10/0x17793262e3625b1a57fb325b5a1f79b05de30b14/) | QuoteToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x2568b8...4957fc`](./contracts/optimism-10/0x2568b87f26d6719feba6b43444e2fa5e984957fc/) | QuoteVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x2de8e1...1ca88d`](./contracts/optimism-10/0x2de8e18bdaef25c2de0bed29c8b72e49261ca88d/) | RewardDelegate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x78120c...2d6ee7`](./contracts/optimism-10/0x78120c1ca337007323de2226d677e7fcf42d6ee7/) | SurplusBeneficiary | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x015f7e...2cae01`](./contracts/optimism-10/0x015f7ea8fd10d050feb2905b0b2d7908572cae01/) | Vault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x0b98bf...2c260b`](./contracts/optimism-10/0x0b98bf7a2b32606be08bd68dd3520773d22c260b/) | vePERPRewardDistributor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x142408...0829cc`](./contracts/optimism-10/0x142408558527b1a63b736252472e35e1110829cc/) | Vyper_contract | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 36 |
| upstream | 0 |
| standard_library | 4 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
