# Agentic Audit Brief: Trueo

## Export Authority

- Production state: **blocked no audit authority**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 0 (0 matched; 0 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `f59b0c07e38ecec2d34eb2896e4262470519ed280e5a0a28b0f46fc69c79a374`

## Project Overview

- Project: Trueo (`trueo`)
- Website: [https://trueo.com/](https://trueo.com/)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: base
- Contract surface: 58 unique implementations (82 raw deployments)
- Coverage basis: 0/6 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $4,304,112.61
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Trueo. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 9 contract row(s) across base. Structural roles: 6 unclassified, 2 core, 1 supporting. 2 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 9
- Structural roles: unclassified (6), core (2), supporting (1)
- Contract kinds: contract (9)
- Detected standards: ownable (2), accesscontrol (1), erc165 (1)
- Frameworks: openzeppelin (3), openzeppelin-upgradeable (2), permit2 (1), uniswap-v3 (1)
- Upgradeable-pattern rows: 2

## Fork Analysis

0 of 8 contracts are derived from known codebases. 8 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- ERC1967Proxy (`0x61a98bef11867c69489b91f340fe545eefc695d7`, chain 8453)
- ERC1967Proxy (`0x8175b0a1e803ac4205ae35f614315ba801275baa`, chain 8453)
- ERC1967Proxy (`0xca7af04bc6d24eea67618c11b883be6851f198be`, chain 8453)
- OracleBonds (`0xff21c2c73784d35578f497e2d6975d8a430d7b9a`, chain 8453)
- OracleCouncil (`0xf1df87646205850af7c18e7ca4514cf84d87481a`, chain 8453)
- OrderManager (`0x8e5e63f69bf7ef2a24f5247c2bfc3946b95e3da7`, chain 8453)
- TruthMarket (`0xb7b53c6b219a29afd8f2ebbed1ea2b8867eef3d1`, chain 8453)
- TruthMarketV2 (`0x2ca897f98f6a45729968f0057f1fbf88db3e3409`, chain 8453)

## Contract Surface Quality

- Logic-topography rows: 9; live-surface rows included: 9 (8 live, 1 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 6/7 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/6 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 6 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 52 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 17
- Confirmed-live implementations: 6 of 58 unique; 52 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/57
- Verified + Unaudited implementations: 57
- Verified by bytecode match: 0
- Unverified implementations: 1
- Unique implementations: 58
- Raw deployments: 82
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

### ⚠️ Verified + Unaudited (57)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| BinaryOutcomePlugin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xfb9103796666fa075d5299a4c900fa534ac2f3ba` | ⚠️ Unaudited |
| CrossChainAccount | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x31fafd4889fa1269f7a13a66ee0fb458f27d72a9` | ⚠️ Unaudited |
| Escalation | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x0dc1f7cb16389716710826ce74544d71fc0644a0`; base `0x7397ef691aeb47fe7ef2f7e908162e8d7a940b27` | ⚠️ Unaudited |
| FeeCollector | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: base `0x39339e149c2d916aa899bf73d2debb15f4755d9d`; base `0x8c6c622a7de8cebd1a43e2fb8363ebbe9120134f` | ⚠️ Unaudited |
| Launchpad | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x8b9b6423b592629feadac50e2da0f7b282e44147`; base `0xed3ebc2e17a0cc20d22ff7b7d13488f187fd1af6` | ⚠️ Unaudited |
| LaunchpadFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x9f04de860cc8b77044682a2706f39b81739a5417`; base `0xaa35bc58cb282bcf0c7f4c443a3dbce63ed7ee02` | ⚠️ Unaudited |
| NFTDescriptor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xf9d1077fd35670d4acbd27af82652a8d84577d9f` | ⚠️ Unaudited |
| NonfungiblePositionManager | governance | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0x03a520b32c04bf3beef7beb72e919cf822ed34f1` | ⚠️ Unaudited |
| NonfungibleTokenPositionDescriptor | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x4615c383f85d0a2bbed973d83ccecf5cb7121463`; base `0x4f225937edc33efd6109c4cef7b560b2d6401009` | ⚠️ Unaudited |
| OracleBonds | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: base `0x118c2d8bec04696a2f13124213bac72d0e13f63e`; base `0x3889938446859e5dc9091ab0aee0225eac91a9c0` | ⚠️ Unaudited |
| OracleBonds | unknown | project_anchor | own_supporting | 1 | base | unit-394275 | 2 deployments: base `0x8175b0a1e803ac4205ae35f614315ba801275baa`; base `0xff21c2c73784d35578f497e2d6975d8a430d7b9a` | ⚠️ Unaudited |
| OracleCouncil | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: base `0x87bc36ead32d5219e9cddf9f92d2077ca27992ab`; base `0xb8e8098bc5434f75b75601a90e52aabb3c81c450` | ⚠️ Unaudited |
| OracleCouncil | unknown | project_anchor | own_supporting | 1 | base | unit-394274 | 2 deployments: base `0xca7af04bc6d24eea67618c11b883be6851f198be`; base `0xf1df87646205850af7c18e7ca4514cf84d87481a` | ⚠️ Unaudited |
| OrderManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x1cdb1c43eb64e99780ea9d3c7162c23432c59a1a` | ⚠️ Unaudited |
| OrderManager | governance | project_anchor | own_supporting | 0 | base | unit-394271 | `0x8e5e63f69bf7ef2a24f5247c2bfc3946b95e3da7` | ⚠️ Unaudited |
| Permit2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x000000000022d473030f116ddee9f6b43ac78ba3` | ⚠️ Unaudited |
| PoolManager | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x498581ff718922c3f8e6a244956af099b2652b2b` | ⚠️ Unaudited |
| PositionManager | governance | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0x7c5f5a4bbd8fd63184577525326123b519429bdc` | ⚠️ Unaudited |
| QuoterV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x3d4e44eb1374240ce5f1b871ab261cd16335b76a` | ⚠️ Unaudited |
| RestrictDepositorPlugin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x882a6b6ffa5500911c47523b8b4d4fb149e24629` | ⚠️ Unaudited |
| RestrictMaximumRatioOfOutcomeDepositPlugin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xcb9d2ce83df3ea905f8b3e754e80bba0734b6fb1` | ⚠️ Unaudited |
| RestrictMinimumDepositsPlugin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x0e84034243366b4c0db02319d5f858786408c840` | ⚠️ Unaudited |
| StakingRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: base `0x1a40621c54330940b081f925aa027458a4c035ed`; base `0x688f5b490edb7f466a89a6db4fb30829558af014` | ⚠️ Unaudited |
| SwapRouter02 | adapter | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0x2626664c2603336e57b271c5c0b26f421741e481` | ⚠️ Unaudited |
| SweepStrategy | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xeb3151902c63af869977f0ba6baaec476ffab215` | ⚠️ Unaudited |
| TickLens | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x0cdee061c75d43c82520ed998c23ac2991c9ac6d` | ⚠️ Unaudited |
| TimelockController | governance | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: base `0x8963712bc91ae8c64d96293ed9a1157344f6fd04`; base `0xc0a7e697a16d3d4a0736d406da5f8a9dc7c4959a` | ⚠️ Unaudited |
| TokenConverter | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x74793d6111448df69e5a617f55a9d71a729364f5`; base `0xb416f70c3e8ea4e71e2af262228cfdcbea63fbaf` | ⚠️ Unaudited |
| TokenConverter | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x8078254008819bcfd9301fd68886433c2f81b792`; base `0xe4a50a6a41596abd38163921e3c0d1b99c44f864` | ⚠️ Unaudited |
| TrueToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x21cfcfc3d8f98fc728f48341d10ad8283f6eb7ab` | ⚠️ Unaudited |
| TruthAttesterSBT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x43a2ee74d28612c0a9ef90884bb47cf445c97bc4` | ⚠️ Unaudited |
| TruthMarket | unknown | project_anchor | own_supporting | 0 | base | unit-394272 | `0xb7b53c6b219a29afd8f2ebbed1ea2b8867eef3d1` | ⚠️ Unaudited |
| TruthMarket | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xd511918d3ab9813005ee44f76da3bbf1bc7720e2` | ⚠️ Unaudited |
| TruthMarketAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x2bf3a47714c0275fcdf44d8052661f28cb553c0c`; base `0x6e08d24aef78f6d1a97503f64e84fdf65f8125e1` | ⚠️ Unaudited |
| TruthMarketHook | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x1cfead8e66cebc5e51093dfd247ad34f841740c4` | ⚠️ Unaudited |
| TruthMarketLPManager | governance | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 3 deployments: base `0x05ef8b05398a8479739658e47428076d456398fb`; base `0x68ff207ab11c6b57b5eaf558838c9ea2bc06d4b9`; base `0xa0be614a5423ed76fddca142d6df3b4c8fc79f89` | ⚠️ Unaudited |
| TruthMarketLPManager | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x909a43e35b8dfb837e32f4d8b84f5e197e5b42cb`; base `0xea477d1d225a53cb5a40601e5f3b86ab53b9858a` | ⚠️ Unaudited |
| TruthMarketManager | governance | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 3 deployments: base `0x21d652af137bfb34d16a4103f3b75e1e4fbbe7b5`; base `0x7bdae0709f2ecd07e176822b79206b0b67275999`; base `0x83eaed0f3122d9fe02dd4c574b94bc57c9eeae2d` | ⚠️ Unaudited |
| TruthMarketManager | unknown | project_anchor | own_supporting | 1 | base | unit-394273 | `0x61a98bef11867c69489b91f340fe545eefc695d7` | ⚠️ Unaudited |
| TruthMarketManager | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | unit-394270 | `0x8ddf40edfb8325b4e1bdc17ac20e610718d6dbe6` | ⚠️ Unaudited |
| TruthMarketSwapValidator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x55e26cf92b924c069db4d8da7b0b36154374dd38` | ⚠️ Unaudited |
| TruthMarketV2 | unknown | project_anchor | own_supporting | 0 | base | unit-394269 | `0x2ca897f98f6a45729968f0057f1fbf88db3e3409` | ⚠️ Unaudited |
| TruthMarketV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: base `0x74ffbbe9e2d4895a2ea75ae1803a39c71715b58c`; base `0x8e40e16ebb1612b7592bac4f1c2df2ec68aa43da` | ⚠️ Unaudited |
| TruthMarketV2Launcher | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x7bb366c772869be102cccf69cce11af9c5156b73`; base `0xdb5c23bf232fcb71ce7a8db4c15f6676a945bd22` | ⚠️ Unaudited |
| TruthMarketV2LPManager | governance | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: base `0x1a6008a93cad0dd562ac071107b23ed4b9833443`; base `0x42db467b42f45128372a1be43d452819a82bb04c` | ⚠️ Unaudited |
| TruthMarketV2LPManager | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x351539e4cdecd67360b0d8d3e3476c644bb6968d`; base `0x5278adeed2e9e6534d8d1bdb9b64afdd571e451b` | ⚠️ Unaudited |
| TruthMarketV2ProportionalDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x5bfcba7ddfc95420a56a00b0c133fa1ff312411a` | ⚠️ Unaudited |
| TruthMarketV2SingleSideLiquidityPositionDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x954a4c1415f33919244260e741b58e2ae9ab57d3` | ⚠️ Unaudited |
| UniswapV2Pair | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x1fae246b1b2d0ce47126bbb109850da355352d77` | ⚠️ Unaudited |
| UniswapV3Factory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x33128a8fc17869897dce68ed026d694621f6fdfd` | ⚠️ Unaudited |
| UniswapV3Staker | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x42be4d6527829fefa1493e1fb9f3676d2425c3c1` | ⚠️ Unaudited |
| UniversalRouter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x6ff5693b99212da76ad316178a184ab56d299b43` | ⚠️ Unaudited |
| UniversalRouterAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x0a1afc2121b4441127a02def72928f61f564034a`; base `0x647474acd39801e3c612d048a21499f9fa14c19e` | ⚠️ Unaudited |
| V3Migrator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x23cf10b1ee3adfca73b0ef17c07f7577e7acd2d7` | ⚠️ Unaudited |
| V3SwapStrategy | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x33961932a59d43d80b260eb866056fbe0afb3b65` | ⚠️ Unaudited |
| V4SwapStrategy | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x3f3da9e841fbcb5abb2a097cbb922e3ef7f7927e` | ⚠️ Unaudited |
| Yearn V3 Vault | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xb13cf163d916917d9cd6e836905ca5f12a1def4b` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (1)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x3334d83e224af5ef9c2e7dda7c7c98efd9621fa9` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 43
- Live contracts: 5
- Unknown liveness contracts: 38
- Source-verified contracts: 42
- Currently scope-matched contracts retained as-is: 0
- Contract rows sorted by chain, deployer, classification, contract name, then address.
- Classification counts: candidate review=3, contamination review=6, exact address book overlap=3, source verified unclassified=30, unverified unclassified=1

| Chain | Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|---|
| base | contamination review | CrossChainAccount<br>`0x31fafd4889fa1269f7a13a66ee0fb458f27d72a9` | non_address_book | unknown | unknown | verified | n/a | `0x7ac7499f3754b65cf9089db328ef51151a78ec00` |
| base | contamination review | TickLens<br>`0x0cdee061c75d43c82520ed998c23ac2991c9ac6d` | non_address_book | unknown | unknown | verified | n/a | `0x7ac7499f3754b65cf9089db328ef51151a78ec00` |
| base | source verified unclassified | NFTDescriptor<br>`0xf9d1077fd35670d4acbd27af82652a8d84577d9f` | non_address_book | unknown | unknown | verified | n/a | `0x7ac7499f3754b65cf9089db328ef51151a78ec00` |
| base | source verified unclassified | NonfungibleTokenPositionDescriptor<br>`0x4f225937edc33efd6109c4cef7b560b2d6401009` | non_address_book | unknown | unknown | verified | n/a | `0x7ac7499f3754b65cf9089db328ef51151a78ec00` |
| base | source verified unclassified | QuoterV2<br>`0x3d4e44eb1374240ce5f1b871ab261cd16335b76a` | non_address_book | unknown | unknown | verified | n/a | `0x7ac7499f3754b65cf9089db328ef51151a78ec00` |
| base | source verified unclassified | TransparentUpgradeableProxy<br>`0x4615c383f85d0a2bbed973d83ccecf5cb7121463` | non_address_book | unknown | unknown | verified | n/a | `0x7ac7499f3754b65cf9089db328ef51151a78ec00` |
| base | source verified unclassified | V3Migrator<br>`0x23cf10b1ee3adfca73b0ef17c07f7577e7acd2d7` | non_address_book | unknown | unknown | verified | n/a | `0x7ac7499f3754b65cf9089db328ef51151a78ec00` |
| base | unverified unclassified | UnnamedContract<br>`0x3334d83e224af5ef9c2e7dda7c7c98efd9621fa9` | non_address_book | unknown | unknown | unverified | n/a | `0x7ac7499f3754b65cf9089db328ef51151a78ec00` |
| base | candidate review | TruthMarketManager<br>`0x7bdae0709f2ecd07e176822b79206b0b67275999` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0xa9d19dd30540fb39c8e058e81daa21ffccfb4a57` |
| base | candidate review | TruthMarketManager<br>`0x8ddf40edfb8325b4e1bdc17ac20e610718d6dbe6` | retained_scope_excluded_inventory | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0xa9d19dd30540fb39c8e058e81daa21ffccfb4a57` |
| base | candidate review | TruthMarketV2Launcher<br>`0x7bb366c772869be102cccf69cce11af9c5156b73` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xa9d19dd30540fb39c8e058e81daa21ffccfb4a57` |
| base | contamination review | BinaryOutcomePlugin<br>`0xfb9103796666fa075d5299a4c900fa534ac2f3ba` | non_address_book | unknown | unknown | verified | n/a | `0xa9d19dd30540fb39c8e058e81daa21ffccfb4a57` |
| base | contamination review | RestrictDepositorPlugin<br>`0x882a6b6ffa5500911c47523b8b4d4fb149e24629` | non_address_book | unknown | unknown | verified | n/a | `0xa9d19dd30540fb39c8e058e81daa21ffccfb4a57` |
| base | contamination review | RestrictMaximumRatioOfOutcomeDepositPlugin<br>`0xcb9d2ce83df3ea905f8b3e754e80bba0734b6fb1` | non_address_book | unknown | unknown | verified | n/a | `0xa9d19dd30540fb39c8e058e81daa21ffccfb4a57` |
| base | contamination review | RestrictMinimumDepositsPlugin<br>`0x0e84034243366b4c0db02319d5f858786408c840` | non_address_book | unknown | unknown | verified | n/a | `0xa9d19dd30540fb39c8e058e81daa21ffccfb4a57` |
| base | exact address book overlap | ERC1967Proxy<br>`0x61a98bef11867c69489b91f340fe545eefc695d7` | project_anchor | unknown | live | verified | n/a | `0xa9d19dd30540fb39c8e058e81daa21ffccfb4a57` |
| base | exact address book overlap | ERC1967Proxy<br>`0x8175b0a1e803ac4205ae35f614315ba801275baa` | project_anchor | unknown | live | verified | n/a | `0xa9d19dd30540fb39c8e058e81daa21ffccfb4a57` |
| base | exact address book overlap | ERC1967Proxy<br>`0xca7af04bc6d24eea67618c11b883be6851f198be` | project_anchor | unknown | live | verified | n/a | `0xa9d19dd30540fb39c8e058e81daa21ffccfb4a57` |
| base | source verified unclassified | ERC1967Proxy<br>`0x0a1afc2121b4441127a02def72928f61f564034a` | non_address_book | unknown | unknown | verified | n/a | `0xa9d19dd30540fb39c8e058e81daa21ffccfb4a57` |
| base | source verified unclassified | ERC1967Proxy<br>`0x351539e4cdecd67360b0d8d3e3476c644bb6968d` | non_address_book | unknown | unknown | verified | n/a | `0xa9d19dd30540fb39c8e058e81daa21ffccfb4a57` |
| base | source verified unclassified | ERC1967Proxy<br>`0x6e08d24aef78f6d1a97503f64e84fdf65f8125e1` | non_address_book | unknown | unknown | verified | n/a | `0xa9d19dd30540fb39c8e058e81daa21ffccfb4a57` |
| base | source verified unclassified | ERC1967Proxy<br>`0x7397ef691aeb47fe7ef2f7e908162e8d7a940b27` | non_address_book | unknown | unknown | verified | n/a | `0xa9d19dd30540fb39c8e058e81daa21ffccfb4a57` |
| base | source verified unclassified | ERC1967Proxy<br>`0x74793d6111448df69e5a617f55a9d71a729364f5` | non_address_book | unknown | unknown | verified | n/a | `0xa9d19dd30540fb39c8e058e81daa21ffccfb4a57` |
| base | source verified unclassified | ERC1967Proxy<br>`0x8078254008819bcfd9301fd68886433c2f81b792` | non_address_book | unknown | unknown | verified | n/a | `0xa9d19dd30540fb39c8e058e81daa21ffccfb4a57` |
| base | source verified unclassified | ERC1967Proxy<br>`0x909a43e35b8dfb837e32f4d8b84f5e197e5b42cb` | non_address_book | unknown | unknown | verified | n/a | `0xa9d19dd30540fb39c8e058e81daa21ffccfb4a57` |
| base | source verified unclassified | ERC1967Proxy<br>`0x9f04de860cc8b77044682a2706f39b81739a5417` | non_address_book | unknown | unknown | verified | n/a | `0xa9d19dd30540fb39c8e058e81daa21ffccfb4a57` |
| base | source verified unclassified | ERC1967Proxy<br>`0xdb5c23bf232fcb71ce7a8db4c15f6676a945bd22` | non_address_book | unknown | unknown | verified | n/a | `0xa9d19dd30540fb39c8e058e81daa21ffccfb4a57` |
| base | source verified unclassified | ERC1967Proxy<br>`0xed3ebc2e17a0cc20d22ff7b7d13488f187fd1af6` | non_address_book | unknown | unknown | verified | n/a | `0xa9d19dd30540fb39c8e058e81daa21ffccfb4a57` |
| base | source verified unclassified | Escalation<br>`0x0dc1f7cb16389716710826ce74544d71fc0644a0` | non_address_book | unknown | unknown | verified | n/a | `0xa9d19dd30540fb39c8e058e81daa21ffccfb4a57` |
| base | source verified unclassified | FeeCollector<br>`0x8c6c622a7de8cebd1a43e2fb8363ebbe9120134f` | non_address_book | unknown | unknown | verified | n/a | `0xa9d19dd30540fb39c8e058e81daa21ffccfb4a57` |
| base | source verified unclassified | Launchpad<br>`0x8b9b6423b592629feadac50e2da0f7b282e44147` | non_address_book | unknown | unknown | verified | n/a | `0xa9d19dd30540fb39c8e058e81daa21ffccfb4a57` |
| base | source verified unclassified | LaunchpadFactory<br>`0xaa35bc58cb282bcf0c7f4c443a3dbce63ed7ee02` | non_address_book | unknown | unknown | verified | n/a | `0xa9d19dd30540fb39c8e058e81daa21ffccfb4a57` |
| base | source verified unclassified | OracleBonds<br>`0xff21c2c73784d35578f497e2d6975d8a430d7b9a` | retained_scope_excluded_inventory | unknown | live | verified | n/a | `0xa9d19dd30540fb39c8e058e81daa21ffccfb4a57` |
| base | source verified unclassified | OracleCouncil<br>`0xf1df87646205850af7c18e7ca4514cf84d87481a` | retained_scope_excluded_inventory | unknown | live | verified | n/a | `0xa9d19dd30540fb39c8e058e81daa21ffccfb4a57` |
| base | source verified unclassified | OrderManager<br>`0x1cdb1c43eb64e99780ea9d3c7162c23432c59a1a` | non_address_book | unknown | unknown | verified | n/a | `0xa9d19dd30540fb39c8e058e81daa21ffccfb4a57` |
| base | source verified unclassified | TokenConverter<br>`0xb416f70c3e8ea4e71e2af262228cfdcbea63fbaf` | non_address_book | unknown | unknown | verified | n/a | `0xa9d19dd30540fb39c8e058e81daa21ffccfb4a57` |
| base | source verified unclassified | TokenConverter<br>`0xe4a50a6a41596abd38163921e3c0d1b99c44f864` | non_address_book | unknown | unknown | verified | n/a | `0xa9d19dd30540fb39c8e058e81daa21ffccfb4a57` |
| base | source verified unclassified | TruthMarketAdapter<br>`0x2bf3a47714c0275fcdf44d8052661f28cb553c0c` | non_address_book | unknown | unknown | verified | n/a | `0xa9d19dd30540fb39c8e058e81daa21ffccfb4a57` |
| base | source verified unclassified | TruthMarketLPManager<br>`0xea477d1d225a53cb5a40601e5f3b86ab53b9858a` | non_address_book | unknown | unknown | verified | n/a | `0xa9d19dd30540fb39c8e058e81daa21ffccfb4a57` |
| base | source verified unclassified | TruthMarketV2LPManager<br>`0x5278adeed2e9e6534d8d1bdb9b64afdd571e451b` | non_address_book | unknown | unknown | verified | n/a | `0xa9d19dd30540fb39c8e058e81daa21ffccfb4a57` |
| base | source verified unclassified | TruthMarketV2ProportionalDistributor<br>`0x5bfcba7ddfc95420a56a00b0c133fa1ff312411a` | non_address_book | unknown | unknown | verified | n/a | `0xa9d19dd30540fb39c8e058e81daa21ffccfb4a57` |
| base | source verified unclassified | TruthMarketV2SingleSideLiquidityPositionDistributor<br>`0x954a4c1415f33919244260e741b58e2ae9ab57d3` | non_address_book | unknown | unknown | verified | n/a | `0xa9d19dd30540fb39c8e058e81daa21ffccfb4a57` |
| base | source verified unclassified | UniversalRouterAdapter<br>`0x647474acd39801e3c612d048a21499f9fa14c19e` | non_address_book | unknown | unknown | verified | n/a | `0xa9d19dd30540fb39c8e058e81daa21ffccfb4a57` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

- No persisted address-book scope analysis is available.

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| base | `0x8175b0a1e803ac4205ae35f614315ba801275baa` | OracleBonds | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xca7af04bc6d24eea67618c11b883be6851f198be` | OracleCouncil | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x8e5e63f69bf7ef2a24f5247c2bfc3946b95e3da7` | OrderManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xb7b53c6b219a29afd8f2ebbed1ea2b8867eef3d1` | TruthMarket | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x61a98bef11867c69489b91f340fe545eefc695d7` | TruthMarketManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x2ca897f98f6a45729968f0057f1fbf88db3e3409` | TruthMarketV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 51 |
| upstream | 4 |
| standard_library | 2 |
| needs_review | 1 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 0 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
