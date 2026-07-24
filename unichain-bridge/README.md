# Agentic Audit Brief: Unichain Bridge

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

- Project: Unichain Bridge (`unichain-bridge`)
- Website: [https://www.unichain.org](https://www.unichain.org)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: ethereum, sepolia, unichain
- Contract surface: 219 unique implementations (229 raw deployments)
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
- Address-book implementation classification: 0 own, 68 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 151 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 4 standard proxy/library)
- Proxy deployments represented within implementation groups: 37
- Operational liveness: not_applicable; 0/0 eligible owned address-book contracts resolved. Deployed-live counts are withheld from coverage.
- All block-explorer-verified implementations audited (incl. non-live): 0/44
- Verified + Unaudited implementations: 44
- Verified by bytecode match: 0
- Unverified implementations: 175
- Unique implementations: 219
- Raw deployments: 229
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

### ❓ Unverified (175)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | ethereum | n/a | `0x000000000022d473030f116ddee9f6b43ac78ba3` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | ethereum | n/a | `0x1f98431c8ad98523631ae4a59f267346ea31f984` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | ethereum | n/a | `0x5c69bee701ef814a2b6a3edd4b1652cb9cc5aa6f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x8062abc286f5e7d9428a0ccb9abd71e50d93b935` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | ethereum | n/a | `0xbc708b192552e19a088b4c4b8772aeea83bcf760` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | unichain | n/a | `0x000000000022d473030f116ddee9f6b43ac78ba3` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | unichain | n/a | `0x00000006021a6bce796be7ba509bbba71e956e37` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | unichain | n/a | `0x0555e30da8f98308edb960aa94c0db47230d2b9c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | unichain | n/a | `0x078d782b760474a361dda0af3839290b0ef57ad6` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | unichain | n/a | `0x0dfa04b28ab68ffd0e6e17fac6ec16d4846a2004` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | unichain | n/a | `0x14d9143becc348920b68d123687045db49a016c6` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | unichain | n/a | `0x15d0e0c55a3e7ee67152ad7e89acf164253ff68d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | unichain | n/a | `0x1f98400000000000000000000000000000000002` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | unichain | n/a | `0x1f98400000000000000000000000000000000003` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | unichain | n/a | `0x1f98400000000000000000000000000000000004` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | unichain | n/a | `0x2416092f143378750bb29b79ed961ab195cceea5` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | unichain | n/a | `0x284f11109359a7e1306c3e447ef14d38400063ff` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | unichain | n/a | `0x333e3c607b141b18ff6de9f258db6e77fe7491e0` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | unichain | n/a | `0x385a5cf5f83e99f7bb2852b6a19c3538b9fa7658` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | unichain | n/a | `0x4200000000000000000000000000000000000006` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | unichain | n/a | `0x4529a01c7a0410167c5740c487a8de60232617bf` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | unichain | n/a | `0x55e74a5c3310bbccdd0b655ade2309e0d0d25826` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | unichain | n/a | `0x73855d06de49d0fe4a9c42636ba96c62da12ff9c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | unichain | n/a | `0x73e0c0d45e048d25fc26fa3159b0aa04bfa4db98` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | unichain | n/a | `0x7dcc39b4d1c53cb31e1abc0e358b43987fef80f7` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | unichain | n/a | `0x7e10036acc4b56d4dfca3b77810356ce52313f9c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | unichain | n/a | `0x86e8631a016f9068c3f085faf484ee3f5fdee8f2` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | unichain | n/a | `0x8f187aa05619a017077f5308904739877ce9ea21` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | unichain | n/a | `0x9151434b16b9763660705744891fa906f660ecc5` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | unichain | n/a | `0x927b51f251480a681271180da4de28d44ec4afb8` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | unichain | n/a | `0x943e6e07a7e8e791dafc44083e54041d743c46e9` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | unichain | n/a | `0x97fadb3d000b953360fd011e173f12cddb5d70fa` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | unichain | n/a | `0x9fb28449a191cd8c03a1b7abfb0f5996ecf7f722` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | unichain | n/a | `0xa06b10db9f390990364a3984c04fadf1c13691b5` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | unichain | n/a | `0xb7610f9b733e7d45184be3a1bc966960ccc54f0b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | unichain | n/a | `0xb9d0c246f306b1aaf02ae6ba112d5ef25e5b60dc` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | unichain | n/a | `0xbbe97f3522101e5b6976cbf77376047097ba837f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | unichain | n/a | `0xbde8a5331e8ac4831cf8ea9e42e229219eafab97` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | unichain | n/a | `0xbe51a5e8fa434f09663e8fb4cce79d0b2381afad` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | unichain | n/a | `0xc02fe7317d4eb8753a02c35fe019786854a92001` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | unichain | n/a | `0xc3eacf0612346366db554c991d7858716db09f58` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | unichain | n/a | `0xd5d76fa166ab8d8ad4c9f61aaa81457b66cbe443` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | unichain | n/a | `0xef740bf23acae26f6492b10de645d6b98dc8eaf3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x03197bb07d1c3e2b4ef0ce9c5202cce6a009fa39` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x039711c1e4e9b22b4b7d739aa3afc4fbcedd1e3e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x05befd01fcc0a272ebe8b72c0cabb17a8513b798` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0x0d83dab629f0e0f9d36c0cbc89b69a489f0751bd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x0e039cf11d5558bce6e73664710097726493f105` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x103f7758fb2bed3292b366324f2e00f2f5ebe04e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x10ba4aa447bf27665bd0bd1e71dfede3295ca051` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x1402c464418dbd43717e278cda8a421b3f97404f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x14db7a45480bf50e2edd6c838890bc188f801661` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x18f649fa7beb7fbb948f0d4a18ab8aad2edc899f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x1950b0cb41784900bd6534906a1966390f60992a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x1bf3d91f41c2fae8da011194600b5722aff4eec9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x23399e324002c12f83cfe78adaccbfdcbff3adda` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x2913ddf55975c8a5908c898fb4d079a0884f05a4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x2a82958845ddc647ce1d45f44a7038d6a2d363ac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x2a9b205b08753052c121e6f9c7e4e6bf64e4d93c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0x2bf403e5353a7a082ef6bb3ae2be3b866d8d3ea4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x2bf85a48e76ba5be475b4bca1c362da5f58c8c60` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x2c56d4146f14bf41aaf16b0ac646e12565b02dd3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x2f446ed1ae9405a82e48dc29797e888fc88fe89d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x30159d5658c9ef0de3415681e6ae6a286f0f0f02` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x322447f5bfa62f54a3a5ca1a77b1d4ce89fde30e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x324b37d835f99470ee60d328186965db47f6534e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x3303622d1710a919d776672a24a4fde968744b86` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x3523d98992a9c86283b7ebf72c598eee92d50b20` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x352bfd654a0698bdb5bf3ac0131b89f21ec7f82d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x3b7cbfca2748f28dff822e4b3c6526548af8a5a9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x3e0408c19cf89ce3d18dda4bda71ac605e54fbb7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x3e490a77aebd53888f81f586612565b87b096c67` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x3ece79a99af1c63bb166b8385a77d192426d766a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x42b0d330f2b4213a6658d84aaa2fe3d24ffb850e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x44753c9162e58695302a598e64566f971aa4f6d6` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0x448a37330a60494e666f6dd60ad48d930aeba381` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x449003c870b2f37eed9db01b2599dffdf0504030` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0x4696b5e042755103fe558738bcd1ecee7a45ebfe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x46d7210acab8c42f53866d06f320adb21ce8caff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x49af13438152095c3ec7820cd57558404442d6e5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x4a67cb29af51cedf70fc326e8c14b6ab01e7566c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x4cf110d1bd1387f8c0d7757de5e592ce0d0bc9b5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x4e46b71d285ef388c29951fd71c0db12256ea254` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x50fe3978ec04d6803ce3ca30075046287c6f2948` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x52878a9ad02d5aaba22a735a017eecc485a3d0b6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x53732808e2a242efee9e1d33e06eb8d2864653cd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x54010374029ae7370ab39fecc30e4af148e798e2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x5743d86457f75a829838d9f4dce206196c1fb40d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x5c0e76db39f2c0279823718e65bdf236a4a1e94e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x5f33716fa747537100723325a99d155ed261b38b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x5f4cb4fe3f35d26be8487c8bf169c62f3993104f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x64ff329a096e2eb75c5a8dafba1ed7f0755e09ef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x66c4ed7dafd8df4ad1e22e98568d56b80f70a690` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x67444705347186019e2f353c5c5cd776323fe357` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x6b3dc4d2318af361d9be6a84addfdf99d9b1f76d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x6c67dbd9d017efd998c6e51ccfb0590eb5b9d05e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x7019136b218ff39d20daf2c77987197e7b2d5c03` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x750f4ed83be8108694195ca24241fb71fed94285` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x766a1b930cbc5cdcbb92f8feca0a406156d13a81` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x7692fa89eb7027dd4e0606e0b0aeccac7c27e14a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x7806f28ae1fb8114d2164f26f42e157ec97de9c0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x7c9a5556e300a12ecc956e0c2d91db288ec35604` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x7e4cc299aaa66baddea6e70ab502354683d89f97` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x7e51734fdb8eb85268d46a3658486e037ade724f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x80b349b9f26ef82e1e5114434a2078d9ebab6d42` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x8298e32e9d911c673fa91d82f103fa183b660191` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x849292f3bb4f87356f183232fbdae5bd4aa5d277` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x8b23b6ac0f430219ef65a197980d204fcb490b03` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0x8d8a20ccbeae2bf13f4e7e97970a979097858758` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x90545d8e3faf85c74ab6c4078e8aae8c11e1566d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x90a9ecf0f894c3e197c708dddb011783e7ad3ba9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x91de55fe38619dd11b7ca7120c4de3d3dfc95a48` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x950f183a880cbd050511d47cc3138dd57294a2a5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x9a40bccb33dc5200fa058eb0f4fbb836918cf1fe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x9bb3794a3243d983419124f5880858f2c08b857d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x9c4d2ca4a70ce0161057d92136db971d2fc863bd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xa40c37473e6ceaadce5d98e92cf3724e3c057537` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xa71f3b2607e83d56f3aa44588ba19cc35a3190f2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xa943bbe9e50107df0547d22a7f89b5c2e95ddbfe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xa96d682cd73ffaf73c28fd0d3393c86e31e21cb3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xaa47be1a32646fb58a5ac505a146d1a1b17d8e8e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0xad0a6f4f1503048c34d90df845c37c876407355a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xad289f50c46d363e687ddf204cd786c21675aa1c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xad39ffad7017885fd1260c3224bcd26c54e60ffc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xae3a1a2b600147643a259bce31bdbb3d82ef686d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0xaee94b9ab7752d3f7704bde212c0c6a0b701571d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xafb37731944e003f61e9506749305757fb72be4d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xb3779a1f9f075fa8b8ac2a9b9a89991b083e5823` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xb3fc9e7d7aa96c5d3d1a325c8a10661dbb64b743` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xb44bf2684073398e9d17374916ef24b45377f9f7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xb92c6ac51e9b2ed50d8ba14d8c83cca88ba8930e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xba1425b2d48a732e3fadc99cde1b0647403571dc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xbbcd15c3b70e65c692c2f8b9e05310af4f924c77` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xbd2dcc00cfd8806703b5b17635cf249355f38c8b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xbd86ef77145fe75433cfb662416102eee6a55040` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xc06e82969c81ca6907107dd770a79a6883cf5064` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xc29edca97d04170c52cb3a83c4d3bcc80cb9adae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xc3aa33d126e36b9331c9e171ed2c5c2d101e76bd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xc6f8efcee11652cf86eee05f0b51566209a3d34f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xcc226c023f2b4a35231d8e7f4e6202873751a6ee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xce4d233d5e03644b531a807475c7bf25181ce7a7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xceb83618b3b335ec11e2b8c6edae73686a678c4f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xcfa1f89fcf74e2e3b494b636345d2ea1073ff489` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xd0c90c9b5f0e0c736a62982422c8dac530089e12` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xd22859dd87ea47ce8549153a14bbc13c110c2dd2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xd38d37a1144a26f71f5b38a3815c97c202014d8d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xd41989667deab0bb926ce84916b71cbc12810d48` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xd56fd9f7ef538b0e0336dbdf183601e48033c3c9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xd666f4a3bf187b623ddd41bff44d077a4fb17c43` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xd8847f3edd551578848b91617823464a06776525` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xdbf18388ddad1e65c4e5de8de038e5d74a00140e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xdc9be7a8c23f5e0cf92639103bc60f0201851fc7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xdf5a8fe735748f704bf4891ee9be7b5b5d850804` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0xdf7977c3005730329a160637e8cb9f1675a4d9be` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xe161943c157fd3e09fa83b3fd943bd675113822c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xe2dfc0251e3ee918458d5dde391a3ede0299b546` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xe307b109bb4fb8bdc5b77c14d216f4f55093ecc4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xe444dcc7c113c50cc11cf0e9807c1f0e60321f6a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xe5cb876b5d2ee804949c0cbee3eb57a07c79287c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xe5fc562069a361747305cd49c523fad318e59166` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0xe7e23eba32a6fd2ac79dd5ec72fe7f6217b41bdc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xe810a06d3a076bd4f2fb4c271ec9e21f12423c96` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xe988c95ec28403a5393ecf0437e96075b589a398` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0xea58fca6849d79ead1f26608855c2d6407d54ce2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xeaef3c3f4ca187a29845f9c391ccce3f27d4baa6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xee0ce4029ac13d3e5ac77a8c96b15940ce70ea2e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xee1eed220abde0cfbe367839923bd130b5a9a6dc` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0xef1295ed471dfec101691b946fb6b4654e88f98a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xef6af6fac366bfb518cb6014694ba7ddf4ed5e3c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0xeff73e5aa3b9aec32c659aa3e00444d20a84394b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xf0e13c830b94ea6b47708f7f9e02c0c9f0165ecf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xf55629eefeae5a985916812424d3bb0649cf9582` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xf782f43e5b5301dc50ed700a1eddc93b1cc76a26` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xf82ec77fa37f1f5d3bff2486d9f1497212789c7c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0xf971f1b0d80eb769577135b490b913825bfcf00b` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 147
- Live contracts: 0
- Unknown liveness contracts: 147
- Source-verified contracts: 28
- Currently scope-matched contracts retained as-is: 0
- Contract rows sorted by chain, deployer, classification, contract name, then address.
- Classification counts: candidate review=26, contamination review=1, source verified unclassified=1, unverified unclassified=119

| Chain | Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|---|
| ethereum | source verified unclassified | OpStackTokenRatePusher<br>`0x3f9600439ad97fc6f55c2ac7c118f8fd0595eb74` | non_address_book | unknown | unknown | verified | n/a | `0xfb276cbd830b69103588b651ca78dd6ac4ee665e` |
| ethereum | candidate review | AddressManager<br>`0x7e2e1fe92d67f0199708056a22c34d1331b8def6` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xfff2f7417be1a4e2ad1f26f538ad6f67d0fe11f2` |
| ethereum | candidate review | AddressManager<br>`0x8098f676033a377b9defe302e9fe6877cd63d575` | retained_scope_excluded_inventory | unknown | unknown | verified | review: no_fresh_structural_match | `0xfff2f7417be1a4e2ad1f26f538ad6f67d0fe11f2` |
| ethereum | candidate review | AddressManager<br>`0xc9fd0ff9a7aca948fe21cc515e169795179fce07` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xfff2f7417be1a4e2ad1f26f538ad6f67d0fe11f2` |
| ethereum | candidate review | L1ChugSplashProxy<br>`0x9e7569992f417cad770b8114d2df4078f0b98eb5` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xfff2f7417be1a4e2ad1f26f538ad6f67d0fe11f2` |
| ethereum | candidate review | PermissionedDisputeGame<br>`0xa35f3d6b5c1ab1de36fe830fc4288fd585685772` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0xfff2f7417be1a4e2ad1f26f538ad6f67d0fe11f2` |
| ethereum | candidate review | PermissionedDisputeGame<br>`0xb2872ec9e7074d5838d9a27ae06c53dba8669e8d` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0xfff2f7417be1a4e2ad1f26f538ad6f67d0fe11f2` |
| ethereum | candidate review | Proxy<br>`0x1f5ef8626a313a32d314664f6d42431f92f2d6c1` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xfff2f7417be1a4e2ad1f26f538ad6f67d0fe11f2` |
| ethereum | candidate review | Proxy<br>`0x3080177e8503b63aa97f15caba69099d7668f339` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xfff2f7417be1a4e2ad1f26f538ad6f67d0fe11f2` |
| ethereum | candidate review | Proxy<br>`0x318a642db9e24a85318b8bf18efd5287ba38643b` | retained_scope_excluded_inventory | unknown | unknown | verified | review: no_fresh_structural_match | `0xfff2f7417be1a4e2ad1f26f538ad6f67d0fe11f2` |
| ethereum | candidate review | Proxy<br>`0x40152233ec04c4c9894ab804f7a932ee8dd76e48` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xfff2f7417be1a4e2ad1f26f538ad6f67d0fe11f2` |
| ethereum | candidate review | Proxy<br>`0x4755de7b3ea590d76eb15e1217456e948075826f` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xfff2f7417be1a4e2ad1f26f538ad6f67d0fe11f2` |
| ethereum | candidate review | Proxy<br>`0x7d8ea656d7417229f420b0c87f6428baa8499d70` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xfff2f7417be1a4e2ad1f26f538ad6f67d0fe11f2` |
| ethereum | candidate review | Proxy<br>`0x86a380b7ce4f036cf7e1a4fb1dd1ed9349989be9` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xfff2f7417be1a4e2ad1f26f538ad6f67d0fe11f2` |
| ethereum | candidate review | Proxy<br>`0x86b30e3263250c9f947cdb711a2c16cda81d9adf` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xfff2f7417be1a4e2ad1f26f538ad6f67d0fe11f2` |
| ethereum | candidate review | Proxy<br>`0x92ac36624399fa4bacf32bdc0f4f0d50cb04230d` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xfff2f7417be1a4e2ad1f26f538ad6f67d0fe11f2` |
| ethereum | candidate review | Proxy<br>`0x98742ec6718b49c32aee6daccf5245980fa5d286` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xfff2f7417be1a4e2ad1f26f538ad6f67d0fe11f2` |
| ethereum | candidate review | Proxy<br>`0xa2b597eaeacb6f627e088cbead319e934ed5edad` | retained_scope_excluded_inventory | unknown | unknown | verified | review: no_fresh_structural_match | `0xfff2f7417be1a4e2ad1f26f538ad6f67d0fe11f2` |
| ethereum | candidate review | Proxy<br>`0xc407398d063f942febbcc6f80a156b47f3f1bda6` | retained_scope_excluded_inventory | unknown | unknown | verified | review: no_fresh_structural_match | `0xfff2f7417be1a4e2ad1f26f538ad6f67d0fe11f2` |
| ethereum | candidate review | Proxy<br>`0xc49b2df077ef27847d8ade07fbf734a1fe9a9da2` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xfff2f7417be1a4e2ad1f26f538ad6f67d0fe11f2` |
| ethereum | candidate review | Proxy<br>`0xd04d0d87e0bd4d2e50286760a3ef323fea6849cf` | retained_scope_excluded_inventory | unknown | unknown | verified | review: no_fresh_structural_match | `0xfff2f7417be1a4e2ad1f26f538ad6f67d0fe11f2` |
| ethereum | candidate review | Proxy<br>`0xd3a31c6de8f346e5b456fbc3e4b5eabb3a2b3963` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xfff2f7417be1a4e2ad1f26f538ad6f67d0fe11f2` |
| ethereum | candidate review | ProxyAdmin<br>`0x3b73fa8d82f511a3cae17b5a26e4e1a2d5e2f2a4` | retained_scope_excluded_inventory | unknown | unknown | verified | review: no_fresh_structural_match | `0xfff2f7417be1a4e2ad1f26f538ad6f67d0fe11f2` |
| ethereum | candidate review | ProxyAdmin<br>`0x48ff88f3e71c05217f6572b735e1cb5f2a80fa9d` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0xfff2f7417be1a4e2ad1f26f538ad6f67d0fe11f2` |
| ethereum | candidate review | ProxyAdmin<br>`0xb1b8a68841220fa442048f9c2f976315478ab3b9` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0xfff2f7417be1a4e2ad1f26f538ad6f67d0fe11f2` |
| ethereum | candidate review | ResolvedDelegateProxy<br>`0x374454d6c756c8b594ff9aa799ad8dbfd93f2124` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xfff2f7417be1a4e2ad1f26f538ad6f67d0fe11f2` |
| ethereum | candidate review | ResolvedDelegateProxy<br>`0x9a3d64e386c18cb1d6d5179a9596a4b5736e98a6` | retained_scope_excluded_inventory | unknown | unknown | verified | review: no_fresh_structural_match | `0xfff2f7417be1a4e2ad1f26f538ad6f67d0fe11f2` |
| ethereum | contamination review | Challenger1of2<br>`0x35d539d303b1baf30ec59b81044fad70bc4efcd1` | non_address_book | unknown | unknown | verified | n/a | `0xfff2f7417be1a4e2ad1f26f538ad6f67d0fe11f2` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x039711c1e4e9b22b4b7d739aa3afc4fbcedd1e3e` | non_address_book | unknown | unknown | unverified | n/a | `0xa4393cd576d3b4216f6602284a00f78570df76f8` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x05befd01fcc0a272ebe8b72c0cabb17a8513b798` | non_address_book | unknown | unknown | unverified | n/a | `0xa4393cd576d3b4216f6602284a00f78570df76f8` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x0e039cf11d5558bce6e73664710097726493f105` | non_address_book | unknown | unknown | unverified | n/a | `0xa4393cd576d3b4216f6602284a00f78570df76f8` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x103f7758fb2bed3292b366324f2e00f2f5ebe04e` | non_address_book | unknown | unknown | unverified | n/a | `0xa4393cd576d3b4216f6602284a00f78570df76f8` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x10ba4aa447bf27665bd0bd1e71dfede3295ca051` | non_address_book | unknown | unknown | unverified | n/a | `0xa4393cd576d3b4216f6602284a00f78570df76f8` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x1402c464418dbd43717e278cda8a421b3f97404f` | non_address_book | unknown | unknown | unverified | n/a | `0xa4393cd576d3b4216f6602284a00f78570df76f8` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x14db7a45480bf50e2edd6c838890bc188f801661` | non_address_book | unknown | unknown | unverified | n/a | `0xa4393cd576d3b4216f6602284a00f78570df76f8` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x18f649fa7beb7fbb948f0d4a18ab8aad2edc899f` | non_address_book | unknown | unknown | unverified | n/a | `0xa4393cd576d3b4216f6602284a00f78570df76f8` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x1950b0cb41784900bd6534906a1966390f60992a` | non_address_book | unknown | unknown | unverified | n/a | `0xa4393cd576d3b4216f6602284a00f78570df76f8` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x1bf3d91f41c2fae8da011194600b5722aff4eec9` | non_address_book | unknown | unknown | unverified | n/a | `0xa4393cd576d3b4216f6602284a00f78570df76f8` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x23399e324002c12f83cfe78adaccbfdcbff3adda` | non_address_book | unknown | unknown | unverified | n/a | `0xa4393cd576d3b4216f6602284a00f78570df76f8` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x2913ddf55975c8a5908c898fb4d079a0884f05a4` | non_address_book | unknown | unknown | unverified | n/a | `0xa4393cd576d3b4216f6602284a00f78570df76f8` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x2a82958845ddc647ce1d45f44a7038d6a2d363ac` | non_address_book | unknown | unknown | unverified | n/a | `0xa4393cd576d3b4216f6602284a00f78570df76f8` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x2a9b205b08753052c121e6f9c7e4e6bf64e4d93c` | non_address_book | unknown | unknown | unverified | n/a | `0xa4393cd576d3b4216f6602284a00f78570df76f8` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x2bf85a48e76ba5be475b4bca1c362da5f58c8c60` | non_address_book | unknown | unknown | unverified | n/a | `0xa4393cd576d3b4216f6602284a00f78570df76f8` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x2c56d4146f14bf41aaf16b0ac646e12565b02dd3` | non_address_book | unknown | unknown | unverified | n/a | `0xa4393cd576d3b4216f6602284a00f78570df76f8` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x2f446ed1ae9405a82e48dc29797e888fc88fe89d` | non_address_book | unknown | unknown | unverified | n/a | `0xa4393cd576d3b4216f6602284a00f78570df76f8` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x30159d5658c9ef0de3415681e6ae6a286f0f0f02` | non_address_book | unknown | unknown | unverified | n/a | `0xa4393cd576d3b4216f6602284a00f78570df76f8` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x322447f5bfa62f54a3a5ca1a77b1d4ce89fde30e` | non_address_book | unknown | unknown | unverified | n/a | `0xa4393cd576d3b4216f6602284a00f78570df76f8` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x324b37d835f99470ee60d328186965db47f6534e` | non_address_book | unknown | unknown | unverified | n/a | `0xa4393cd576d3b4216f6602284a00f78570df76f8` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x3303622d1710a919d776672a24a4fde968744b86` | non_address_book | unknown | unknown | unverified | n/a | `0xa4393cd576d3b4216f6602284a00f78570df76f8` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x3523d98992a9c86283b7ebf72c598eee92d50b20` | non_address_book | unknown | unknown | unverified | n/a | `0xa4393cd576d3b4216f6602284a00f78570df76f8` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x352bfd654a0698bdb5bf3ac0131b89f21ec7f82d` | non_address_book | unknown | unknown | unverified | n/a | `0xa4393cd576d3b4216f6602284a00f78570df76f8` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x3b7cbfca2748f28dff822e4b3c6526548af8a5a9` | non_address_book | unknown | unknown | unverified | n/a | `0xa4393cd576d3b4216f6602284a00f78570df76f8` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x3e0408c19cf89ce3d18dda4bda71ac605e54fbb7` | non_address_book | unknown | unknown | unverified | n/a | `0xa4393cd576d3b4216f6602284a00f78570df76f8` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x3e490a77aebd53888f81f586612565b87b096c67` | non_address_book | unknown | unknown | unverified | n/a | `0xa4393cd576d3b4216f6602284a00f78570df76f8` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x3ece79a99af1c63bb166b8385a77d192426d766a` | non_address_book | unknown | unknown | unverified | n/a | `0xa4393cd576d3b4216f6602284a00f78570df76f8` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x42b0d330f2b4213a6658d84aaa2fe3d24ffb850e` | non_address_book | unknown | unknown | unverified | n/a | `0xa4393cd576d3b4216f6602284a00f78570df76f8` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x44753c9162e58695302a598e64566f971aa4f6d6` | non_address_book | unknown | unknown | unverified | n/a | `0xa4393cd576d3b4216f6602284a00f78570df76f8` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x449003c870b2f37eed9db01b2599dffdf0504030` | non_address_book | unknown | unknown | unverified | n/a | `0xa4393cd576d3b4216f6602284a00f78570df76f8` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x46d7210acab8c42f53866d06f320adb21ce8caff` | non_address_book | unknown | unknown | unverified | n/a | `0xa4393cd576d3b4216f6602284a00f78570df76f8` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x49af13438152095c3ec7820cd57558404442d6e5` | non_address_book | unknown | unknown | unverified | n/a | `0xa4393cd576d3b4216f6602284a00f78570df76f8` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x4a67cb29af51cedf70fc326e8c14b6ab01e7566c` | non_address_book | unknown | unknown | unverified | n/a | `0xa4393cd576d3b4216f6602284a00f78570df76f8` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x4cf110d1bd1387f8c0d7757de5e592ce0d0bc9b5` | non_address_book | unknown | unknown | unverified | n/a | `0xa4393cd576d3b4216f6602284a00f78570df76f8` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x4e46b71d285ef388c29951fd71c0db12256ea254` | non_address_book | unknown | unknown | unverified | n/a | `0xa4393cd576d3b4216f6602284a00f78570df76f8` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x50fe3978ec04d6803ce3ca30075046287c6f2948` | non_address_book | unknown | unknown | unverified | n/a | `0xa4393cd576d3b4216f6602284a00f78570df76f8` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x52878a9ad02d5aaba22a735a017eecc485a3d0b6` | non_address_book | unknown | unknown | unverified | n/a | `0xa4393cd576d3b4216f6602284a00f78570df76f8` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x54010374029ae7370ab39fecc30e4af148e798e2` | non_address_book | unknown | unknown | unverified | n/a | `0xa4393cd576d3b4216f6602284a00f78570df76f8` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x5743d86457f75a829838d9f4dce206196c1fb40d` | non_address_book | unknown | unknown | unverified | n/a | `0xa4393cd576d3b4216f6602284a00f78570df76f8` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x5c0e76db39f2c0279823718e65bdf236a4a1e94e` | non_address_book | unknown | unknown | unverified | n/a | `0xa4393cd576d3b4216f6602284a00f78570df76f8` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x5f33716fa747537100723325a99d155ed261b38b` | non_address_book | unknown | unknown | unverified | n/a | `0xa4393cd576d3b4216f6602284a00f78570df76f8` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x5f4cb4fe3f35d26be8487c8bf169c62f3993104f` | non_address_book | unknown | unknown | unverified | n/a | `0xa4393cd576d3b4216f6602284a00f78570df76f8` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x64ff329a096e2eb75c5a8dafba1ed7f0755e09ef` | non_address_book | unknown | unknown | unverified | n/a | `0xa4393cd576d3b4216f6602284a00f78570df76f8` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x66c4ed7dafd8df4ad1e22e98568d56b80f70a690` | non_address_book | unknown | unknown | unverified | n/a | `0xa4393cd576d3b4216f6602284a00f78570df76f8` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x67444705347186019e2f353c5c5cd776323fe357` | non_address_book | unknown | unknown | unverified | n/a | `0xa4393cd576d3b4216f6602284a00f78570df76f8` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x6b3dc4d2318af361d9be6a84addfdf99d9b1f76d` | non_address_book | unknown | unknown | unverified | n/a | `0xa4393cd576d3b4216f6602284a00f78570df76f8` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x6c67dbd9d017efd998c6e51ccfb0590eb5b9d05e` | non_address_book | unknown | unknown | unverified | n/a | `0xa4393cd576d3b4216f6602284a00f78570df76f8` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x7019136b218ff39d20daf2c77987197e7b2d5c03` | non_address_book | unknown | unknown | unverified | n/a | `0xa4393cd576d3b4216f6602284a00f78570df76f8` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x750f4ed83be8108694195ca24241fb71fed94285` | non_address_book | unknown | unknown | unverified | n/a | `0xa4393cd576d3b4216f6602284a00f78570df76f8` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x766a1b930cbc5cdcbb92f8feca0a406156d13a81` | non_address_book | unknown | unknown | unverified | n/a | `0xa4393cd576d3b4216f6602284a00f78570df76f8` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x7692fa89eb7027dd4e0606e0b0aeccac7c27e14a` | non_address_book | unknown | unknown | unverified | n/a | `0xa4393cd576d3b4216f6602284a00f78570df76f8` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x7806f28ae1fb8114d2164f26f42e157ec97de9c0` | non_address_book | unknown | unknown | unverified | n/a | `0xa4393cd576d3b4216f6602284a00f78570df76f8` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x7c9a5556e300a12ecc956e0c2d91db288ec35604` | non_address_book | unknown | unknown | unverified | n/a | `0xa4393cd576d3b4216f6602284a00f78570df76f8` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x7e4cc299aaa66baddea6e70ab502354683d89f97` | non_address_book | unknown | unknown | unverified | n/a | `0xa4393cd576d3b4216f6602284a00f78570df76f8` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x7e51734fdb8eb85268d46a3658486e037ade724f` | non_address_book | unknown | unknown | unverified | n/a | `0xa4393cd576d3b4216f6602284a00f78570df76f8` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x80b349b9f26ef82e1e5114434a2078d9ebab6d42` | non_address_book | unknown | unknown | unverified | n/a | `0xa4393cd576d3b4216f6602284a00f78570df76f8` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x8298e32e9d911c673fa91d82f103fa183b660191` | non_address_book | unknown | unknown | unverified | n/a | `0xa4393cd576d3b4216f6602284a00f78570df76f8` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x849292f3bb4f87356f183232fbdae5bd4aa5d277` | non_address_book | unknown | unknown | unverified | n/a | `0xa4393cd576d3b4216f6602284a00f78570df76f8` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x8b23b6ac0f430219ef65a197980d204fcb490b03` | non_address_book | unknown | unknown | unverified | n/a | `0xa4393cd576d3b4216f6602284a00f78570df76f8` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x90545d8e3faf85c74ab6c4078e8aae8c11e1566d` | non_address_book | unknown | unknown | unverified | n/a | `0xa4393cd576d3b4216f6602284a00f78570df76f8` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x90a9ecf0f894c3e197c708dddb011783e7ad3ba9` | non_address_book | unknown | unknown | unverified | n/a | `0xa4393cd576d3b4216f6602284a00f78570df76f8` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x91de55fe38619dd11b7ca7120c4de3d3dfc95a48` | non_address_book | unknown | unknown | unverified | n/a | `0xa4393cd576d3b4216f6602284a00f78570df76f8` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x950f183a880cbd050511d47cc3138dd57294a2a5` | non_address_book | unknown | unknown | unverified | n/a | `0xa4393cd576d3b4216f6602284a00f78570df76f8` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x9a40bccb33dc5200fa058eb0f4fbb836918cf1fe` | non_address_book | unknown | unknown | unverified | n/a | `0xa4393cd576d3b4216f6602284a00f78570df76f8` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x9bb3794a3243d983419124f5880858f2c08b857d` | non_address_book | unknown | unknown | unverified | n/a | `0xa4393cd576d3b4216f6602284a00f78570df76f8` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x9c4d2ca4a70ce0161057d92136db971d2fc863bd` | non_address_book | unknown | unknown | unverified | n/a | `0xa4393cd576d3b4216f6602284a00f78570df76f8` |
| sepolia | unverified unclassified | UnnamedContract<br>`0xa40c37473e6ceaadce5d98e92cf3724e3c057537` | non_address_book | unknown | unknown | unverified | n/a | `0xa4393cd576d3b4216f6602284a00f78570df76f8` |
| sepolia | unverified unclassified | UnnamedContract<br>`0xa71f3b2607e83d56f3aa44588ba19cc35a3190f2` | non_address_book | unknown | unknown | unverified | n/a | `0xa4393cd576d3b4216f6602284a00f78570df76f8` |
| sepolia | unverified unclassified | UnnamedContract<br>`0xa943bbe9e50107df0547d22a7f89b5c2e95ddbfe` | non_address_book | unknown | unknown | unverified | n/a | `0xa4393cd576d3b4216f6602284a00f78570df76f8` |
| sepolia | unverified unclassified | UnnamedContract<br>`0xa96d682cd73ffaf73c28fd0d3393c86e31e21cb3` | non_address_book | unknown | unknown | unverified | n/a | `0xa4393cd576d3b4216f6602284a00f78570df76f8` |
| sepolia | unverified unclassified | UnnamedContract<br>`0xaa47be1a32646fb58a5ac505a146d1a1b17d8e8e` | non_address_book | unknown | unknown | unverified | n/a | `0xa4393cd576d3b4216f6602284a00f78570df76f8` |
| sepolia | unverified unclassified | UnnamedContract<br>`0xad289f50c46d363e687ddf204cd786c21675aa1c` | non_address_book | unknown | unknown | unverified | n/a | `0xa4393cd576d3b4216f6602284a00f78570df76f8` |
| sepolia | unverified unclassified | UnnamedContract<br>`0xad39ffad7017885fd1260c3224bcd26c54e60ffc` | non_address_book | unknown | unknown | unverified | n/a | `0xa4393cd576d3b4216f6602284a00f78570df76f8` |
| sepolia | unverified unclassified | UnnamedContract<br>`0xae3a1a2b600147643a259bce31bdbb3d82ef686d` | non_address_book | unknown | unknown | unverified | n/a | `0xa4393cd576d3b4216f6602284a00f78570df76f8` |
| sepolia | unverified unclassified | UnnamedContract<br>`0xafb37731944e003f61e9506749305757fb72be4d` | non_address_book | unknown | unknown | unverified | n/a | `0xa4393cd576d3b4216f6602284a00f78570df76f8` |
| sepolia | unverified unclassified | UnnamedContract<br>`0xb3779a1f9f075fa8b8ac2a9b9a89991b083e5823` | non_address_book | unknown | unknown | unverified | n/a | `0xa4393cd576d3b4216f6602284a00f78570df76f8` |
| sepolia | unverified unclassified | UnnamedContract<br>`0xb3fc9e7d7aa96c5d3d1a325c8a10661dbb64b743` | non_address_book | unknown | unknown | unverified | n/a | `0xa4393cd576d3b4216f6602284a00f78570df76f8` |
| sepolia | unverified unclassified | UnnamedContract<br>`0xb44bf2684073398e9d17374916ef24b45377f9f7` | non_address_book | unknown | unknown | unverified | n/a | `0xa4393cd576d3b4216f6602284a00f78570df76f8` |
| sepolia | unverified unclassified | UnnamedContract<br>`0xb92c6ac51e9b2ed50d8ba14d8c83cca88ba8930e` | non_address_book | unknown | unknown | unverified | n/a | `0xa4393cd576d3b4216f6602284a00f78570df76f8` |
| sepolia | unverified unclassified | UnnamedContract<br>`0xba1425b2d48a732e3fadc99cde1b0647403571dc` | non_address_book | unknown | unknown | unverified | n/a | `0xa4393cd576d3b4216f6602284a00f78570df76f8` |
| sepolia | unverified unclassified | UnnamedContract<br>`0xbbcd15c3b70e65c692c2f8b9e05310af4f924c77` | non_address_book | unknown | unknown | unverified | n/a | `0xa4393cd576d3b4216f6602284a00f78570df76f8` |
| sepolia | unverified unclassified | UnnamedContract<br>`0xbd2dcc00cfd8806703b5b17635cf249355f38c8b` | non_address_book | unknown | unknown | unverified | n/a | `0xa4393cd576d3b4216f6602284a00f78570df76f8` |
| sepolia | unverified unclassified | UnnamedContract<br>`0xbd86ef77145fe75433cfb662416102eee6a55040` | non_address_book | unknown | unknown | unverified | n/a | `0xa4393cd576d3b4216f6602284a00f78570df76f8` |
| sepolia | unverified unclassified | UnnamedContract<br>`0xc06e82969c81ca6907107dd770a79a6883cf5064` | non_address_book | unknown | unknown | unverified | n/a | `0xa4393cd576d3b4216f6602284a00f78570df76f8` |
| sepolia | unverified unclassified | UnnamedContract<br>`0xc3aa33d126e36b9331c9e171ed2c5c2d101e76bd` | non_address_book | unknown | unknown | unverified | n/a | `0xa4393cd576d3b4216f6602284a00f78570df76f8` |
| sepolia | unverified unclassified | UnnamedContract<br>`0xc6f8efcee11652cf86eee05f0b51566209a3d34f` | non_address_book | unknown | unknown | unverified | n/a | `0xa4393cd576d3b4216f6602284a00f78570df76f8` |
| sepolia | unverified unclassified | UnnamedContract<br>`0xcc226c023f2b4a35231d8e7f4e6202873751a6ee` | non_address_book | unknown | unknown | unverified | n/a | `0xa4393cd576d3b4216f6602284a00f78570df76f8` |
| sepolia | unverified unclassified | UnnamedContract<br>`0xce4d233d5e03644b531a807475c7bf25181ce7a7` | non_address_book | unknown | unknown | unverified | n/a | `0xa4393cd576d3b4216f6602284a00f78570df76f8` |
| sepolia | unverified unclassified | UnnamedContract<br>`0xceb83618b3b335ec11e2b8c6edae73686a678c4f` | non_address_book | unknown | unknown | unverified | n/a | `0xa4393cd576d3b4216f6602284a00f78570df76f8` |
| sepolia | unverified unclassified | UnnamedContract<br>`0xcfa1f89fcf74e2e3b494b636345d2ea1073ff489` | non_address_book | unknown | unknown | unverified | n/a | `0xa4393cd576d3b4216f6602284a00f78570df76f8` |
| sepolia | unverified unclassified | UnnamedContract<br>`0xd0c90c9b5f0e0c736a62982422c8dac530089e12` | non_address_book | unknown | unknown | unverified | n/a | `0xa4393cd576d3b4216f6602284a00f78570df76f8` |
| sepolia | unverified unclassified | UnnamedContract<br>`0xd22859dd87ea47ce8549153a14bbc13c110c2dd2` | non_address_book | unknown | unknown | unverified | n/a | `0xa4393cd576d3b4216f6602284a00f78570df76f8` |
| sepolia | unverified unclassified | UnnamedContract<br>`0xd38d37a1144a26f71f5b38a3815c97c202014d8d` | non_address_book | unknown | unknown | unverified | n/a | `0xa4393cd576d3b4216f6602284a00f78570df76f8` |
| sepolia | unverified unclassified | UnnamedContract<br>`0xd41989667deab0bb926ce84916b71cbc12810d48` | non_address_book | unknown | unknown | unverified | n/a | `0xa4393cd576d3b4216f6602284a00f78570df76f8` |
| sepolia | unverified unclassified | UnnamedContract<br>`0xd56fd9f7ef538b0e0336dbdf183601e48033c3c9` | non_address_book | unknown | unknown | unverified | n/a | `0xa4393cd576d3b4216f6602284a00f78570df76f8` |
| sepolia | unverified unclassified | UnnamedContract<br>`0xd666f4a3bf187b623ddd41bff44d077a4fb17c43` | non_address_book | unknown | unknown | unverified | n/a | `0xa4393cd576d3b4216f6602284a00f78570df76f8` |
| sepolia | unverified unclassified | UnnamedContract<br>`0xd8847f3edd551578848b91617823464a06776525` | non_address_book | unknown | unknown | unverified | n/a | `0xa4393cd576d3b4216f6602284a00f78570df76f8` |
| sepolia | unverified unclassified | UnnamedContract<br>`0xdbf18388ddad1e65c4e5de8de038e5d74a00140e` | non_address_book | unknown | unknown | unverified | n/a | `0xa4393cd576d3b4216f6602284a00f78570df76f8` |
| sepolia | unverified unclassified | UnnamedContract<br>`0xdc9be7a8c23f5e0cf92639103bc60f0201851fc7` | non_address_book | unknown | unknown | unverified | n/a | `0xa4393cd576d3b4216f6602284a00f78570df76f8` |
| sepolia | unverified unclassified | UnnamedContract<br>`0xdf5a8fe735748f704bf4891ee9be7b5b5d850804` | non_address_book | unknown | unknown | unverified | n/a | `0xa4393cd576d3b4216f6602284a00f78570df76f8` |
| sepolia | unverified unclassified | UnnamedContract<br>`0xe161943c157fd3e09fa83b3fd943bd675113822c` | non_address_book | unknown | unknown | unverified | n/a | `0xa4393cd576d3b4216f6602284a00f78570df76f8` |
| sepolia | unverified unclassified | UnnamedContract<br>`0xe2dfc0251e3ee918458d5dde391a3ede0299b546` | non_address_book | unknown | unknown | unverified | n/a | `0xa4393cd576d3b4216f6602284a00f78570df76f8` |
| sepolia | unverified unclassified | UnnamedContract<br>`0xe307b109bb4fb8bdc5b77c14d216f4f55093ecc4` | non_address_book | unknown | unknown | unverified | n/a | `0xa4393cd576d3b4216f6602284a00f78570df76f8` |
| sepolia | unverified unclassified | UnnamedContract<br>`0xe444dcc7c113c50cc11cf0e9807c1f0e60321f6a` | non_address_book | unknown | unknown | unverified | n/a | `0xa4393cd576d3b4216f6602284a00f78570df76f8` |
| sepolia | unverified unclassified | UnnamedContract<br>`0xe5cb876b5d2ee804949c0cbee3eb57a07c79287c` | non_address_book | unknown | unknown | unverified | n/a | `0xa4393cd576d3b4216f6602284a00f78570df76f8` |
| sepolia | unverified unclassified | UnnamedContract<br>`0xe5fc562069a361747305cd49c523fad318e59166` | non_address_book | unknown | unknown | unverified | n/a | `0xa4393cd576d3b4216f6602284a00f78570df76f8` |
| sepolia | unverified unclassified | UnnamedContract<br>`0xe810a06d3a076bd4f2fb4c271ec9e21f12423c96` | non_address_book | unknown | unknown | unverified | n/a | `0xa4393cd576d3b4216f6602284a00f78570df76f8` |
| sepolia | unverified unclassified | UnnamedContract<br>`0xe988c95ec28403a5393ecf0437e96075b589a398` | non_address_book | unknown | unknown | unverified | n/a | `0xa4393cd576d3b4216f6602284a00f78570df76f8` |
| sepolia | unverified unclassified | UnnamedContract<br>`0xeaef3c3f4ca187a29845f9c391ccce3f27d4baa6` | non_address_book | unknown | unknown | unverified | n/a | `0xa4393cd576d3b4216f6602284a00f78570df76f8` |
| sepolia | unverified unclassified | UnnamedContract<br>`0xee0ce4029ac13d3e5ac77a8c96b15940ce70ea2e` | non_address_book | unknown | unknown | unverified | n/a | `0xa4393cd576d3b4216f6602284a00f78570df76f8` |
| sepolia | unverified unclassified | UnnamedContract<br>`0xee1eed220abde0cfbe367839923bd130b5a9a6dc` | non_address_book | unknown | unknown | unverified | n/a | `0xa4393cd576d3b4216f6602284a00f78570df76f8` |
| sepolia | unverified unclassified | UnnamedContract<br>`0xef6af6fac366bfb518cb6014694ba7ddf4ed5e3c` | non_address_book | unknown | unknown | unverified | n/a | `0xa4393cd576d3b4216f6602284a00f78570df76f8` |
| sepolia | unverified unclassified | UnnamedContract<br>`0xf0e13c830b94ea6b47708f7f9e02c0c9f0165ecf` | non_address_book | unknown | unknown | unverified | n/a | `0xa4393cd576d3b4216f6602284a00f78570df76f8` |
| sepolia | unverified unclassified | UnnamedContract<br>`0xf55629eefeae5a985916812424d3bb0649cf9582` | non_address_book | unknown | unknown | unverified | n/a | `0xa4393cd576d3b4216f6602284a00f78570df76f8` |
| sepolia | unverified unclassified | UnnamedContract<br>`0xf782f43e5b5301dc50ed700a1eddc93b1cc76a26` | non_address_book | unknown | unknown | unverified | n/a | `0xa4393cd576d3b4216f6602284a00f78570df76f8` |
| sepolia | unverified unclassified | UnnamedContract<br>`0xf82ec77fa37f1f5d3bff2486d9f1497212789c7c` | non_address_book | unknown | unknown | unverified | n/a | `0xa4393cd576d3b4216f6602284a00f78570df76f8` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x03197bb07d1c3e2b4ef0ce9c5202cce6a009fa39` | non_address_book | unknown | unknown | unverified | n/a | `0xd84d51c3400b1b232ebc0ce0883c10348a54cceb` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x53732808e2a242efee9e1d33e06eb8d2864653cd` | non_address_book | unknown | unknown | unverified | n/a | `0xd84d51c3400b1b232ebc0ce0883c10348a54cceb` |
| sepolia | unverified unclassified | UnnamedContract<br>`0xc29edca97d04170c52cb3a83c4d3bcc80cb9adae` | non_address_book | unknown | unknown | unverified | n/a | `0xd84d51c3400b1b232ebc0ce0883c10348a54cceb` |

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
| needs_review | 175 |

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
