# Agentic Audit Brief: Unichain Bridge

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

- Project: Unichain Bridge (`unichain-bridge`)
- Website: [https://www.unichain.org](https://www.unichain.org)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: ethereum, sepolia, unichain
- Contract surface: 61 unique implementations (71 raw deployments)
- Coverage basis: not assessable — No eligible owned address-book contracts are available for an operational-liveness denominator.
- DeFi Llama TVL: $2,187,994.07
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 0 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

This brief describes the observed EVM deployment and audit surface for Unichain Bridge. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 12 contract row(s) across ethereum, sepolia, unichain. Structural roles: 7 unclassified, 4 supporting, 1 core. 4 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 12
- Structural roles: unclassified (7), supporting (4), core (1)
- Contract kinds: contract (12)
- Detected standards: erc1967proxy (3)
- Frameworks: openzeppelin (4), openzeppelin-upgradeable (4), solmate (4)
- Upgradeable-pattern rows: 4

## Contract Surface Quality

- Operational liveness prerequisite: not_applicable; 0/0 eligible owned address-book contracts resolved from completed operational-liveness snapshots.
- Logic-topography rows: 12; live/inactive and live-deployment-unit totals are withheld until liveness completes.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No eligible owned address-book contracts are available for an operational-liveness denominator.
- Address-book implementation classification: 0 own, 29 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 32 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 4 standard proxy/library)
- Proxy deployments represented within implementation groups: 37
- Operational liveness: not_applicable; 0/0 eligible owned address-book contracts resolved. Deployed-live counts are withheld from coverage.
- All block-explorer-verified implementations audited (incl. non-live): 0/44
- Verified + Unaudited implementations: 44
- Verified by bytecode match: 0
- Unverified implementations: 17
- Unique implementations: 61
- Raw deployments: 71
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

### ⚠️ Verified + Unaudited (44)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AddressManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x7e2e1fe92d67f0199708056a22c34d1331b8def6`; ethereum `0xc9fd0ff9a7aca948fe21cc515e169795179fce07` | ⚠️ Unaudited |
| AddressManager | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-259733 | `0x8098f676033a377b9defe302e9fe6877cd63d575` | ⚠️ Unaudited |
| AnchorStateRegistry | registry | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x27cf508e4e3aa8d30b3226ac3b5ea0e8bcacaff9` | ⚠️ Unaudited |
| AnchorStateRegistry | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | ethereum | unit-259736 | `0x318a642db9e24a85318b8bf18efd5287ba38643b` | ⚠️ Unaudited |
| AnchorStateRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x40152233ec04c4c9894ab804f7a932ee8dd76e48` | ⚠️ Unaudited |
| Challenger1of2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x35d539d303b1baf30ec59b81044fad70bc4efcd1` | ⚠️ Unaudited |
| DelayedWETH | token | non_address_book | non_address_book_inventory (excluded) | 2 | ethereum | n/a | 2 deployments: ethereum `0x0bdbec6bd35571f97f96f3ed21822a4f2e071a3c`; ethereum `0xe62b0279f6a466c5e1676f3ea955086300bcd0ac` | ⚠️ Unaudited |
| DelayedWETH | unknown | non_address_book | non_address_book_inventory (excluded) | 4 | ethereum | n/a | 4 deployments: ethereum `0x4755de7b3ea590d76eb15e1217456e948075826f`; ethereum `0x7d8ea656d7417229f420b0c87f6428baa8499d70`; ethereum `0x92ac36624399fa4bacf32bdc0f4f0d50cb04230d`; ethereum `0xc49b2df077ef27847d8ade07fbf734a1fe9a9da2` | ⚠️ Unaudited |
| DisputeGameFactory | registry | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | ethereum | unit-259737 | `0x2f12d621a16e2d3285929c9996f478508951dfe4` | ⚠️ Unaudited |
| DisputeGameFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x86a380b7ce4f036cf7e1a4fb1dd1ed9349989be9` | ⚠️ Unaudited |
| ETHLockbox | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x08ba0023ed60c7bd040716dd13c45fa0062df5c5` | ⚠️ Unaudited |
| FaultDisputeGameV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6ddba09bc4ccb0d6ca9fc5350580f74165707499` | ⚠️ Unaudited |
| GnosisSafe | governance | non_address_book | standard_proxy_or_library (excluded) | 2 | ethereum | n/a | 2 deployments: ethereum `0x847b5c174615b1b7fdf770882256e2d3e95b9d92`; ethereum `0xc2819dc788505aac350142a7a707bf9d03e3bd03` | ⚠️ Unaudited |
| L1CrossDomainMessenger | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | ethereum | unit-259741 | `0x9a3d64e386c18cb1d6d5179a9596a4b5736e98a6` | ⚠️ Unaudited |
| L1ERC721Bridge | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x3080177e8503b63aa97f15caba69099d7668f339` | ⚠️ Unaudited |
| L1ERC721Bridge | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | ethereum | unit-259738 | `0xd04d0d87e0bd4d2e50286760a3ef323fea6849cf` | ⚠️ Unaudited |
| L1LidoTokensBridge | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x755610f5be536ad7afbaa7c10f3e938ea3aa1877` | ⚠️ Unaudited |
| L1StandardBridge | bridge_template | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | ethereum | unit-259740 | `0x81014f44b0a345033bb2b3b21c7a1a308b35feea` | ⚠️ Unaudited |
| L1StandardBridge | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x9e7569992f417cad770b8114d2df4078f0b98eb5` | ⚠️ Unaudited |
| L2CrossDomainMessenger | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | unichain | n/a | `0x4200000000000000000000000000000000000007` | ⚠️ Unaudited |
| L2StandardBridge | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 1 | unichain | n/a | `0x4200000000000000000000000000000000000010` | ⚠️ Unaudited |
| L2ToL1MessagePasser | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | unichain | n/a | `0x4200000000000000000000000000000000000016` | ⚠️ Unaudited |
| MIPS64 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6463dee3828677f6270d83d45408044fc5edb908` | ⚠️ Unaudited |
| OpStackTokenRatePusher | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3f9600439ad97fc6f55c2ac7c118f8fd0595eb74` | ⚠️ Unaudited |
| OptimismMintableERC20Factory | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x98742ec6718b49c32aee6daccf5245980fa5d286` | ⚠️ Unaudited |
| OptimismMintableERC20Factory | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | ethereum | unit-259739 | `0xa2b597eaeacb6f627e088cbead319e934ed5edad` | ⚠️ Unaudited |
| OptimismMintableERC20Factory | registry | non_address_book | non_address_book_inventory (excluded) | 1 | unichain | n/a | `0x4200000000000000000000000000000000000012` | ⚠️ Unaudited |
| OptimismPortal2 | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | ethereum | unit-259743 | `0x0bd48f6b86a26d3a217d0fa6ffe2b491b956a7a2` | ⚠️ Unaudited |
| OptimismPortal2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xd3a31c6de8f346e5b456fbc3e4b5eabb3a2b3963` | ⚠️ Unaudited |
| PermissionedDisputeGame | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0xa35f3d6b5c1ab1de36fe830fc4288fd585685772`; ethereum `0xb2872ec9e7074d5838d9a27ae06c53dba8669e8d` | ⚠️ Unaudited |
| PermissionedDisputeGameV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x58bf355c5d4edfc723ef89d99582eccfd143266a` | ⚠️ Unaudited |
| PreimageOracle | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1fb8cdfc6831fc866ed9c51af8817da5c287add3` | ⚠️ Unaudited |
| PreimageOracle | operational_periphery | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-259734 | `0x9c065e11870b891d214bc2da7ef1f9ddfa1be277` | ⚠️ Unaudited |
| Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x86b30e3263250c9f947cdb711a2c16cda81d9adf` | ⚠️ Unaudited |
| Proxy | proxy | non_address_book | standard_proxy_or_library (excluded) | 1 | unichain | n/a | `0x420000000000000000000000000000000000000f` | ⚠️ Unaudited |
| Proxy | proxy | non_address_book | standard_proxy_or_library (excluded) | 1 | unichain | n/a | `0x4200000000000000000000000000000000000015` | ⚠️ Unaudited |
| ProxyAdmin | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-259732 | `0x3b73fa8d82f511a3cae17b5a26e4e1a2d5e2f2a4` | ⚠️ Unaudited |
| ProxyAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x48ff88f3e71c05217f6572b735e1cb5f2a80fa9d`; ethereum `0xb1b8a68841220fa442048f9c2f976315478ab3b9` | ⚠️ Unaudited |
| ResolvedDelegateProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x374454d6c756c8b594ff9aa799ad8dbfd93f2124` | ⚠️ Unaudited |
| Safe | unknown | non_address_book | standard_proxy_or_library (excluded) | 3 | ethereum | n/a | 3 deployments: ethereum `0x6d5b183f538abb8572f5cd17109c617b994d5833`; ethereum `0x9245d5d10aa8a842b31530de71ea86c0760ca1b1`; ethereum `0xb0c4c487c5cf6d67807bc2008c66fa7e2ce744ec` | ⚠️ Unaudited |
| SequencerFeeVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 1 | unichain | n/a | `0x4200000000000000000000000000000000000011` | ⚠️ Unaudited |
| SuperchainConfig | governance | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | ethereum | unit-259742 | `0x95703e0982140d16f8eba6d158fccede42f04a4c` | ⚠️ Unaudited |
| SystemConfig | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x1f5ef8626a313a32d314664f6d42431f92f2d6c1` | ⚠️ Unaudited |
| SystemConfig | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | ethereum | unit-259735 | `0xc407398d063f942febbcc6f80a156b47f3f1bda6` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (17)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | ethereum | n/a | `0x000000000022d473030f116ddee9f6b43ac78ba3` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | ethereum | n/a | `0x1f98431c8ad98523631ae4a59f267346ea31f984` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | ethereum | n/a | `0x5c69bee701ef814a2b6a3edd4b1652cb9cc5aa6f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | ethereum | n/a | `0xbc708b192552e19a088b4c4b8772aeea83bcf760` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0x0d83dab629f0e0f9d36c0cbc89b69a489f0751bd` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0x2bf403e5353a7a082ef6bb3ae2be3b866d8d3ea4` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0x448a37330a60494e666f6dd60ad48d930aeba381` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0x4696b5e042755103fe558738bcd1ecee7a45ebfe` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0x8d8a20ccbeae2bf13f4e7e97970a979097858758` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0xad0a6f4f1503048c34d90df845c37c876407355a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0xaee94b9ab7752d3f7704bde212c0c6a0b701571d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0xdf7977c3005730329a160637e8cb9f1675a4d9be` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0xe7e23eba32a6fd2ac79dd5ec72fe7f6217b41bdc` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0xea58fca6849d79ead1f26608855c2d6407d54ce2` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0xef1295ed471dfec101691b946fb6b4654e88f98a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0xeff73e5aa3b9aec32c659aa3e00444d20a84394b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0xf971f1b0d80eb769577135b490b913825bfcf00b` | ❓ Unverified |

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
| native | 37 |
| upstream | 0 |
| standard_library | 7 |
| needs_review | 17 |

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
