# Agentic Audit Brief: Aequinox

## Export Authority

- Production state: **blocked no audit authority**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 0 (0 matched; 0 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Aequinox (`aequinox`)
- Website: [https://www.aequinox.exchange/](https://www.aequinox.exchange/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: bsc
- Contract surface: 78 unique implementations (78 raw deployments)
- Coverage basis: not assessable — No eligible owned address-book contracts are available for an operational-liveness denominator.
- DeFi Llama TVL: $627,190.87
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

The closed normalized authority records no EVM contract logic or eligible security audit for this project. This is an explicit cohort state, not a skipped export.

## Project Description

No contract logic was present for Aequinox in the closed normalized topography run; this brief does not infer a protocol purpose from missing code.

### Architecture

The activated project remains an explicit cohort member with an empty normalized logic-topography closure.

## Logic Topography

- Exact-run contract rows: 0
- Structural roles: none
- Contract kinds: none
- Detected standards: none
- Frameworks: none
- Upgradeable-pattern rows: 0

## Contract Surface Quality

- Operational liveness prerequisite: not_applicable; 0/0 eligible owned address-book contracts resolved from completed operational-liveness snapshots.
- Logic-topography rows: 0; live/inactive and live-deployment-unit totals are withheld until liveness completes.
- Detected codebases: balancer-v2, uniswap-v2, uniswap-v3
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No eligible owned address-book contracts are available for an operational-liveness denominator.
- Address-book implementation classification: 0 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 78 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 20
- Operational liveness: not_applicable; 0/0 eligible owned address-book contracts resolved. Deployed-live counts are withheld from coverage.
- All block-explorer-verified implementations audited (incl. non-live): 0/78
- Verified + Unaudited implementations: 78
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 78
- Raw deployments: 78
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

### ⚠️ Verified + Unaudited (78)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AaltoToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-120524 | `0x8521adb56cfb340a980aa48e092d40c967a89610` | ⚠️ Unaudited |
| AeqDelayRecovery | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-120509 | `0x4be42e82a3401dbbd9bf5d703f453cc26238e81d` | ⚠️ Unaudited |
| AequinoxToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-120485 | `0x0ddef12012ed645f12aeb1b845cb5ad61c7423f5` | ⚠️ Unaudited |
| AuthorizerAdaptor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-120528 | `0xc36e4d42ee9ea51ea876161fdb31f2670a3860b3` | ⚠️ Unaudited |
| AuthorizerAdaptorEntrypoint | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-120503 | `0x2c9ce53f90457e72cea8291232ca225207ef616f` | ⚠️ Unaudited |
| BALTokenHolder | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-120523 | `0x84e4992f913bc64f92c48665be454d739ef2279b` | ⚠️ Unaudited |
| BatchRelayerLibrary | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-120513 | `0x5bcb2fba3f757ff32cf3bb508790eed51c05155b` | ⚠️ Unaudited |
| BscPayoutListener | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-120507 | `0x3d8d163c2d6c07de11f408742200d48c142ea0c9` | ⚠️ Unaudited |
| BscPayoutManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-120478 | `0x012f1ccb40db36868a36cfc64e852fd0f595cef7` | ⚠️ Unaudited |
| ComposableStablePoolFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-120534 | `0xfd50f5ead870bdcfa69940c41a5c10f015b419e7` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | unit-120538 | `0x01b239a3910f6f12653698b1bd376318db532d9f` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | unit-120536 | `0x049915356d236a93ff235098042fb27301a9bdf4` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | unit-120552 | `0x0681429cc0b3f3e181237fe0095fa008abf78916` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | unit-120553 | `0x08c1f9cf8601ed74d7b89ba64c7b23d13127a5b1` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | unit-120540 | `0x0a1d6ca79cf1a346c458fd21511d5d5509817401` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | unit-120546 | `0x0cc9cc5ebfb92bc02f4262d3a8a2286b5e34d90e` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | unit-120548 | `0x0e1c88230527e646a7f2e555b92c7f2e379fac52` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | unit-120545 | `0x13b8883fce15f9dc035621d09b97afe46cf11934` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | unit-120537 | `0x2070a825b8aeb4c7dca076fb0a7a50f145b3aa77` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | unit-120541 | `0x3e62b3605148082aaff1916d3667f73af2ce52de` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | unit-120539 | `0x4e55b26f3be9e954ab26ca0fc28cce8498310cb9` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | unit-120535 | `0x5335e87930b410b8c5bb4d43c3360aca15ec0c8c` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | unit-120542 | `0x549e68a9dfc9acebe13cc7339f223713af32363c` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | unit-120550 | `0x642ab9e4ae1651eb1ef7407aa3b89180faecb14e` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | unit-120549 | `0x7f947d141fed32595916e150740a5e60d479e95f` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | unit-120543 | `0x9489d4769d3abd3483421fbff41bd6c7fe8541ca` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | unit-120551 | `0xaae3a8725bae9a799c78bcd19b592bc9dbbd7a32` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | unit-120554 | `0xb9d731080b9e862c3a6b7eaf0e5a086614d0a2d9` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | unit-120544 | `0xe4be0f206828be0b5d48142f465abd4e57db58d4` | ⚠️ Unaudited |
| ERC4626LinearPoolFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-120496 | `0x202fe8ba86ca85872577fab79ba78ad192e79c02` | ⚠️ Unaudited |
| GaugeControllerQuerier | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-120525 | `0xab31c0e1019a8e08748235a76f94497af9d8718e` | ⚠️ Unaudited |
| GovernanceToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-120514 | `0x5be975013095aea033db098787c56e5867107060` | ⚠️ Unaudited |
| LiquidityGaugeFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-120488 | `0x0fa1097a49f54420cc5895455345dc605ee8d3c4` | ⚠️ Unaudited |
| Mark2Market | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-120506 | `0x319d9e35ef3f3375d24fa4b0b24aa317520d2400` | ⚠️ Unaudited |
| Market | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-120515 | `0x5d0c9eef4fd6d1c07b5a71da6b7519b85768f524` | ⚠️ Unaudited |
| MetaStablePoolFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-120494 | `0x1af7cb48aca54a3d94929204e7961b356fca8636` | ⚠️ Unaudited |
| Migrator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-120517 | `0x66085c15b51279ccbb78867fdec715ad97e7786b` | ⚠️ Unaudited |
| OvnGovernor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-120510 | `0x53242b160e050d97202c33cb1b5c07428a2789ff` | ⚠️ Unaudited |
| OvnTimelockController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-120521 | `0x7a645a2ab6bdcb9cf7913635d35e3e63d5378f8d` | ⚠️ Unaudited |
| ProtocolFeePercentagesProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-120527 | `0xae5c815cb1a7d7790406355f3df5b3780e02b3c7` | ⚠️ Unaudited |
| ProxyAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-120490 | `0x15c08cccc1a992915a48346b944de855f50bb95e` | ⚠️ Unaudited |
| QuartzVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-120498 | `0x25b5118229061cde8b7a46a49184d6174bf89345` | ⚠️ Unaudited |
| QueryProcessor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-120484 | `0x0ab5941d13c04a6fa1c4f3f0a500d0c827145adc` | ⚠️ Unaudited |
| SharesVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-120501 | `0x2873f782d761bd47ef575ce447a96c0ece5e5d89` | ⚠️ Unaudited |
| SmartChefFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-120486 | `0x0f7ab431d830fa1c84bf39540178d940ffa7d852` | ⚠️ Unaudited |
| StablePhantomPoolFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-120529 | `0xd3b0fec464290268e43684eeb05013ea01af64bc` | ⚠️ Unaudited |
| StrategyAequinoxBusdUsdcUsdt | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-120480 | `0x05bb0d73a5d62c21de515052ad9270a90ac5d104` | ⚠️ Unaudited |
| StrategyConeBusdUsdc | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-120492 | `0x166fec4db5dbf8ffd75c19fabfa100d938d73bf8` | ⚠️ Unaudited |
| StrategyEllipsisDotDotBusd | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-120479 | `0x02803f6fcb3eda19c854b2defb39cbc3817ed986` | ⚠️ Unaudited |
| StrategyMagpieBusd | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-120512 | `0x5904847b6040e95fc6c5a9f165c7c2dabbe1df7d` | ⚠️ Unaudited |
| StrategyMagpieUsdc | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-120519 | `0x6d27c7e1091cfe78b7b80c3ae52b7a4ee6051613` | ⚠️ Unaudited |
| StrategyQuartzLP | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-120493 | `0x177ba7dd27699f8a3df1481d39948d8c53908a4e` | ⚠️ Unaudited |
| StrategyRadpieUsdt | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-120499 | `0x2784ff8581778ce0e9d6b795fb8e1ec8b8684e0e` | ⚠️ Unaudited |
| StrategySharesLP | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-120477 | `0x00876bcdddacf055a25b89c7a396a9977955f533` | ⚠️ Unaudited |
| StrategyThenaBusdUsdc | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-120526 | `0xad8fcfc1454a8ed328e780588aa779ab2e14a088` | ⚠️ Unaudited |
| StrategyThenaBusdUsdt | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-120511 | `0x578ada3ecbc3ed31d1755b927c8b2988a761078a` | ⚠️ Unaudited |
| StrategyThenaUsdcUsdt | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-120532 | `0xe2fe8783cdc724ec021ff9052ee8ebed00e6248e` | ⚠️ Unaudited |
| StrategyThenaUsdtUsdc | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-120533 | `0xfc572d81a1295a5b62641c216e621375856defcb` | ⚠️ Unaudited |
| StrategyUnknownBusdTusd | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-120505 | `0x31921eed60d8654814152e55bd0f83da9b548540` | ⚠️ Unaudited |
| StrategyUsdcUsdtPlus | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-120518 | `0x6a7b6be5d18951293a4550d7d84e6828e5e21b60` | ⚠️ Unaudited |
| StrategyUsdPlusUsdt | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-120497 | `0x2262d82e682eedbe7fbe25dbe891322d9474a739` | ⚠️ Unaudited |
| StrategyVenusBusd | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-120483 | `0x09e1902abcfb29f688049ef8d13e1b3ba2966cba` | ⚠️ Unaudited |
| StrategyVenusUsdc | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-120495 | `0x1e9c2b867597592eaad09fd6159f6b9a9dac535a` | ⚠️ Unaudited |
| StrategyVenusUsdt | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-120508 | `0x4a3ebae2fb28aa96cf570854715cbe37d9d9d475` | ⚠️ Unaudited |
| StrategyWombatBusdUsdc | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-120504 | `0x2de53ad924375f5fbaed7694eea98c7b678c73e0` | ⚠️ Unaudited |
| StrategyWombexBusd | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-120491 | `0x1609b0849ce1ea7f1438ef86157cd9c8e800b583` | ⚠️ Unaudited |
| StrategyWombexUsdc | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-120516 | `0x5d5696dec88be163de85d6da3a18c3ac175f915e` | ⚠️ Unaudited |
| StrategyWombexUsdt | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-120487 | `0x0f946dcac86b4a27d5a37d9a7facb976bb971ba7` | ⚠️ Unaudited |
| TimelockAuthorizer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-120531 | `0xd5dcc8ef9b87e1f966e9b1ca3a7b319a85e45429` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | unit-120547 | `0x1eb564ce4ae3d337dc5a47eb6f412c478ab11a6a` | ⚠️ Unaudited |
| UsdPlusToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-120481 | `0x064bd8876750419de0814dd07f9969c2319e3e48` | ⚠️ Unaudited |
| Vault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-120500 | `0x283405ed2b159adb6e2ef79d5049e05e9e829fc5` | ⚠️ Unaudited |
| VestingVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-120530 | `0xd4afeae1d8e7b88f334d175c56604e2bf34cc8ef` | ⚠️ Unaudited |
| Vyper_contract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-120482 | `0x06aba6e8f69a0be680f96d923efb682e63db6a9f` | ⚠️ Unaudited |
| WeightedPool2TokensFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-120522 | `0x7e29fe79cbbe9eaca251bcddd57c97377a97e8c6` | ⚠️ Unaudited |
| WeightedPoolFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-120502 | `0x28bcef6c737eb4ab77c8eb2c30587c1704e7d3b5` | ⚠️ Unaudited |
| WrappedRebaseToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-120489 | `0x12b70d84dab272dc5a24f49bdbf6a4c4605f15da` | ⚠️ Unaudited |
| ZapperFlex | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-120520 | `0x795a82143e7a580e24a6603624ea3b63894c87a7` | ⚠️ Unaudited |

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

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

- No persisted address-book scope analysis is available.

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 57 |
| upstream | 0 |
| standard_library | 21 |
| needs_review | 0 |

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
