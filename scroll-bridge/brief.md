# Agentic Audit Brief: Scroll Bridge

## Project Overview

- Project: Scroll Bridge (`scroll-bridge`)
- Website: [https://portal.scroll.io/bridge](https://portal.scroll.io/bridge)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:54.668Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-43c7
- Chains: ethereum
- Contract surface: 41 unique implementations (81 raw deployments)
- DeFi Llama TVL: $34,190,403.50
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Canonical Bridge. Structurally: 20 project-authored contract(s) across 1 chain(s); role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 4 functional families. Its contracts share 2 common project-authored base contract(s) (scrollgatewaybase, l1erc20gateway). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 100; live-surface contracts included: 80 (78 live, 2 unknown).
- Excluded by liveness: 20 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 37/38 (97.4%)
- Deployed-live implementations: 39 of 41 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 37/39
- Verified + Unaudited implementations: 2
- Verified by bytecode match: 0
- Unverified implementations: 2
- Unique implementations: 41
- Raw deployments: 81
- Audits discovered: 41 (41 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 23
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-11 (fresh)
- Audit staleness (calendar age): 1 fresh, 6 aging, 33 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 37 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: 81.6% (OpenZeppelin)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| OpenZeppelin | Tier 1 | 31 | 79.5% | 2024-05 |
| unknown | Tier 2 | 28 | 71.8% | 2025-11 |
| Zellic | Tier 2 | 27 | 69.2% | 2024-01 |
| Trails of Bits | Tier 2 | 7 | 17.9% | 2025-07 |
| Scroll (internal) | Tier 2 | 6 | 15.4% | 2025-07 |

## Contract Surface

### ✅ Verified + Audited (37)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| EmptyContract | unknown | ethereum | n/a | 2 deployments: ethereum [`0x8c8fb1...e985e3`](./contracts/ethereum-1/0x8c8fb15e0dbdae91aa426decedfb779c6ae985e3/); ethereum `0xfaf8f7...a8afca` | ✅ Audited |
| EnforcedTxGateway | unknown | ethereum | n/a | [`0x642af4...806318`](./contracts/ethereum-1/0x642af405bf64660665b37977449c9c536b806318/) | ✅ Audited |
| EnforcedTxGateway | unknown | ethereum | n/a | 2 deployments: ethereum [`0x72cacb...9d7a5d`](./contracts/ethereum-1/0x72cacbcfde2d1e19122f8a36a4d6676cd39d7a5d/); ethereum `0x7e87c7...bddbcc` | ✅ Audited |
| L1BatchBridgeGateway | unknown | ethereum | n/a | 2 deployments: ethereum [`0x5bcfd9...852bc4`](./contracts/ethereum-1/0x5bcfd99c34cf7e06fc756f6f5ae7400504852bc4/); ethereum `0x7999cd...1e3233` | ✅ Audited |
| L1CustomERC20Gateway | unknown | ethereum | n/a | 2 deployments: ethereum [`0x40c3c3...6d6c97`](./contracts/ethereum-1/0x40c3c3dea3b7d6d117e6713377144fd8ee6d6c97/); ethereum `0xb2b10a...04b6ff` | ✅ Audited |
| L1CustomERC20Gateway | unknown | ethereum | n/a | 2 deployments: ethereum [`0x67260a...98f515`](./contracts/ethereum-1/0x67260a8b73c5b77b55c1805218a42a7a6f98f515/); ethereum `0xbad002...4c56cb` | ✅ Audited |
| L1CustomERC20Gateway | unknown | ethereum | n/a | [`0x7f512e...781c2c`](./contracts/ethereum-1/0x7f512e2e9dfc4552941d99a5b2405bbcf5781c2c/) | ✅ Audited |
| L1ERC1155Gateway | unknown | ethereum | n/a | 2 deployments: ethereum [`0x244bf7...2f8cd7`](./contracts/ethereum-1/0x244bf7aef29f03916569470a51fa0794b62f8cd7/); ethereum `0xcb4638...863593` | ✅ Audited |
| L1ERC1155Gateway | unknown | ethereum | n/a | 2 deployments: ethereum [`0xb94f7f...d975b6`](./contracts/ethereum-1/0xb94f7f6abcb811c5ac709de14e37590fccd975b6/); ethereum `0xca4635...ffe38e` | ✅ Audited |
| L1ERC721Gateway | unknown | ethereum | n/a | 2 deployments: ethereum [`0x6260af...21554b`](./contracts/ethereum-1/0x6260af48e8948617b8fa17f4e5cea2d21d21554b/); ethereum `0x79f1bf...45a27a` | ✅ Audited |
| L1ERC721Gateway | unknown | ethereum | n/a | 2 deployments: ethereum [`0xd1841c...e392bb`](./contracts/ethereum-1/0xd1841c5756428812233eea78afc17cb2d3e392bb/); ethereum `0xde3be7...323dae` | ✅ Audited |
| L1ETHGateway | unknown | ethereum | n/a | 2 deployments: ethereum [`0x1fcbe0...d5c55d`](./contracts/ethereum-1/0x1fcbe079c4bbab37406dab7dfd35acae37d5c55d/); ethereum `0x546e0b...367b42` | ✅ Audited |
| L1ETHGateway | unknown | ethereum | n/a | 2 deployments: ethereum [`0x1fee6a...b2a1d0`](./contracts/ethereum-1/0x1fee6a6dc49095fb9c84d61aa4b8a07284b2a1d0/); ethereum `0x7f2b8c...e3e905` | ✅ Audited |
| L1GatewayRouter | unknown | ethereum | n/a | 2 deployments: ethereum [`0xb93ac0...f798f3`](./contracts/ethereum-1/0xb93ac04010bd61f45bf492022a5b49a902f798f3/); ethereum `0xf8b137...e41fd6` | ✅ Audited |
| L1LidoGateway | unknown | ethereum | n/a | [`0x6625c6...a3f504`](./contracts/ethereum-1/0x6625c6332c9f91f2d27c304e729b86db87a3f504/) | ✅ Audited |
| L1MessageQueue | unknown | ethereum | n/a | [`0xbc9d74...adcf8f`](./contracts/ethereum-1/0xbc9d741501a20f962756c95bf906b4abffadcf8f/) | ✅ Audited |
| L1MessageQueueV2 | unknown | ethereum | n/a | 2 deployments: ethereum [`0x39c36c...052eca`](./contracts/ethereum-1/0x39c36c9026ac18104839a50c61a4507ea5052eca/); ethereum `0x56971d...c2d18a` | ✅ Audited |
| L1MessageQueueV2 | unknown | ethereum | n/a | [`0xefa158...38591d`](./contracts/ethereum-1/0xefa158006b072793a49e622b26761cd0ec38591d/) | ✅ Audited |
| L1MessageQueueWithGasPriceOracle | unknown | ethereum | n/a | 2 deployments: ethereum [`0x0d7e90...39af9b`](./contracts/ethereum-1/0x0d7e906bd9cafa154b048cfa766cc1e54e39af9b/); ethereum `0x137cc5...07b374` | ✅ Audited |
| L1MessageQueueWithGasPriceOracle | unknown | ethereum | n/a | [`0xebaed7...448e01`](./contracts/ethereum-1/0xebaed7a81c298b24ee6d59c22698a951dc448e01/) | ✅ Audited |
| L1ScrollMessenger | unknown | ethereum | n/a | 2 deployments: ethereum [`0x6774bc...d8b367`](./contracts/ethereum-1/0x6774bcbd5cecef1336b5300fb5186a12ddd8b367/); ethereum `0x79b6ea...dcbf69` | ✅ Audited |
| L1ScrollMessenger | unknown | ethereum | n/a | 3 deployments: ethereum [`0x72981f...a37fb6`](./contracts/ethereum-1/0x72981fd00087ff4f60abfde9f353cb1912a37fb6/); ethereum `0xaf2f89...e37845`; ethereum `0xc63261...cff868` | ✅ Audited |
| L1StandardERC20Gateway | unknown | ethereum | n/a | 2 deployments: ethereum [`0x4015fc...f6239c`](./contracts/ethereum-1/0x4015fc868c06689abeba4a9dc8fa43b804f6239c/); ethereum `0x921873...63564a` | ✅ Audited |
| L1StandardERC20Gateway | unknown | ethereum | n/a | 2 deployments: ethereum [`0xd8a791...b3f8f9`](./contracts/ethereum-1/0xd8a791fe2be73eb6e6cf1eb0cb3f36adc9b3f8f9/); ethereum `0xff8238...8c0ee9` | ✅ Audited |
| L1USDCGateway | unknown | ethereum | n/a | 2 deployments: ethereum [`0x4a5810...2b5432`](./contracts/ethereum-1/0x4a5810f71b6836027c26c25bff9708dfcd2b5432/); ethereum `0xbc4b3d...5247d2` | ✅ Audited |
| L1USDCGateway | unknown | ethereum | n/a | 2 deployments: ethereum [`0x56ce8a...2aff5e`](./contracts/ethereum-1/0x56ce8a8e8399f6cd5e7e4f549e8bfd673f2aff5e/); ethereum `0xf1af3b...9a5c7b` | ✅ Audited |
| L1USDCGateway | unknown | ethereum | n/a | 2 deployments: ethereum [`0x666712...953aa8`](./contracts/ethereum-1/0x6667123b5017aab9945f73345848b82d7a953aa8/); ethereum `0xea2e80...432ea3` | ✅ Audited |
| L1WETHGateway | unknown | ethereum | n/a | 2 deployments: ethereum [`0x7ac440...a9d4fe`](./contracts/ethereum-1/0x7ac440cae8eb6328de4fa621163a792c1ea9d4fe/); ethereum `0xe25eff...a86c24` | ✅ Audited |
| L1WETHGateway | unknown | ethereum | n/a | 2 deployments: ethereum [`0xa4f400...b9fb49`](./contracts/ethereum-1/0xa4f400593dffc0ae02f940ab58f6e3cc6fb9fb49/); ethereum `0xd3c421...7ca307` | ✅ Audited |
| L2GasPriceOracle | unknown | ethereum | n/a | 2 deployments: ethereum [`0x987e30...c33852`](./contracts/ethereum-1/0x987e300fdfb06093859358522a79098848c33852/); ethereum `0xfdf1ee...1a4e9e` | ✅ Audited |
| MultipleVersionRollupVerifier | unknown | ethereum | n/a | 4 deployments: ethereum [`0x1ea29d...8998f6`](./contracts/ethereum-1/0x1ea29d57dac237152d878758bae4beb2668998f6/); ethereum `0x4cea3e...4ead3f`; ethereum `0xa2ab52...ef32a0`; ethereum `0xf94afb...a2416b` | ✅ Audited |
| PauseController | unknown | ethereum | n/a | 2 deployments: ethereum [`0x22e5c2...dc83e7`](./contracts/ethereum-1/0x22e5c20bb540d68f43a6790927fab8e4fbdc83e7/); ethereum `0x8717b1...265afe` | ✅ Audited |
| PauseController | unknown | ethereum | n/a | 2 deployments: ethereum [`0x57e26d...41d98d`](./contracts/ethereum-1/0x57e26d997852e7e94915e250446c3bf43f41d98d/); ethereum `0xb8f7ea...229d8b` | ✅ Audited |
| ScrollChain | unknown | ethereum | n/a | 2 deployments: ethereum [`0x0a2070...8c3ba7`](./contracts/ethereum-1/0x0a20703878e68e587c59204cc0ea86098b8c3ba7/); ethereum `0xa13baf...c1e556` | ✅ Audited |
| ScrollChain | unknown | ethereum | n/a | 8 deployments: ethereum [`0x2e07f0...51d75f`](./contracts/ethereum-1/0x2e07f0fba71709bb5e1f045b02152e45b451d75f/); ethereum `0x39ef2c...2ca612`; ethereum `0x4f250b...5c628a`; ethereum `0x8f3392...db538f`; ethereum `0x9bb163...02d25f`; ethereum `0xaa6d0f...93cac8`; ethereum `0xb7c883...dce43f`; ethereum `0xfa1485...75539c` | ✅ Audited |
| ScrollOwner | unknown | ethereum | n/a | [`0x798576...7a26a6`](./contracts/ethereum-1/0x798576400f7d662961ba15c6b3f3d813447a26a6/) | ✅ Audited |
| ZkEvmVerifierPostFeynman | periphery | ethereum | n/a | [`0xa8d470...21f485`](./contracts/ethereum-1/0xa8d4702aa5c09af5dd1323e1842a43789021f485/) | ✅ Audited |

### ⚠️ Verified + Unaudited (2)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| ProxyAdmin | unknown | ethereum | n/a | 2 deployments: ethereum [`0xcc2c53...2628a9`](./contracts/ethereum-1/0xcc2c53556bc75217cf698721b29071d6f12628a9/); ethereum `0xeb803e...59d072` | ⚠️ Unaudited |
| SystemConfig | unknown | ethereum | n/a | 2 deployments: ethereum [`0x843272...6c7a4d`](./contracts/ethereum-1/0x8432728a257646449245558b8b7dbe51a16c7a4d/); ethereum `0xf15a4b...515eee` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (2)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x350817...1ae63e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x47a499...8a9033` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [202307 Scroll Layer 1 Audit Report.pdf](https://github.com/scroll-tech/scroll-audits/blob/main/Bridge%20and%20rollup%20contract/202307%20Scroll%20Layer%201%20Audit%20Report.pdf) | OpenZeppelin | Audit | 2023-07 | stale | Direct | contract_name | 48 | high |
| [202307 Scroll Layer 2 Audit Report.pdf](https://github.com/scroll-tech/scroll-audits/blob/main/Bridge%20and%20rollup%20contract/202307%20Scroll%20Layer%202%20Audit%20Report.pdf) | OpenZeppelin | Audit | 2023-07 | stale | Direct | contract_name | 0 | n/a |
| [202308 Scroll GasSwap, Multiple Verifier, Wrapped Ether and Diff Final Audit Report.pdf (also discovered via alternate URL)](https://github.com/scroll-tech/scroll-audits/blob/main/Bridge%20and%20rollup%20contract/202308%20Scroll%20GasSwap,%20Multiple%20Verifier,%20Wrapped%20Ether%20and%20Diff%20Final%20Audit%20Report.pdf) | OpenZeppelin | Audit | 2023-08 | stale | Direct | contract_name | 56 | high |
| [202309 ScrollOwner and Rate Limiter Audit.pdf](https://github.com/scroll-tech/scroll-audits/blob/main/Bridge%20and%20rollup%20contract/202309%20ScrollOwner%20and%20Rate%20Limiter%20Audit.pdf) | OpenZeppelin | Audit | 2023-09 | stale | Direct | contract_name | 10 | high |
| [202309 Scroll USDC Gateway Audit Report.pdf](https://github.com/scroll-tech/scroll-audits/blob/main/Bridge%20and%20rollup%20contract/202309%20Scroll%20USDC%20Gateway%20Audit%20Report.pdf) | OpenZeppelin | Audit | 2023-09 | stale | Direct | contract_name | 6 | high |
| [202309 Scroll Diff Audit Report.pdf](https://github.com/scroll-tech/scroll-audits/blob/main/Bridge%20and%20rollup%20contract/202309%20Scroll%20Diff%20Audit%20Report.pdf) | OpenZeppelin | Audit | 2023-09 | stale | Direct | contract_name | 11 | high |
| [Scroll - Bridge Gas Optimizations Audit Report (Feb 2024).pdf](https://github.com/scroll-tech/scroll-audits/blob/main/Bridge%20and%20rollup%20contract/Scroll%20-%20Bridge%20Gas%20Optimizations%20Audit%20Report%20(Feb%202024).pdf) | OpenZeppelin | Audit | 2024-02 | stale | Direct | contract_name | 56 | high |
| [blog.openzeppelin.com/scroll-batch-token-bridge-audit](https://blog.openzeppelin.com/scroll-batch-token-bridge-audit) | OpenZeppelin | Audit | 2024-05 | stale | Direct | contract_name | 2 | high |
| [blog.openzeppelin.com/scroll-eip-4844-support-audit](https://blog.openzeppelin.com/scroll-eip-4844-support-audit) | OpenZeppelin | Audit | 2024-04 | stale | Direct | contract_name | 14 | high |
| [Scroll - 05.26.23 Zellic Audit Report.pdf](https://github.com/scroll-tech/scroll-audits/blob/main/Bridge%20and%20rollup%20contract/Scroll%20-%2005.26.23%20Zellic%20Audit%20Report.pdf) | Zellic | Audit | 2023-05 | stale | Direct | contract_name | 45 | high |
| [Scroll - 09.27.23 Zellic Audit Report.pdf](https://github.com/scroll-tech/scroll-audits/blob/main/Bridge%20and%20rollup%20contract/Scroll%20-%2009.27.23%20Zellic%20Audit%20Report.pdf) | Zellic | Audit | 2023-09 | stale | Direct | contract_name | 50 | high |
| [Scroll Lido Gateway - Zellic Audit Report.pdf](https://github.com/scroll-tech/scroll-audits/blob/main/Bridge%20and%20rollup%20contract/Scroll%20Lido%20Gateway%20-%20Zellic%20Audit%20Report.pdf) | Zellic | Audit | 2024-01 | stale | Direct | contract_name | 1 | high |
| [Manual audit seed](https://docs.scroll.io/en/technology/security/audits-and-bug-bounty) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [2023-04-scroll-zkEVM-wave1-securityreview (1).pdf](https://github.com/scroll-tech/scroll-audits/blob/main/zkEVM%20circuits/2023-04-scroll-zkEVM-wave1-securityreview%20(1).pdf) | unknown | Audit | 2023-04 | stale | Direct | n/a | 0 | n/a |
| [2023-08-scroll-zkEVM-wave2-securityreview.pdf](https://github.com/scroll-tech/scroll-audits/blob/main/zkEVM%20circuits/2023-08-scroll-zkEVM-wave2-securityreview.pdf) | unknown | Audit | 2023-08 | stale | Direct | n/a | 0 | n/a |
| [2023-09-scroll-zkEVM-wave3-securityreview.pdf](https://github.com/scroll-tech/scroll-audits/blob/main/zkEVM%20circuits/2023-09-scroll-zkEVM-wave3-securityreview.pdf) | unknown | Audit | 2023-09 | stale | Direct | n/a | 0 | n/a |
| [2024-04-scroll-4844-blob-securityreview.pdf](https://github.com/scroll-tech/scroll-audits/blob/main/zkEVM%20circuits/2024-04-scroll-4844-blob-securityreview.pdf) | unknown | Audit | 2024-04 | stale | Direct | n/a | 0 | n/a |
| [Scroll zkEVM - Part 1 - Audit Report.pdf](https://github.com/scroll-tech/scroll-audits/blob/main/zkEVM%20circuits/Scroll%20zkEVM%20-%20Part%201%20-%20Audit%20Report.pdf) | unknown | Audit | 2023-05 | stale | Direct | n/a | 0 | n/a |
| [Scroll zkEVM - Part 2 - Audit Report.pdf](https://github.com/scroll-tech/scroll-audits/blob/main/zkEVM%20circuits/Scroll%20zkEVM%20-%20Part%202%20-%20Audit%20Report.pdf) | unknown | Audit | 2023-07 | stale | Direct | n/a | 0 | n/a |
| [2023-07-scroll-zktrie-securityreview.pdf](https://github.com/scroll-tech/scroll-audits/blob/main/Node%20implementation/2023-07-scroll-zktrie-securityreview.pdf) | unknown | Audit | 2023-07 | stale | Direct | n/a | 0 | n/a |
| [2023-08-scrollL2geth-initial-securityreview.pdf](https://github.com/scroll-tech/scroll-audits/blob/main/Node%20implementation/2023-08-scrollL2geth-initial-securityreview.pdf) | unknown | Audit | 2023-08 | stale | Direct | n/a | 0 | n/a |
| [2023-08-scrollL2geth-securityreview.pdf](https://github.com/scroll-tech/scroll-audits/blob/main/Node%20implementation/2023-08-scrollL2geth-securityreview.pdf) | unknown | Audit | 2023-08 | stale | Direct | n/a | 0 | n/a |
| [Manual audit seed](https://www.openzeppelin.com/news/scroll-eip-4844-support-audit) | OpenZeppelin | Audit | 2024-04 | stale | Direct | contract_name | 14 | high |
| [Manual audit seed](https://www.openzeppelin.com/news/scroll-batch-token-bridge-audit) | OpenZeppelin | Audit | 2024-05 | stale | Direct | contract_name | 2 | high |
| [OpenZeppelin](https://www.openzeppelin.com/news/scroll-zktrieverifier-audit) | OpenZeppelin | Audit | 2024-03 | stale | Direct | contract_name | 0 | n/a |
| [2025-04-scroll-euclid-phase1-securityreview.pdf](https://github.com/scroll-tech/scroll-audits/blob/main/Euclid%20Upgrade/2025-04-scroll-euclid-phase1-securityreview.pdf) | Scroll (internal) | Audit | 2025-04 | aging | Direct | contract_name | 10 | high |
| [2025-04-scroll-euclid-phase2-securityreview.pdf](https://github.com/scroll-tech/scroll-audits/blob/main/Euclid%20Upgrade/2025-04-scroll-euclid-phase2-securityreview.pdf) | Scroll (internal) | Audit | 2025-04 | aging | Direct | contract_name | 16 | high |
| [Feynman-Upgrade-Trails-of-Bits.pdf](https://github.com/scroll-tech/scroll-audits/blob/main/Feynman%20Upgrade/Feynman-Upgrade-Trails-of-Bits.pdf) | Trails of Bits | Audit | 2025-07 | aging | Direct | contract_name | 20 | high |
| [Internal-Audit-Scroll-Final-Report.pdf](https://github.com/scroll-tech/scroll-audits/blob/main/Feynman%20Upgrade/Internal-Audit-Scroll-Final-Report.pdf) | Scroll (Internal) | Audit | 2025-07 | aging | Direct | n/a | 0 | n/a |
| [202402 Bridge Gas Optimizations Audit Report.pdf](https://github.com/scroll-tech/scroll-audits/blob/main/Bridge%20and%20rollup%20contract/202402%20Bridge%20Gas%20Optimizations%20Audit%20Report.pdf) | unknown | Audit | 2024-02 | stale | Direct | contract_name | 56 | high |
| [Batch Token Bridge Audit-open-access.pdf](https://github.com/scroll-tech/scroll-audits/blob/main/Bridge%20and%20rollup%20contract/Batch%20Token%20Bridge%20Audit-open-access.pdf) | unknown | Audit | 2024-05 | stale | Direct | contract_name | 2 | high |
| [EIP-4844 Support Audit-open-access.pdf](https://github.com/scroll-tech/scroll-audits/blob/main/Bridge%20and%20rollup%20contract/EIP-4844%20Support%20Audit-open-access.pdf) | unknown | Audit | 2024-04 | stale | Direct | contract_name | 14 | high |
| [Scroll ZKTrieVerifier Audit-open-access.pdf](https://github.com/scroll-tech/scroll-audits/blob/main/Bridge%20and%20rollup%20contract/Scroll%20ZKTrieVerifier%20Audit-open-access.pdf) | unknown | Audit | 2024-03 | stale | Direct | contract_name | 0 | n/a |
| [2025-03-trailofbits-euclid-phase1-letter-of-attestation.pdf](https://github.com/scroll-tech/scroll-audits/blob/main/Euclid%20Upgrade/2025-03-trailofbits-euclid-phase1-letter-of-attestation.pdf) | Trail of Bits | Audit | 2025-03 | aging | Direct | n/a | 0 | n/a |
| [2025-03-trailofbits-euclid-phase2-letter-of-attestation.pdf](https://github.com/scroll-tech/scroll-audits/blob/main/Euclid%20Upgrade/2025-03-trailofbits-euclid-phase2-letter-of-attestation.pdf) | Trail of Bits | Audit | 2025-03 | aging | Direct | n/a | 0 | n/a |
| [Galileo_Final_Report.pdf](https://github.com/scroll-tech/scroll-audits/blob/main/Galileo%20Upgrade/Galileo_Final_Report.pdf) | unknown | Audit | 2025-11 | fresh | Direct | n/a | 0 | n/a |
| [1](https://www.openzeppelin.com/news/scroll-phase-1-audit) | OpenZeppelin | Audit | 2023-10 | stale | Direct | contract_name | 48 | high |
| [2](https://www.openzeppelin.com/news/scroll-phase-2-audit) | OpenZeppelin | Audit | 2023-10 | stale | Direct | contract_name | 0 | n/a |
| [3](https://www.openzeppelin.com/news/scroll-gasswap-multiple-verifier-wrapped-ether-and-diff-audit) | OpenZeppelin | Audit | 2023-10 | stale | Direct | contract_name | 56 | high |
| [4](https://www.openzeppelin.com/news/scrollowner-and-rate-limiter-audit) | OpenZeppelin | Audit | 2023-10 | stale | Direct | contract_name | 10 | high |
| [5](https://www.openzeppelin.com/news/scroll-usdc-gateway-audit) | OpenZeppelin | Audit | 2023-10 | stale | Direct | contract_name | 6 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x843272...6c7a4d`](./contracts/ethereum-1/0x8432728a257646449245558b8b7dbe51a16c7a4d/) | SystemConfig | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 38 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 2 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 18
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=23
- Match method counts: extraction_exact=613

Zero-match audit list:

- [21268] 202307 Scroll Layer 2 Audit Report.pdf
- [24406] Manual audit seed
- [24407] 2023-04-scroll-zkEVM-wave1-securityreview (1).pdf
- [24408] 2023-08-scroll-zkEVM-wave2-securityreview.pdf
- [24409] 2023-09-scroll-zkEVM-wave3-securityreview.pdf
- [24410] 2024-04-scroll-4844-blob-securityreview.pdf
- [24411] Scroll zkEVM - Part 1 - Audit Report.pdf
- [24412] Scroll zkEVM - Part 2 - Audit Report.pdf
- [24413] 2023-07-scroll-zktrie-securityreview.pdf
- [24414] 2023-08-scrollL2geth-initial-securityreview.pdf
- [24415] 2023-08-scrollL2geth-securityreview.pdf
- [24428] OpenZeppelin
- [24432] Internal-Audit-Scroll-Final-Report.pdf
- [24437] Scroll ZKTrieVerifier Audit-open-access.pdf
- [24438] 2025-03-trailofbits-euclid-phase1-letter-of-attestation.pdf
- [24439] 2025-03-trailofbits-euclid-phase2-letter-of-attestation.pdf
- [24440] Galileo_Final_Report.pdf
- [24442] 2

Fork inheritance lineage and inherited audits are included when available.
