# Agentic Audit Brief: Taiko Bridge

## Project Overview

- Project: Taiko Bridge (`taiko-bridge`)
- Website: [https://bridge.taiko.xyz/](https://bridge.taiko.xyz/)
- Lifecycle: unknown
- Generated: 2026-07-03T21:06:59.435Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-3e24
- Chains: ethereum
- Contract surface: 42 unique implementations (90 raw deployments)
- DeFi Llama TVL: $11,772,373.58
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Canonical Bridge. Structurally: 38 project-authored contract(s) across 1 chain(s); 3 ERC20 tokens, 1 ERC721 NFT, 1 ERC1155 multi-token; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 4 functional families. Its contracts share 7 common project-authored base contract(s) (addressmanager, rollupaddresscache, addresscache). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 208; live-surface contracts included: 77 (69 live, 8 unknown).
- Excluded by liveness: 131 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/34 (0.0%)
- Deployed-live implementations: 34 of 42 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/34
- Verified + Unaudited implementations: 34
- Verified by bytecode match: 0
- Unverified implementations: 8
- Unique implementations: 42
- Raw deployments: 90
- Audits discovered: 8 (8 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025 (aging)
- Audit staleness (calendar age): 0 fresh, 2 aging, 3 stale, 3 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (34)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AssignmentHook | unknown | ethereum | n/a | 2 deployments: ethereum [`0x537a2f...1796f6`](./contracts/ethereum-1/0x537a2f0d3a5879b41bcb5a2afe2ea5c4961796f6/); ethereum `0xf77cbf...5e53f2` | ⚠️ Unaudited |
| AutomataDcapV3Attestation | unknown | ethereum | n/a | 2 deployments: ethereum [`0x5f73f0...84e0b5`](./contracts/ethereum-1/0x5f73f0adc7daa6134fe751c4a78d524f9384e0b5/); ethereum `0x8d7c95...7ca8a3` | ⚠️ Unaudited |
| BridgedERC1155 | unknown | ethereum | n/a | 3 deployments: ethereum [`0x39e4c1...42791d`](./contracts/ethereum-1/0x39e4c1214e733639d059979079a151911e42791d/); ethereum `0x3c9096...9c2c40`; ethereum `0xe7782d...0d689d` | ⚠️ Unaudited |
| BridgedERC20 | unknown | ethereum | n/a | 2 deployments: ethereum [`0x79bc0a...3653e3`](./contracts/ethereum-1/0x79bc0aada00fcf6e7ab514bfeb093b5fae3653e3/); ethereum `0xcc5d48...de7372` | ⚠️ Unaudited |
| BridgedERC20V2 | unknown | ethereum | n/a | 2 deployments: ethereum [`0x656661...09a2e1`](./contracts/ethereum-1/0x65666141a541423606365123ed280ab16a09a2e1/); ethereum `0x7714f5...860f8c` | ⚠️ Unaudited |
| BridgedERC721 | unknown | ethereum | n/a | 2 deployments: ethereum [`0xc33109...6a1bf7`](./contracts/ethereum-1/0xc3310905e2bc9cfb198695b75ef3e5b69c6a1bf7/); ethereum `0xc4096e...c12de7` | ⚠️ Unaudited |
| ERC1155Vault | unknown | ethereum | n/a | 5 deployments: ethereum [`0x01329a...2332fa`](./contracts/ethereum-1/0x01329a1cde2509421cbe99dd3feb3c1b212332fa/); ethereum `0x097bbb...a47dc3`; ethereum `0x7748da...3c6396`; ethereum `0xca9288...1a59c8`; ethereum `0xd90b5f...1cdcfe` | ⚠️ Unaudited |
| ERC20Vault | unknown | ethereum | n/a | 7 deployments: ethereum [`0x15d9f7...4a4bec`](./contracts/ethereum-1/0x15d9f7e12aea18daef5c651fbf97567cad4a4bec/); ethereum `0x4f750d...374ca1`; ethereum `0x540fe6...0b56ff`; ethereum `0x75b5e2...80eb22`; ethereum `0xa30378...722689`; ethereum `0xc722d9...b9bf8e`; ethereum `0xf8bdac...74e737` | ⚠️ Unaudited |
| ERC721Vault | unknown | ethereum | n/a | 5 deployments: ethereum [`0x2dfef0...3163ed`](./contracts/ethereum-1/0x2dfef0339009ce10786fc118c883bb97af3163ed/); ethereum `0x41a7bd...1495fa`; ethereum `0x55b5df...4732c4`; ethereum `0x7dae64...b1ed5c`; ethereum `0xec0484...94f692` | ⚠️ Unaudited |
| MainnetBridge | unknown | ethereum | n/a | 2 deployments: ethereum [`0x2705b1...67da2f`](./contracts/ethereum-1/0x2705b12a971da766a3f9321a743d61cead67da2f/); ethereum `0xd60247...ddd8ec` | ⚠️ Unaudited |
| MainnetERC1155Vault | unknown | ethereum | n/a | 2 deployments: ethereum [`0x838ed4...99b9c8`](./contracts/ethereum-1/0x838ed469db456b67eb3b0b74d759be4da999b9c8/); ethereum `0xaf1459...881702` | ⚠️ Unaudited |
| MainnetERC1155Vault | unknown | ethereum | n/a | 2 deployments: ethereum [`0x89c68b...85617b`](./contracts/ethereum-1/0x89c68bc7028f8b1e69a91382b0a4b1825085617b/); ethereum `0xec0fd4...e8674d` | ⚠️ Unaudited |
| MainnetERC20Vault | unknown | ethereum | n/a | 2 deployments: ethereum [`0x76d73a...b3ab63`](./contracts/ethereum-1/0x76d73ac0a0c89bdb75068901d51431694ab3ab63/); ethereum `0x7acfbb...c3ff30` | ⚠️ Unaudited |
| MainnetERC20Vault | unknown | ethereum | n/a | 2 deployments: ethereum [`0x996282...4415ab`](./contracts/ethereum-1/0x996282ca11e5deb6b5d122cc3b9a1fcaad4415ab/); ethereum `0xb20c8f...790e63` | ⚠️ Unaudited |
| MainnetERC721Vault | unknown | ethereum | n/a | 2 deployments: ethereum [`0x0b470d...f419aa`](./contracts/ethereum-1/0x0b470dd3a0e1c41228856fb319649e7c08f419aa/); ethereum `0xa4c5c2...274c49` | ⚠️ Unaudited |
| MainnetERC721Vault | unknown | ethereum | n/a | [`0xd961e3...5e3fec`](./contracts/ethereum-1/0xd961e3ef2d7df58cdc67bfd9055255430e5e3fec/) | ⚠️ Unaudited |
| MainnetGuardianProver | unknown | ethereum | n/a | 3 deployments: ethereum [`0x579a8d...9e985c`](./contracts/ethereum-1/0x579a8d63a2db646284cbfe31fe5082c9989e985c/); ethereum `0xb866e9...4f7b47`; ethereum `0xe3d777...5f43ac` | ⚠️ Unaudited |
| MainnetInbox | unknown | ethereum | n/a | [`0x06a9ab...feb19a`](./contracts/ethereum-1/0x06a9ab27c7e2255df1815e6cc0168d7755feb19a/) | ⚠️ Unaudited |
| MainnetProverSet | unknown | ethereum | n/a | 2 deployments: ethereum [`0x280eab...fb55fa`](./contracts/ethereum-1/0x280eabfd252f017b78e15b69580f249f45fb55fa/); ethereum `0xa01d46...a9ddb3` | ⚠️ Unaudited |
| MainnetProverSet | unknown | ethereum | n/a | 4 deployments: ethereum [`0x3022ed...5e8763`](./contracts/ethereum-1/0x3022ed0346cce0c08268c8ad081458afd95e8763/); ethereum `0x74828e...72d652`; ethereum `0xce5a11...f2b15a`; ethereum `0xd0d3f0...a4f30b` | ⚠️ Unaudited |
| MainnetRollupAddressManager | unknown | ethereum | n/a | 2 deployments: ethereum [`0x0079a7...79b36d`](./contracts/ethereum-1/0x0079a79e5d8dda67029051d505e5a11de279b36d/); ethereum `0x579f40...290780` | ⚠️ Unaudited |
| MainnetSgxVerifier | unknown | ethereum | n/a | 2 deployments: ethereum [`0x81dfea...7f0838`](./contracts/ethereum-1/0x81dfea931500cdcf0460e9ec45fa283a6b7f0838/); ethereum `0xb0f318...b31f81` | ⚠️ Unaudited |
| MainnetSharedAddressManager | unknown | ethereum | n/a | 2 deployments: ethereum [`0xec1a9a...0c6449`](./contracts/ethereum-1/0xec1a9aa1c648f047752fe4eedb2c21ceab0c6449/); ethereum `0xef9eaa...65fbaa` | ⚠️ Unaudited |
| PreconfRouter | adapter | ethereum | n/a | [`0xd5aa0e...a9688a`](./contracts/ethereum-1/0xd5aa0e20e8a6e9b04f080cf8797410fafaa9688a/) | ⚠️ Unaudited |
| PreconfWhitelist | unknown | ethereum | n/a | [`0xfd0194...29b2ac`](./contracts/ethereum-1/0xfd019460881e6eec632258222393d5821029b2ac/) | ⚠️ Unaudited |
| ProverSet | unknown | ethereum | n/a | 5 deployments: ethereum [`0x500735...9742b9`](./contracts/ethereum-1/0x500735343372dd6c9b84dbc7a75babf4479742b9/); ethereum `0x518845...953c9a`; ethereum `0x5d5282...0bf5fd`; ethereum `0xd0aee9...14d85f`; ethereum `0xd547ca...18f9d1` | ⚠️ Unaudited |
| QuotaManager | unknown | ethereum | n/a | 2 deployments: ethereum [`0x91f671...22f29e`](./contracts/ethereum-1/0x91f67118dd47d502b1f0c354d0611997b022f29e/); ethereum `0xdb627b...5bbc64` | ⚠️ Unaudited |
| Risc0Verifier | unknown | ethereum | n/a | 2 deployments: ethereum [`0x55902b...508edc`](./contracts/ethereum-1/0x55902b2d3df2a65370a89c86ae9dd71ecd508edc/); ethereum `0xefe30a...d9a2c3` | ⚠️ Unaudited |
| SignalService | unknown | ethereum | n/a | [`0x9e0a24...35c77c`](./contracts/ethereum-1/0x9e0a24964e5397b566c1ed39258e21ab5e35c77c/) | ⚠️ Unaudited |
| SP1Verifier | unknown | ethereum | n/a | 2 deployments: ethereum [`0x00c048...257c7b`](./contracts/ethereum-1/0x00c04822ba7aea1113b2a7a29bbcdca70e257c7b/); ethereum `0x1e1845...5a34bf` | ⚠️ Unaudited |
| SP1Verifier | unknown | ethereum | n/a | 2 deployments: ethereum [`0x5c44f2...8af452`](./contracts/ethereum-1/0x5c44f2239925b0d86d2bfee539f19cd0a08af452/); ethereum `0x5f5b83...6d7219` | ⚠️ Unaudited |
| SP1Verifier | unknown | ethereum | n/a | 2 deployments: ethereum [`0x6e520f...536fa8`](./contracts/ethereum-1/0x6e520fc0b5ca5b9903d88ca1076e8dd63a536fa8/); ethereum `0xd31868...07d08f` | ⚠️ Unaudited |
| TierProviderV2 | unknown | ethereum | n/a | 2 deployments: ethereum [`0x33879c...e931f2`](./contracts/ethereum-1/0x33879cdf01121dc7bce011b461e64d791ae931f2/); ethereum `0xf8254f...7fd52e` | ⚠️ Unaudited |
| TokenUnlock | unknown | ethereum | n/a | 3 deployments: ethereum [`0x10edc3...cdefde`](./contracts/ethereum-1/0x10edc3b383dd87e675e88623ff1cbb09b3cdefde/); ethereum `0x816628...b898a7`; ethereum `0xd6a337...6ff5e7` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (8)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x2e7797...fd61d6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x464cc5...ba3691` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x779b67...c316c7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x79895c...9042d9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x920598...ac6416` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd4f138...98c5e9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xdff555...f528ee` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe462cc...4f6a55` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [code4rena-2024-03-taiko-final-report.md](https://github.com/taikoxyz/taiko-mono/blob/main/packages/protocol/audit/code4rena-2024-03-taiko-final-report.md) | Code4rena | Contest | 2024-03 | stale | Direct | n/a | 0 | n/a |
| [halborn-taiko-alethia-protocol-audit-for-pacaya-upgrade.pdf](https://github.com/taikoxyz/taiko-mono/blob/main/packages/protocol/audit/halborn-taiko-alethia-protocol-audit-for-pacaya-upgrade.pdf) | Halborn | Audit | 2025 | aging | Direct | n/a | 0 | n/a |
| [halborn-taiko-dao-contract-audit.pdf](https://github.com/taikoxyz/taiko-mono/blob/main/packages/protocol/audit/halborn-taiko-dao-contract-audit.pdf) | Halborn | Audit | 2025 | aging | Direct | n/a | 0 | n/a |
| [open_zeppelin_taiko_protocol_audit_june_2024.pdf](https://github.com/taikoxyz/taiko-mono/blob/main/packages/protocol/audit/open_zeppelin_taiko_protocol_audit_june_2024.pdf) | OpenZeppelin | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [open_zeppelin_taiko_protocol_ontake_audit_nov_2024.pdf.pdf](https://github.com/taikoxyz/taiko-mono/blob/main/packages/protocol/audit/open_zeppelin_taiko_protocol_ontake_audit_nov_2024.pdf.pdf) | OpenZeppelin | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [open_zeppelin_taiko_protocol_shasta_audit_jan_2026.pdf](https://github.com/taikoxyz/taiko-mono/blob/main/packages/protocol/audit/open_zeppelin_taiko_protocol_shasta_audit_jan_2026.pdf) | OpenZeppelin | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [quill_audits_taiko_smart_contract_audit_report.pdf](https://github.com/taikoxyz/taiko-mono/blob/main/packages/protocol/audit/quill_audits_taiko_smart_contract_audit_report.pdf) | Quill Audits | Audit | 2024-02 | stale | Direct | n/a | 0 | n/a |
| [sigma_prime_taiko_smart_contract_security_assessment_report_v2_0.pdf](https://github.com/taikoxyz/taiko-mono/blob/main/packages/protocol/audit/sigma_prime_taiko_smart_contract_security_assessment_report_v2_0.pdf) | Sigma Prime | Audit | 2024-02 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 42 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 8
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [21026] code4rena-2024-03-taiko-final-report.md
- [21027] halborn-taiko-alethia-protocol-audit-for-pacaya-upgrade.pdf
- [21028] halborn-taiko-dao-contract-audit.pdf
- [21029] open_zeppelin_taiko_protocol_audit_june_2024.pdf
- [21030] open_zeppelin_taiko_protocol_ontake_audit_nov_2024.pdf.pdf
- [21031] open_zeppelin_taiko_protocol_shasta_audit_jan_2026.pdf
- [21032] quill_audits_taiko_smart_contract_audit_report.pdf
- [21033] sigma_prime_taiko_smart_contract_security_assessment_report_v2_0.pdf

Fork inheritance lineage and inherited audits are included when available.
