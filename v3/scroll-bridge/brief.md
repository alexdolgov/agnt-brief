# Agentic Audit Brief: Scroll Bridge

## Project Overview

- Project: Scroll Bridge (`scroll-bridge`)
- Website: [https://portal.scroll.io/bridge](https://portal.scroll.io/bridge)
- Lifecycle: unknown
- Generated: 2026-07-03T21:06:52.857Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-43c7
- Chains: ethereum
- Contract surface: 27 unique implementations (49 raw deployments)
- DeFi Llama TVL: $34,190,403.50
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Canonical Bridge. Structurally: 20 project-authored contract(s) across 1 chain(s); role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 4 functional families. Its contracts share 2 common project-authored base contract(s) (scrollgatewaybase, l1erc20gateway). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 98; live-surface contracts included: 28 (26 live, 2 unknown).
- Excluded by liveness: 70 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/25 (0.0%)
- Deployed-live implementations: 25 of 27 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/25
- Verified + Unaudited implementations: 25
- Verified by bytecode match: 0
- Unverified implementations: 2
- Unique implementations: 27
- Raw deployments: 49
- Audits discovered: 41 (41 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-11 (fresh)
- Audit staleness (calendar age): 1 fresh, 5 aging, 16 stale, 19 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (25)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| EmptyContract | unknown | ethereum | n/a | 2 deployments: ethereum [`0x8c8fb1...e985e3`](./contracts/ethereum-1/0x8c8fb15e0dbdae91aa426decedfb779c6ae985e3/); ethereum `0xfaf8f7...a8afca` | ⚠️ Unaudited |
| EnforcedTxGateway | unknown | ethereum | n/a | 2 deployments: ethereum [`0x72cacb...9d7a5d`](./contracts/ethereum-1/0x72cacbcfde2d1e19122f8a36a4d6676cd39d7a5d/); ethereum `0x7e87c7...bddbcc` | ⚠️ Unaudited |
| L1BatchBridgeGateway | unknown | ethereum | n/a | 2 deployments: ethereum [`0x5bcfd9...852bc4`](./contracts/ethereum-1/0x5bcfd99c34cf7e06fc756f6f5ae7400504852bc4/); ethereum `0x7999cd...1e3233` | ⚠️ Unaudited |
| L1CustomERC20Gateway | unknown | ethereum | n/a | 2 deployments: ethereum [`0x40c3c3...6d6c97`](./contracts/ethereum-1/0x40c3c3dea3b7d6d117e6713377144fd8ee6d6c97/); ethereum `0xb2b10a...04b6ff` | ⚠️ Unaudited |
| L1CustomERC20Gateway | unknown | ethereum | n/a | 2 deployments: ethereum [`0x67260a...98f515`](./contracts/ethereum-1/0x67260a8b73c5b77b55c1805218a42a7a6f98f515/); ethereum `0xbad002...4c56cb` | ⚠️ Unaudited |
| L1ERC1155Gateway | unknown | ethereum | n/a | 2 deployments: ethereum [`0xb94f7f...d975b6`](./contracts/ethereum-1/0xb94f7f6abcb811c5ac709de14e37590fccd975b6/); ethereum `0xca4635...ffe38e` | ⚠️ Unaudited |
| L1ERC721Gateway | unknown | ethereum | n/a | 2 deployments: ethereum [`0x6260af...21554b`](./contracts/ethereum-1/0x6260af48e8948617b8fa17f4e5cea2d21d21554b/); ethereum `0x79f1bf...45a27a` | ⚠️ Unaudited |
| L1ETHGateway | unknown | ethereum | n/a | 2 deployments: ethereum [`0x1fee6a...b2a1d0`](./contracts/ethereum-1/0x1fee6a6dc49095fb9c84d61aa4b8a07284b2a1d0/); ethereum `0x7f2b8c...e3e905` | ⚠️ Unaudited |
| L1GatewayRouter | unknown | ethereum | n/a | 2 deployments: ethereum [`0xb93ac0...f798f3`](./contracts/ethereum-1/0xb93ac04010bd61f45bf492022a5b49a902f798f3/); ethereum `0xf8b137...e41fd6` | ⚠️ Unaudited |
| L1LidoGateway | unknown | ethereum | n/a | [`0x6625c6...a3f504`](./contracts/ethereum-1/0x6625c6332c9f91f2d27c304e729b86db87a3f504/) | ⚠️ Unaudited |
| L1MessageQueueV2 | unknown | ethereum | n/a | 2 deployments: ethereum [`0x39c36c...052eca`](./contracts/ethereum-1/0x39c36c9026ac18104839a50c61a4507ea5052eca/); ethereum `0x56971d...c2d18a` | ⚠️ Unaudited |
| L1MessageQueueWithGasPriceOracle | unknown | ethereum | n/a | 2 deployments: ethereum [`0x0d7e90...39af9b`](./contracts/ethereum-1/0x0d7e906bd9cafa154b048cfa766cc1e54e39af9b/); ethereum `0x137cc5...07b374` | ⚠️ Unaudited |
| L1ScrollMessenger | unknown | ethereum | n/a | 2 deployments: ethereum [`0x6774bc...d8b367`](./contracts/ethereum-1/0x6774bcbd5cecef1336b5300fb5186a12ddd8b367/); ethereum `0x79b6ea...dcbf69` | ⚠️ Unaudited |
| L1StandardERC20Gateway | unknown | ethereum | n/a | 2 deployments: ethereum [`0xd8a791...b3f8f9`](./contracts/ethereum-1/0xd8a791fe2be73eb6e6cf1eb0cb3f36adc9b3f8f9/); ethereum `0xff8238...8c0ee9` | ⚠️ Unaudited |
| L1USDCGateway | unknown | ethereum | n/a | 2 deployments: ethereum [`0x4a5810...2b5432`](./contracts/ethereum-1/0x4a5810f71b6836027c26c25bff9708dfcd2b5432/); ethereum `0xbc4b3d...5247d2` | ⚠️ Unaudited |
| L1USDCGateway | unknown | ethereum | n/a | 2 deployments: ethereum [`0x56ce8a...2aff5e`](./contracts/ethereum-1/0x56ce8a8e8399f6cd5e7e4f549e8bfd673f2aff5e/); ethereum `0xf1af3b...9a5c7b` | ⚠️ Unaudited |
| L1USDCGateway | unknown | ethereum | n/a | [`0xea2e80...432ea3`](./contracts/ethereum-1/0xea2e804ff5291ca423dfeff486b9a91ae4432ea3/) | ⚠️ Unaudited |
| L1WETHGateway | unknown | ethereum | n/a | 2 deployments: ethereum [`0x7ac440...a9d4fe`](./contracts/ethereum-1/0x7ac440cae8eb6328de4fa621163a792c1ea9d4fe/); ethereum `0xe25eff...a86c24` | ⚠️ Unaudited |
| L2GasPriceOracle | unknown | ethereum | n/a | 2 deployments: ethereum [`0x987e30...c33852`](./contracts/ethereum-1/0x987e300fdfb06093859358522a79098848c33852/); ethereum `0xfdf1ee...1a4e9e` | ⚠️ Unaudited |
| PauseController | unknown | ethereum | n/a | 2 deployments: ethereum [`0x22e5c2...dc83e7`](./contracts/ethereum-1/0x22e5c20bb540d68f43a6790927fab8e4fbdc83e7/); ethereum `0x8717b1...265afe` | ⚠️ Unaudited |
| PauseController | unknown | ethereum | n/a | 2 deployments: ethereum [`0x57e26d...41d98d`](./contracts/ethereum-1/0x57e26d997852e7e94915e250446c3bf43f41d98d/); ethereum `0xb8f7ea...229d8b` | ⚠️ Unaudited |
| ProxyAdmin | unknown | ethereum | n/a | 2 deployments: ethereum [`0xcc2c53...2628a9`](./contracts/ethereum-1/0xcc2c53556bc75217cf698721b29071d6f12628a9/); ethereum `0xeb803e...59d072` | ⚠️ Unaudited |
| ScrollChain | unknown | ethereum | n/a | 2 deployments: ethereum [`0x0a2070...8c3ba7`](./contracts/ethereum-1/0x0a20703878e68e587c59204cc0ea86098b8c3ba7/); ethereum `0xa13baf...c1e556` | ⚠️ Unaudited |
| SystemConfig | unknown | ethereum | n/a | 2 deployments: ethereum [`0x843272...6c7a4d`](./contracts/ethereum-1/0x8432728a257646449245558b8b7dbe51a16c7a4d/); ethereum `0xf15a4b...515eee` | ⚠️ Unaudited |
| ZkEvmVerifierPostFeynman | periphery | ethereum | n/a | [`0xa8d470...21f485`](./contracts/ethereum-1/0xa8d4702aa5c09af5dd1323e1842a43789021f485/) | ⚠️ Unaudited |

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
| [202307 Scroll Layer 1 Audit Report.pdf](https://github.com/scroll-tech/scroll-audits/blob/main/Bridge%20and%20rollup%20contract/202307%20Scroll%20Layer%201%20Audit%20Report.pdf) | OpenZeppelin | Audit | 2023-07 | stale | Direct | n/a | 0 | n/a |
| [202307 Scroll Layer 2 Audit Report.pdf](https://github.com/scroll-tech/scroll-audits/blob/main/Bridge%20and%20rollup%20contract/202307%20Scroll%20Layer%202%20Audit%20Report.pdf) | OpenZeppelin | Audit | 2023-07 | stale | Direct | n/a | 0 | n/a |
| [202308 Scroll GasSwap, Multiple Verifier, Wrapped Ether and Diff Final Audit Report.pdf (also discovered via alternate URL)](https://github.com/scroll-tech/scroll-audits/blob/main/Bridge%20and%20rollup%20contract/202308%20Scroll%20GasSwap,%20Multiple%20Verifier,%20Wrapped%20Ether%20and%20Diff%20Final%20Audit%20Report.pdf) | OpenZeppelin | Audit | 2023-08 | stale | Direct | n/a | 0 | n/a |
| [202309 ScrollOwner and Rate Limiter Audit.pdf](https://github.com/scroll-tech/scroll-audits/blob/main/Bridge%20and%20rollup%20contract/202309%20ScrollOwner%20and%20Rate%20Limiter%20Audit.pdf) | OpenZeppelin | Audit | 2023-09 | stale | Direct | n/a | 0 | n/a |
| [202309 Scroll USDC Gateway Audit Report.pdf](https://github.com/scroll-tech/scroll-audits/blob/main/Bridge%20and%20rollup%20contract/202309%20Scroll%20USDC%20Gateway%20Audit%20Report.pdf) | OpenZeppelin | Audit | 2023-09 | stale | Direct | n/a | 0 | n/a |
| [202309 Scroll Diff Audit Report.pdf](https://github.com/scroll-tech/scroll-audits/blob/main/Bridge%20and%20rollup%20contract/202309%20Scroll%20Diff%20Audit%20Report.pdf) | OpenZeppelin | Audit | 2023-09 | stale | Direct | n/a | 0 | n/a |
| [Scroll - Bridge Gas Optimizations Audit Report (Feb 2024).pdf](https://github.com/scroll-tech/scroll-audits/blob/main/Bridge%20and%20rollup%20contract/Scroll%20-%20Bridge%20Gas%20Optimizations%20Audit%20Report%20(Feb%202024).pdf) | OpenZeppelin | Audit | 2024-02 | stale | Direct | n/a | 0 | n/a |
| [blog.openzeppelin.com/scroll-batch-token-bridge-audit](https://blog.openzeppelin.com/scroll-batch-token-bridge-audit) | OpenZeppelin | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [blog.openzeppelin.com/scroll-eip-4844-support-audit](https://blog.openzeppelin.com/scroll-eip-4844-support-audit) | OpenZeppelin | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Scroll - 05.26.23 Zellic Audit Report.pdf](https://github.com/scroll-tech/scroll-audits/blob/main/Bridge%20and%20rollup%20contract/Scroll%20-%2005.26.23%20Zellic%20Audit%20Report.pdf) | Zellic | Audit | 2023-05 | stale | Direct | n/a | 0 | n/a |
| [Scroll - 09.27.23 Zellic Audit Report.pdf](https://github.com/scroll-tech/scroll-audits/blob/main/Bridge%20and%20rollup%20contract/Scroll%20-%2009.27.23%20Zellic%20Audit%20Report.pdf) | Zellic | Audit | 2023-09 | stale | Direct | n/a | 0 | n/a |
| [Scroll Lido Gateway - Zellic Audit Report.pdf](https://github.com/scroll-tech/scroll-audits/blob/main/Bridge%20and%20rollup%20contract/Scroll%20Lido%20Gateway%20-%20Zellic%20Audit%20Report.pdf) | Zellic | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Manual audit seed](https://docs.scroll.io/en/technology/security/audits-and-bug-bounty) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [2023-04-scroll-zkEVM-wave1-securityreview (1).pdf](https://github.com/scroll-tech/scroll-audits/blob/main/zkEVM%20circuits/2023-04-scroll-zkEVM-wave1-securityreview%20(1).pdf) | unknown | Audit | 2023-04 | stale | Direct | n/a | 0 | n/a |
| [2023-08-scroll-zkEVM-wave2-securityreview.pdf](https://github.com/scroll-tech/scroll-audits/blob/main/zkEVM%20circuits/2023-08-scroll-zkEVM-wave2-securityreview.pdf) | unknown | Audit | 2023-08 | stale | Direct | n/a | 0 | n/a |
| [2023-09-scroll-zkEVM-wave3-securityreview.pdf](https://github.com/scroll-tech/scroll-audits/blob/main/zkEVM%20circuits/2023-09-scroll-zkEVM-wave3-securityreview.pdf) | unknown | Audit | 2023-09 | stale | Direct | n/a | 0 | n/a |
| [2024-04-scroll-4844-blob-securityreview.pdf](https://github.com/scroll-tech/scroll-audits/blob/main/zkEVM%20circuits/2024-04-scroll-4844-blob-securityreview.pdf) | unknown | Audit | 2024-04 | stale | Direct | n/a | 0 | n/a |
| [Scroll zkEVM - Part 1 - Audit Report.pdf](https://github.com/scroll-tech/scroll-audits/blob/main/zkEVM%20circuits/Scroll%20zkEVM%20-%20Part%201%20-%20Audit%20Report.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Scroll zkEVM - Part 2 - Audit Report.pdf](https://github.com/scroll-tech/scroll-audits/blob/main/zkEVM%20circuits/Scroll%20zkEVM%20-%20Part%202%20-%20Audit%20Report.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [2023-07-scroll-zktrie-securityreview.pdf](https://github.com/scroll-tech/scroll-audits/blob/main/Node%20implementation/2023-07-scroll-zktrie-securityreview.pdf) | unknown | Audit | 2023-07 | stale | Direct | n/a | 0 | n/a |
| [2023-08-scrollL2geth-initial-securityreview.pdf](https://github.com/scroll-tech/scroll-audits/blob/main/Node%20implementation/2023-08-scrollL2geth-initial-securityreview.pdf) | unknown | Audit | 2023-08 | stale | Direct | n/a | 0 | n/a |
| [2023-08-scrollL2geth-securityreview.pdf](https://github.com/scroll-tech/scroll-audits/blob/main/Node%20implementation/2023-08-scrollL2geth-securityreview.pdf) | unknown | Audit | 2023-08 | stale | Direct | n/a | 0 | n/a |
| [Manual audit seed](https://www.openzeppelin.com/news/scroll-eip-4844-support-audit) | OpenZeppelin | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Manual audit seed](https://www.openzeppelin.com/news/scroll-batch-token-bridge-audit) | OpenZeppelin | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [OpenZeppelin](https://www.openzeppelin.com/news/scroll-zktrieverifier-audit) | OpenZeppelin | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [2025-04-scroll-euclid-phase1-securityreview.pdf](https://github.com/scroll-tech/scroll-audits/blob/main/Euclid%20Upgrade/2025-04-scroll-euclid-phase1-securityreview.pdf) | Scroll (internal) | Audit | 2025-04 | aging | Direct | n/a | 0 | n/a |
| [2025-04-scroll-euclid-phase2-securityreview.pdf](https://github.com/scroll-tech/scroll-audits/blob/main/Euclid%20Upgrade/2025-04-scroll-euclid-phase2-securityreview.pdf) | Scroll (internal) | Audit | 2025-04 | aging | Direct | n/a | 0 | n/a |
| [Feynman-Upgrade-Trails-of-Bits.pdf](https://github.com/scroll-tech/scroll-audits/blob/main/Feynman%20Upgrade/Feynman-Upgrade-Trails-of-Bits.pdf) | Trails of Bits | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Internal-Audit-Scroll-Final-Report.pdf](https://github.com/scroll-tech/scroll-audits/blob/main/Feynman%20Upgrade/Internal-Audit-Scroll-Final-Report.pdf) | Scroll (Internal) | Audit | 2025-07 | aging | Direct | n/a | 0 | n/a |
| [202402 Bridge Gas Optimizations Audit Report.pdf](https://github.com/scroll-tech/scroll-audits/blob/main/Bridge%20and%20rollup%20contract/202402%20Bridge%20Gas%20Optimizations%20Audit%20Report.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Batch Token Bridge Audit-open-access.pdf](https://github.com/scroll-tech/scroll-audits/blob/main/Bridge%20and%20rollup%20contract/Batch%20Token%20Bridge%20Audit-open-access.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [EIP-4844 Support Audit-open-access.pdf](https://github.com/scroll-tech/scroll-audits/blob/main/Bridge%20and%20rollup%20contract/EIP-4844%20Support%20Audit-open-access.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Scroll ZKTrieVerifier Audit-open-access.pdf](https://github.com/scroll-tech/scroll-audits/blob/main/Bridge%20and%20rollup%20contract/Scroll%20ZKTrieVerifier%20Audit-open-access.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [2025-03-trailofbits-euclid-phase1-letter-of-attestation.pdf](https://github.com/scroll-tech/scroll-audits/blob/main/Euclid%20Upgrade/2025-03-trailofbits-euclid-phase1-letter-of-attestation.pdf) | Trail of Bits | Audit | 2025-03 | aging | Direct | n/a | 0 | n/a |
| [2025-03-trailofbits-euclid-phase2-letter-of-attestation.pdf](https://github.com/scroll-tech/scroll-audits/blob/main/Euclid%20Upgrade/2025-03-trailofbits-euclid-phase2-letter-of-attestation.pdf) | Trail of Bits | Audit | 2025-03 | aging | Direct | n/a | 0 | n/a |
| [Galileo_Final_Report.pdf](https://github.com/scroll-tech/scroll-audits/blob/main/Galileo%20Upgrade/Galileo_Final_Report.pdf) | unknown | Audit | 2025-11 | fresh | Direct | n/a | 0 | n/a |
| [1](https://www.openzeppelin.com/news/scroll-phase-1-audit) | OpenZeppelin | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [2](https://www.openzeppelin.com/news/scroll-phase-2-audit) | OpenZeppelin | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [3](https://www.openzeppelin.com/news/scroll-gasswap-multiple-verifier-wrapped-ether-and-diff-audit) | OpenZeppelin | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [4](https://www.openzeppelin.com/news/scrollowner-and-rate-limiter-audit) | OpenZeppelin | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [5](https://www.openzeppelin.com/news/scroll-usdc-gateway-audit) | OpenZeppelin | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 27 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 41
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [21267] 202307 Scroll Layer 1 Audit Report.pdf
- [21268] 202307 Scroll Layer 2 Audit Report.pdf
- [21269] 202308 Scroll GasSwap, Multiple Verifier, Wrapped Ether and Diff Final Audit Report.pdf
- [21270] 202309 ScrollOwner and Rate Limiter Audit.pdf
- [21271] 202309 Scroll USDC Gateway Audit Report.pdf
- [21272] 202309 Scroll Diff Audit Report.pdf
- [21273] Scroll - Bridge Gas Optimizations Audit Report (Feb 2024).pdf
- [21274] blog.openzeppelin.com/scroll-batch-token-bridge-audit
- [21275] blog.openzeppelin.com/scroll-eip-4844-support-audit
- [21276] Scroll - 05.26.23 Zellic Audit Report.pdf
- [21277] Scroll - 09.27.23 Zellic Audit Report.pdf
- [21278] Scroll Lido Gateway - Zellic Audit Report.pdf
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
- [24423] Manual audit seed
- [24424] Manual audit seed
- [24428] OpenZeppelin
- [24429] 2025-04-scroll-euclid-phase1-securityreview.pdf
- [24430] 2025-04-scroll-euclid-phase2-securityreview.pdf
- [24431] Feynman-Upgrade-Trails-of-Bits.pdf
- [24432] Internal-Audit-Scroll-Final-Report.pdf
- [24434] 202402 Bridge Gas Optimizations Audit Report.pdf
- [24435] Batch Token Bridge Audit-open-access.pdf
- [24436] EIP-4844 Support Audit-open-access.pdf
- [24437] Scroll ZKTrieVerifier Audit-open-access.pdf
- [24438] 2025-03-trailofbits-euclid-phase1-letter-of-attestation.pdf
- [24439] 2025-03-trailofbits-euclid-phase2-letter-of-attestation.pdf
- [24440] Galileo_Final_Report.pdf
- [24441] 1
- [24442] 2
- [24443] 3
- [24444] 4
- [24445] 5

Fork inheritance lineage and inherited audits are included when available.
