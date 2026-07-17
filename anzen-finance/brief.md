# Agentic Audit Brief: Anzen Finance

⚠️ Lifecycle status: UNKNOWN - TVL dropped 54.1% over 90 days

## Project Overview

- Project: Anzen Finance (`anzen-finance`)
- Website: [https://anzen.finance/](https://anzen.finance/)
- Lifecycle: unknown (Tier 0, 93.8% below peak)
- Generated: 2026-07-04T14:53:03.913Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-d640
- Chains: arbitrum, base, blast, ethereum, manta
- Contract surface: 45 unique implementations (100 raw deployments)
- DeFi Llama TVL: $7,901,293.00
- On-chain TVL (included contracts): $454,484.58
- TVL by chain: Base $448,334.12 | Ethereum $6,150.46

## Project Description

RWA. Structurally: 38 project-authored contract(s) across 5 chain(s); 1 ERC4626 vault, 11 ERC20 tokens, 1 ERC721 NFT, 1 ERC1155 multi-token, 2 Chainlink feeds; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 8 functional families. Its contracts share 25 common project-authored base contract(s) (oftadapter, oftcore, oapp). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 161; live-surface contracts included: 92 (74 live, 18 unknown).
- Excluded by liveness: 69 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 6/29 (20.7%)
- Deployed-live implementations: 34 of 45 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 6/34
- Verified + Unaudited implementations: 28
- Verified by bytecode match: 0
- Unverified implementations: 11
- Unique implementations: 45
- Raw deployments: 100
- Audits discovered: 6 (6 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 4
- ASD (verified + unaudited TVL): $454,484.58
- Latest audit: 2024-12 (aging)
- Audit staleness (calendar age): 0 fresh, 1 aging, 4 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 6 match-unverified
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [unknown]. ASD of $454,484.58 represents exposure in a protocol with unknown activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Zellic | Tier 2 | 6 | 17.6% | 2024-12 |
| Halborn | Tier 2 | 4 | 11.8% | 2024-05 |
| PeckShield | Tier 2 | 2 | 5.9% | 2024-04 |

## Contract Surface

### ✅ Verified + Audited (6)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| ChildUSDz | unknown | base | n/a | [`0x04d5ddf5f3a8939889f11e97f8c4bb48317f1938`](./contracts/base-8453/0x04d5ddf5f3a8939889f11e97f8c4bb48317f1938/) | ✅ Audited |
| MainnetUSDzMarket | unknown | ethereum | n/a | [`0x81784bd147b141c85ab3a36a38c5d4ff56d36266`](./contracts/ethereum-1/0x81784bd147b141c85ab3a36a38c5d4ff56d36266/) | ✅ Audited |
| SUSDz | unknown | ethereum | n/a | [`0x547213367cfb08ab418e7b54d7883b2c2aa27fd7`](./contracts/ethereum-1/0x547213367cfb08ab418e7b54d7883b2c2aa27fd7/) | ✅ Audited |
| USDz | unknown | ethereum | n/a | [`0xa469b7ee9ee773642b3e93e842e5d9b5baa10067`](./contracts/ethereum-1/0xa469b7ee9ee773642b3e93e842e5d9b5baa10067/) | ✅ Audited |
| Vault | core_logic | manta | n/a | [`0x5a1b8c0e9fe27b9db4913df6b361dea5e96ea129`](./contracts/manta-169/0x5a1b8c0e9fe27b9db4913df6b361dea5e96ea129/) | ✅ Audited |
| VotingEscrowAnzenMainchain | operational_periphery | base | n/a | [`0xa90ed3ec34e78fd26d59f43ed67a7cbff4d11ba2`](./contracts/base-8453/0xa90ed3ec34e78fd26d59f43ed67a7cbff4d11ba2/) | ✅ Audited |

### ⚠️ Verified + Unaudited (28)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AnzenToken | token | base | n/a | 2 deployments: base [`0xd8a8f0f13300e81bf366bd87d972d3521ad48652`](./contracts/base-8453/0xd8a8f0f13300e81bf366bd87d972d3521ad48652/); base `0xeec468333ccc16d4bf1cef497a56cf8c0aae4ca3` | ⚠️ Unaudited |
| SPCTPool | core_logic | ethereum | n/a | [`0xef5aacb3c38a5be7785a361008e27fb0328a62b5`](./contracts/ethereum-1/0xef5aacb3c38a5be7785a361008e27fb0328a62b5/) | ⚠️ Unaudited |
| StakePool | core_logic | base | n/a | 2 deployments: base [`0x5eb20b02baff1dd21ddb42d5dd6c5620ee3f96b8`](./contracts/base-8453/0x5eb20b02baff1dd21ddb42d5dd6c5620ee3f96b8/); base `0x83f27b8edfbc0ddde0c732477a2c8605bb0552f5` | ⚠️ Unaudited |
| USDzVault | core_logic | base | n/a | [`0xa87c9808c0ebe20a1427b5c769623c77201f6f4d`](./contracts/base-8453/0xa87c9808c0ebe20a1427b5c769623c77201f6f4d/) | ⚠️ Unaudited |
| AccessControlledOffchainAggregator | governance | base | n/a | 34 deployments: base [`0x00be872906c07d6d7d0ec3968b99c4e3d6bd552a`](./contracts/base-8453/0x00be872906c07d6d7d0ec3968b99c4e3d6bd552a/); base `0x04d3d700150e03ed1df763363d746f0e9dee3bdd`; base `0x05acfee2c0b4efbbce705932239a30613ace42f2`; base `0x19e6821ee47a4c23e5971febee29f78c2e514dc8`; base `0x233a45bf331b35440d45e9beb1fdf2fbb7b4e3d2`; base `0x29a0bf5d5e677d38f7abbd4d292895a3574796c0`; base `0x43f92e6805196fa6cd7a19f3d769957f95baa261`; base `0x4a61db12d0cb4293d799ecdd82e5994b5746f850`; base `0x4d1d9223b5d6806815506b9ba034dd35390aad68`; base `0x52d743436f6ba414050bd8869c8bf6537c355a00`; base `0x55012ef027ae9b4e2bb5a5f529e5a1184bcc998d`; base `0x63a3b4e2aeea2d1cc883987aec22e9aa88323b3c`; base `0x6f9829a2278a5b017b6e997e2bafcdbcb8d6bc04`; base `0x74f70d08c92f1cd4ed70b9aa3f8edc0ba5496a01`; base `0x801b6e7d186370eee854f76481643c22c7d1da99`; base `0x834ce448a994ca9f4cfe2bf0c6bb5ab7f24b8920`; base `0x84eff9466d371ccab94728e8bdfcd9bc095d7ca6`; base `0x851a369f1c7e3f82a2ae8d75ee94eabfd9781805`; base `0x852ae0b1af1aaedb0fc4428b4b24420780976ca8`; base `0x8eda55983ecbeb28ab02959aa9e7203e24ba8c19`; base `0xa1923f93b032bf2dfedcdfd0da93037d32c39f4d`; base `0xa24aafb9d49d0cf43dcd8a5f2442a30391f494d2`; base `0xa9bdecf007120ebb013e223d2a4eea4c8c35e7f1`; base `0xae4602716079c0be7948c0b84553dee0e6564a3d`; base `0xb76eecece7a7cbf10a55dc4284fb762577ee9e3d`; base `0xbf477e69a0adf91b6e3d6e70cb67e5d1a27e88e3`; base `0xc18cc9b106a50d945024f0a25eff16b6dc56d4b9`; base `0xc2b36eebe261eeec502dfe761ba8cdb0e9bc057b`; base `0xc73b7635630a94a3e9a595741cbb8a3845c27826`; base `0xc95cd3490be4af06f0a25435e21c2c91b988c482`; base `0xcad16df709bfe62d02cde5d4039684fa47dc216c`; base `0xd27766c20df630a7d7e1e5885ae581fb0e61828a`; base `0xec509c1f0791504667972d5ff705ae4bd2db500f`; base `0xf2d85ee7cd9e75f3ffff4b44ade48581d2dbdfdd` | ⚠️ Unaudited |
| AnzenGaugeControllerMainchainUpg | operational_periphery | base | n/a | 2 deployments: base [`0x62cb5b7a0d86a462644e16a311aa1d9ddeacc39a`](./contracts/base-8453/0x62cb5b7a0d86a462644e16a311aa1d9ddeacc39a/); base `0x9f6bc4537b36e57aa4ce769f519b52e42ca58eca` | ⚠️ Unaudited |
| AnzenGenericOFTAdapter | adapter | base | n/a | [`0xdfdc54f14a4783fe8e8ef7de7159744725877c88`](./contracts/base-8453/0xdfdc54f14a4783fe8e8ef7de7159744725877c88/) | ⚠️ Unaudited |
| AnzenLayerZeroAdapter | adapter | manta | n/a | 6 deployments: manta [`0x04d5ddf5f3a8939889f11e97f8c4bb48317f1938`](./contracts/manta-169/0x04d5ddf5f3a8939889f11e97f8c4bb48317f1938/); manta `0xe31ee12bdfdd0573d634124611e85338e2cbf0cf`; base `0x547213367cfb08ab418e7b54d7883b2c2aa27fd7`; arbitrum `0xdd216101d84d513a12cb7bfb109f7abcf330d58e`; blast [`0x04d5ddf5f3a8939889f11e97f8c4bb48317f1938`](./contracts/blast-81457/0x04d5ddf5f3a8939889f11e97f8c4bb48317f1938/); blast `0x5a1b8c0e9fe27b9db4913df6b361dea5e96ea129` | ⚠️ Unaudited |
| AnzenMsgSendEndpointUpg | operational_periphery | base | n/a | 2 deployments: base [`0x22264d999286db15f56ec1f9fac563422cdb76d3`](./contracts/base-8453/0x22264d999286db15f56ec1f9fac563422cdb76d3/); base `0xf72307c115d35555c803cc889b4afd305684201d` | ⚠️ Unaudited |
| AnzenVotingControllerUpg | governance | base | n/a | 2 deployments: base [`0x128ef61fdc9a36240b3372bd226479b66d63db38`](./contracts/base-8453/0x128ef61fdc9a36240b3372bd226479b66d63db38/); base `0xed85dc4a4924ce4554b5afa8f6bcad4420b00ada` | ⚠️ Unaudited |
| ChildsUSDzV2 | unknown | arbitrum | n/a | 4 deployments: manta `0x8f08a3b5bceadef10c0b26c8bb720ebb8fa91758`; base `0xe31ee12bdfdd0573d634124611e85338e2cbf0cf`; arbitrum [`0x1b2c29e3897b8f9170c98440a483e90e715c879d`](./contracts/arbitrum-42161/0x1b2c29e3897b8f9170c98440a483e90e715c879d/); blast `0x73d23f3778a90be8846e172354a115543df2a7e4` | ⚠️ Unaudited |
| ChildUSDzV2 | unknown | arbitrum | n/a | 3 deployments: manta `0x73d23f3778a90be8846e172354a115543df2a7e4`; arbitrum [`0x5018609ab477cc502e170a5accf5312b86a4b94f`](./contracts/arbitrum-42161/0x5018609ab477cc502e170a5accf5312b86a4b94f/); blast `0x52056ed29fe015f4ba2e3b079d10c0b87f46e8c6` | ⚠️ Unaudited |
| EACAggregatorProxy | unknown | base | n/a | 2 deployments: base [`0x64c911996d3c6ac71f9b455b1e8e7266bcbd848f`](./contracts/base-8453/0x64c911996d3c6ac71f9b455b1e8e7266bcbd848f/); base `0x91d7aed72bf772a0da30199b925acb866acd3d9e` | ⚠️ Unaudited |
| GnosisSafeProxy | governance | manta | n/a | 3 deployments: manta [`0x13649b6c7e177ffa373eeeeef485952843147210`](./contracts/manta-169/0x13649b6c7e177ffa373eeeeef485952843147210/); manta `0x18b7d4d572ffbf644cfc2659ed5d2a420e2ad582`; base `0x18b7d4d572ffbf644cfc2659ed5d2a420e2ad582` | ⚠️ Unaudited |
| LockingToken | token | base | n/a | 2 deployments: base [`0x1f48178de8824cc98c911ff1b36a16dd8e20e59d`](./contracts/base-8453/0x1f48178de8824cc98c911ff1b36a16dd8e20e59d/); base `0xbe123709012270431393a12216d4070eaab94064` | ⚠️ Unaudited |
| MerkleRewardDistributor | operational_periphery | base | n/a | 2 deployments: base [`0xe1068bc0a5197540108eade33ed4cc394510ca21`](./contracts/base-8453/0xe1068bc0a5197540108eade33ed4cc394510ca21/); base `0xea4b3e06915805bd4841fda925b0be943668573c` | ⚠️ Unaudited |
| PCTPool | core_logic | ethereum | n/a | [`0xe16f2ec94e8a0819eb93022c45e05d582f4e5c15`](./contracts/ethereum-1/0xe16f2ec94e8a0819eb93022c45e05d582f4e5c15/) | ⚠️ Unaudited |
| ProxyAdmin | governance | base | n/a | [`0x9e48675034056769831e46ce30776289d48c32bb`](./contracts/base-8453/0x9e48675034056769831e46ce30776289d48c32bb/) | ⚠️ Unaudited |
| RewardDistributor | operational_periphery | ethereum | n/a | [`0x663de54432a1d74912c99e7929d2d58a75452170`](./contracts/ethereum-1/0x663de54432a1d74912c99e7929d2d58a75452170/) | ⚠️ Unaudited |
| SafeProxy | unknown | blast | n/a | [`0x08fccc6213cb3843f8d270c4eefc7a09eb32b354`](./contracts/blast-81457/0x08fccc6213cb3843f8d270c4eefc7a09eb32b354/) | ⚠️ Unaudited |
| StakePoolDistributor | operational_periphery | base | n/a | 2 deployments: base [`0x532dbb9ecfea8d80ce1d78bd484266245d7bdebc`](./contracts/base-8453/0x532dbb9ecfea8d80ce1d78bd484266245d7bdebc/); base `0x9ce59db556295713c444e318a5c9e94a7e4d4075` | ⚠️ Unaudited |
| sUSDzOFTAdapter | adapter | ethereum | n/a | [`0x0c0dfff29e449b0a84f78cc7cdbbe0e31fdaf1b7`](./contracts/ethereum-1/0x0c0dfff29e449b0a84f78cc7cdbbe0e31fdaf1b7/) | ⚠️ Unaudited |
| TokenManager | governance | ethereum | n/a | [`0xf6f0a051e4de63d9118a6bc948463a9d08e40a5c`](./contracts/ethereum-1/0xf6f0a051e4de63d9118a6bc948463a9d08e40a5c/) | ⚠️ Unaudited |
| TokenManager | governance | base | n/a | [`0xf6f0a051e4de63d9118a6bc948463a9d08e40a5c`](./contracts/base-8453/0xf6f0a051e4de63d9118a6bc948463a9d08e40a5c/) | ⚠️ Unaudited |
| UsdzMarket | unknown | base | n/a | [`0x8e788484cab6359e65fece14a4d6e510e2efeea5`](./contracts/base-8453/0x8e788484cab6359e65fece14a4d6e510e2efeea5/) | ⚠️ Unaudited |
| VeDistributor | operational_periphery | base | n/a | 2 deployments: base [`0xd2a47ab0bc31facc02e8d999184ae60f546c6921`](./contracts/base-8453/0xd2a47ab0bc31facc02e8d999184ae60f546c6921/); base `0xe4064bcdc2635213dd69c1ff558f6ff67e0164e7` | ⚠️ Unaudited |
| VotingResultBroadcaster | unknown | base | n/a | [`0xa0e160cacde318b059aa8cb69995803e1955206f`](./contracts/base-8453/0xa0e160cacde318b059aa8cb69995803e1955206f/) | ⚠️ Unaudited |
| wPCT | unknown | ethereum | n/a | [`0x414ac1853329b3704df0caf7749cd296c7f3b750`](./contracts/ethereum-1/0x414ac1853329b3704df0caf7749cd296c7f3b750/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (11)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| TokenManager | governance | blast | n/a | `0xf6f0a051e4de63d9118a6bc948463a9d08e40a5c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0dee5d5cf51c92523e8e820a9da99d639c439551` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x900fff3bbf47ded50fd4940d055e1324f38b0d4f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfd9d5d27ea03e7fd5d897f267518a8c396c7b483` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0x08fccc6213cb3843f8d270c4eefc7a09eb32b354` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0x20b15ee712b3c368af48ea5a59430be93a71eb3b` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x52056ed29fe015f4ba2e3b079d10c0b87f46e8c6` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x5a1b8c0e9fe27b9db4913df6b361dea5e96ea129` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x73d23f3778a90be8846e172354a115543df2a7e4` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xca5468757a2791b21663245e44cefaffc98315b7` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xf30a29f1c540724fd8c5c4be1af604a6c6800d29` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Anzen - Halborn Audit Report.pdf](https://github.com/Anzen-Finance/audits/blob/master/Anzen%20-%20Halborn%20Audit%20Report.pdf) | Halborn | Audit | 2024-05 | stale | Direct | contract_name | 4 | n/a |
| [Anzen - PeckShield Audit Report.pdf](https://github.com/Anzen-Finance/audits/blob/master/Anzen%20-%20PeckShield%20Audit%20Report.pdf) | PeckShield | Audit | 2024-04 | stale | Direct | contract_name | 2 | n/a |
| [Anzen - Zellic Audit Report.pdf](https://github.com/Anzen-Finance/audits/blob/master/Anzen%20-%20Zellic%20Audit%20Report.pdf) | Zellic | Audit | 2024-05 | stale | Direct | contract_name | 4 | n/a |
| [Anzen and protocol-v2 - Zellic Audit Report.pdf](https://github.com/Zellic/publications/blob/master/Anzen%20and%20protocol-v2%20-%20Zellic%20Audit%20Report.pdf) | Zellic | Audit | 2024-12 | aging | Direct | contract_name | 2 | n/a |
| [drive.google.com/drive/folders/1xjQkrQJJeMZQldfdnCGaaj5FiGHaGRmm](https://drive.google.com/drive/folders/1xjQkrQJJeMZQldfdnCGaaj5FiGHaGRmm?usp=sharing) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Gudchain - Smart Contract Audit Report.pdf](https://cdn.gudchain.com/documents/Gudchain%20-%20Smart%20Contract%20Audit%20Report.pdf) | Halborn | Audit | 2024-04 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| base | [`0xd8a8f0f13300e81bf366bd87d972d3521ad48652`](./contracts/base-8453/0xd8a8f0f13300e81bf366bd87d972d3521ad48652/) | AnzenToken | token | $446,085.12 | Verified native implementation with $446,085.12 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xef5aacb3c38a5be7785a361008e27fb0328a62b5`](./contracts/ethereum-1/0xef5aacb3c38a5be7785a361008e27fb0328a62b5/) | SPCTPool | core_logic | $6,150.46 | Verified native implementation with $6,150.46 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xa87c9808c0ebe20a1427b5c769623c77201f6f4d`](./contracts/base-8453/0xa87c9808c0ebe20a1427b5c769623c77201f6f4d/) | USDzVault | core_logic | $0.00 | Verified native implementation with $0.00 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x62cb5b7a0d86a462644e16a311aa1d9ddeacc39a`](./contracts/base-8453/0x62cb5b7a0d86a462644e16a311aa1d9ddeacc39a/) | AnzenGaugeControllerMainchainUpg | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xdfdc54f14a4783fe8e8ef7de7159744725877c88`](./contracts/base-8453/0xdfdc54f14a4783fe8e8ef7de7159744725877c88/) | AnzenGenericOFTAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| manta | [`0x04d5ddf5f3a8939889f11e97f8c4bb48317f1938`](./contracts/manta-169/0x04d5ddf5f3a8939889f11e97f8c4bb48317f1938/) | AnzenLayerZeroAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x128ef61fdc9a36240b3372bd226479b66d63db38`](./contracts/base-8453/0x128ef61fdc9a36240b3372bd226479b66d63db38/) | AnzenVotingControllerUpg | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x1b2c29e3897b8f9170c98440a483e90e715c879d`](./contracts/arbitrum-42161/0x1b2c29e3897b8f9170c98440a483e90e715c879d/) | ChildsUSDzV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x5018609ab477cc502e170a5accf5312b86a4b94f`](./contracts/arbitrum-42161/0x5018609ab477cc502e170a5accf5312b86a4b94f/) | ChildUSDzV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xe1068bc0a5197540108eade33ed4cc394510ca21`](./contracts/base-8453/0xe1068bc0a5197540108eade33ed4cc394510ca21/) | MerkleRewardDistributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe16f2ec94e8a0819eb93022c45e05d582f4e5c15`](./contracts/ethereum-1/0xe16f2ec94e8a0819eb93022c45e05d582f4e5c15/) | PCTPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x663de54432a1d74912c99e7929d2d58a75452170`](./contracts/ethereum-1/0x663de54432a1d74912c99e7929d2d58a75452170/) | RewardDistributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x532dbb9ecfea8d80ce1d78bd484266245d7bdebc`](./contracts/base-8453/0x532dbb9ecfea8d80ce1d78bd484266245d7bdebc/) | StakePoolDistributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0c0dfff29e449b0a84f78cc7cdbbe0e31fdaf1b7`](./contracts/ethereum-1/0x0c0dfff29e449b0a84f78cc7cdbbe0e31fdaf1b7/) | sUSDzOFTAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf6f0a051e4de63d9118a6bc948463a9d08e40a5c`](./contracts/ethereum-1/0xf6f0a051e4de63d9118a6bc948463a9d08e40a5c/) | TokenManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x8e788484cab6359e65fece14a4d6e510e2efeea5`](./contracts/base-8453/0x8e788484cab6359e65fece14a4d6e510e2efeea5/) | UsdzMarket | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xa0e160cacde318b059aa8cb69995803e1955206f`](./contracts/base-8453/0xa0e160cacde318b059aa8cb69995803e1955206f/) | VotingResultBroadcaster | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x414ac1853329b3704df0caf7749cd296c7f3b750`](./contracts/ethereum-1/0x414ac1853329b3704df0caf7749cd296c7f3b750/) | wPCT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 25 |
| upstream | 3 |
| standard_library | 7 |
| needs_review | 10 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: contract_name=12

Zero-match audit list:

- [2166] drive.google.com/drive/folders/1xjQkrQJJeMZQldfdnCGaaj5FiGHaGRmm
- [15066] Gudchain - Smart Contract Audit Report.pdf

Fork inheritance lineage and inherited audits are included when available.
