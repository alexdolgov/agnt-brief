# Agentic Audit Brief: Base Bridge

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

- Project: Base Bridge (`base-bridge`)
- Website: [https://docs.base.org/base-chain/network-information/bridges-mainnet](https://docs.base.org/base-chain/network-information/bridges-mainnet)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: base, base-sepolia, ethereum, sepolia
- Contract surface: 163 unique implementations (163 raw deployments)
- Coverage basis: 0/31 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $2,084,345,126.98
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Base Bridge. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 31 contract row(s) across base, base-sepolia, ethereum, sepolia. Structural roles: 28 core, 3 supporting. 23 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 31
- Structural roles: core (28), supporting (3)
- Contract kinds: contract (30), abstract (1)
- Detected standards: erc1967proxy (21), ownable (2)
- Frameworks: openzeppelin (5), openzeppelin-upgradeable (3), solady (2)
- Upgradeable-pattern rows: 23

## Fork Analysis

0 of 51 contracts are derived from known codebases. 51 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x43edb88c4b80fdd2adff2412a7bebf9df42cb40e`, chain 1)
- UnnamedContract (`0x608d94945a64503e642e6370ec598e519a2c1e53`, chain 1)
- UnnamedContract (`0x73a79fab69143498ed3712e519a88a918e1f4072`, chain 1)
- UnnamedContract (`0x7bb41c3008b3f03fe483b28b8db90e19cf07595c`, chain 1)
- UnnamedContract (`0x866e82a600a1414e583f7f13623f1ac5d58b0afa`, chain 1)
- UnnamedContract (`0x8eab2d97dfce405a1692a21b3ff3a172d593d319`, chain 1)
- UnnamedContract (`0x909f6cf47ed12f010a796527f562bfc26c7f4e72`, chain 1)
- UnnamedContract (`0x9855054731540a48b28990b63dcf4f33d8ae46a1`, chain 1)
- UnnamedContract (`0xb88d95bdf6972508942d184866890c1834219b75`, chain 1)
- UnnamedContract (`0xd0d07924add740a87e41ca8a0d4cbbf6b074ef71`, chain 1)
- UnnamedContract (`0xeecb8a5944b217585817e802702b1262a049d259`, chain 1)
- UnnamedContract (`0x000f3df6d732807ef1319fb7b8bb8522d0beac02`, chain 8453)
- UnnamedContract (`0x14536667cd30e52c0b458baaccb9fada7046e056`, chain 8453)
- UnnamedContract (`0x3154cf16ccdb4c6d922629664174b904d80f2c35`, chain 8453)
- UnnamedContract (`0x4200000000000000000000000000000000000012`, chain 8453)
- UnnamedContract (`0x4200000000000000000000000000000000000018`, chain 8453)
- UnnamedContract (`0x49048044d57e1c92a77f79988d21fa8faf74e97e`, chain 8453)
- UnnamedContract (`0x866e82a600a1414e583f7f13623f1ac5d58b0afa`, chain 8453)
- UnnamedContract (`0x8eab2d97dfce405a1692a21b3ff3a172d593d319`, chain 8453)
- UnnamedContract (`0x8efb6b5c4767b09dc9aa6af4eaa89f749522bae2`, chain 8453)
- AddressManager (`0x8efb6b5c4767b09dc9aa6af4eaa89f749522bae2`, chain 1)
- BaseFeeVault (`0x4200000000000000000000000000000000000019`, chain 8453)
- EAS (`0x4200000000000000000000000000000000000021`, chain 8453)
- ERC20Factory (`0xf10122d428b4bc8a9d050d06a2037259b4c4b83b`, chain 8453)
- GasPriceOracle (`0x420000000000000000000000000000000000000f`, chain 8453)
- GnosisSafe (`0x14536667cd30e52c0b458baaccb9fada7046e056`, chain 1)
- L1Block (`0x4200000000000000000000000000000000000015`, chain 8453)
- L1BlockNumber (`0x4200000000000000000000000000000000000013`, chain 8453)
- L1FeeVault (`0x420000000000000000000000000000000000001a`, chain 8453)
- L1StandardBridge (`0x3154cf16ccdb4c6d922629664174b904d80f2c35`, chain 1)
- L2CrossDomainMessenger (`0x4200000000000000000000000000000000000007`, chain 8453)
- L2ERC721Bridge (`0x4200000000000000000000000000000000000014`, chain 8453)
- L2StandardBridge (`0x4200000000000000000000000000000000000010`, chain 8453)
- L2ToL1MessagePasser (`0x4200000000000000000000000000000000000016`, chain 8453)
- NitroEnclaveVerifier (`0x7f3a16e1fe6fda64c5ac4296e13ecb9f7b44f6fb`, chain 1)
- OptimismMintableERC20Factory (`0x05cc379ebd9b30bba19c6fa282ab29218ec61d84`, chain 1)
- OptimismMintableERC721Factory (`0x4200000000000000000000000000000000000017`, chain 8453)
- OptimismPortal2 (`0x49048044d57e1c92a77f79988d21fa8faf74e97e`, chain 1)
- Proxy (`0x1af2a7e537de2ee795de5b8bfbb1ad0dd513a5aa`, chain 1)
- Proxy (`0x4200000000000000000000000000000000000000`, chain 8453)
- Proxy (`0x4200000000000000000000000000000000000002`, chain 8453)
- Proxy (`0x420000000000000000000000000000000000001b`, chain 8453)
- ProxyAdmin (`0x0475cbcaebd9ce8afa5025828d5b98dfb67e059e`, chain 1)
- Recovery (`0x0475cbcaebd9ce8afa5025828d5b98dfb67e059e`, chain 8453)
- RiscZeroSetVerifier (`0x5005aba3dff7c940fcc1e48dcccad611a80eeb85`, chain 1)
- SafeProxy (`0x20acf55a3dcfe07fc4cecacfa1628f788ec8a4dd`, chain 1)
- SchemaRegistry (`0x4200000000000000000000000000000000000020`, chain 8453)
- SequencerFeeVault (`0x4200000000000000000000000000000000000011`, chain 8453)
- SystemDictator (`0x1fe3fdd1f0193dd657c0a9aac37314d6b479e557`, chain 1)
- TEEVerifier (`0x1fba0c57b07af804a9717e51dec9cc27fbc12228`, chain 1)
- WETH9 (`0x4200000000000000000000000000000000000006`, chain 8453)

## Contract Surface Quality

- Logic-topography rows: 31; live-surface rows included: 31 (31 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 51/156 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/31 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 51 own, 31 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 81 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 26
- Confirmed-live implementations: 51 of 163 unique; 112 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/56
- Verified + Unaudited implementations: 56
- Verified by bytecode match: 0
- Unverified implementations: 107
- Unique implementations: 163
- Raw deployments: 163
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

### ⚠️ Verified + Unaudited (56)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AddressManager | unknown | project_anchor | own_supporting | 0 | ethereum | unit-228948 | `0x8efb6b5c4767b09dc9aa6af4eaa89f749522bae2` | ⚠️ Unaudited |
| AggregateVerifier | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1bd8db5139ba7ac9277684650c15e6e341761919` | ⚠️ Unaudited |
| AnchorStateRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4483f964f6711cb55f633820ed174e780369b99d` | ⚠️ Unaudited |
| BaseFeeVault | unknown | project_anchor | own_supporting | 1 | base | unit-229084 | `0x4200000000000000000000000000000000000019` | ⚠️ Unaudited |
| DelayedWETH | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x3e8a0b63f57e975c268d610ece93da5f78c01321` | ⚠️ Unaudited |
| DisputeGameFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x4018aba1a9eeebf20d79995e54843eee683bda7f` | ⚠️ Unaudited |
| EAS | unknown | project_anchor | own_supporting | 1 | base | unit-229088 | `0x4200000000000000000000000000000000000021` | ⚠️ Unaudited |
| ERC20Factory | unknown | project_anchor | own_supporting | 0 | base | unit-229068 | `0xf10122d428b4bc8a9d050d06a2037259b4c4b83b` | ⚠️ Unaudited |
| FaultDisputeGame | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x664569928201d464045aa0a7dd61d517eed5b3d5` | ⚠️ Unaudited |
| FaultDisputeGameV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6ddba09bc4ccb0d6ca9fc5350580f74165707499` | ⚠️ Unaudited |
| GasPriceOracle | unknown | project_anchor | own_supporting | 1 | base | unit-229085 | `0x420000000000000000000000000000000000000f` | ⚠️ Unaudited |
| GnosisSafe | unknown | project_anchor | own_supporting | 1 | ethereum | unit-229080 | `0x14536667cd30e52c0b458baaccb9fada7046e056` | ⚠️ Unaudited |
| L1Block | unknown | project_anchor | own_supporting | 1 | base | unit-229083 | `0x4200000000000000000000000000000000000015` | ⚠️ Unaudited |
| L1BlockNumber | unknown | project_anchor | own_supporting | 1 | base | unit-229093 | `0x4200000000000000000000000000000000000013` | ⚠️ Unaudited |
| L1ChugSplashProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8a92ad7b599801a776ad7f75b3aab77a3f279e25` | ⚠️ Unaudited |
| L1CrossDomainMessenger | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x81c4bd600793ebd1c0323604e1f455fe50a951f8` | ⚠️ Unaudited |
| L1ERC721Bridge | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3311ac7f72bb4108d9f4d5d50e7623b1498a9ec0` | ⚠️ Unaudited |
| L1FeeVault | unknown | project_anchor | own_supporting | 1 | base | unit-229082 | `0x420000000000000000000000000000000000001a` | ⚠️ Unaudited |
| L1StandardBridge | unknown | project_anchor | own_supporting | 1 | ethereum | unit-229076 | `0x3154cf16ccdb4c6d922629664174b904d80f2c35` | ⚠️ Unaudited |
| L2CrossDomainMessenger | unknown | project_anchor | own_supporting | 1 | base | unit-229091 | `0x4200000000000000000000000000000000000007` | ⚠️ Unaudited |
| L2ERC721Bridge | unknown | project_anchor | own_supporting | 1 | base | unit-229094 | `0x4200000000000000000000000000000000000014` | ⚠️ Unaudited |
| L2OutputOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x43451afd997c79b5b04f17911ec02947913a757f` | ⚠️ Unaudited |
| L2StandardBridge | unknown | project_anchor | own_supporting | 1 | base | unit-229092 | `0x4200000000000000000000000000000000000010` | ⚠️ Unaudited |
| L2ToL1MessagePasser | unknown | project_anchor | own_supporting | 1 | base | unit-229095 | `0x4200000000000000000000000000000000000016` | ⚠️ Unaudited |
| MIPS64 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6463dee3828677f6270d83d45408044fc5edb908` | ⚠️ Unaudited |
| NitroEnclaveVerifier | unknown | project_anchor | own_supporting | 0 | ethereum | unit-228940 | `0x7f3a16e1fe6fda64c5ac4296e13ecb9f7b44f6fb` | ⚠️ Unaudited |
| OptimismMintableERC20Factory | unknown | project_anchor | own_supporting | 1 | ethereum | unit-229078 | `0x05cc379ebd9b30bba19c6fa282ab29218ec61d84` | ⚠️ Unaudited |
| OptimismMintableERC721Factory | unknown | project_anchor | own_supporting | 1 | base | unit-229096 | `0x4200000000000000000000000000000000000017` | ⚠️ Unaudited |
| OptimismPortal | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5fb30336a8d0841cf15d452afa297cb6d10877d7` | ⚠️ Unaudited |
| OptimismPortal2 | unknown | project_anchor | own_supporting | 1 | ethereum | unit-229077 | `0x49048044d57e1c92a77f79988d21fa8faf74e97e` | ⚠️ Unaudited |
| PermissionedDisputeGame | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x04595c25e4bf27b8176c81c74a0081c7975cfecc` | ⚠️ Unaudited |
| PermissionedDisputeGameV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x58bf355c5d4edfc723ef89d99582eccfd143266a` | ⚠️ Unaudited |
| PortalSender | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb29e5ae7cb209836afde0038e30f0dc4236a2eff` | ⚠️ Unaudited |
| PreimageOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1fb8cdfc6831fc866ed9c51af8817da5c287add3` | ⚠️ Unaudited |
| Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x01cc9bf8388ad0b1d894a5a1db3c192af35bdaa2` | ⚠️ Unaudited |
| Proxy | unknown | project_anchor | own_supporting | 1 | ethereum | unit-229081 | `0x1af2a7e537de2ee795de5b8bfbb1ad0dd513a5aa` | ⚠️ Unaudited |
| Proxy | unknown | project_anchor | own_supporting | 1 | base | unit-229089 | `0x4200000000000000000000000000000000000000` | ⚠️ Unaudited |
| Proxy | unknown | project_anchor | own_supporting | 1 | base | unit-229090 | `0x4200000000000000000000000000000000000002` | ⚠️ Unaudited |
| Proxy | unknown | project_anchor | own_supporting | 1 | base | unit-229086 | `0x420000000000000000000000000000000000001b` | ⚠️ Unaudited |
| ProxyAdmin | unknown | project_anchor | own_supporting | 0 | ethereum | unit-228924 | `0x0475cbcaebd9ce8afa5025828d5b98dfb67e059e` | ⚠️ Unaudited |
| Recovery | unknown | project_anchor | own_supporting | 1 | base | unit-229098 | `0x0475cbcaebd9ce8afa5025828d5b98dfb67e059e` | ⚠️ Unaudited |
| ResolvedDelegateProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdbe6b6ccfa97860780f64ae4de394f6017644f89` | ⚠️ Unaudited |
| RiscZeroGroth16Verifier | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5a99469f18a5863d3258e577892589386dfd965e` | ⚠️ Unaudited |
| RiscZeroSetVerifier | unknown | project_anchor | own_supporting | 0 | ethereum | unit-228930 | `0x5005aba3dff7c940fcc1e48dcccad611a80eeb85` | ⚠️ Unaudited |
| RiscZeroVerifierEmergencyStop | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x08aed6c108e500540a9544bef7a8b8a05e056e87` | ⚠️ Unaudited |
| RiscZeroVerifierRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x0b144e07a0826182b6b59788c34b32bfa86fb711` | ⚠️ Unaudited |
| SafeProxy | unknown | project_anchor | own_supporting | 1 | ethereum | unit-229075 | `0x20acf55a3dcfe07fc4cecacfa1628f788ec8a4dd` | ⚠️ Unaudited |
| SchemaRegistry | unknown | project_anchor | own_supporting | 1 | base | unit-229087 | `0x4200000000000000000000000000000000000020` | ⚠️ Unaudited |
| SequencerFeeVault | unknown | project_anchor | own_supporting | 1 | base | unit-229097 | `0x4200000000000000000000000000000000000011` | ⚠️ Unaudited |
| SP1VerifierGateway | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdc32e228636273285befa5f001dbb5142517c106` | ⚠️ Unaudited |
| SystemConfig | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6481ff79597fe4f77e1063f615ec5bdaddeffd4b` | ⚠️ Unaudited |
| SystemDictator | unknown | project_anchor | own_supporting | 1 | ethereum | unit-229079 | `0x1fe3fdd1f0193dd657c0a9aac37314d6b479e557` | ⚠️ Unaudited |
| TEEVerifier | unknown | project_anchor | own_supporting | 0 | ethereum | unit-228926 | `0x1fba0c57b07af804a9717e51dec9cc27fbc12228` | ⚠️ Unaudited |
| TimelockController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0b144e07a0826182b6b59788c34b32bfa86fb711` | ⚠️ Unaudited |
| WETH9 | unknown | project_anchor | own_supporting | 0 | base | unit-229025 | `0x4200000000000000000000000000000000000006` | ⚠️ Unaudited |
| ZkVerifier | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9e51defb019d1942d1210767f4a21be5e24e3c3b` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (107)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x000f3df6d732807ef1319fb7b8bb8522d0beac02` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0389e59aa0a41e4a413ae70f0008e76caa34b1f3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0fe884546476ddd290ec46318785046ef68a0ba9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x21efd066e581fa55ef105170cc04d74386a09190` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2ff5cc82dbf333ea30d8ee462178ab1707315355` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x32ce910d9c6c8f78dc6779c1499ab05f281a054e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4200000000000000000000000000000000000000` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4200000000000000000000000000000000000002` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4200000000000000000000000000000000000006` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4200000000000000000000000000000000000007` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x420000000000000000000000000000000000000f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4200000000000000000000000000000000000010` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4200000000000000000000000000000000000011` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4200000000000000000000000000000000000012` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4200000000000000000000000000000000000013` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4200000000000000000000000000000000000014` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4200000000000000000000000000000000000015` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4200000000000000000000000000000000000016` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4200000000000000000000000000000000000017` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4200000000000000000000000000000000000018` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4200000000000000000000000000000000000019` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x420000000000000000000000000000000000001a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x420000000000000000000000000000000000001b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4200000000000000000000000000000000000020` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4200000000000000000000000000000000000021` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-228928 | `0x43edb88c4b80fdd2adff2412a7bebf9df42cb40e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x49f53e41452c74589e85ca1677426ba426459e85` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-228934 | `0x608d94945a64503e642e6370ec598e519a2c1e53` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x646132a1667ca7ad00d36616afba1a28116c770a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6af0674791925f767060dd52f7fb20984e8639d8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6cdebe940bc0f26850285caca097c11c33103e47` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x709c2b8ef4a9fefc629a8a2c1af424dc5bd6ad1b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-228936 | `0x73a79fab69143498ed3712e519a88a918e1f4072` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-228938 | `0x7bb41c3008b3f03fe483b28b8db90e19cf07595c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7d8ea07db94128dbee66bafa3ebaa9668b413d72` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-228944 | `0x866e82a600a1414e583f7f13623f1ac5d58b0afa` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-228946 | `0x8eab2d97dfce405a1692a21b3ff3a172d593d319` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-228950 | `0x909f6cf47ed12f010a796527f562bfc26c7f4e72` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x925d8331ddc0a1f0d96e68cf073dfe1d92b69187` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x92f6dd3501e51b8b20c77b959becaaebeb210e17` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-228951 | `0x9855054731540a48b28990b63dcf4f33d8ae46a1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xadc09b63a3ac57a2ce86d946617a18df9db029a1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb1efb9650ad6d0cc1ed3ac4a0b7f1d5732696d37` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-228954 | `0xb88d95bdf6972508942d184866890c1834219b75` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc34855f4de64f1840e5686e64278da901e261f20` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcb9d14347b1e816831ecee46ec199144f360b55c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-228958 | `0xd0d07924add740a87e41ca8a0d4cbbf6b074ef71` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd3683e4947a7769603ab6418ec02f000ce3cf30b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd6e2d9d4f1f8865ac983ee848983fb1979429914` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd6e6dbf4f7ea0ac412fd8b65ed297e64bb7a06e1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdb84125f2f4229c81c579f41bc129c71b174eb58` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdeaddeaddeaddeaddeaddeaddeaddeaddead0000` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-228961 | `0xeecb8a5944b217585817e802702b1262a049d259` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf0d7e15673fba052e83d7f2b26bb6071e86b972e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf272670eb55e895584501d564afeb048bed26194` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf3f0fa3124b7b0feb048a00404fe4d5d49e60796` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf9780104117c0fad3a9b1386fbf40a9f5857988a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfd0bf71f60660e2f608ed56e1659c450eb113120` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xff00000000000000000000000000000000084532` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-229011 | `0x000f3df6d732807ef1319fb7b8bb8522d0beac02` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-229015 | `0x14536667cd30e52c0b458baaccb9fada7046e056` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | base | unit-229017 | `0x1fb8cdfc6831fc866ed9c51af8817da5c287add3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-229023 | `0x3154cf16ccdb4c6d922629664174b904d80f2c35` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-229026 | `0x4200000000000000000000000000000000000012` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-229027 | `0x4200000000000000000000000000000000000018` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-229029 | `0x49048044d57e1c92a77f79988d21fa8faf74e97e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | base | unit-229033 | `0x58bf355c5d4edfc723ef89d99582eccfd143266a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | base | unit-229036 | `0x6463dee3828677f6270d83d45408044fc5edb908` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | base | unit-229039 | `0x6ddba09bc4ccb0d6ca9fc5350580f74165707499` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-229046 | `0x866e82a600a1414e583f7f13623f1ac5d58b0afa` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-229047 | `0x8eab2d97dfce405a1692a21b3ff3a172d593d319` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-229048 | `0x8efb6b5c4767b09dc9aa6af4eaa89f749522bae2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base-sepolia | n/a | `0x0fe884546476ddd290ec46318785046ef68a0ba9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base-sepolia | n/a | `0x4200000000000000000000000000000000000012` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base-sepolia | n/a | `0x646132a1667ca7ad00d36616afba1a28116c770a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base-sepolia | n/a | `0x6af0674791925f767060dd52f7fb20984e8639d8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base-sepolia | n/a | `0x6cdebe940bc0f26850285caca097c11c33103e47` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base-sepolia | n/a | `0xadc09b63a3ac57a2ce86d946617a18df9db029a1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base-sepolia | n/a | `0xdb84125f2f4229c81c579f41bc129c71b174eb58` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base-sepolia | n/a | `0xff00000000000000000000000000000000084532` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-228964 | `0x0389e59aa0a41e4a413ae70f0008e76caa34b1f3` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-228965 | `0x0fe884546476ddd290ec46318785046ef68a0ba9` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-228966 | `0x1fb8cdfc6831fc866ed9c51af8817da5c287add3` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-228967 | `0x21efd066e581fa55ef105170cc04d74386a09190` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-228968 | `0x2ff5cc82dbf333ea30d8ee462178ab1707315355` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-228969 | `0x32ce910d9c6c8f78dc6779c1499ab05f281a054e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-228985 | `0x49f53e41452c74589e85ca1677426ba426459e85` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-228986 | `0x58bf355c5d4edfc723ef89d99582eccfd143266a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-228987 | `0x646132a1667ca7ad00d36616afba1a28116c770a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-228988 | `0x6463dee3828677f6270d83d45408044fc5edb908` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-228989 | `0x6af0674791925f767060dd52f7fb20984e8639d8` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-228991 | `0x6ddba09bc4ccb0d6ca9fc5350580f74165707499` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-228992 | `0x709c2b8ef4a9fefc629a8a2c1af424dc5bd6ad1b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-228993 | `0x7d8ea07db94128dbee66bafa3ebaa9668b413d72` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-228994 | `0x925d8331ddc0a1f0d96e68cf073dfe1d92b69187` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-228995 | `0x92f6dd3501e51b8b20c77b959becaaebeb210e17` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-228997 | `0xb1efb9650ad6d0cc1ed3ac4a0b7f1d5732696d37` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-228998 | `0xc34855f4de64f1840e5686e64278da901e261f20` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-228999 | `0xcb9d14347b1e816831ecee46ec199144f360b55c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-229000 | `0xd3683e4947a7769603ab6418ec02f000ce3cf30b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-229001 | `0xd6e2d9d4f1f8865ac983ee848983fb1979429914` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-229002 | `0xd6e6dbf4f7ea0ac412fd8b65ed297e64bb7a06e1` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-229005 | `0xf0d7e15673fba052e83d7f2b26bb6071e86b972e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-229006 | `0xf272670eb55e895584501d564afeb048bed26194` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-229007 | `0xf3f0fa3124b7b0feb048a00404fe4d5d49e60796` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-229008 | `0xf9780104117c0fad3a9b1386fbf40a9f5857988a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-229009 | `0xfd0bf71f60660e2f608ed56e1659c450eb113120` | ❓ Unverified |

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
| ethereum | `0x8efb6b5c4767b09dc9aa6af4eaa89f749522bae2` | AddressManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x4200000000000000000000000000000000000019` | BaseFeeVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x4200000000000000000000000000000000000021` | EAS | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xf10122d428b4bc8a9d050d06a2037259b4c4b83b` | ERC20Factory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x420000000000000000000000000000000000000f` | GasPriceOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x4200000000000000000000000000000000000015` | L1Block | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x4200000000000000000000000000000000000013` | L1BlockNumber | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x420000000000000000000000000000000000001a` | L1FeeVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x3154cf16ccdb4c6d922629664174b904d80f2c35` | L1StandardBridge | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x4200000000000000000000000000000000000007` | L2CrossDomainMessenger | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x4200000000000000000000000000000000000014` | L2ERC721Bridge | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x4200000000000000000000000000000000000010` | L2StandardBridge | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x4200000000000000000000000000000000000016` | L2ToL1MessagePasser | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x7f3a16e1fe6fda64c5ac4296e13ecb9f7b44f6fb` | NitroEnclaveVerifier | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x05cc379ebd9b30bba19c6fa282ab29218ec61d84` | OptimismMintableERC20Factory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x4200000000000000000000000000000000000017` | OptimismMintableERC721Factory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x49048044d57e1c92a77f79988d21fa8faf74e97e` | OptimismPortal2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x0475cbcaebd9ce8afa5025828d5b98dfb67e059e` | Recovery | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x5005aba3dff7c940fcc1e48dcccad611a80eeb85` | RiscZeroSetVerifier | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x4200000000000000000000000000000000000020` | SchemaRegistry | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x4200000000000000000000000000000000000011` | SequencerFeeVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x1fe3fdd1f0193dd657c0a9aac37314d6b479e557` | SystemDictator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x1fba0c57b07af804a9717e51dec9cc27fbc12228` | TEEVerifier | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x4200000000000000000000000000000000000006` | WETH9 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 47 |
| upstream | 0 |
| standard_library | 9 |
| needs_review | 107 |

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
