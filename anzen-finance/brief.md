# Agentic Audit Brief: Anzen Finance

⚠️ Lifecycle status: DECLINING - TVL dropped 92.0% over 90 days

## Project Overview

- Project: Anzen Finance (`anzen-finance`)
- Website: [https://anzen.finance/](https://anzen.finance/)
- Lifecycle: declining (Tier 1, declining)
- Generated: 2026-06-10T20:40:01.272Z
- Pipeline run: v2-pipeline-2026-06-10-b79301-df6b
- Chains: arbitrum, base, blast, ethereum, manta
- Contract surface: 47 unique implementations (121 raw deployments)
- DeFi Llama TVL: $7,527,300.00
- On-chain TVL (included contracts): $671,202.64
- TVL by chain: Base $654,186.65 | Blast $10,863.02 | Ethereum $6,152.97

## Project Description

Anzen Finance is the issuer of USDz, an omnichain real-world-asset-backed digital dollar, with associated staking/rewards and LayerZero-based cross-chain bridging. sUSDz and governance-related mechanics should be treated as associated protocol components only where verified by Anzen documentation or audits.

### Architecture

The Mainnet family serves as the hub with SPCTPool, USDz, and sUSDz, while L2 families (Arbitrum, Base, Blast, Manta) use Vaults and Child tokens to extend stablecoin functionality cross-chain via LayerZero adapters. Governance and staking are unified through AnzenToken and Treasury multisigs.

## Audit Coverage Summary

- Verified implementations audited: 14/39 (35.9%)
- Verified + Unaudited implementations: 25
- Verified by bytecode match: 0
- Unverified implementations: 8
- Unique implementations: 47
- Raw deployments: 121
- Audits discovered: 5
- Scoreable audits (matched contracts): 4
- ASD (verified + unaudited TVL): $10,863.02
- Latest audit: 2024-12 (aging)
- Staleness: 0 fresh, 1 aging, 3 stale, 1 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of $10,863.02 represents exposure in a protocol with declining activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Zellic | Tier 2 | 14 | 35.9% | 2024-12 |
| Halborn | Tier 2 | 5 | 12.8% | 2024-05 |
| PeckShield | Tier 2 | 3 | 7.7% | 2024-04 |

## Contract Surface

### ✅ Verified + Audited (14)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| AnzenToken | token | base | 2 deployments: base [`0xd8a8f0...d48652`](./contracts/base-8453/0xd8a8f0f13300e81bf366bd87d972d3521ad48652/); base `0xeec468...ae4ca3` | ✅ Audited |
| SPCTPool | core_logic | ethereum | 2 deployments: ethereum [`0xef5aac...8a62b5`](./contracts/ethereum-1/0xef5aacb3c38a5be7785a361008e27fb0328a62b5/); ethereum `0xf30a29...800d29` | ✅ Audited |
| StakePool | core_logic | base | 2 deployments: base [`0x5eb20b...3f96b8`](./contracts/base-8453/0x5eb20b02baff1dd21ddb42d5dd6c5620ee3f96b8/); base `0x83f27b...0552f5` | ✅ Audited |
| Vault | core_logic | manta | 3 deployments: manta [`0x5a1b8c...6ea129`](./contracts/manta-169/0x5a1b8c0e9fe27b9db4913df6b361dea5e96ea129/); base `0xd4cd16...cbbaac`; blast `0x69213c...024ddc` | ✅ Audited |
| AnzenGaugeControllerMainchainUpg | operational_periphery | base | 2 deployments: base [`0x62cb5b...acc39a`](./contracts/base-8453/0x62cb5b7a0d86a462644e16a311aa1d9ddeacc39a/); base `0x9f6bc4...a58eca` | ✅ Audited |
| AnzenVotingControllerUpg | governance | base | 2 deployments: base [`0x128ef6...63db38`](./contracts/base-8453/0x128ef61fdc9a36240b3372bd226479b66d63db38/); base `0xed85dc...b00ada` | ✅ Audited |
| ChildUSDz | unknown | base | [`0x04d5dd...7f1938`](./contracts/base-8453/0x04d5ddf5f3a8939889f11e97f8c4bb48317f1938/) | ✅ Audited |
| LockedUSDzMarket | unknown | base | 2 deployments: base [`0x3d36ff...16a6fa`](./contracts/base-8453/0x3d36ff21e0417d4656296a6ffd20e243d516a6fa/); base `0xe5bbf4...404441` | ✅ Audited |
| LockingToken | token | base | 2 deployments: base [`0x1f4817...20e59d`](./contracts/base-8453/0x1f48178de8824cc98c911ff1b36a16dd8e20e59d/); base `0xbe1237...b94064` | ✅ Audited |
| MainnetUSDzMarket | unknown | ethereum | [`0x81784b...d36266`](./contracts/ethereum-1/0x81784bd147b141c85ab3a36a38c5d4ff56d36266/) | ✅ Audited |
| SUSDz | unknown | ethereum | [`0x547213...a27fd7`](./contracts/ethereum-1/0x547213367cfb08ab418e7b54d7883b2c2aa27fd7/) | ✅ Audited |
| USDz | unknown | ethereum | [`0xa469b7...a10067`](./contracts/ethereum-1/0xa469b7ee9ee773642b3e93e842e5d9b5baa10067/) | ✅ Audited |
| VotingEscrowAnzenMainchain | operational_periphery | base | [`0xa90ed3...d11ba2`](./contracts/base-8453/0xa90ed3ec34e78fd26d59f43ed67a7cbff4d11ba2/) | ✅ Audited |
| VotingResultBroadcaster | unknown | base | [`0xa0e160...55206f`](./contracts/base-8453/0xa0e160cacde318b059aa8cb69995803e1955206f/) | ✅ Audited |

### ⚠️ Verified + Unaudited (25)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| VaultV2 | core_logic | arbitrum | 2 deployments: arbitrum [`0x73d23f...f2a7e4`](./contracts/arbitrum-42161/0x73d23f3778a90be8846e172354a115543df2a7e4/); blast `0xf3588e...0cfe09` | ⚠️ Unaudited |
| USDzVault | core_logic | base | 2 deployments: base [`0xa87c98...1f6f4d`](./contracts/base-8453/0xa87c9808c0ebe20a1427b5c769623c77201f6f4d/); base `0xc34292...3eb526` | ⚠️ Unaudited |
| AnzenGenericOFTAdapter | adapter | base | [`0xdfdc54...877c88`](./contracts/base-8453/0xdfdc54f14a4783fe8e8ef7de7159744725877c88/) | ⚠️ Unaudited |
| AnzenLayerZeroAdapter | adapter | manta | 7 deployments: manta [`0x04d5dd...7f1938`](./contracts/manta-169/0x04d5ddf5f3a8939889f11e97f8c4bb48317f1938/); manta `0xe31ee1...cbf0cf`; base `0x547213...a27fd7`; arbitrum `0xdd2161...30d58e`; arbitrum `0xe563ec...ddac32`; blast [`0x04d5dd...7f1938`](./contracts/blast-81457/0x04d5ddf5f3a8939889f11e97f8c4bb48317f1938/); blast `0x5a1b8c...6ea129` | ⚠️ Unaudited |
| AnzenMsgSendEndpointUpg | operational_periphery | base | 2 deployments: base [`0x22264d...db76d3`](./contracts/base-8453/0x22264d999286db15f56ec1f9fac563422cdb76d3/); base `0xf72307...84201d` | ⚠️ Unaudited |
| ChildsUSDzV2 | unknown | arbitrum | 5 deployments: manta `0x8f08a3...a91758`; base `0xe31ee1...cbf0cf`; arbitrum [`0x024ae5...c5755b`](./contracts/arbitrum-42161/0x024ae5eb7abd4f52ddd145f0fed446caebc5755b/); arbitrum `0x1b2c29...5c879d`; blast `0x73d23f...f2a7e4` | ⚠️ Unaudited |
| ChildUSDzV2 | unknown | arbitrum | 3 deployments: manta `0x73d23f...f2a7e4`; arbitrum [`0x501860...a4b94f`](./contracts/arbitrum-42161/0x5018609ab477cc502e170a5accf5312b86a4b94f/); blast `0x52056e...46e8c6` | ⚠️ Unaudited |
| EACAggregatorProxy | unknown | base | 41 deployments: base [`0x0b68ac...8c40e9`](./contracts/base-8453/0x0b68ac37a1668daaab1882543368e076c38c40e9/); base `0x12129a...1fd25f`; base `0x15364c...e3feea`; base `0x30a76f...3ae6f7`; base `0x30fccf...b67d72`; base `0x35e9d7...e2c181`; base `0x4b7836...b453b1`; base `0x4ec597...0fcff0`; base `0x5e988c...12b113`; base `0x64c911...bd848f`; base `0x67283a...027691`; base `0x6f064e...c9753c`; base `0x790181...ffe73b`; base `0x79cf4a...81e533`; base `0x7bafa1...2c51e5`; base `0x7fced5...4dcb80`; base `0x8b2af3...387716`; base `0x91d7ae...cd3d9e`; base `0x91d91c...068786`; base `0x9452ca...f57f07`; base `0x960bdd...a113a3`; base `0x962c0d...9ab23c`; base `0x99daf7...21616b`; base `0x9fb8b5...cc7382`; base `0xaae87e...d0cbdf`; base `0xb12638...2b458f`; base `0xb366e8...d6cfea`; base `0xbc7c50...eef410`; base `0xbd8674...2b4c91`; base `0xc15d99...32c5fe`; base `0xc4300b...46f5d8`; base `0xd7221b...365296`; base `0xd89c7f...c07582`; base `0xdae398...7f8250`; base `0xded37f...1b23aa`; base `0xe25969...d60b48`; base `0xe62bce...5799c2`; base `0xe70f2d...f5cd92`; base `0xe96eb1...64e1b9`; base `0xfaf372...da1ca5`; base `0xfc1415...775c65` | ⚠️ Unaudited |
| GnosisSafe | governance | ethereum | [`0x20b15e...71eb3b`](./contracts/ethereum-1/0x20b15ee712b3c368af48ea5a59430be93a71eb3b/) | ⚠️ Unaudited |
| GnosisSafeProxy | governance | manta | 3 deployments: manta [`0x13649b...147210`](./contracts/manta-169/0x13649b6c7e177ffa373eeeeef485952843147210/); manta `0x18b7d4...2ad582`; base `0x18b7d4...2ad582` | ⚠️ Unaudited |
| MerkleRewardDistributor | operational_periphery | base | 3 deployments: base [`0xcd04c3...321dfb`](./contracts/base-8453/0xcd04c35177b059360ba7219ebaab5c5e94321dfb/); base `0xe1068b...10ca21`; base `0xea4b3e...68573c` | ⚠️ Unaudited |
| PCTPool | core_logic | ethereum | [`0xe16f2e...4e5c15`](./contracts/ethereum-1/0xe16f2ec94e8a0819eb93022c45e05d582f4e5c15/) | ⚠️ Unaudited |
| PointsVault | core_logic | base | 2 deployments: base [`0x60ed4b...6a4651`](./contracts/base-8453/0x60ed4bfb90bcbf8b6c16e986f1001215336a4651/); base `0xc8f188...a18487` | ⚠️ Unaudited |
| ProxyAdmin | governance | base | [`0x9e4867...8c32bb`](./contracts/base-8453/0x9e48675034056769831e46ce30776289d48c32bb/) | ⚠️ Unaudited |
| RedemptionQueue | unknown | ethereum | [`0xbbfff4...f4f558`](./contracts/ethereum-1/0xbbfff4b12e69d1d058bf215b1b1c734089f4f558/) | ⚠️ Unaudited |
| RewardDistributor | operational_periphery | ethereum | [`0x663de5...452170`](./contracts/ethereum-1/0x663de54432a1d74912c99e7929d2d58a75452170/) | ⚠️ Unaudited |
| SafeProxy | unknown | blast | [`0x08fccc...32b354`](./contracts/blast-81457/0x08fccc6213cb3843f8d270c4eefc7a09eb32b354/) | ⚠️ Unaudited |
| StakePoolDistributor | operational_periphery | base | 2 deployments: base [`0x532dbb...7bdebc`](./contracts/base-8453/0x532dbb9ecfea8d80ce1d78bd484266245d7bdebc/); base `0x9ce59d...4d4075` | ⚠️ Unaudited |
| sUSDzOFTAdapter | adapter | ethereum | [`0x0c0dff...daf1b7`](./contracts/ethereum-1/0x0c0dfff29e449b0a84f78cc7cdbbe0e31fdaf1b7/) | ⚠️ Unaudited |
| sUSDzUSDzExchangeRateChainlinkAdapter | adapter | ethereum | [`0x8047f6...c31869`](./contracts/ethereum-1/0x8047f61e4d8bd15f3a8ad0bf30b7882219c31869/) | ⚠️ Unaudited |
| TokenManager | governance | ethereum | 3 deployments: ethereum [`0xf6f0a0...e40a5c`](./contracts/ethereum-1/0xf6f0a051e4de63d9118a6bc948463a9d08e40a5c/); base [`0xf6f0a0...e40a5c`](./contracts/base-8453/0xf6f0a051e4de63d9118a6bc948463a9d08e40a5c/); blast [`0xf6f0a0...e40a5c`](./contracts/blast-81457/0xf6f0a051e4de63d9118a6bc948463a9d08e40a5c/) | ⚠️ Unaudited |
| UsdzMarket | unknown | base | 2 deployments: base [`0x8e7884...efeea5`](./contracts/base-8453/0x8e788484cab6359e65fece14a4d6e510e2efeea5/); base `0xa452af...6a4efb` | ⚠️ Unaudited |
| VeDistributor | operational_periphery | base | 2 deployments: base [`0xd2a47a...6c6921`](./contracts/base-8453/0xd2a47ab0bc31facc02e8d999184ae60f546c6921/); base `0xe4064b...0164e7` | ⚠️ Unaudited |
| wPCT | unknown | ethereum | [`0x414ac1...f3b750`](./contracts/ethereum-1/0x414ac1853329b3704df0caf7749cd296c7f3b750/) | ⚠️ Unaudited |
| wPCTCollateral | unknown | ethereum | [`0x04d5dd...7f1938`](./contracts/ethereum-1/0x04d5ddf5f3a8939889f11e97f8c4bb48317f1938/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (8)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | `0x0dee5d...439551` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x900fff...8b0d4f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xfd9d5d...c7b483` | ❓ Unverified |
| UnnamedContract | unknown | manta | `0x08fccc...32b354` | ❓ Unverified |
| UnnamedContract | unknown | manta | `0x20b15e...71eb3b` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x52056e...46e8c6` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x5a1b8c...6ea129` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xca5468...8315b7` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Anzen - Halborn Audit Report.pdf](https://github.com/Anzen-Finance/audits/blob/master/Anzen%20-%20Halborn%20Audit%20Report.pdf) | Halborn | Audit | 2024-05 | stale | Direct | contract_name | 8 | high |
| [Anzen - PeckShield Audit Report.pdf](https://github.com/Anzen-Finance/audits/blob/master/Anzen%20-%20PeckShield%20Audit%20Report.pdf) | PeckShield | Audit | 2024-04 | stale | Direct | contract_name | 4 | high |
| [Anzen - Zellic Audit Report.pdf](https://github.com/Anzen-Finance/audits/blob/master/Anzen%20-%20Zellic%20Audit%20Report.pdf) | Zellic | Audit | 2024-05 | stale | Direct | contract_name | 8 | high |
| [{% embed url="<>" %}](https://github.com/Zellic/publications/blob/master/Anzen%20and%20protocol-v2%20-%20Zellic%20Audit%20Report.pdf) | Zellic | Audit | 2024-12 | aging | Direct | contract_name | 15 | high |
| [<>\](https://drive.google.com/drive/folders/1xjQkrQJJeMZQldfdnCGaaj5FiGHaGRmm?usp=sharing) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| arbitrum | [`0x73d23f...f2a7e4`](./contracts/arbitrum-42161/0x73d23f3778a90be8846e172354a115543df2a7e4/) | VaultV2 | core_logic | $10,863.02 | Verified native implementation with $10,863.02 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xa87c98...1f6f4d`](./contracts/base-8453/0xa87c9808c0ebe20a1427b5c769623c77201f6f4d/) | USDzVault | core_logic | $0.00 | Verified native implementation with $0.00 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xdfdc54...877c88`](./contracts/base-8453/0xdfdc54f14a4783fe8e8ef7de7159744725877c88/) | AnzenGenericOFTAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| manta | [`0x04d5dd...7f1938`](./contracts/manta-169/0x04d5ddf5f3a8939889f11e97f8c4bb48317f1938/) | AnzenLayerZeroAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x024ae5...c5755b`](./contracts/arbitrum-42161/0x024ae5eb7abd4f52ddd145f0fed446caebc5755b/) | ChildsUSDzV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x501860...a4b94f`](./contracts/arbitrum-42161/0x5018609ab477cc502e170a5accf5312b86a4b94f/) | ChildUSDzV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xcd04c3...321dfb`](./contracts/base-8453/0xcd04c35177b059360ba7219ebaab5c5e94321dfb/) | MerkleRewardDistributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe16f2e...4e5c15`](./contracts/ethereum-1/0xe16f2ec94e8a0819eb93022c45e05d582f4e5c15/) | PCTPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x60ed4b...6a4651`](./contracts/base-8453/0x60ed4bfb90bcbf8b6c16e986f1001215336a4651/) | PointsVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xbbfff4...f4f558`](./contracts/ethereum-1/0xbbfff4b12e69d1d058bf215b1b1c734089f4f558/) | RedemptionQueue | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x663de5...452170`](./contracts/ethereum-1/0x663de54432a1d74912c99e7929d2d58a75452170/) | RewardDistributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x532dbb...7bdebc`](./contracts/base-8453/0x532dbb9ecfea8d80ce1d78bd484266245d7bdebc/) | StakePoolDistributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0c0dff...daf1b7`](./contracts/ethereum-1/0x0c0dfff29e449b0a84f78cc7cdbbe0e31fdaf1b7/) | sUSDzOFTAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf6f0a0...e40a5c`](./contracts/ethereum-1/0xf6f0a051e4de63d9118a6bc948463a9d08e40a5c/) | TokenManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x8e7884...efeea5`](./contracts/base-8453/0x8e788484cab6359e65fece14a4d6e510e2efeea5/) | UsdzMarket | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x414ac1...f3b750`](./contracts/ethereum-1/0x414ac1853329b3704df0caf7749cd296c7f3b750/) | wPCT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x04d5dd...7f1938`](./contracts/ethereum-1/0x04d5ddf5f3a8939889f11e97f8c4bb48317f1938/) | wPCTCollateral | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 34 |
| upstream | 2 |
| standard_library | 10 |
| needs_review | 1 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=4
- Match method counts: extraction_exact=35

Zero-match audit list:

- [2166] <>\

Fork inheritance lineage and inherited audits are included when available.
