# Agentic Audit Brief: Base Bridge

## Export Authority

- Production state: **blocked no audit authority**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 0 (0 matched; 0 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e40c73181a386361babecc6895e0f6c5587548f92814db09f88491f8b4a38d92`

## Project Overview

- Project: Base Bridge (`base-bridge`)
- Website: [https://docs.base.org/base-chain/network-information/bridges-mainnet](https://docs.base.org/base-chain/network-information/bridges-mainnet)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: base, base-sepolia, ethereum, sepolia
- Contract surface: 666 unique implementations (666 raw deployments)
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
- Outside the address book: 584 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 26
- Confirmed-live implementations: 51 of 666 unique; 615 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/56
- Verified + Unaudited implementations: 56
- Verified by bytecode match: 0
- Unverified implementations: 610
- Unique implementations: 666
- Raw deployments: 666
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

### ❓ Unverified (610)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x000f3df6d732807ef1319fb7b8bb8522d0beac02` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0389e59aa0a41e4a413ae70f0008e76caa34b1f3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x07c51ddd38f192221fbe48f97cbe31a54c3b8637` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0fe884546476ddd290ec46318785046ef68a0ba9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x19009debf8954b610f207d5925eede827805986e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1dfc611d8c365b7efb797149b0ebfd6b43ab3aeb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x21efd066e581fa55ef105170cc04d74386a09190` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2ff5cc82dbf333ea30d8ee462178ab1707315355` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x327dde84c9173dd799a4f74b04a69d9d385d31a4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x32ce910d9c6c8f78dc6779c1499ab05f281a054e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3b02631b249478f7155c8c90f0b0328e13aa8ee7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3d2c2f8f95caba644ea25319c4c08594b8dc0359` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3f3c0f6bc115e698e35038e1759e9c31032e590c` | ❓ Unverified |
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
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x437c42d7927fe396e54da837d6ac57756cd868e3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-228928 | `0x43edb88c4b80fdd2adff2412a7bebf9df42cb40e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x44c220f0598345195ce99ad6a57adffcb9ea33e7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4519f528cf0f500c737c0e11b73bdb23979467a7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x468c2345d1d409d5b0f2f8be4ae2082150cc1a0c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4949bce0eff9bf3cec9ba19887842c8556aa63e3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x49f53e41452c74589e85ca1677426ba426459e85` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4c0daf5d9abe92e8a26a60698a657b03538a3028` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4d9078db7220a2be74f8eddf3de98a76910a6d24` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5054e041aeeb9ca87e23d6aac90281837abafe2c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x52a4b8fe88c1af11648c86ca8244de8a9a6b1df9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x56315b90c40730925ec5485cf004d835058518a0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-228934 | `0x608d94945a64503e642e6370ec598e519a2c1e53` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x60f1ea7b3359a4008655df44560b6899b1877a15` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x646132a1667ca7ad00d36616afba1a28116c770a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x663fd2c5da1c63e4142b54c7f256578686f4fbc4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x66d94ee8f529b683ed6013729784e8bb44697a64` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6af0674791925f767060dd52f7fb20984e8639d8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6cdebe940bc0f26850285caca097c11c33103e47` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x709c2b8ef4a9fefc629a8a2c1af424dc5bd6ad1b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7237343c2a746aa2940e5e4fbd53eafbf3049dca` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-228936 | `0x73a79fab69143498ed3712e519a88a918e1f4072` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x75d33a75f7948383f376b0ea59e0d828242e08dd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x78ffe9209dff6fe1c9b6f3efdf996bee60346d0e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x794776f5b8bf21a3d2a95cebef16989f6d97f4e6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-228938 | `0x7bb41c3008b3f03fe483b28b8db90e19cf07595c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7d8ea07db94128dbee66bafa3ebaa9668b413d72` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-228944 | `0x866e82a600a1414e583f7f13623f1ac5d58b0afa` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-228946 | `0x8eab2d97dfce405a1692a21b3ff3a172d593d319` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-228950 | `0x909f6cf47ed12f010a796527f562bfc26c7f4e72` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x925d8331ddc0a1f0d96e68cf073dfe1d92b69187` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x92f6dd3501e51b8b20c77b959becaaebeb210e17` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x949842adb5ef1d348f95eb56bf1591c718ac39b6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x94a4684d6f7085c19138bd4f9f3295fa9943c622` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-228951 | `0x9855054731540a48b28990b63dcf4f33d8ae46a1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x98659f5c3e7e47d99fea0bfb34d469a01097017b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9fdb5f24b24fe20375b03f5b3e744970d50dc368` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa2f2ac6f5af72e494a227d79db20473cf7a1ffe8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xac3cedf010b3a51b4a8ea434e9c8c855dd6c8ac2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xadc09b63a3ac57a2ce86d946617a18df9db029a1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb1ac02e00d654c2915235c558b62ea3299a95a10` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb1efb9650ad6d0cc1ed3ac4a0b7f1d5732696d37` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb2f80e0760b767a73835e37446124a5b78019117` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb839ea7bba8e6bb2893ca5252f3f3c13323d74f7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb85fe401c98aa0d464c8f6bed4778ed61f2152b7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-228954 | `0xb88d95bdf6972508942d184866890c1834219b75` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb8e00fbd4431058f3d41a7c237d58f382b9fd23e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbbd5b95a77dbf8bde35b9f837aaf2828d724d466` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbd02dce787564fa208ece8176af372f4bd7345bf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc34642296af92f2f1100b24844b7db8d7099d296` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc34855f4de64f1840e5686e64278da901e261f20` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc732449d62c58450a15d3034d256ab9759aa6a76` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcb9d14347b1e816831ecee46ec199144f360b55c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcd3c0194db74c23807d4b90a5181e1b28cf7007c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-228958 | `0xd0d07924add740a87e41ca8a0d4cbbf6b074ef71` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd3683e4947a7769603ab6418ec02f000ce3cf30b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd6e2d9d4f1f8865ac983ee848983fb1979429914` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd6e6dbf4f7ea0ac412fd8b65ed297e64bb7a06e1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdb84125f2f4229c81c579f41bc129c71b174eb58` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdb9091e48b1c42992a1213e6916184f9ebdbfedf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdc986a09728f76110ff666ee7b20d99086501d15` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdeaddeaddeaddeaddeaddeaddeaddeaddead0000` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdf518077bd12c33ac35bb6f387e7c3309ec1c646` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdfd649caa0bd0554f23dff79371c797daae60bfb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xeab9b34bdd26ad451b381b0934a30faa6ed5e316` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-228961 | `0xeecb8a5944b217585817e802702b1262a049d259` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf0d7e15673fba052e83d7f2b26bb6071e86b972e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf272670eb55e895584501d564afeb048bed26194` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf3f0fa3124b7b0feb048a00404fe4d5d49e60796` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf70abab028eb6f4100a24b203e113d94e87de93c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf774e864413b46f43a889a5ea59b3551d6027836` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf83c8b82f68aa6e7b9aafe0f10c286317ada7fff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf9780104117c0fad3a9b1386fbf40a9f5857988a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfd0bf71f60660e2f608ed56e1659c450eb113120` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xff00000000000000000000000000000000084532` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xff1ca69a596c7a471bd26c05cac4ee0facb31c68` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-229011 | `0x000f3df6d732807ef1319fb7b8bb8522d0beac02` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-229015 | `0x14536667cd30e52c0b458baaccb9fada7046e056` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | base | unit-229017 | `0x1fb8cdfc6831fc866ed9c51af8817da5c287add3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x27983ee173ad10e171d17c9c5c14d5bafe997609` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-229023 | `0x3154cf16ccdb4c6d922629664174b904d80f2c35` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-229026 | `0x4200000000000000000000000000000000000012` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-229027 | `0x4200000000000000000000000000000000000018` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-229029 | `0x49048044d57e1c92a77f79988d21fa8faf74e97e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x56315b90c40730925ec5485cf004d835058518a0` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | base | unit-229033 | `0x58bf355c5d4edfc723ef89d99582eccfd143266a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x5e36f0d56741013d864d8feb5950ab0e7eff9ab1` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | base | unit-229036 | `0x6463dee3828677f6270d83d45408044fc5edb908` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | base | unit-229039 | `0x6ddba09bc4ccb0d6ca9fc5350580f74165707499` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x84b943e31e7fae6072ce5f75eb4694c7d5f9b0cf` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-229046 | `0x866e82a600a1414e583f7f13623f1ac5d58b0afa` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-229047 | `0x8eab2d97dfce405a1692a21b3ff3a172d593d319` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-229048 | `0x8efb6b5c4767b09dc9aa6af4eaa89f749522bae2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xbdaed5bbf8016afd05fc4659572e5feb5854aad4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xdc986a09728f76110ff666ee7b20d99086501d15` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xf70abab028eb6f4100a24b203e113d94e87de93c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base-sepolia | n/a | `0x0fe884546476ddd290ec46318785046ef68a0ba9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base-sepolia | n/a | `0x4200000000000000000000000000000000000012` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base-sepolia | n/a | `0x646132a1667ca7ad00d36616afba1a28116c770a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base-sepolia | n/a | `0x6af0674791925f767060dd52f7fb20984e8639d8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base-sepolia | n/a | `0x6cdebe940bc0f26850285caca097c11c33103e47` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base-sepolia | n/a | `0xadc09b63a3ac57a2ce86d946617a18df9db029a1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base-sepolia | n/a | `0xdb84125f2f4229c81c579f41bc129c71b174eb58` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base-sepolia | n/a | `0xff00000000000000000000000000000000084532` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x0044df88c13170d2591c60e2c242b99b9ae4dbed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x00db30aca9e328c98a7d1709c4d1ab9da8d8866a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x00f3954769c9a2fb70dc709870b75e022e63df52` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x014ab5493aa205540f2984f4fe8b9d13e4ca8afc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x02ab53870d1ea9cb2ab49602c1b4f20fcbed94b1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x02b24109ed3ee4ed52aad5fb76f7ee96d1c0130e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x02b34e49d429b9499e59034e922b483054785d73` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x0319d7be06524f6817a30f3bdab541a064ff4dcf` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-228964 | `0x0389e59aa0a41e4a413ae70f0008e76caa34b1f3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x05476c97fc457700dfacca6a937a0ce85b75dc84` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x065c0c6acd6d08e661667b4853293c2d6581c877` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x06c8f4371b708d0b4911aa2cca07bf14904a3111` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x06ce040bb22b97f4ccedcb49b9a7f324df7871b3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x08112c76e83b7c88729e41b630ebf0f82e8b93b8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x089581fef0ea7ef36ba252b295e8d172ceef0df3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x097467aa64f0fbec49d7a1bc4611616ee0bbf74b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x0abc4e57c54ff1d20b542458df2b7fe9d8ff3200` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x0b3e7ef03c20acae8cfe2f5bc43db6fd3e76b48c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x0d595d4d3dc06548d536e74528c5b8ecc2171b31` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x0db4a95368675b8ab0d25a564205df1ec9494ebf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x0ed8a7e25283e4e54d8ca2f7b819bda52e725b8e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-228965 | `0x0fe884546476ddd290ec46318785046ef68a0ba9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x0ff3c81a86e0ca11842617cbc5644aa16b22bb58` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x102895cce12d90f502e4b0cae89ca68d73af333a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x103177f53f2f14b7e5ef1ec01c7572a86b4f4b04` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x103201f7ed8a54d0ca156ea62087cbb283e295e0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x10d33ef9517a7ecad8bb2a751d96ab97b3426c87` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x1129280721c21d2c826b7963d854756528770afe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x153ba41d8abd7acc0d57e4ddf2c4851c874ba103` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x156d9e599c9b055ed8b97e614d26f624de8d3eb6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x15ff4b78b6a888652513cdc1ff52b71e421d7947` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x163da1b155322b47c8d0cc8fdf63414134514013` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x1700b3da8e9bfb805cca1bff83434725e62e5a0c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x173098702e70d5eba557bc539684e689a81a463d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x174f61d148135bf4a4b84fd56d0b6ffc653f54d2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x17626e33878597cbbfc877c9aa47945e64eb6d31` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x18106e46a13f8ea4bd9076fc7941dbc969a02c7a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x18217d97582e0e5bf03f3408ff4569bb333bfbcd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x1841324612d8a8e017dcc9917e04f90f42fda3f0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x18c743c804c872d72cd41355743e0d4791f59277` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x19e20bffb70c44a8442a5294a42b1591bbc21592` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x19f652101092bc96da8c0c2b1575a9474095af79` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x1ae80bdb38e92a897332bfa867baf09901426ea9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x1bb8dacba30b1cd82ce1d3d7f24e16ee549aebe8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x1c03e8ce7184d2d3a075f93a3637c6a3be866704` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x1c7fec9990e2c941d5145d6960a3455209f7485a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x1dc61358ce378eacdc61b2cdb3330482333507c0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x1dfc476844e249341ed2a0e67dc3969d0b6a2172` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-228966 | `0x1fb8cdfc6831fc866ed9c51af8817da5c287add3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x1ffafb5fdc292393c187629968ca86b112860a3e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x203995c1df76e4478650924496ca6a9302fb4509` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x20ed1bf74b400b15efe704a946ac1aa7d8350f17` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x210303565cbf0b8c0d2837523816f815f02ad5eb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x21d79f6e2920cb723d459e39bba2bf0d6122f0fe` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-228967 | `0x21efd066e581fa55ef105170cc04d74386a09190` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x23212a77311c1145fa6ce2e88554cb697ce9e60e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x2484e4ece518c2cfc40668f58ed1e7710dee8258` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x248c18c76445ab8b042d31d7609fffec800a57ba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x24c2d01498c0d270ef0721052a08ccd7e16089ad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x25b203cae17edcf78be8582c6abf10bfdc654c14` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x268b5aca6a85f08fd61d3564f012b73d64926f49` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x27a6128f707de3d99f89bf09c35a4e0753e1b808` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x27b8d2d28540b133f9454535867e3b89b78d88b0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x289736e889d4493e320fe7b98afca6732001d235` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x28ce5a280a7775ee97587c513c4b4533597fb00b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x2925d0ea68542a38ad1b11cc36f2a379bb7e9ade` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x295f73c663843302591290b7dd4520bf23e6a5f0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x2a87a9d533c775ba90893a02ca3e452886873104` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x2ab6e58257e9f2689f8a17464450e1cf3870bad1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x2ace63ae507ce340823e705a0c640bedd9026b14` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x2bd768bfdae07c8ca9736ed559dba1fdd06b90e6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x2c42b1beee3c1ed1fce88b541d64facfce82fe06` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x2c72debfa8b647df70194bcd37e9a8bc0b67f021` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x2cbd403d5ba3949d24ee4df57805eac612c2662f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x2cce62a3496ac7bd1a706cf7e1a765fd24e59666` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x2cf310b00efff0fe7352bd0057eea7e159ec6aa0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x2d05f4fab724d5888c69c66a0f7ff21fff7db045` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x2d342d5f00ec9f99ab8b7db07f8e9d799009fa37` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x2dbe02cca7a7874a287f3d7ce811a517bf7be32b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x2dc52760d13a3c2df33fcc42913c4dddd8d976b9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x2e18754ea334c30adb7ecdd0a0d0d7ddf7a711e0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x2ef2b77ee266ad16ad0d51b776f11fcc98f50432` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x2f148e4dd2c749202e978c19b43e69df56c749fd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x2f2fe5708349331ae9cceefefbf33a997549a2e0` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-228968 | `0x2ff5cc82dbf333ea30d8ee462178ab1707315355` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x303bc8f9b77ba23c26c6bb4a2a7ef2b1b5133469` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x3065b3175f0265212e041ea119d0001cf751e5a7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x308aafa83293e72d38b7bcdc8fbc7fbaccb18b0f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x30e172aac675c9fe5a64792f92c9fd4d3e7ca9da` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x323adf2126c21437f483c2577a19d710dba1ef67` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-228969 | `0x32ce910d9c6c8f78dc6779c1499ab05f281a054e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x32d987d8420dc1661cc03722b79aac2ac3e5cf5a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x332fa0d836abe21b07c87f91736056be7ed12193` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x3365567988f788f7e878377cf211cc98a3505e15` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x33f75d81f84050123c754f467a1035f60085b34b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x35008b7c4577df2e9e7f3bea110d5524b1e830a6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x36057ba53197165390f075a3e2fc2a3fe60c4895` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x36d117866eac35ed451d8d34842d2435209686da` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x376bbc764b51fecaeb9a4f6164aaad7809eaf026` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x3813ddc56e58d5e13b2dc87cc000c1259d73df9b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x38eb04fb947cd8c49aac49f31a0bbfbd1c9ae443` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x3a0a9e5b91709bba0bcb4bb4b66730dcfef6e926` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x3ade4ddd3e7a6f6fafea4e87f87979752f87cb0c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x3aec28c4a6fc29dae0b2c4b8b4a5e6c107ac8391` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x3b0d2f6a1f9d9de3a163e1f0aaf845dd47ce3122` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x3b73590c0aced56b315a6f0e9e6f0c326b288db2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x3ba122cf02a4705b50d5eac13f1dbfdfdb10c548` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x3c094f0d46a37054ad1620ff57080835224f46b9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x3cb6a5d12e72aa765c7e03f167e67725725a7553` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x3d2117699fe0ffb02d476c3d32dcf3fb9bcf6f58` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x3d24c84fc1a2b26f9229e58dddf11a8dfba802d0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x3d3023e75c3ccbdd5ce5d974559f8fc83c41aaae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x3deef8a928bd3ed32d337be372ff635d4b9a7420` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x3e4f86ca18c90f2b933f20ffbef8056fdf4132bf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x3ea3b50241ab59b5fc5b43e56f5326f3a2200c06` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x3f5c770f17a6982d2b3ac77f6fdc93bfe0330e17` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x3fc90337a98529493744114b9faf2691cea49188` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x41561b917df69187e50c52ea458df9d931b648f7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x41704dd5ad2b37a943f7698e58a744d1405efc15` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x421194292dc69c440528d3865ae6a2b22f683cb6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x42990694bb4177577e1e5ae6a98dc2ebe9b17049` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x429bcb66646caa847e478b4217e7d18e1d974bd9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x439799801a27b485d16f8e502d91780e9433a951` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x43e7f00092d8077d6a4e9846e4b0c7fd882ab2d5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x43e8e821045a37cd981fb4cf85ae5088c346652a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x44c4b7dbcdc2eab99c66cd0560d2a72cf8658e2c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x45111d4fdf5ec6bd2bdbf9aed4a5f01140b892d9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x45593691657df351e8487f295b5b83f82966b6db` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x4595a41c6f76e8dfeecf56d54538554b5e0f9e89` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x45b899449cd0911ed98e40b2c7f32fcd02517fa3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x45b924ee3ee404e4a9e2a3afd0ad357eff79fc49` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x45fa7cffa725e238a46a35fde9f339b63fdedbdd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x465bf36f5a3832b3bd077552e7ef3c54b9885718` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x46e33788259fc9e8764ba78532c94def12689a47` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x46f0a3ff3e76e3a8e934d89b6fa9638ff5242af3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x4730cec510e664838b20b576881702b64651cc45` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x47e6c77ae210a3baaca43cf596a3c5567c2bb10e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x482062b4915311fd717015d711a35da63bdf28cc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x489c2e5ebe0037bdb2dc039c5770757b8e54ea1f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x48f9f3190b7b5231cbf2ad1a1315af7f6a554020` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x4904cecc04c2769e38590065e566146aaf0726c5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x497b409e098fd3d2a4efbcf96a1e76478d182fee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x498313fb340cd5055c5568546364008299a47517` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x49c947b6d865d9252989471e98096b8cd67d7902` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x49d7296d30bcfa9dced93843febbc28be846e66e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-228985 | `0x49f53e41452c74589e85ca1677426ba426459e85` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x49fe7d77355e2df0a9b0ecfad9652ec34363dddc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x4aae21fc11669463d37d2b875b52c7d63f794a08` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x4b249e565c6d12a48a6946faffc4bba0b82f6487` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x4b3464d3de7767483ef507f44b34dd60ce574cfc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x4bbcfa9be58620b4fb1989a774917d57e2519985` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x4bf0a1f6826c55da23a11a583ac5cdb8b897f9b3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x4c1e8c60c3f07ad8a0d08fcd5cf93f6b73dfeb76` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x4c4638be5e61d6aef6b1e7d6876e4399b06ab837` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x4c8ba32a5dac2a720bb35cedb51d6b067d104205` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x4cf26de13cc4d64352f6c76b8ef888bea6a2acef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x4db176b36a218d15433ea479b08f910b818c35e4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x4e7f7f41125247acb5844dc74f5704c5c53b78b0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x4f179b115ba25707a49243a3dad07e30f0c15747` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x4f58160574fbb51eb076289fc81abf46e75cfab7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x4fc52f45202cfa48cb84308b05a0d2a6adbabbf0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x5062792ed6a85cf72a1424a1b7f39ed0f7972a4b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x52bf99ac6da3a1e174c74e8f571e24eea37b2aab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x52dcc10523f6bfe0787ea528f3b50315163b0252` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x52f8f01fb5e2cf6be15a311ebfb30f24352c7221` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x5392e1c4c94721091a887096cafd04850b812d59` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x539ce371fcb2af97ffef3c013b760d9e87b5de34` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x5431a6fd5365e9629bd2b0969e54c4f09d6781ba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x54966d5a42a812d0daade1fa2321ff8b102d1ee1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x550866090bf286420e940fe74c9e4cd184c579b6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x556b149149999fe06979045c3e4b332eb77a7081` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x5638e55db5fcf7a58df525f1098e8569c8dba80c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x579c82a835b884336b632eebecc78fa08d3291ec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x5873d69cd7cd6f1040aa87e6107eb6516e9f5359` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-228986 | `0x58bf355c5d4edfc723ef89d99582eccfd143266a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x5920bd6ab4c1b96bfd4efc56eb6cf9b018e3bf4c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x5930a2fb7b2238c2ef2f95e718bfc560b44139f3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x59937f72aa2a018d1e14e7763266f87f7737df1f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x59b0d79f0eeac0671216ae6b495a3195cf3ebb9b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x59eef8591c74c2979b7609254901973a6ca357e3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x5a7da1d200af68f890b4568c258ad86ee805b35b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x5a9322fb8c573435789e9234c85fb1d882b2452a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x5af90fde02b46e202f6232b3ede25b3f602ac673` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x5ca9f24b2fefe1db20cad19e82c870f220973835` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x5ed42a8eb9e1f0b466047c02156d894968d42ff9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x5f39f88bbb698cca291148c886438c1d3813e5c1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x5f757a5452f59839b3e1ce45b13d250da2a1e716` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x5fbc88a0e28610925e36cb7d45cd718367c3d59b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x5fe805f993bfe59c90ecd1bcdb93306c8c60bfdb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x6067ec677bb9e66759c92a85d5fb5b2bc4d461e3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x6123ab4ab4f860ba4810f7f7cb0be4a111d8c490` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x628b6a6a823295fb0967eba2b8db74180a2f523a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x629cf75322989ce321e10bfa4df2dae43ac19c82` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x63176dbfadf533b3759f2aca9125b7918a3567be` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x6335c7a8ed5b62ba1aceb0912033b7a415a8002c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x641e68e4d48babc359e46283a1440d7698fc39c0` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-228987 | `0x646132a1667ca7ad00d36616afba1a28116c770a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-228988 | `0x6463dee3828677f6270d83d45408044fc5edb908` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x657c8b8d05001e51b1cdcfc8709537a8963390a4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x65ed178b0194f625c93534005d8be5b41a3955ba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x667bf718c91dde758997c9ad4c1454dcf63e35d8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x66c5002e363cffb3928716e6a6a3cc978692513d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x67faf98d1726d453ca387798a65ab6bafe4fc239` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x68f600e592799c16d1b096616edbf1681fb9c0de` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x699f91cdd4234aca5bc5f58b28726eea29240b49` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x69ca0e717676270734c6a20c0deabc9d81a58452` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x69df334e6198505cf8a7148ef1e391b236027aee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x6a53fac12c4859c121a05b756648e905fe5dd000` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-228989 | `0x6af0674791925f767060dd52f7fb20984e8639d8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x6ba22d402bda93cbd90ad24958d73795f5dec0e4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x6c0df1080cbd2856a4e2d0708be23f3e9cf44a6a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x6c9de6cc269844c3121b2b59f239f79bace2303d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x6ca76647a140adbe21046fc4dbcac525f62cc964` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x6dbd64ac7f403e33fe448c6e964bad4372ed5a1d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-228991 | `0x6ddba09bc4ccb0d6ca9fc5350580f74165707499` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x6e389c2d66fdbddc4250c4e1d8e6ada80df53ec0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x6ed60b2e1bdc8bcf333e12e716af2bc63bb263d6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x6f3db1c1f5110b20efbbccd13367bca8898092e6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x6ffd12456c0594bfae7e2475a115dd6e29d2083c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x7061cb8a527948bd0aebe17bb70b6265ba6b081d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-228992 | `0x709c2b8ef4a9fefc629a8a2c1af424dc5bd6ad1b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x72b0b9f638d19a21385b59cd1624adc830c2c6a3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x72cdc8ffbaaca79250c9ef4994e700493fb5aea0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x73fba73df9765af82d700914b2cfa41c97f05891` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x7502a6393186ff69d6565a268e6b7b87ccff203a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x7542ca511c17f6dc35c915c20867d7df69c35eb6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x754a5a4be1f2c4f8a25c463b0645b79d526ab918` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x758953f9547a0a3f098861fcbc6ec52fac1dbc06` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x75b1f8e9b1fabcdf0d4a807898595bf16de6cec6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x7698b262b7a534912c8366dd8a531672deec634e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x76e5d912e8efd241376d20b425ac9264da463dec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x778bbc9031303111863556a839f942fa57958dab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x7841b91e0300a93659233048a35e3813b240c943` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x787ed68ff4c6caaf7132cdb0bd1f97e8c360da25` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x788ffd8af4d6543f42e60994348bb5be85c5f8b5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x78a9ebf8223840381d34374d231f64e4f8af1d55` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x79366197a392400b869c32abb1e090593c7659c8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x7b601862080474cbb5f9939dd54351aad09ba6f8` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-228993 | `0x7d8ea07db94128dbee66bafa3ebaa9668b413d72` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x7db62c503ba562911d8a79967d19590f47b8f39d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x7dd0f51c71da5243174fa829c8cf3385b06833b0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x7df16101da2c532912910f11e51c0bd1aeb2e5f0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x7f67dc4959cb3e532b10a99f41bdd906c46fdfde` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x80e166949a72d209ec11b6c1603cadf9edf628d6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x8105d699b38ed7cf9b75353baccca60496ed72fd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x828e90ba966abcd869e39d69ec4d89f521547e5a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x829e7cacc4d2d7317dab8abc39700573b0446390` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x8340fbfe47ef63ecf414e41e2f5e96bc6d8b1924` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x83edc65d2aa3e1bf3a0f6b156f0efaa9cc8f9587` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x83f62f4f75c430fe50b69caec3574f1dd33b734e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x84457ca9d0163fbc4bbfe4dfbb20ba46e48df254` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x844691ef0cfe095450c3f7a093c81d82c95bc240` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x845c8926af783514c5e1d7cfa9016adc3a12cbe3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x882a60911d00867fe4ea632c479cc48e583a8d69` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x884035fbb4b919e703e281da78011909700c45ac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x887f1bf9f66dfc92901daccc3d88462b17251b75` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x8900287b4ac35f3b0d873fa0b76f67c0991e2385` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x898067338d2f19c298545d574c482c433a529234` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x8a9ba50a785c3868bef1fd4924b640a5e0ed54cf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x8c358d100b0c478d733c8549188a8ac0f654b76d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x8c648eb2e19e30a36242b6c6686716ab9d89bbc6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x8cbbf2ba1be75e50d6e7f74487663fb0de440ca0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x8cf46178f02c8c21b6f87525e240be52111ba723` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x8d817dd2902f0cce1867d59131143c366a5062fd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x8db505676be7a6a1cb8152a0d98724bfc1f50b81` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x8dffae496443260c6b0121420cb8b7ff5332688a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x8e08557ea7ee8f0f864e8d19fa2efb0dc461d1a6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x8e385c5136a530dd359f424db43bf672dd191ec9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x8e8414bc5053a340aaae10b9768a723487f992db` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x8eb4ed435c15eb4d6faa4660f3409dafb6519ae0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x8ff9e19a8cb317ad07e46dadceace99e27688c34` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x906953a961a5a26c320514292cfef24987a0e9ae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x90ff2f4fab3fb886cc60a1a5d5cac2e774b5ce03` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-228994 | `0x925d8331ddc0a1f0d96e68cf073dfe1d92b69187` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-228995 | `0x92f6dd3501e51b8b20c77b959becaaebeb210e17` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x9334d87e47a495d68204189f3e4071584378bff1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x935444c0466c6a6c09c405488a496c9aca4ee441` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x93a33057958deb25f7416dd3ec47cebccbadbbdf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x93de44b3a3fa9454992ea3d1fdf17ccc6c1a9885` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x946ca00a551d7009019b7bbd65f4d94a48792b8a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x94efe8be8e8e726cbc2ce0cda98ae0d55de2453b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x95907b5069e5a2ef1029093599337a6c9dac8923` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x959dd789fe93c74ad0e27ad89365388b19b6d19c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x971681021acf3dd2e0a0dcec066b87ca488877ea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x97a081b653c1c1ce023c3349ebbcbb35c1c4a96b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x98e565a0e98fb33f7e605221df647c9c43ef98c8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x98f29b8524694106624dfbb93688486cf27b974b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x99b176b822b3d3ff9414a821386f343d929f47a3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x99f5920bfcd2e1375120f208e269483fbeda0ea9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x99fcf11772af0a9cc411af3cb4311a387dd55b15` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x9bb984da3f39ede02d6347c0d6ad22a704c24e13` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x9c38b756b31529cad02d54a4ba810f3ff1e00054` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x9ca527a0b89bcfc1d2a4758da5f326f6bc2c23c1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x9d679055ca190380dd65a30b00548cfa893d820a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x9e37f355aa02cc0bec51a50fc29dd88f6c106a4a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x9fb436292fead6baadd64688c8911d6feb813c65` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xa023bc82be3dad8a8f4e093593b1599a32d8a3d5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xa0ab72e42a41e851a682a61451da5ae8573fc180` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xa12ae047125247baa97ed67e30513a7f95102919` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xa1c70c49182e4a1cd638ec52afd95a42b029b01f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xa1fd6e923d8efa8deebde9d2ae98df08b9a31c7d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xa1ff609a9323e7f25c54141b1e1eee95aa6824f5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xa204720af5f3b64113a7c49c8771ffeefee9210d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xa2fd8108d550d3d55b784ac7ce0e9087870cfc19` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xa359eb1c17cca33e474a66bcaa06b64d6e0a9921` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xa4e6bc24091ea2c925f6b6ba593a39c7419e8f54` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xa85eab04855ea8a2d9115d0a17564a48ded945f7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xa92fe37ed3dfee686c305ab7cc2c445a1bcf300f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xa96ea2941f6c6cd143c2f0372b3cba171ef5a95e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xaa8bd9c9e302d71a724c0bec049ae728e4e950fd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xaaaa4718e354d60283716e98b3257bd680a3ecee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xaab7e4d6c87b960dc71a5c57f567a1e9f0513ca8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xaad88e891550bbb63498cb8fda57d3ddb6830af1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xaae1f8f896532293d308d5db1936e350b2f1a96c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xab1615c7a50aa13f75f2cc184e44823a20efe9bd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xab200c81fa165097b87ec05b1b987d6d67fd4417` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xab2ff1822ea665d36208f3e1dcf1e1e0958d0561` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xac35a266e6b8b70b9127acccfb3b728d33378278` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xad2084739d71057dd8d5079fef1263248219e106` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xad85e908352b971c9ec9c933dca63fa8365640af` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xad899fb34b9a1389165f4c2816c6c9bd80050b8e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xadcc7e304a65af3106d0182a19a983a003eb9505` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xae266bed0d97cf9b62e96eee452952fc00b57ddf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xaf2c60c00ff938a50b36d23f3a8b89478c55ab44` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xb02baaa4616a8b3b84d404f95d5e962c77705857` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xb0619009931c131c0b087776eb75e67f1934b94e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xb0a54f2f964af68936f2057a1127c79ee6111291` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xb1cc9f8422042eda9eb36a408002517d7c772ac7` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-228997 | `0xb1efb9650ad6d0cc1ed3ac4a0b7f1d5732696d37` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xb22cd1c3c0532ce0d0275f05cebdff99dbb7a348` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xb237d2f4922291ab44fee8b324926bf0961cf1b6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xb24466f4b79f5733ed4fccefc8e12565819bf634` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xb24503cbaa401a4a2f410ac060e597855bf38c09` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xb2d7ca8f420b2c87de7ce5e7cc1b3b756b5cf797` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xb39587e827ee07f07f824c73e8ad5a850866be1e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xb49e68e95b64aa2d89c559e5f75da0a72927905b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xb4ac39aadc3130fef3f348ece8d033540df12089` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xb4e3306129208cc8e6e75157f75f62eae0b920a0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xb54d7ff110995029b89a0045128cae42c931aa83` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xb5901509329307e3f910f333fa9c4b4a8ee7ce1a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xb5f7f92da7abfdbdeb8e84ee78765fd0d3d3e092` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xb698d975e6c2d895763be13a24f39eafe2d7792b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xb712d484d061e8cb2160b770f55388a3c5fb5b89` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xb755a90f5ddd1a66899345342ac2fc82ccfe49e5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xb7fb44a61fde2b9db28a84366e168b14d1a1b103` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xb8498b994d78a4c960c982e5903152710d98b766` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xb9d174e999f2450ae87ca69e367c433ee25a01c1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xb9fe312ea3343c6bede81e6b55e4f366ef7de349` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xbb174bdaf21d8ee40763fd5a859b0164365c64ff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xbbfdb04121b74d8ae7f53fd5238ddef133ab977a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xbc1622e2c1ee3552a74197d288964db0e62ebf86` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xbc48d1c68c34ce80879798b64d1c437b808c68bf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xbc4f21908ec5fabcb56a959b4656a0bf886b1227` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xbcd5762cf9b07ef5597014c350ce2efb2b0db2d2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xbdbd57f48ddf577ef7f0d13d8728494a783aa8d8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xbee0c6dd082d7a483da4bd6e56c7e5292bda7ce8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xbee220476c330f342cd1832dcefd81d892705b23` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xbf41b5b77535f33be72bca187d4fbcfd6090e3e1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xbf6e6ae92709381b3700b23d8107dc5ba7184716` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xc1ad6d4e8da1403b9eb6a99491899577050f4863` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xc1cc4e80e0e6bf1ce614a1e854d7866ee7fdde30` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xc1e29de42263b10d3a7324ca8a5d8eb906efa57a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xc276c25f6e3a646a155c0b3fc7f31aef39115c4f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xc3016ed03e087d092d576b585f5222ffd9cadc10` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-228998 | `0xc34855f4de64f1840e5686e64278da901e261f20` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xc366b3275405c31c61642a183763fc122e31091d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xc484bcd10ab8ad132843872deb1a0adc1473189c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xc5ae9023bfa79124ffa50169e1423e733d0166f1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xc5eb92d91b2d38bf67be4c143592dacfcee40711` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xc6071a1737917c97320464450e27fb1bec0b3440` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xc61e9d7c9c9bf8c62694f55191a697ecc356a6c7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xc65d2b249def9a40081d3648dc8adc4ae1304828` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xc674efab2d91c74aac0df3cc5ae13db80e2448ad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xc67e20a4b8f6e3d1d54ee0e7e7a6d50c0f0948f1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xc7ae45e2ab8c9792e64fa7789e1049c9b3719257` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xc7c3a7822dea94dde1ebee567918047dae305d08` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xc7f3485ba2735de71a40600a1e4f3db667ae85cd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xc947c5f371da8a18cc4374f67775a693dea7fb10` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xc9915841df0f9c8cf6af3c02f08d7151c7454f6c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xc9dd32ae48626d02c60b22df8971c827618d67a9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xcab03673b786c72c765d6a5286d291897e7da03d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xcb489bcd8f354a43df5a536f719363488f334a99` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-228999 | `0xcb9d14347b1e816831ecee46ec199144f360b55c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xccb16bf719ac9a0d125d7491dfa897e9053ca415` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xccefe451048eaa7df8d0d709be3aa30d565694d2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xcd77c4f00dbdce14e0bf3fa3022e888ccc87e2f4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xcdadde9005974fbd3385184d1c1c34ef455cb2be` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xce255d8676a34575bd580d1520f0e2968ea45ec3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xcf6b6169e0ea07b00ae8f086fbb5ab5fe449a664` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xcfce7dd673fbbbffd16ab936b7245a2f2db31c9a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xd06ec7322649361579aa5f4ca07c7959250933dd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xd0f8eadbd167deea2fae37577634ccfc95db00a1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xd1a673d513937f9f1b791d926e590a1c222726b5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xd23e8a9b31ef360d64c8f87379cc1ff91a0442c7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xd2bfb516fc4373edc20c82cf08c339bfca17b202` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-229000 | `0xd3683e4947a7769603ab6418ec02f000ce3cf30b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xd6b350775dca2f45597bef27010c1a4ce75065c4` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-229001 | `0xd6e2d9d4f1f8865ac983ee848983fb1979429914` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-229002 | `0xd6e6dbf4f7ea0ac412fd8b65ed297e64bb7a06e1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xd9441177fb4371ff54b53a2c30966febb56f821a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xd987e88f894c4fcf9925097552ab0ee08eeb7607` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xd9e85053e60f701ead49d20afb3c7bc9906e5d29` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xda35a941d76ff37a4abd877156f58e6aa2e499b0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xdb3790c9da3d1eda70696be26377d73801d53030` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xdb38e29f8ee636b93d2743045404a51b94a420c0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xdbb1d78c054e2b5513d1cf84414df02b55d6c854` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xdd36bb9254c65fe8d616e41decc8d0bc1b79efcc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xdd3903fb1f91e0f14913399efb98ca9cbc9936a2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xddee87d15d89ee5842e779d480c6db14a81b74c9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xde8dbb1c0d2a6e22c8927cf80ddee001d9ecd2c4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xde9eb27d46ea852838657d2eca50071927e481a0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xdfca8211e24471ed57225fecdf80da726e1c7107` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xe049d99db72204480ceb7e94502dafe6f05e5c66` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xe07a57058b1e7dbd31b2be1c22476fbe3ef2b050` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xe0a4c7c8acc1171f082c967755361bc6291197e7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xe0caa0024a94cf17e1e921dcc3ba991ed753d0eb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xe2ea2d434bb525044d429d251cc3c1b6cf8ca682` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xe38f582b29144c8614b5bd90a95b1e62f4d672f0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xe394e0a1aa6a5e168ae77dc8851c37c9b7edba29` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xe3e9ec1a72d8ad322187b4a4b757b2e906f4edf8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xe4401eb53ae90a5335a51fe1828d7becf7a63508` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xe5db3d933e9ac91555711c381a84362c3c95b7a4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xe66824a792dc7eaee5ab87aa0290c629123e1ebc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xe680ae8de71ece7d7fc88ef3cbbdcc2a2431513e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xe7c28e3a058d867c87c2ffc30dcb90c4f192822b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xe7f2e3c6286375c102e482c0aa2385d8baacac26` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xe849d0d289e1b6f16fc8a4d3d4688dbd4a72b872` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xe87372f9e11e5e3050969b81a5c5dc448ae2132e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xe94fb72454ae2997ead677c891196efd6b830435` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xe96fa767a1ec5aad8ef6dfa945ba2c57e3703dc6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xea41bc40daa1d0e681c7e8ea449b89a290e922e8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xeaa11178375e6b1078d815d6f9f85cbbb69b09cd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xeb1f0794d3ef0d5c38f71555c594df235d7c732a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xeccacf7b99474f387687c2665fa0e5513af869c0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xed97c950fcd8c7970fe1b7aa1955136bc53d4889` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xeda113f9de36455f8becbb2301bcac3ccffd5d24` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xee0d90e5dcd9273886aca8b2eaaa7fa952e9f1b8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xee364de73e1827f5e31a18c70a40f1f78c075b84` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xee962ed1671f655a806cb22623eea8a7ccc233bc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xef981185595ed2a49dec9b2d5073b88ef9e00fd4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xf0102ffe22649a5421d53acc96e309660960cf44` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xf070fe1e34ecc3e142e6180b0d68e562828854ce` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xf0c0b1cbfd50a2b7d72eb93a60ac1fd9311ea042` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-229005 | `0xf0d7e15673fba052e83d7f2b26bb6071e86b972e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xf115ba4d8058db8c7ca38490d0d652f828f8ed62` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xf218d04e5a582deea9e952e4227c07e865bc8ba1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xf2654169e5bdd69773a7140f75ea3fb0940d29e1` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-229006 | `0xf272670eb55e895584501d564afeb048bed26194` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xf35df580b16eaec1560779c828339aed1f4f92c0` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-229007 | `0xf3f0fa3124b7b0feb048a00404fe4d5d49e60796` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xf418a781f0bffc328aae87105ac80a7f93c158c5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xf539648eed7165a0649eb7364290533ca2df1b9b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xf581fa66f6a0430d1558e68356407d85b6d5592e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xf65ff93361774bcc994c62d0dc7f7fb2d8206b42` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xf6940f29646dd5ce068ad4ad768be6e473571fe9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xf74e8e7dcf6ab718fb048ba5b69efef90c56999b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xf78c23d075baf6f7d36b3061f1d1f583adbd4bf5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xf83157709129bd03fb02e96950be288e8c2c1c67` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-229008 | `0xf9780104117c0fad3a9b1386fbf40a9f5857988a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xf9a4733f2b709f37baa4c819f44ca4e8c935355c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xf9ab55c35ce7fb183a50e611b63558499130d849` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xfa9914b5ff2f278a98b3634e2958bd2fc2e2f32f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xfb0b8ee3126e6f5e1d1332aaa67a11ec59087e0a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xfb5ed5665022b1612ab761453f99597bb469681e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xfb64121d207656b9e45b2d5a118e41a3ea0332c9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xfbbb851993911421e6efa4b52a68f9ce2c78f8e5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xfc2425908ab2ee3d276734024f2b4613cca066e2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xfc9d070464370bd6b1a99413f83b574769b0c0b7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xfce77110df39c54681a0769eb515cce862d074d9` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-229009 | `0xfd0bf71f60660e2f608ed56e1659c450eb113120` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xfda350e8038728b689976d4a9e8a318400a150c5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xff4aeba6c07b7c796380f26e30e4e0deb915d95b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xffaba937771b13f9fcf018c68dd877826c8f2762` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xffcaf1c5cc584d6cfb17dbc1944d900459b45227` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 503
- Live contracts: 0
- Unknown liveness contracts: 503
- Source-verified contracts: 0
- Currently scope-matched contracts retained as-is: 0
- Classification counts: unverified unclassified=503

Showing first 200 of 503 contracts. The complete deployer expansion list is in `brief.json`.

| Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|
| unverified unclassified | UnnamedContract<br>`0x07c51ddd38f192221fbe48f97cbe31a54c3b8637` | non_address_book | unknown | unknown | unverified | n/a | `0x4b7fcc44f12b1f7a61d0e5f34521cf37e38e23e5` |
| unverified unclassified | UnnamedContract<br>`0x19009debf8954b610f207d5925eede827805986e` | non_address_book | unknown | unknown | unverified | n/a | `0x4b7fcc44f12b1f7a61d0e5f34521cf37e38e23e5` |
| unverified unclassified | UnnamedContract<br>`0x1dfc611d8c365b7efb797149b0ebfd6b43ab3aeb` | non_address_book | unknown | unknown | unverified | n/a | `0x6606d3c20cc94cc7aa1d430c0e83a5129976153a` |
| unverified unclassified | UnnamedContract<br>`0x327dde84c9173dd799a4f74b04a69d9d385d31a4` | non_address_book | unknown | unknown | unverified | n/a | `0x1841cb3c2ce6870d0417844c817849da64e6e937` |
| unverified unclassified | UnnamedContract<br>`0x3b02631b249478f7155c8c90f0b0328e13aa8ee7` | non_address_book | unknown | unknown | unverified | n/a | `0x6606d3c20cc94cc7aa1d430c0e83a5129976153a` |
| unverified unclassified | UnnamedContract<br>`0x3d2c2f8f95caba644ea25319c4c08594b8dc0359` | non_address_book | unknown | unknown | unverified | n/a | `0x6606d3c20cc94cc7aa1d430c0e83a5129976153a` |
| unverified unclassified | UnnamedContract<br>`0x3f3c0f6bc115e698e35038e1759e9c31032e590c` | non_address_book | unknown | unknown | unverified | n/a | `0x6606d3c20cc94cc7aa1d430c0e83a5129976153a` |
| unverified unclassified | UnnamedContract<br>`0x437c42d7927fe396e54da837d6ac57756cd868e3` | non_address_book | unknown | unknown | unverified | n/a | `0x7ad8e6b7b1f6d66f49559f20053cef8a7b6c488e` |
| unverified unclassified | UnnamedContract<br>`0x44c220f0598345195ce99ad6a57adffcb9ea33e7` | non_address_book | unknown | unknown | unverified | n/a | `0xc450a7c66f97202605c1b46ed0735dbe49c8f4fb` |
| unverified unclassified | UnnamedContract<br>`0x4519f528cf0f500c737c0e11b73bdb23979467a7` | non_address_book | unknown | unknown | unverified | n/a | `0x6606d3c20cc94cc7aa1d430c0e83a5129976153a` |
| unverified unclassified | UnnamedContract<br>`0x468c2345d1d409d5b0f2f8be4ae2082150cc1a0c` | non_address_book | unknown | unknown | unverified | n/a | `0x7ad8e6b7b1f6d66f49559f20053cef8a7b6c488e` |
| unverified unclassified | UnnamedContract<br>`0x4949bce0eff9bf3cec9ba19887842c8556aa63e3` | non_address_book | unknown | unknown | unverified | n/a | `0x6606d3c20cc94cc7aa1d430c0e83a5129976153a` |
| unverified unclassified | UnnamedContract<br>`0x4c0daf5d9abe92e8a26a60698a657b03538a3028` | non_address_book | unknown | unknown | unverified | n/a | `0x7ad8e6b7b1f6d66f49559f20053cef8a7b6c488e` |
| unverified unclassified | UnnamedContract<br>`0x4d9078db7220a2be74f8eddf3de98a76910a6d24` | non_address_book | unknown | unknown | unverified | n/a | `0x4b7fcc44f12b1f7a61d0e5f34521cf37e38e23e5` |
| unverified unclassified | UnnamedContract<br>`0x5054e041aeeb9ca87e23d6aac90281837abafe2c` | non_address_book | unknown | unknown | unverified | n/a | `0x7ad8e6b7b1f6d66f49559f20053cef8a7b6c488e` |
| unverified unclassified | UnnamedContract<br>`0x52a4b8fe88c1af11648c86ca8244de8a9a6b1df9` | non_address_book | unknown | unknown | unverified | n/a | `0x6606d3c20cc94cc7aa1d430c0e83a5129976153a` |
| unverified unclassified | UnnamedContract<br>`0x56315b90c40730925ec5485cf004d835058518a0` | non_address_book | unknown | unknown | unverified | n/a | `0x6606d3c20cc94cc7aa1d430c0e83a5129976153a` |
| unverified unclassified | UnnamedContract<br>`0x60f1ea7b3359a4008655df44560b6899b1877a15` | non_address_book | unknown | unknown | unverified | n/a | `0x4b7fcc44f12b1f7a61d0e5f34521cf37e38e23e5` |
| unverified unclassified | UnnamedContract<br>`0x663fd2c5da1c63e4142b54c7f256578686f4fbc4` | non_address_book | unknown | unknown | unverified | n/a | `0x4b7fcc44f12b1f7a61d0e5f34521cf37e38e23e5` |
| unverified unclassified | UnnamedContract<br>`0x66d94ee8f529b683ed6013729784e8bb44697a64` | non_address_book | unknown | unknown | unverified | n/a | `0x7ad8e6b7b1f6d66f49559f20053cef8a7b6c488e` |
| unverified unclassified | UnnamedContract<br>`0x7237343c2a746aa2940e5e4fbd53eafbf3049dca` | non_address_book | unknown | unknown | unverified | n/a | `0x6606d3c20cc94cc7aa1d430c0e83a5129976153a` |
| unverified unclassified | UnnamedContract<br>`0x75d33a75f7948383f376b0ea59e0d828242e08dd` | non_address_book | unknown | unknown | unverified | n/a | `0x6606d3c20cc94cc7aa1d430c0e83a5129976153a` |
| unverified unclassified | UnnamedContract<br>`0x78ffe9209dff6fe1c9b6f3efdf996bee60346d0e` | non_address_book | unknown | unknown | unverified | n/a | `0x7ad8e6b7b1f6d66f49559f20053cef8a7b6c488e` |
| unverified unclassified | UnnamedContract<br>`0x794776f5b8bf21a3d2a95cebef16989f6d97f4e6` | non_address_book | unknown | unknown | unverified | n/a | `0x6606d3c20cc94cc7aa1d430c0e83a5129976153a` |
| unverified unclassified | UnnamedContract<br>`0x949842adb5ef1d348f95eb56bf1591c718ac39b6` | non_address_book | unknown | unknown | unverified | n/a | `0x6606d3c20cc94cc7aa1d430c0e83a5129976153a` |
| unverified unclassified | UnnamedContract<br>`0x94a4684d6f7085c19138bd4f9f3295fa9943c622` | non_address_book | unknown | unknown | unverified | n/a | `0xc450a7c66f97202605c1b46ed0735dbe49c8f4fb` |
| unverified unclassified | UnnamedContract<br>`0x98659f5c3e7e47d99fea0bfb34d469a01097017b` | non_address_book | unknown | unknown | unverified | n/a | `0x4b7fcc44f12b1f7a61d0e5f34521cf37e38e23e5` |
| unverified unclassified | UnnamedContract<br>`0x9fdb5f24b24fe20375b03f5b3e744970d50dc368` | non_address_book | unknown | unknown | unverified | n/a | `0x4b7fcc44f12b1f7a61d0e5f34521cf37e38e23e5` |
| unverified unclassified | UnnamedContract<br>`0xa2f2ac6f5af72e494a227d79db20473cf7a1ffe8` | non_address_book | unknown | unknown | unverified | n/a | `0x4b7fcc44f12b1f7a61d0e5f34521cf37e38e23e5` |
| unverified unclassified | UnnamedContract<br>`0xac3cedf010b3a51b4a8ea434e9c8c855dd6c8ac2` | non_address_book | unknown | unknown | unverified | n/a | `0x6606d3c20cc94cc7aa1d430c0e83a5129976153a` |
| unverified unclassified | UnnamedContract<br>`0xb1ac02e00d654c2915235c558b62ea3299a95a10` | non_address_book | unknown | unknown | unverified | n/a | `0x6606d3c20cc94cc7aa1d430c0e83a5129976153a` |
| unverified unclassified | UnnamedContract<br>`0xb2f80e0760b767a73835e37446124a5b78019117` | non_address_book | unknown | unknown | unverified | n/a | `0x4b7fcc44f12b1f7a61d0e5f34521cf37e38e23e5` |
| unverified unclassified | UnnamedContract<br>`0xb839ea7bba8e6bb2893ca5252f3f3c13323d74f7` | non_address_book | unknown | unknown | unverified | n/a | `0xc450a7c66f97202605c1b46ed0735dbe49c8f4fb` |
| unverified unclassified | UnnamedContract<br>`0xb85fe401c98aa0d464c8f6bed4778ed61f2152b7` | non_address_book | unknown | unknown | unverified | n/a | `0x6606d3c20cc94cc7aa1d430c0e83a5129976153a` |
| unverified unclassified | UnnamedContract<br>`0xb8e00fbd4431058f3d41a7c237d58f382b9fd23e` | non_address_book | unknown | unknown | unverified | n/a | `0x4b7fcc44f12b1f7a61d0e5f34521cf37e38e23e5` |
| unverified unclassified | UnnamedContract<br>`0xbbd5b95a77dbf8bde35b9f837aaf2828d724d466` | non_address_book | unknown | unknown | unverified | n/a | `0x4b7fcc44f12b1f7a61d0e5f34521cf37e38e23e5` |
| unverified unclassified | UnnamedContract<br>`0xbd02dce787564fa208ece8176af372f4bd7345bf` | non_address_book | unknown | unknown | unverified | n/a | `0x6606d3c20cc94cc7aa1d430c0e83a5129976153a` |
| unverified unclassified | UnnamedContract<br>`0xc34642296af92f2f1100b24844b7db8d7099d296` | non_address_book | unknown | unknown | unverified | n/a | `0x4b7fcc44f12b1f7a61d0e5f34521cf37e38e23e5` |
| unverified unclassified | UnnamedContract<br>`0xc732449d62c58450a15d3034d256ab9759aa6a76` | non_address_book | unknown | unknown | unverified | n/a | `0x4b7fcc44f12b1f7a61d0e5f34521cf37e38e23e5` |
| unverified unclassified | UnnamedContract<br>`0xcd3c0194db74c23807d4b90a5181e1b28cf7007c` | non_address_book | unknown | unknown | unverified | n/a | `0x4b7fcc44f12b1f7a61d0e5f34521cf37e38e23e5` |
| unverified unclassified | UnnamedContract<br>`0xdb9091e48b1c42992a1213e6916184f9ebdbfedf` | non_address_book | unknown | unknown | unverified | n/a | `0x4b7fcc44f12b1f7a61d0e5f34521cf37e38e23e5` |
| unverified unclassified | UnnamedContract<br>`0xdc986a09728f76110ff666ee7b20d99086501d15` | non_address_book | unknown | unknown | unverified | n/a | `0xc450a7c66f97202605c1b46ed0735dbe49c8f4fb` |
| unverified unclassified | UnnamedContract<br>`0xdf518077bd12c33ac35bb6f387e7c3309ec1c646` | non_address_book | unknown | unknown | unverified | n/a | `0x6606d3c20cc94cc7aa1d430c0e83a5129976153a` |
| unverified unclassified | UnnamedContract<br>`0xdfd649caa0bd0554f23dff79371c797daae60bfb` | non_address_book | unknown | unknown | unverified | n/a | `0x6606d3c20cc94cc7aa1d430c0e83a5129976153a` |
| unverified unclassified | UnnamedContract<br>`0xeab9b34bdd26ad451b381b0934a30faa6ed5e316` | non_address_book | unknown | unknown | unverified | n/a | `0x7ad8e6b7b1f6d66f49559f20053cef8a7b6c488e` |
| unverified unclassified | UnnamedContract<br>`0xf70abab028eb6f4100a24b203e113d94e87de93c` | non_address_book | unknown | unknown | unverified | n/a | `0xc450a7c66f97202605c1b46ed0735dbe49c8f4fb` |
| unverified unclassified | UnnamedContract<br>`0xf774e864413b46f43a889a5ea59b3551d6027836` | non_address_book | unknown | unknown | unverified | n/a | `0x4b7fcc44f12b1f7a61d0e5f34521cf37e38e23e5` |
| unverified unclassified | UnnamedContract<br>`0xf83c8b82f68aa6e7b9aafe0f10c286317ada7fff` | non_address_book | unknown | unknown | unverified | n/a | `0x6606d3c20cc94cc7aa1d430c0e83a5129976153a` |
| unverified unclassified | UnnamedContract<br>`0xff1ca69a596c7a471bd26c05cac4ee0facb31c68` | non_address_book | unknown | unknown | unverified | n/a | `0x6606d3c20cc94cc7aa1d430c0e83a5129976153a` |
| unverified unclassified | UnnamedContract<br>`0x27983ee173ad10e171d17c9c5c14d5bafe997609` | non_address_book | unknown | unknown | unverified | n/a | `0xc450a7c66f97202605c1b46ed0735dbe49c8f4fb` |
| unverified unclassified | UnnamedContract<br>`0x56315b90c40730925ec5485cf004d835058518a0` | non_address_book | unknown | unknown | unverified | n/a | `0x6606d3c20cc94cc7aa1d430c0e83a5129976153a` |
| unverified unclassified | UnnamedContract<br>`0x5e36f0d56741013d864d8feb5950ab0e7eff9ab1` | non_address_book | unknown | unknown | unverified | n/a | `0xc450a7c66f97202605c1b46ed0735dbe49c8f4fb` |
| unverified unclassified | UnnamedContract<br>`0x84b943e31e7fae6072ce5f75eb4694c7d5f9b0cf` | non_address_book | unknown | unknown | unverified | n/a | `0xc450a7c66f97202605c1b46ed0735dbe49c8f4fb` |
| unverified unclassified | UnnamedContract<br>`0xbdaed5bbf8016afd05fc4659572e5feb5854aad4` | non_address_book | unknown | unknown | unverified | n/a | `0xc450a7c66f97202605c1b46ed0735dbe49c8f4fb` |
| unverified unclassified | UnnamedContract<br>`0xdc986a09728f76110ff666ee7b20d99086501d15` | non_address_book | unknown | unknown | unverified | n/a | `0xc450a7c66f97202605c1b46ed0735dbe49c8f4fb` |
| unverified unclassified | UnnamedContract<br>`0xf70abab028eb6f4100a24b203e113d94e87de93c` | non_address_book | unknown | unknown | unverified | n/a | `0xc450a7c66f97202605c1b46ed0735dbe49c8f4fb` |
| unverified unclassified | UnnamedContract<br>`0x0044df88c13170d2591c60e2c242b99b9ae4dbed` | non_address_book | unknown | unknown | unverified | n/a | `0x3a54a45e44a71020bd0af42063b9f23e8b9e387d` |
| unverified unclassified | UnnamedContract<br>`0x00db30aca9e328c98a7d1709c4d1ab9da8d8866a` | non_address_book | unknown | unknown | unverified | n/a | `0x8c1a617bdb47342f9c17ac8750e0b070c372c721` |
| unverified unclassified | UnnamedContract<br>`0x00f3954769c9a2fb70dc709870b75e022e63df52` | non_address_book | unknown | unknown | unverified | n/a | `0x8c1a617bdb47342f9c17ac8750e0b070c372c721` |
| unverified unclassified | UnnamedContract<br>`0x014ab5493aa205540f2984f4fe8b9d13e4ca8afc` | non_address_book | unknown | unknown | unverified | n/a | `0x8c1a617bdb47342f9c17ac8750e0b070c372c721` |
| unverified unclassified | UnnamedContract<br>`0x02ab53870d1ea9cb2ab49602c1b4f20fcbed94b1` | non_address_book | unknown | unknown | unverified | n/a | `0x8c1a617bdb47342f9c17ac8750e0b070c372c721` |
| unverified unclassified | UnnamedContract<br>`0x02b24109ed3ee4ed52aad5fb76f7ee96d1c0130e` | non_address_book | unknown | unknown | unverified | n/a | `0x8c1a617bdb47342f9c17ac8750e0b070c372c721` |
| unverified unclassified | UnnamedContract<br>`0x02b34e49d429b9499e59034e922b483054785d73` | non_address_book | unknown | unknown | unverified | n/a | `0x8c1a617bdb47342f9c17ac8750e0b070c372c721` |
| unverified unclassified | UnnamedContract<br>`0x0319d7be06524f6817a30f3bdab541a064ff4dcf` | non_address_book | unknown | unknown | unverified | n/a | `0xb2d9a52e76841279ef0372c534c539a4f68f8c0b` |
| unverified unclassified | UnnamedContract<br>`0x05476c97fc457700dfacca6a937a0ce85b75dc84` | non_address_book | unknown | unknown | unverified | n/a | `0x8c1a617bdb47342f9c17ac8750e0b070c372c721` |
| unverified unclassified | UnnamedContract<br>`0x065c0c6acd6d08e661667b4853293c2d6581c877` | non_address_book | unknown | unknown | unverified | n/a | `0x8c1a617bdb47342f9c17ac8750e0b070c372c721` |
| unverified unclassified | UnnamedContract<br>`0x06c8f4371b708d0b4911aa2cca07bf14904a3111` | non_address_book | unknown | unknown | unverified | n/a | `0x8c1a617bdb47342f9c17ac8750e0b070c372c721` |
| unverified unclassified | UnnamedContract<br>`0x06ce040bb22b97f4ccedcb49b9a7f324df7871b3` | non_address_book | unknown | unknown | unverified | n/a | `0x8c1a617bdb47342f9c17ac8750e0b070c372c721` |
| unverified unclassified | UnnamedContract<br>`0x08112c76e83b7c88729e41b630ebf0f82e8b93b8` | non_address_book | unknown | unknown | unverified | n/a | `0x8c1a617bdb47342f9c17ac8750e0b070c372c721` |
| unverified unclassified | UnnamedContract<br>`0x089581fef0ea7ef36ba252b295e8d172ceef0df3` | non_address_book | unknown | unknown | unverified | n/a | `0x8c1a617bdb47342f9c17ac8750e0b070c372c721` |
| unverified unclassified | UnnamedContract<br>`0x097467aa64f0fbec49d7a1bc4611616ee0bbf74b` | non_address_book | unknown | unknown | unverified | n/a | `0x24a1704636ab7083eac56294aff13e1651997638` |
| unverified unclassified | UnnamedContract<br>`0x0abc4e57c54ff1d20b542458df2b7fe9d8ff3200` | non_address_book | unknown | unknown | unverified | n/a | `0xe55f127ebff8a0f259680620b10fe1756a0105c9` |
| unverified unclassified | UnnamedContract<br>`0x0b3e7ef03c20acae8cfe2f5bc43db6fd3e76b48c` | non_address_book | unknown | unknown | unverified | n/a | `0x8c1a617bdb47342f9c17ac8750e0b070c372c721` |
| unverified unclassified | UnnamedContract<br>`0x0d595d4d3dc06548d536e74528c5b8ecc2171b31` | non_address_book | unknown | unknown | unverified | n/a | `0x8c1a617bdb47342f9c17ac8750e0b070c372c721` |
| unverified unclassified | UnnamedContract<br>`0x0db4a95368675b8ab0d25a564205df1ec9494ebf` | non_address_book | unknown | unknown | unverified | n/a | `0x8c1a617bdb47342f9c17ac8750e0b070c372c721` |
| unverified unclassified | UnnamedContract<br>`0x0ed8a7e25283e4e54d8ca2f7b819bda52e725b8e` | non_address_book | unknown | unknown | unverified | n/a | `0x8c1a617bdb47342f9c17ac8750e0b070c372c721` |
| unverified unclassified | UnnamedContract<br>`0x0ff3c81a86e0ca11842617cbc5644aa16b22bb58` | non_address_book | unknown | unknown | unverified | n/a | `0x8c1a617bdb47342f9c17ac8750e0b070c372c721` |
| unverified unclassified | UnnamedContract<br>`0x102895cce12d90f502e4b0cae89ca68d73af333a` | non_address_book | unknown | unknown | unverified | n/a | `0x8c1a617bdb47342f9c17ac8750e0b070c372c721` |
| unverified unclassified | UnnamedContract<br>`0x103177f53f2f14b7e5ef1ec01c7572a86b4f4b04` | non_address_book | unknown | unknown | unverified | n/a | `0x8c1a617bdb47342f9c17ac8750e0b070c372c721` |
| unverified unclassified | UnnamedContract<br>`0x103201f7ed8a54d0ca156ea62087cbb283e295e0` | non_address_book | unknown | unknown | unverified | n/a | `0x8c1a617bdb47342f9c17ac8750e0b070c372c721` |
| unverified unclassified | UnnamedContract<br>`0x10d33ef9517a7ecad8bb2a751d96ab97b3426c87` | non_address_book | unknown | unknown | unverified | n/a | `0x8c1a617bdb47342f9c17ac8750e0b070c372c721` |
| unverified unclassified | UnnamedContract<br>`0x1129280721c21d2c826b7963d854756528770afe` | non_address_book | unknown | unknown | unverified | n/a | `0x8c1a617bdb47342f9c17ac8750e0b070c372c721` |
| unverified unclassified | UnnamedContract<br>`0x153ba41d8abd7acc0d57e4ddf2c4851c874ba103` | non_address_book | unknown | unknown | unverified | n/a | `0x8c1a617bdb47342f9c17ac8750e0b070c372c721` |
| unverified unclassified | UnnamedContract<br>`0x156d9e599c9b055ed8b97e614d26f624de8d3eb6` | non_address_book | unknown | unknown | unverified | n/a | `0x8c1a617bdb47342f9c17ac8750e0b070c372c721` |
| unverified unclassified | UnnamedContract<br>`0x15ff4b78b6a888652513cdc1ff52b71e421d7947` | non_address_book | unknown | unknown | unverified | n/a | `0x8c1a617bdb47342f9c17ac8750e0b070c372c721` |
| unverified unclassified | UnnamedContract<br>`0x163da1b155322b47c8d0cc8fdf63414134514013` | non_address_book | unknown | unknown | unverified | n/a | `0x8c1a617bdb47342f9c17ac8750e0b070c372c721` |
| unverified unclassified | UnnamedContract<br>`0x1700b3da8e9bfb805cca1bff83434725e62e5a0c` | non_address_book | unknown | unknown | unverified | n/a | `0x8c1a617bdb47342f9c17ac8750e0b070c372c721` |
| unverified unclassified | UnnamedContract<br>`0x173098702e70d5eba557bc539684e689a81a463d` | non_address_book | unknown | unknown | unverified | n/a | `0x8c1a617bdb47342f9c17ac8750e0b070c372c721` |
| unverified unclassified | UnnamedContract<br>`0x174f61d148135bf4a4b84fd56d0b6ffc653f54d2` | non_address_book | unknown | unknown | unverified | n/a | `0x8c1a617bdb47342f9c17ac8750e0b070c372c721` |
| unverified unclassified | UnnamedContract<br>`0x17626e33878597cbbfc877c9aa47945e64eb6d31` | non_address_book | unknown | unknown | unverified | n/a | `0x8c1a617bdb47342f9c17ac8750e0b070c372c721` |
| unverified unclassified | UnnamedContract<br>`0x18106e46a13f8ea4bd9076fc7941dbc969a02c7a` | non_address_book | unknown | unknown | unverified | n/a | `0x8c1a617bdb47342f9c17ac8750e0b070c372c721` |
| unverified unclassified | UnnamedContract<br>`0x18217d97582e0e5bf03f3408ff4569bb333bfbcd` | non_address_book | unknown | unknown | unverified | n/a | `0xb2d9a52e76841279ef0372c534c539a4f68f8c0b` |
| unverified unclassified | UnnamedContract<br>`0x1841324612d8a8e017dcc9917e04f90f42fda3f0` | non_address_book | unknown | unknown | unverified | n/a | `0x8c1a617bdb47342f9c17ac8750e0b070c372c721` |
| unverified unclassified | UnnamedContract<br>`0x18c743c804c872d72cd41355743e0d4791f59277` | non_address_book | unknown | unknown | unverified | n/a | `0x8c1a617bdb47342f9c17ac8750e0b070c372c721` |
| unverified unclassified | UnnamedContract<br>`0x19e20bffb70c44a8442a5294a42b1591bbc21592` | non_address_book | unknown | unknown | unverified | n/a | `0x8c1a617bdb47342f9c17ac8750e0b070c372c721` |
| unverified unclassified | UnnamedContract<br>`0x19f652101092bc96da8c0c2b1575a9474095af79` | non_address_book | unknown | unknown | unverified | n/a | `0x8c1a617bdb47342f9c17ac8750e0b070c372c721` |
| unverified unclassified | UnnamedContract<br>`0x1ae80bdb38e92a897332bfa867baf09901426ea9` | non_address_book | unknown | unknown | unverified | n/a | `0x3a54a45e44a71020bd0af42063b9f23e8b9e387d` |
| unverified unclassified | UnnamedContract<br>`0x1bb8dacba30b1cd82ce1d3d7f24e16ee549aebe8` | non_address_book | unknown | unknown | unverified | n/a | `0x8c1a617bdb47342f9c17ac8750e0b070c372c721` |
| unverified unclassified | UnnamedContract<br>`0x1c03e8ce7184d2d3a075f93a3637c6a3be866704` | non_address_book | unknown | unknown | unverified | n/a | `0x8c1a617bdb47342f9c17ac8750e0b070c372c721` |
| unverified unclassified | UnnamedContract<br>`0x1c7fec9990e2c941d5145d6960a3455209f7485a` | non_address_book | unknown | unknown | unverified | n/a | `0x8c1a617bdb47342f9c17ac8750e0b070c372c721` |
| unverified unclassified | UnnamedContract<br>`0x1dc61358ce378eacdc61b2cdb3330482333507c0` | non_address_book | unknown | unknown | unverified | n/a | `0x8c1a617bdb47342f9c17ac8750e0b070c372c721` |
| unverified unclassified | UnnamedContract<br>`0x1dfc476844e249341ed2a0e67dc3969d0b6a2172` | non_address_book | unknown | unknown | unverified | n/a | `0x24a1704636ab7083eac56294aff13e1651997638` |
| unverified unclassified | UnnamedContract<br>`0x1ffafb5fdc292393c187629968ca86b112860a3e` | non_address_book | unknown | unknown | unverified | n/a | `0xe55f127ebff8a0f259680620b10fe1756a0105c9` |
| unverified unclassified | UnnamedContract<br>`0x203995c1df76e4478650924496ca6a9302fb4509` | non_address_book | unknown | unknown | unverified | n/a | `0x8c1a617bdb47342f9c17ac8750e0b070c372c721` |
| unverified unclassified | UnnamedContract<br>`0x20ed1bf74b400b15efe704a946ac1aa7d8350f17` | non_address_book | unknown | unknown | unverified | n/a | `0x8c1a617bdb47342f9c17ac8750e0b070c372c721` |
| unverified unclassified | UnnamedContract<br>`0x210303565cbf0b8c0d2837523816f815f02ad5eb` | non_address_book | unknown | unknown | unverified | n/a | `0x8c1a617bdb47342f9c17ac8750e0b070c372c721` |
| unverified unclassified | UnnamedContract<br>`0x21d79f6e2920cb723d459e39bba2bf0d6122f0fe` | non_address_book | unknown | unknown | unverified | n/a | `0x8c1a617bdb47342f9c17ac8750e0b070c372c721` |
| unverified unclassified | UnnamedContract<br>`0x23212a77311c1145fa6ce2e88554cb697ce9e60e` | non_address_book | unknown | unknown | unverified | n/a | `0x8c1a617bdb47342f9c17ac8750e0b070c372c721` |
| unverified unclassified | UnnamedContract<br>`0x2484e4ece518c2cfc40668f58ed1e7710dee8258` | non_address_book | unknown | unknown | unverified | n/a | `0x3a54a45e44a71020bd0af42063b9f23e8b9e387d` |
| unverified unclassified | UnnamedContract<br>`0x248c18c76445ab8b042d31d7609fffec800a57ba` | non_address_book | unknown | unknown | unverified | n/a | `0x8c1a617bdb47342f9c17ac8750e0b070c372c721` |
| unverified unclassified | UnnamedContract<br>`0x24c2d01498c0d270ef0721052a08ccd7e16089ad` | non_address_book | unknown | unknown | unverified | n/a | `0x8c1a617bdb47342f9c17ac8750e0b070c372c721` |
| unverified unclassified | UnnamedContract<br>`0x25b203cae17edcf78be8582c6abf10bfdc654c14` | non_address_book | unknown | unknown | unverified | n/a | `0x3a54a45e44a71020bd0af42063b9f23e8b9e387d` |
| unverified unclassified | UnnamedContract<br>`0x268b5aca6a85f08fd61d3564f012b73d64926f49` | non_address_book | unknown | unknown | unverified | n/a | `0x8c1a617bdb47342f9c17ac8750e0b070c372c721` |
| unverified unclassified | UnnamedContract<br>`0x27a6128f707de3d99f89bf09c35a4e0753e1b808` | non_address_book | unknown | unknown | unverified | n/a | `0xe55f127ebff8a0f259680620b10fe1756a0105c9` |
| unverified unclassified | UnnamedContract<br>`0x27b8d2d28540b133f9454535867e3b89b78d88b0` | non_address_book | unknown | unknown | unverified | n/a | `0xb2d9a52e76841279ef0372c534c539a4f68f8c0b` |
| unverified unclassified | UnnamedContract<br>`0x289736e889d4493e320fe7b98afca6732001d235` | non_address_book | unknown | unknown | unverified | n/a | `0x8c1a617bdb47342f9c17ac8750e0b070c372c721` |
| unverified unclassified | UnnamedContract<br>`0x28ce5a280a7775ee97587c513c4b4533597fb00b` | non_address_book | unknown | unknown | unverified | n/a | `0x8c1a617bdb47342f9c17ac8750e0b070c372c721` |
| unverified unclassified | UnnamedContract<br>`0x2925d0ea68542a38ad1b11cc36f2a379bb7e9ade` | non_address_book | unknown | unknown | unverified | n/a | `0x8c1a617bdb47342f9c17ac8750e0b070c372c721` |
| unverified unclassified | UnnamedContract<br>`0x295f73c663843302591290b7dd4520bf23e6a5f0` | non_address_book | unknown | unknown | unverified | n/a | `0x8c1a617bdb47342f9c17ac8750e0b070c372c721` |
| unverified unclassified | UnnamedContract<br>`0x2a87a9d533c775ba90893a02ca3e452886873104` | non_address_book | unknown | unknown | unverified | n/a | `0x8c1a617bdb47342f9c17ac8750e0b070c372c721` |
| unverified unclassified | UnnamedContract<br>`0x2ab6e58257e9f2689f8a17464450e1cf3870bad1` | non_address_book | unknown | unknown | unverified | n/a | `0x8c1a617bdb47342f9c17ac8750e0b070c372c721` |
| unverified unclassified | UnnamedContract<br>`0x2ace63ae507ce340823e705a0c640bedd9026b14` | non_address_book | unknown | unknown | unverified | n/a | `0x8c1a617bdb47342f9c17ac8750e0b070c372c721` |
| unverified unclassified | UnnamedContract<br>`0x2bd768bfdae07c8ca9736ed559dba1fdd06b90e6` | non_address_book | unknown | unknown | unverified | n/a | `0x8c1a617bdb47342f9c17ac8750e0b070c372c721` |
| unverified unclassified | UnnamedContract<br>`0x2c42b1beee3c1ed1fce88b541d64facfce82fe06` | non_address_book | unknown | unknown | unverified | n/a | `0xb2d9a52e76841279ef0372c534c539a4f68f8c0b` |
| unverified unclassified | UnnamedContract<br>`0x2c72debfa8b647df70194bcd37e9a8bc0b67f021` | non_address_book | unknown | unknown | unverified | n/a | `0x8c1a617bdb47342f9c17ac8750e0b070c372c721` |
| unverified unclassified | UnnamedContract<br>`0x2cbd403d5ba3949d24ee4df57805eac612c2662f` | non_address_book | unknown | unknown | unverified | n/a | `0x24a1704636ab7083eac56294aff13e1651997638` |
| unverified unclassified | UnnamedContract<br>`0x2cce62a3496ac7bd1a706cf7e1a765fd24e59666` | non_address_book | unknown | unknown | unverified | n/a | `0x8c1a617bdb47342f9c17ac8750e0b070c372c721` |
| unverified unclassified | UnnamedContract<br>`0x2cf310b00efff0fe7352bd0057eea7e159ec6aa0` | non_address_book | unknown | unknown | unverified | n/a | `0x8c1a617bdb47342f9c17ac8750e0b070c372c721` |
| unverified unclassified | UnnamedContract<br>`0x2d05f4fab724d5888c69c66a0f7ff21fff7db045` | non_address_book | unknown | unknown | unverified | n/a | `0xe55f127ebff8a0f259680620b10fe1756a0105c9` |
| unverified unclassified | UnnamedContract<br>`0x2d342d5f00ec9f99ab8b7db07f8e9d799009fa37` | non_address_book | unknown | unknown | unverified | n/a | `0x8c1a617bdb47342f9c17ac8750e0b070c372c721` |
| unverified unclassified | UnnamedContract<br>`0x2dbe02cca7a7874a287f3d7ce811a517bf7be32b` | non_address_book | unknown | unknown | unverified | n/a | `0x8c1a617bdb47342f9c17ac8750e0b070c372c721` |
| unverified unclassified | UnnamedContract<br>`0x2dc52760d13a3c2df33fcc42913c4dddd8d976b9` | non_address_book | unknown | unknown | unverified | n/a | `0x8c1a617bdb47342f9c17ac8750e0b070c372c721` |
| unverified unclassified | UnnamedContract<br>`0x2e18754ea334c30adb7ecdd0a0d0d7ddf7a711e0` | non_address_book | unknown | unknown | unverified | n/a | `0x24a1704636ab7083eac56294aff13e1651997638` |
| unverified unclassified | UnnamedContract<br>`0x2ef2b77ee266ad16ad0d51b776f11fcc98f50432` | non_address_book | unknown | unknown | unverified | n/a | `0x3a54a45e44a71020bd0af42063b9f23e8b9e387d` |
| unverified unclassified | UnnamedContract<br>`0x2f148e4dd2c749202e978c19b43e69df56c749fd` | non_address_book | unknown | unknown | unverified | n/a | `0x8c1a617bdb47342f9c17ac8750e0b070c372c721` |
| unverified unclassified | UnnamedContract<br>`0x2f2fe5708349331ae9cceefefbf33a997549a2e0` | non_address_book | unknown | unknown | unverified | n/a | `0x8c1a617bdb47342f9c17ac8750e0b070c372c721` |
| unverified unclassified | UnnamedContract<br>`0x303bc8f9b77ba23c26c6bb4a2a7ef2b1b5133469` | non_address_book | unknown | unknown | unverified | n/a | `0x8c1a617bdb47342f9c17ac8750e0b070c372c721` |
| unverified unclassified | UnnamedContract<br>`0x3065b3175f0265212e041ea119d0001cf751e5a7` | non_address_book | unknown | unknown | unverified | n/a | `0x8c1a617bdb47342f9c17ac8750e0b070c372c721` |
| unverified unclassified | UnnamedContract<br>`0x308aafa83293e72d38b7bcdc8fbc7fbaccb18b0f` | non_address_book | unknown | unknown | unverified | n/a | `0x8c1a617bdb47342f9c17ac8750e0b070c372c721` |
| unverified unclassified | UnnamedContract<br>`0x30e172aac675c9fe5a64792f92c9fd4d3e7ca9da` | non_address_book | unknown | unknown | unverified | n/a | `0x8c1a617bdb47342f9c17ac8750e0b070c372c721` |
| unverified unclassified | UnnamedContract<br>`0x323adf2126c21437f483c2577a19d710dba1ef67` | non_address_book | unknown | unknown | unverified | n/a | `0x8c1a617bdb47342f9c17ac8750e0b070c372c721` |
| unverified unclassified | UnnamedContract<br>`0x32d987d8420dc1661cc03722b79aac2ac3e5cf5a` | non_address_book | unknown | unknown | unverified | n/a | `0x24a1704636ab7083eac56294aff13e1651997638` |
| unverified unclassified | UnnamedContract<br>`0x332fa0d836abe21b07c87f91736056be7ed12193` | non_address_book | unknown | unknown | unverified | n/a | `0x8c1a617bdb47342f9c17ac8750e0b070c372c721` |
| unverified unclassified | UnnamedContract<br>`0x3365567988f788f7e878377cf211cc98a3505e15` | non_address_book | unknown | unknown | unverified | n/a | `0x8c1a617bdb47342f9c17ac8750e0b070c372c721` |
| unverified unclassified | UnnamedContract<br>`0x33f75d81f84050123c754f467a1035f60085b34b` | non_address_book | unknown | unknown | unverified | n/a | `0x8c1a617bdb47342f9c17ac8750e0b070c372c721` |
| unverified unclassified | UnnamedContract<br>`0x35008b7c4577df2e9e7f3bea110d5524b1e830a6` | non_address_book | unknown | unknown | unverified | n/a | `0x8c1a617bdb47342f9c17ac8750e0b070c372c721` |
| unverified unclassified | UnnamedContract<br>`0x36057ba53197165390f075a3e2fc2a3fe60c4895` | non_address_book | unknown | unknown | unverified | n/a | `0x8c1a617bdb47342f9c17ac8750e0b070c372c721` |
| unverified unclassified | UnnamedContract<br>`0x36d117866eac35ed451d8d34842d2435209686da` | non_address_book | unknown | unknown | unverified | n/a | `0x24a1704636ab7083eac56294aff13e1651997638` |
| unverified unclassified | UnnamedContract<br>`0x376bbc764b51fecaeb9a4f6164aaad7809eaf026` | non_address_book | unknown | unknown | unverified | n/a | `0x8c1a617bdb47342f9c17ac8750e0b070c372c721` |
| unverified unclassified | UnnamedContract<br>`0x3813ddc56e58d5e13b2dc87cc000c1259d73df9b` | non_address_book | unknown | unknown | unverified | n/a | `0x3a54a45e44a71020bd0af42063b9f23e8b9e387d` |
| unverified unclassified | UnnamedContract<br>`0x38eb04fb947cd8c49aac49f31a0bbfbd1c9ae443` | non_address_book | unknown | unknown | unverified | n/a | `0xb2d9a52e76841279ef0372c534c539a4f68f8c0b` |
| unverified unclassified | UnnamedContract<br>`0x3a0a9e5b91709bba0bcb4bb4b66730dcfef6e926` | non_address_book | unknown | unknown | unverified | n/a | `0x8c1a617bdb47342f9c17ac8750e0b070c372c721` |
| unverified unclassified | UnnamedContract<br>`0x3ade4ddd3e7a6f6fafea4e87f87979752f87cb0c` | non_address_book | unknown | unknown | unverified | n/a | `0x8c1a617bdb47342f9c17ac8750e0b070c372c721` |
| unverified unclassified | UnnamedContract<br>`0x3aec28c4a6fc29dae0b2c4b8b4a5e6c107ac8391` | non_address_book | unknown | unknown | unverified | n/a | `0x24a1704636ab7083eac56294aff13e1651997638` |
| unverified unclassified | UnnamedContract<br>`0x3b0d2f6a1f9d9de3a163e1f0aaf845dd47ce3122` | non_address_book | unknown | unknown | unverified | n/a | `0xb2d9a52e76841279ef0372c534c539a4f68f8c0b` |
| unverified unclassified | UnnamedContract<br>`0x3b73590c0aced56b315a6f0e9e6f0c326b288db2` | non_address_book | unknown | unknown | unverified | n/a | `0x8c1a617bdb47342f9c17ac8750e0b070c372c721` |
| unverified unclassified | UnnamedContract<br>`0x3ba122cf02a4705b50d5eac13f1dbfdfdb10c548` | non_address_book | unknown | unknown | unverified | n/a | `0x8c1a617bdb47342f9c17ac8750e0b070c372c721` |
| unverified unclassified | UnnamedContract<br>`0x3c094f0d46a37054ad1620ff57080835224f46b9` | non_address_book | unknown | unknown | unverified | n/a | `0x8c1a617bdb47342f9c17ac8750e0b070c372c721` |
| unverified unclassified | UnnamedContract<br>`0x3cb6a5d12e72aa765c7e03f167e67725725a7553` | non_address_book | unknown | unknown | unverified | n/a | `0x8c1a617bdb47342f9c17ac8750e0b070c372c721` |
| unverified unclassified | UnnamedContract<br>`0x3d2117699fe0ffb02d476c3d32dcf3fb9bcf6f58` | non_address_book | unknown | unknown | unverified | n/a | `0x24a1704636ab7083eac56294aff13e1651997638` |
| unverified unclassified | UnnamedContract<br>`0x3d24c84fc1a2b26f9229e58dddf11a8dfba802d0` | non_address_book | unknown | unknown | unverified | n/a | `0x3a54a45e44a71020bd0af42063b9f23e8b9e387d` |
| unverified unclassified | UnnamedContract<br>`0x3d3023e75c3ccbdd5ce5d974559f8fc83c41aaae` | non_address_book | unknown | unknown | unverified | n/a | `0x8c1a617bdb47342f9c17ac8750e0b070c372c721` |
| unverified unclassified | UnnamedContract<br>`0x3deef8a928bd3ed32d337be372ff635d4b9a7420` | non_address_book | unknown | unknown | unverified | n/a | `0x3a54a45e44a71020bd0af42063b9f23e8b9e387d` |
| unverified unclassified | UnnamedContract<br>`0x3e4f86ca18c90f2b933f20ffbef8056fdf4132bf` | non_address_book | unknown | unknown | unverified | n/a | `0x3a54a45e44a71020bd0af42063b9f23e8b9e387d` |
| unverified unclassified | UnnamedContract<br>`0x3ea3b50241ab59b5fc5b43e56f5326f3a2200c06` | non_address_book | unknown | unknown | unverified | n/a | `0x8c1a617bdb47342f9c17ac8750e0b070c372c721` |
| unverified unclassified | UnnamedContract<br>`0x3f5c770f17a6982d2b3ac77f6fdc93bfe0330e17` | non_address_book | unknown | unknown | unverified | n/a | `0xe55f127ebff8a0f259680620b10fe1756a0105c9` |
| unverified unclassified | UnnamedContract<br>`0x3fc90337a98529493744114b9faf2691cea49188` | non_address_book | unknown | unknown | unverified | n/a | `0x8c1a617bdb47342f9c17ac8750e0b070c372c721` |
| unverified unclassified | UnnamedContract<br>`0x41561b917df69187e50c52ea458df9d931b648f7` | non_address_book | unknown | unknown | unverified | n/a | `0x8c1a617bdb47342f9c17ac8750e0b070c372c721` |
| unverified unclassified | UnnamedContract<br>`0x41704dd5ad2b37a943f7698e58a744d1405efc15` | non_address_book | unknown | unknown | unverified | n/a | `0x8c1a617bdb47342f9c17ac8750e0b070c372c721` |
| unverified unclassified | UnnamedContract<br>`0x421194292dc69c440528d3865ae6a2b22f683cb6` | non_address_book | unknown | unknown | unverified | n/a | `0x8c1a617bdb47342f9c17ac8750e0b070c372c721` |
| unverified unclassified | UnnamedContract<br>`0x42990694bb4177577e1e5ae6a98dc2ebe9b17049` | non_address_book | unknown | unknown | unverified | n/a | `0x8c1a617bdb47342f9c17ac8750e0b070c372c721` |
| unverified unclassified | UnnamedContract<br>`0x429bcb66646caa847e478b4217e7d18e1d974bd9` | non_address_book | unknown | unknown | unverified | n/a | `0x8c1a617bdb47342f9c17ac8750e0b070c372c721` |
| unverified unclassified | UnnamedContract<br>`0x439799801a27b485d16f8e502d91780e9433a951` | non_address_book | unknown | unknown | unverified | n/a | `0x8c1a617bdb47342f9c17ac8750e0b070c372c721` |
| unverified unclassified | UnnamedContract<br>`0x43e7f00092d8077d6a4e9846e4b0c7fd882ab2d5` | non_address_book | unknown | unknown | unverified | n/a | `0x3a54a45e44a71020bd0af42063b9f23e8b9e387d` |
| unverified unclassified | UnnamedContract<br>`0x43e8e821045a37cd981fb4cf85ae5088c346652a` | non_address_book | unknown | unknown | unverified | n/a | `0x8c1a617bdb47342f9c17ac8750e0b070c372c721` |
| unverified unclassified | UnnamedContract<br>`0x44c4b7dbcdc2eab99c66cd0560d2a72cf8658e2c` | non_address_book | unknown | unknown | unverified | n/a | `0xe55f127ebff8a0f259680620b10fe1756a0105c9` |
| unverified unclassified | UnnamedContract<br>`0x45111d4fdf5ec6bd2bdbf9aed4a5f01140b892d9` | non_address_book | unknown | unknown | unverified | n/a | `0x8c1a617bdb47342f9c17ac8750e0b070c372c721` |
| unverified unclassified | UnnamedContract<br>`0x45593691657df351e8487f295b5b83f82966b6db` | non_address_book | unknown | unknown | unverified | n/a | `0x8c1a617bdb47342f9c17ac8750e0b070c372c721` |
| unverified unclassified | UnnamedContract<br>`0x4595a41c6f76e8dfeecf56d54538554b5e0f9e89` | non_address_book | unknown | unknown | unverified | n/a | `0x8c1a617bdb47342f9c17ac8750e0b070c372c721` |
| unverified unclassified | UnnamedContract<br>`0x45b899449cd0911ed98e40b2c7f32fcd02517fa3` | non_address_book | unknown | unknown | unverified | n/a | `0x8c1a617bdb47342f9c17ac8750e0b070c372c721` |
| unverified unclassified | UnnamedContract<br>`0x45b924ee3ee404e4a9e2a3afd0ad357eff79fc49` | non_address_book | unknown | unknown | unverified | n/a | `0x24a1704636ab7083eac56294aff13e1651997638` |
| unverified unclassified | UnnamedContract<br>`0x45fa7cffa725e238a46a35fde9f339b63fdedbdd` | non_address_book | unknown | unknown | unverified | n/a | `0x8c1a617bdb47342f9c17ac8750e0b070c372c721` |
| unverified unclassified | UnnamedContract<br>`0x465bf36f5a3832b3bd077552e7ef3c54b9885718` | non_address_book | unknown | unknown | unverified | n/a | `0x8c1a617bdb47342f9c17ac8750e0b070c372c721` |
| unverified unclassified | UnnamedContract<br>`0x46e33788259fc9e8764ba78532c94def12689a47` | non_address_book | unknown | unknown | unverified | n/a | `0x24a1704636ab7083eac56294aff13e1651997638` |
| unverified unclassified | UnnamedContract<br>`0x46f0a3ff3e76e3a8e934d89b6fa9638ff5242af3` | non_address_book | unknown | unknown | unverified | n/a | `0x8c1a617bdb47342f9c17ac8750e0b070c372c721` |
| unverified unclassified | UnnamedContract<br>`0x4730cec510e664838b20b576881702b64651cc45` | non_address_book | unknown | unknown | unverified | n/a | `0xb2d9a52e76841279ef0372c534c539a4f68f8c0b` |
| unverified unclassified | UnnamedContract<br>`0x47e6c77ae210a3baaca43cf596a3c5567c2bb10e` | non_address_book | unknown | unknown | unverified | n/a | `0x8c1a617bdb47342f9c17ac8750e0b070c372c721` |
| unverified unclassified | UnnamedContract<br>`0x482062b4915311fd717015d711a35da63bdf28cc` | non_address_book | unknown | unknown | unverified | n/a | `0x8c1a617bdb47342f9c17ac8750e0b070c372c721` |
| unverified unclassified | UnnamedContract<br>`0x489c2e5ebe0037bdb2dc039c5770757b8e54ea1f` | non_address_book | unknown | unknown | unverified | n/a | `0xe55f127ebff8a0f259680620b10fe1756a0105c9` |
| unverified unclassified | UnnamedContract<br>`0x48f9f3190b7b5231cbf2ad1a1315af7f6a554020` | non_address_book | unknown | unknown | unverified | n/a | `0xe55f127ebff8a0f259680620b10fe1756a0105c9` |
| unverified unclassified | UnnamedContract<br>`0x4904cecc04c2769e38590065e566146aaf0726c5` | non_address_book | unknown | unknown | unverified | n/a | `0x8c1a617bdb47342f9c17ac8750e0b070c372c721` |
| unverified unclassified | UnnamedContract<br>`0x497b409e098fd3d2a4efbcf96a1e76478d182fee` | non_address_book | unknown | unknown | unverified | n/a | `0x8c1a617bdb47342f9c17ac8750e0b070c372c721` |
| unverified unclassified | UnnamedContract<br>`0x498313fb340cd5055c5568546364008299a47517` | non_address_book | unknown | unknown | unverified | n/a | `0x8c1a617bdb47342f9c17ac8750e0b070c372c721` |
| unverified unclassified | UnnamedContract<br>`0x49c947b6d865d9252989471e98096b8cd67d7902` | non_address_book | unknown | unknown | unverified | n/a | `0x8c1a617bdb47342f9c17ac8750e0b070c372c721` |
| unverified unclassified | UnnamedContract<br>`0x49d7296d30bcfa9dced93843febbc28be846e66e` | non_address_book | unknown | unknown | unverified | n/a | `0x8c1a617bdb47342f9c17ac8750e0b070c372c721` |
| unverified unclassified | UnnamedContract<br>`0x49fe7d77355e2df0a9b0ecfad9652ec34363dddc` | non_address_book | unknown | unknown | unverified | n/a | `0x8c1a617bdb47342f9c17ac8750e0b070c372c721` |
| unverified unclassified | UnnamedContract<br>`0x4aae21fc11669463d37d2b875b52c7d63f794a08` | non_address_book | unknown | unknown | unverified | n/a | `0x8c1a617bdb47342f9c17ac8750e0b070c372c721` |
| unverified unclassified | UnnamedContract<br>`0x4b249e565c6d12a48a6946faffc4bba0b82f6487` | non_address_book | unknown | unknown | unverified | n/a | `0x8c1a617bdb47342f9c17ac8750e0b070c372c721` |
| unverified unclassified | UnnamedContract<br>`0x4b3464d3de7767483ef507f44b34dd60ce574cfc` | non_address_book | unknown | unknown | unverified | n/a | `0x3a54a45e44a71020bd0af42063b9f23e8b9e387d` |
| unverified unclassified | UnnamedContract<br>`0x4bbcfa9be58620b4fb1989a774917d57e2519985` | non_address_book | unknown | unknown | unverified | n/a | `0x8c1a617bdb47342f9c17ac8750e0b070c372c721` |

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
| needs_review | 610 |

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
