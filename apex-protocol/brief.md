# Agentic Audit Brief: ApeX Protocol

## Project Overview

- Project: ApeX Protocol (`apex-protocol`)
- Website: [https://omni.apex.exchange/referral?referralCode=T0S8V482](https://omni.apex.exchange/referral?referralCode=T0S8V482)
- Lifecycle: active (Tier 0, 63.4% below peak)
- Generated: 2026-06-17T07:00:50.551Z
- Pipeline run: brief-regen-topo-2026-06-17
- Chains: arbitrum, base, ethereum, mantle
- Contract surface: 46 unique implementations (84 raw deployments)
- DeFi Llama TVL: $35,169,528.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

ApeX Protocol is a decentralized derivatives trading platform offering perpetual contracts. Its product family includes ApeX Pro, a StarkWare-based order book exchange, and ApeX Omni, which is associated with ZkLink-based cross-chain trading/liquidity infrastructure. Any shared gateway or bridge infrastructure between ApeX Pro and ApeX Omni should be treated as unverified unless supported by explicit project documentation or contract linkage.

### Architecture

ApeX Pro and Apex Omni share infrastructure through cross-chain bridges and gateways, with Apex Omni's ZkLink contracts relying on L1/L2 gateways also used by ApeX Pro's StarkWare components. Both families utilize common proxy patterns and deployer clusters, indicating a unified development framework.

## Contract Surface Quality

- Indexed contracts: 777; live-surface contracts included: 84 (84 live, 0 unknown).
- Excluded by liveness: 535 inactive, 158 singleton, 0 uninitialized.
- Deployment units: 0/74 live.
- Detected codebases: none
- Unverified dependencies: 3/19.

## Audit Coverage Summary

- Verified implementations audited: 0/32 (0.0%)
- Verified + Unaudited implementations: 32
- Verified by bytecode match: 0
- Unverified implementations: 14
- Unique implementations: 46
- Raw deployments: 84
- Audits discovered: 1
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022-01 (stale)
- Staleness: 0 fresh, 0 aging, 1 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (32)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AllVerifiers | periphery | ethereum | n/a | [`0xa67821...9da086`](./contracts/ethereum-1/0xa67821bc089b4374e8d62475526e7e84f09da086/) | ⚠️ Unaudited |
| ApeXPool3 | core_logic | mantle | n/a | 2 deployments: ethereum `0xaf7d1a...8b907b`; mantle [`0x661ea2...cfedbb`](./contracts/mantle-5000/0x661ea23a54dcb7dcbb533be0f50dc6ea2ecfedbb/) | ⚠️ Unaudited |
| BananaClaimable | governance | ethereum | n/a | [`0x4e59a6...a9f86f`](./contracts/ethereum-1/0x4e59a6944ec90917a71d226227b458bfa7a9f86f/) | ⚠️ Unaudited |
| BananaV2 | unknown | ethereum | n/a | [`0x93fa1d...19cb36`](./contracts/ethereum-1/0x93fa1d7c310692eaf390f951828f8791bc19cb36/) | ⚠️ Unaudited |
| BatchWithdraw | operational_periphery | ethereum | n/a | [`0x613d08...7a8964`](./contracts/ethereum-1/0x613d088f2e5a2ed91635016483dafa3cd47a8964/) | ⚠️ Unaudited |
| CairoBootloaderProgram | adapter | ethereum | n/a | 3 deployments: ethereum [`0x192292...8a8636`](./contracts/ethereum-1/0x192292817680196a0215a50b07d1c5e7ab8a8636/); ethereum `0x24105e...a24a47`; ethereum `0xdf0b63...d1d917` | ⚠️ Unaudited |
| Committee | unknown | ethereum | n/a | [`0x23cab3...9494e4`](./contracts/ethereum-1/0x23cab3cf1aa7b929df5e9f3712aca3a6fb9494e4/) | ⚠️ Unaudited |
| CpuConstraintPoly | unknown | ethereum | n/a | 8 deployments: ethereum [`0x1bde14...7d4420`](./contracts/ethereum-1/0x1bde14b50e7daed71ee14f7e8defaa3d8a7d4420/); ethereum `0x2c9726...ab01a1`; ethereum `0x3e727f...b16eba`; ethereum `0x9a62fa...2d31a9`; ethereum `0x9ddb8a...10ae6f`; ethereum `0xc716c4...39dbd8`; ethereum `0xd8e473...cc81e5`; ethereum `0xe4937a...a9b103` | ⚠️ Unaudited |
| CpuFrilessVerifier | periphery | ethereum | n/a | 8 deployments: ethereum [`0x015381...442cd6`](./contracts/ethereum-1/0x015381651f240ed6c44122dcba6cf807c9442cd6/); ethereum `0x0cd0cd...ca5cdc`; ethereum `0x2867a4...109b6b`; ethereum `0x30f3ab...70419b`; ethereum `0x6a6779...803f11`; ethereum `0x715740...53a26d`; ethereum `0xbe0f8f...8caef3`; ethereum `0xffc797...476b44` | ⚠️ Unaudited |
| CpuOods | unknown | ethereum | n/a | 8 deployments: ethereum [`0x35e9f6...83e7cb`](./contracts/ethereum-1/0x35e9f63efc97e008f3f9097ea3293b540483e7cb/); ethereum `0x7ca020...af135e`; ethereum `0x8f3af1...dc4775`; ethereum `0x99480b...dc3595`; ethereum `0xa40115...7bb766`; ethereum `0xa4d0bb...e15dd4`; ethereum `0xae325c...ac2707`; ethereum `0xd67c67...014faa` | ⚠️ Unaudited |
| EcdsaPointsXColumn | unknown | ethereum | n/a | [`0xa3da16...74b9ce`](./contracts/ethereum-1/0xa3da166aef05dba08d67ea5b442dd9574274b9ce/) | ⚠️ Unaudited |
| EcdsaPointsYColumn | unknown | ethereum | n/a | [`0xcaea50...62c771`](./contracts/ethereum-1/0xcaea5002758d5b977680fe65164b7fe6a062c771/) | ⚠️ Unaudited |
| EsAPEX2 | unknown | mantle | n/a | [`0x51fcaa...8f1870`](./contracts/mantle-5000/0x51fcaaf4d6288f21cedda92f22a3c0251e8f1870/) | ⚠️ Unaudited |
| FinalizableCommittee | unknown | ethereum | n/a | [`0x4e0e46...7de611`](./contracts/ethereum-1/0x4e0e46fc2b9a9809dce23ce2d9a1d6eede7de611/) | ⚠️ Unaudited |
| FriStatementContract | unknown | ethereum | n/a | [`0x30efaa...93d400`](./contracts/ethereum-1/0x30efaaa99f8efe310d9fdc83072e2a04c093d400/) | ⚠️ Unaudited |
| GpsStatementVerifier | periphery | ethereum | n/a | 6 deployments: ethereum [`0x13e120...b0d934`](./contracts/ethereum-1/0x13e120f6c8e747983f7aaf0f7731796bfcb0d934/); ethereum `0x5c1ce4...e3a9fe`; ethereum `0x7da122...2e3ff7`; ethereum `0xde7632...8aa170`; ethereum `0xe67515...86b406`; ethereum `0xfe5e5b...2b0066` | ⚠️ Unaudited |
| MemoryPageFactRegistry | registry | ethereum | n/a | [`0xe583bc...2ec460`](./contracts/ethereum-1/0xe583bcde0160b637330b27a3ea1f3c02ba2ec460/) | ⚠️ Unaudited |
| MerkleStatementContract | operational_periphery | ethereum | n/a | [`0x32a91f...58fdad`](./contracts/ethereum-1/0x32a91ff604ab2adcd832e91d68b2f3f25358fdad/) | ⚠️ Unaudited |
| PedersenHashPointsXColumn | unknown | ethereum | n/a | [`0xdc596b...1d9e70`](./contracts/ethereum-1/0xdc596b881bd9e33d3a56ae86031417645d1d9e70/) | ⚠️ Unaudited |
| PedersenHashPointsYColumn | unknown | ethereum | n/a | [`0xa55c0f...f4b6c2`](./contracts/ethereum-1/0xa55c0f91945958c40f7fa41eb650340245f4b6c2/) | ⚠️ Unaudited |
| PerpetualEscapeVerifier | periphery | ethereum | n/a | [`0xaadfdb...37f7bd`](./contracts/ethereum-1/0xaadfdb9cac145c65f2284fbe24600d07fb37f7bd/) | ⚠️ Unaudited |
| PoseidonPoseidonFullRoundKey0Column | unknown | ethereum | n/a | 2 deployments: ethereum [`0x21578b...31ea8f`](./contracts/ethereum-1/0x21578b24f86adf6f59c406f641f693745c31ea8f/); ethereum `0xdf1075...bab090` | ⚠️ Unaudited |
| PoseidonPoseidonFullRoundKey1Column | unknown | ethereum | n/a | 2 deployments: ethereum [`0xe58327...1f810d`](./contracts/ethereum-1/0xe58327a05f21ab12ab33a4408003a87e571f810d/); ethereum `0xe5ac93...f68fd0` | ⚠️ Unaudited |
| PoseidonPoseidonFullRoundKey2Column | unknown | ethereum | n/a | 2 deployments: ethereum [`0x4576ba...50ba0b`](./contracts/ethereum-1/0x4576ba889ddcb27738c4d3b8df2ff2616650ba0b/); ethereum `0x698339...dc7755` | ⚠️ Unaudited |
| PoseidonPoseidonPartialRoundKey0Column | unknown | ethereum | n/a | 2 deployments: ethereum [`0x5318ed...83953e`](./contracts/ethereum-1/0x5318edcfecaf84eb5a3a4d364c2dcff06083953e/); ethereum `0xb45b87...5ea7a0` | ⚠️ Unaudited |
| PoseidonPoseidonPartialRoundKey1Column | unknown | ethereum | n/a | 2 deployments: ethereum [`0xc1cd71...433ccc`](./contracts/ethereum-1/0xc1cd710bb0d8a07a46cc884a552091d1ed433ccc/); ethereum `0xecc282...790e20` | ⚠️ Unaudited |
| Proxy | proxy | base | n/a | 2 deployments: base [`0x161f4b...0477f0`](./contracts/base-8453/0x161f4baab4052f20f5f4347ec4422556aa0477f0/); arbitrum `0xed5d1e...082ac3` | ⚠️ Unaudited |
| ProxyV5 | unknown | ethereum | n/a | 3 deployments: ethereum [`0x3641bf...c16b10`](./contracts/ethereum-1/0x3641bf5a9a07ef705e8358d39dd8555919c16b10/); ethereum `0x3cde3e...0519a8`; ethereum `0x75c881...493f7d` | ⚠️ Unaudited |
| StarknetEthBridge | operational_periphery | ethereum | n/a | [`0x95ff25...c7fd95`](./contracts/ethereum-1/0x95ff25a59dc9c5a41cf0709dc916041e5dc7fd95/) | ⚠️ Unaudited |
| StarknetTokenBridge | operational_periphery | ethereum | n/a | 2 deployments: ethereum [`0x70a368...59a356`](./contracts/ethereum-1/0x70a36886adf5c3b8b5f370c3f037e9116159a356/); ethereum `0xe0d1fa...ba3f18` | ⚠️ Unaudited |
| TokensAndRamping | token | ethereum | n/a | [`0xb97394...c71e98`](./contracts/ethereum-1/0xb97394b55b4807a835619edbcc6af6b1d3c71e98/) | ⚠️ Unaudited |
| UpgradeGatekeeper | operational_periphery | base | n/a | [`0x72343e...f2fcad`](./contracts/base-8453/0x72343e8e448fa539a1f118f870a1de1132f2fcad/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (14)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x27a883...114d0f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2b7a09...bc05d1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x35cbaf...5bf253` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3e6baa...5640b2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5870f2...81e5fd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x59b1dd...ffafb1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x691b0d...832dcb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x85906d...79c9d2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb1958c...ed4d2c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb8224c...9535a3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc94567...4a9576` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf52a28...e93a57` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfacc22...065b96` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x367a1c...5263cf` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [audit_report.pdf](https://github.com/ApeX-Protocol/core/blob/master/docs/audit_report.pdf) | unknown | Audit | 2022-01 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 46 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [5909] audit_report.pdf

Fork inheritance lineage and inherited audits are included when available.
