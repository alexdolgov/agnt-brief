# Agentic Audit Brief: VNX

## Project Overview

- Project: VNX (`vnx`)
- Website: [https://vnx.li](https://vnx.li)
- Lifecycle: unknown
- Generated: 2026-07-04T14:54:10.055Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-4c3e
- Chains: arbitrum, avalanche, base, celo, ethereum, fraxtal, polygon
- Contract surface: 21 unique implementations (72 raw deployments)
- DeFi Llama TVL: $5,338,354.15
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

RWA. Structurally: 11 project-authored contract(s) across 4 chain(s); 3 ERC20 tokens; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 4 functional families. Its contracts share 2 common project-authored base contract(s) (proxy, erc1967upgrade). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 90; live-surface contracts included: 61 (55 live, 6 unknown).
- Excluded by liveness: 29 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/16 (0.0%)
- Deployed-live implementations: 16 of 21 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/16
- Verified + Unaudited implementations: 16
- Verified by bytecode match: 0
- Unverified implementations: 5
- Unique implementations: 21
- Raw deployments: 72
- Audits discovered: 4 (4 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-03 (fresh)
- Audit staleness (calendar age): 1 fresh, 0 aging, 1 stale, 2 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (16)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| VNXAnyTransferProvider | unknown | arbitrum | n/a | 5 deployments: fraxtal `0x54849df9e4c23553e1556b23292c772874859173`; base `0xae80e93c53d813f6b9cd6ab06d088831effb649b`; arbitrum [`0x2cf31b8c4b4da736ce551db514258f5a567225d6`](./contracts/arbitrum-42161/0x2cf31b8c4b4da736ce551db514258f5a567225d6/); celo `0x974587a7227d11ce29826521bc46de491304796e`; avalanche `0x75203f0bbd2ba799086ba677da51a3f1fc4cbd26` | ⚠️ Unaudited |
| VNXCToken | unknown | ethereum | n/a | 4 deployments: ethereum [`0x233db75eae26359b406e327504b6be4ad77cbfe3`](./contracts/ethereum-1/0x233db75eae26359b406e327504b6be4ad77cbfe3/); ethereum `0x34c9c643becd939c950bb9f141e35777559817cb`; ethereum `0x65faa41bd59cfd13f82efe8dc42ead720aa8a03b`; ethereum `0xf72ee0d3a252ea41845ec1185d8495e2246e6ba6` | ⚠️ Unaudited |
| VNXCToken | unknown | ethereum | n/a | 3 deployments: ethereum [`0x6ba75d640bebfe5da1197bb5a2aff3327789b5d3`](./contracts/ethereum-1/0x6ba75d640bebfe5da1197bb5a2aff3327789b5d3/); ethereum `0x79d4f0232a66c4c91b89c76362016a1707cfbf4f`; ethereum `0xd1d7193ce1aa7808d577058f48ef8289fc2f81fc` | ⚠️ Unaudited |
| VNXCToken | unknown | ethereum | n/a | 2 deployments: ethereum [`0xc279257f8c899b31d523450f12d163f8b9e81584`](./contracts/ethereum-1/0xc279257f8c899b31d523450f12d163f8b9e81584/); ethereum `0xfa792ef15455552422c73aad53ef476102f87e65` | ⚠️ Unaudited |
| VNXCToken | unknown | polygon | n/a | 3 deployments: polygon [`0x5cb0365674da4d167755bd3fb99a09916258ef32`](./contracts/polygon-137/0x5cb0365674da4d167755bd3fb99a09916258ef32/); polygon `0xcdb3867935247049e87c38ea270edd305d84c9ae`; polygon `0xe4095d9372e68d108225c306a4491cacfb33b097` | ⚠️ Unaudited |
| VNXCToken | unknown | fraxtal | n/a | 3 deployments: fraxtal [`0x1891291474fe677cb63e47cc347e6b8bc0c43b4a`](./contracts/fraxtal-252/0x1891291474fe677cb63e47cc347e6b8bc0c43b4a/); fraxtal `0x418126bb59457afdba1ecf376f97400b4157425d`; fraxtal `0x4c0bd74da8237c08840984fdb33a84b4586aaee6` | ⚠️ Unaudited |
| VNXCToken | unknown | base | n/a | 4 deployments: base [`0x0d12d751e71dec6bfed7f5ac34b1fb8df4782ab1`](./contracts/base-8453/0x0d12d751e71dec6bfed7f5ac34b1fb8df4782ab1/); base `0x1fca74d9ef54a6ac80ffe7d3b14e76c4330fd5d8`; base `0x4ed9df25d38795a47f52614126e47f564d37f347`; base `0xaeb4bb7debd1e5e82266f7c3b5cff56b3a7bf411` | ⚠️ Unaudited |
| VNXCToken | unknown | arbitrum | n/a | 3 deployments: arbitrum [`0x02cea97794d2cfb5f560e1ff4e9c59d1bec75969`](./contracts/arbitrum-42161/0x02cea97794d2cfb5f560e1ff4e9c59d1bec75969/); arbitrum `0x4883c8f0529f37e40ebea870f3c13cdfad5d01f8`; arbitrum `0xd3bfc79d720bc625d02dc46d822040ac7cb5045a` | ⚠️ Unaudited |
| VNXCToken | unknown | celo | n/a | 4 deployments: celo [`0x7ae4265ecfc1f31bc0e112dfcfe3d78e01f4bb7f`](./contracts/celo-42220/0x7ae4265ecfc1f31bc0e112dfcfe3d78e01f4bb7f/); celo `0x9346f43c1588b6df1d52bdd6bf846064f92d9cba`; celo `0xc5ebea9984c485ec5d58ca5a2d376620d93af871`; celo `0xf3e535d35b662015765a2d73e81db5735562b569` | ⚠️ Unaudited |
| VNXCToken | unknown | avalanche | n/a | 4 deployments: avalanche [`0x228a48df6819ccc2eca01e2192ebafffdad56c19`](./contracts/avalanche-43114/0x228a48df6819ccc2eca01e2192ebafffdad56c19/); avalanche `0x7678e162f38ec9ef2bfd1d0aaf9fd93355e5fa0b`; avalanche `0x832cba8c924b4e3128ab509a803d66738bc51708`; avalanche `0x8ed06eec30652b87cf9eb68fcf8793cda8075f96` | ⚠️ Unaudited |
| VNXDGR | unknown | ethereum | n/a | 2 deployments: ethereum [`0x1c17d67706423735b8bbf5b234d63b872bd584c4`](./contracts/ethereum-1/0x1c17d67706423735b8bbf5b234d63b872bd584c4/); ethereum `0x6d57b2e05f26c26b549231c866bdd39779e4a488` | ⚠️ Unaudited |
| VNXDGR | unknown | polygon | n/a | [`0xc8bb8eda94931ca2f20ef43ea7dbd58e68400400`](./contracts/polygon-137/0xc8bb8eda94931ca2f20ef43ea7dbd58e68400400/) | ⚠️ Unaudited |
| VNXDGR | unknown | base | n/a | 2 deployments: base [`0x709616610224dd12542bf7e862c00d0beb4a66c5`](./contracts/base-8453/0x709616610224dd12542bf7e862c00d0beb4a66c5/); base `0xac3fe22294beaed9d1fd752323a6d06d12ff3098` | ⚠️ Unaudited |
| VNXDGR | unknown | arbitrum | n/a | 4 deployments: fraxtal `0xd0b03c67d0573d8a87a4c2a67cdaf4cb12cac886`; arbitrum [`0x0bd93484ca448205ed78f77b2de7596a49a910eb`](./contracts/arbitrum-42161/0x0bd93484ca448205ed78f77b2de7596a49a910eb/); celo `0xdf491003cba7edaac75870cb285b25e0e640bceb`; avalanche `0x1512c8c85483a9c0d80180b2f57eda62ec2c9f54` | ⚠️ Unaudited |
| VNXManager | governance | fraxtal | n/a | 12 deployments: ethereum `0xcdb3867935247049e87c38ea270edd305d84c9ae`; fraxtal [`0x7e36bf17c4791832c005ea4078fe1af807ea13dc`](./contracts/fraxtal-252/0x7e36bf17c4791832c005ea4078fe1af807ea13dc/); fraxtal `0x81c2e3cdd563aa5d408420d1fc4c7fb1ba21737f`; base `0xb6622a9ec19561b0a39de87a71b845ffa5cb60ee`; base `0xc4c917fda20fc2f39c629c809c4c3662a8cf7d9d`; arbitrum `0x81c2e3cdd563aa5d408420d1fc4c7fb1ba21737f`; arbitrum `0xa67ec5147971fe38e2a8fe1ebd7b4af4ccc10278`; arbitrum `0xd4e94d74bf5be456efe46496158f6b38549b9cc2`; celo `0x86f3f198713f487bbc227a3d31fe4e06cb6c387b`; celo `0xfc4210a4e7484350f4a26ab76630b72cb1d50eee`; avalanche `0x8b84f7ab43d671b6deb51bf133ff0842eaffc31a`; avalanche `0x94b1fb4daa0097c9c31d6c7473122d1fdc7654bf` | ⚠️ Unaudited |
| VNXProxyAdmin | governance | base | n/a | 11 deployments: ethereum `0xc8bb8eda94931ca2f20ef43ea7dbd58e68400400`; fraxtal `0x516fec20679a41b591780613b28449f2a813af5b`; fraxtal `0xa67ec5147971fe38e2a8fe1ebd7b4af4ccc10278`; base [`0x1724768a253476159a622a1689146862d3b762c2`](./contracts/base-8453/0x1724768a253476159a622a1689146862d3b762c2/); base `0x35bb28feef0499d7580ed8e8ef1a19ab346b79e8`; arbitrum `0x200db84ed5f202b6955f697818c2c1d79bb9c7f3`; arbitrum `0x3d38309d072d2b6125fca946f78b6ebf950a7165`; celo `0x20aac9439e48d4b26fd7fb8c1de1e037bee7827f`; celo `0xe003bd3eccdf612fd6573bcf382d4a9cec72fabc`; avalanche `0x511942768694b0d0902465525726c17d560cd8c3`; avalanche `0x9b357fac02e035159dffad8dd21333e39f25a660` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (5)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x78c1b506b0c2520d2ccec6c05dacb33626d52938` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x0410d2863b1dee3c908681724b462774369c88e4` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x418126bb59457afdba1ecf376f97400b4157425d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x7a7f8075d46829a12c2fb3fe3eb566fe54353dfb` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x8f13524f81fc7d1d5e34e3e9256e1deb344ffc1b` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [VNX_Examination_on_Management_Assertions_VNXAU_31_12_2025_signiert.pdf](https://vnx.li/wp-content/uploads/2026/03/VNX_Examination_on_Management_Assertions_VNXAU_31_12_2025_signiert.pdf) | unknown | Audit | 2026-03 | fresh | Direct | n/a | 0 | n/a |
| [VNX_Commodity_Token_Security_Audit_Report_v1.0.2.pdf](https://vnx.li/wp-content/uploads/2026/03/VNX_Commodity_Token_Security_Audit_Report_v1.0.2.pdf) | unknown | Audit | 2021-10 | stale | Direct | n/a | 0 | n/a |
| [page-1.md](https://vnx.gitbook.io/vnx-platform/documents/audits/page-1.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [audits.md](https://vnx.gitbook.io/vnx-platform/documents/audits.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| arbitrum | [`0x2cf31b8c4b4da736ce551db514258f5a567225d6`](./contracts/arbitrum-42161/0x2cf31b8c4b4da736ce551db514258f5a567225d6/) | VNXAnyTransferProvider | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x233db75eae26359b406e327504b6be4ad77cbfe3`](./contracts/ethereum-1/0x233db75eae26359b406e327504b6be4ad77cbfe3/) | VNXCToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6ba75d640bebfe5da1197bb5a2aff3327789b5d3`](./contracts/ethereum-1/0x6ba75d640bebfe5da1197bb5a2aff3327789b5d3/) | VNXCToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc279257f8c899b31d523450f12d163f8b9e81584`](./contracts/ethereum-1/0xc279257f8c899b31d523450f12d163f8b9e81584/) | VNXCToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x5cb0365674da4d167755bd3fb99a09916258ef32`](./contracts/polygon-137/0x5cb0365674da4d167755bd3fb99a09916258ef32/) | VNXCToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| fraxtal | [`0x1891291474fe677cb63e47cc347e6b8bc0c43b4a`](./contracts/fraxtal-252/0x1891291474fe677cb63e47cc347e6b8bc0c43b4a/) | VNXCToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x0d12d751e71dec6bfed7f5ac34b1fb8df4782ab1`](./contracts/base-8453/0x0d12d751e71dec6bfed7f5ac34b1fb8df4782ab1/) | VNXCToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x02cea97794d2cfb5f560e1ff4e9c59d1bec75969`](./contracts/arbitrum-42161/0x02cea97794d2cfb5f560e1ff4e9c59d1bec75969/) | VNXCToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | [`0x7ae4265ecfc1f31bc0e112dfcfe3d78e01f4bb7f`](./contracts/celo-42220/0x7ae4265ecfc1f31bc0e112dfcfe3d78e01f4bb7f/) | VNXCToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x228a48df6819ccc2eca01e2192ebafffdad56c19`](./contracts/avalanche-43114/0x228a48df6819ccc2eca01e2192ebafffdad56c19/) | VNXCToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1c17d67706423735b8bbf5b234d63b872bd584c4`](./contracts/ethereum-1/0x1c17d67706423735b8bbf5b234d63b872bd584c4/) | VNXDGR | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xc8bb8eda94931ca2f20ef43ea7dbd58e68400400`](./contracts/polygon-137/0xc8bb8eda94931ca2f20ef43ea7dbd58e68400400/) | VNXDGR | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x709616610224dd12542bf7e862c00d0beb4a66c5`](./contracts/base-8453/0x709616610224dd12542bf7e862c00d0beb4a66c5/) | VNXDGR | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x0bd93484ca448205ed78f77b2de7596a49a910eb`](./contracts/arbitrum-42161/0x0bd93484ca448205ed78f77b2de7596a49a910eb/) | VNXDGR | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| fraxtal | [`0x7e36bf17c4791832c005ea4078fe1af807ea13dc`](./contracts/fraxtal-252/0x7e36bf17c4791832c005ea4078fe1af807ea13dc/) | VNXManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x1724768a253476159a622a1689146862d3b762c2`](./contracts/base-8453/0x1724768a253476159a622a1689146862d3b762c2/) | VNXProxyAdmin | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 16 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 5 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 4
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [21146] VNX_Examination_on_Management_Assertions_VNXAU_31_12_2025_signiert.pdf
- [21147] VNX_Commodity_Token_Security_Audit_Report_v1.0.2.pdf
- [21148] page-1.md
- [21149] audits.md

Fork inheritance lineage and inherited audits are included when available.
