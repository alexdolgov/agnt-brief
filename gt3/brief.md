# Agentic Audit Brief: GT3

## Project Overview

- Project: GT3 (`gt3`)
- Website: [https://dapp.gt3.finance/](https://dapp.gt3.finance/)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:21.107Z
- Pipeline run: v2-2026-07-02-1ba3fd
- Chains: polygon
- Contract surface: 15 unique implementations (15 raw deployments)
- DeFi Llama TVL: $667,421.13
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Dexs. Structurally: 15 project-authored contract(s) across 1 chain(s); 2 ERC20 tokens, 1 ERC721 NFT; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 2 functional families. Its contracts share 9 common project-authored base contract(s) (uupsownable2step, ownable2stepupgradeable, ownableupgradeable). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 15; live-surface contracts included: 15 (15 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/15 (0.0%)
- Deployed-live implementations: 15 of 15 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/15
- Verified + Unaudited implementations: 15
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 15
- Raw deployments: 15
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

### ⚠️ Verified + Unaudited (15)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Deployer | unknown | polygon | n/a | [`0x887c599a51e3af7b103a4d7d1f74cc03169453e6`](./contracts/polygon-137/0x887c599a51e3af7b103a4d7d1f74cc03169453e6/) | ⚠️ Unaudited |
| GT3 | unknown | polygon | n/a | [`0x06737d16ad9c1e41aa44fee2a952b26723b20673`](./contracts/polygon-137/0x06737d16ad9c1e41aa44fee2a952b26723b20673/) | ⚠️ Unaudited |
| GT3Bribe | unknown | polygon | n/a | [`0x0c1559907b333f4368af0d3bb4b7fa838b8815f0`](./contracts/polygon-137/0x0c1559907b333f4368af0d3bb4b7fa838b8815f0/) | ⚠️ Unaudited |
| GT3BribeFactory | unknown | polygon | n/a | [`0xa4b64cad3899d8b92e97690b0146e3c0239671e0`](./contracts/polygon-137/0xa4b64cad3899d8b92e97690b0146e3c0239671e0/) | ⚠️ Unaudited |
| GT3Gauge | unknown | polygon | n/a | [`0x78426512c9058f40510eee552e1395f4e65ed4ed`](./contracts/polygon-137/0x78426512c9058f40510eee552e1395f4e65ed4ed/) | ⚠️ Unaudited |
| GT3GaugeFactory | unknown | polygon | n/a | [`0x7b66667cc9735ec607cb3aa0fd65d29fb0556bb7`](./contracts/polygon-137/0x7b66667cc9735ec607cb3aa0fd65d29fb0556bb7/) | ⚠️ Unaudited |
| GT3Minter | unknown | polygon | n/a | [`0x2353baa5e6c32bccb8a46b94a8092351df88c51c`](./contracts/polygon-137/0x2353baa5e6c32bccb8a46b94a8092351df88c51c/) | ⚠️ Unaudited |
| GT3Rebase | unknown | polygon | n/a | [`0xb896a917750db189bd004376c9a104cbc7f8f94e`](./contracts/polygon-137/0xb896a917750db189bd004376c9a104cbc7f8f94e/) | ⚠️ Unaudited |
| GT3Voter | unknown | polygon | n/a | [`0x003c9f0f92031a549d0294e28084db20f912e543`](./contracts/polygon-137/0x003c9f0f92031a549d0294e28084db20f912e543/) | ⚠️ Unaudited |
| Pair | unknown | polygon | n/a | [`0x57df89e8582db18b21f5eacf31d84685a9e094c1`](./contracts/polygon-137/0x57df89e8582db18b21f5eacf31d84685a9e094c1/) | ⚠️ Unaudited |
| PairFactory | unknown | polygon | n/a | [`0x949107c541e303239cfdac63dca30321e27ec2f1`](./contracts/polygon-137/0x949107c541e303239cfdac63dca30321e27ec2f1/) | ⚠️ Unaudited |
| PairFees | unknown | polygon | n/a | [`0xd5f8512ad1843bc10160125ac82161851e6b6853`](./contracts/polygon-137/0xd5f8512ad1843bc10160125ac82161851e6b6853/) | ⚠️ Unaudited |
| PairFeesFactory | unknown | polygon | n/a | [`0xc07de41a1093685ac0435ca70141c27d5d44df25`](./contracts/polygon-137/0xc07de41a1093685ac0435ca70141c27d5d44df25/) | ⚠️ Unaudited |
| UniversalRouter | unknown | polygon | n/a | [`0x266e80a3777a029db9400628de64d3fa758345c3`](./contracts/polygon-137/0x266e80a3777a029db9400628de64d3fa758345c3/) | ⚠️ Unaudited |
| xGT3 | unknown | polygon | n/a | [`0x9fda8c8dc7629c7c03391101fdac414ce588127c`](./contracts/polygon-137/0x9fda8c8dc7629c7c03391101fdac414ce588127c/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (0)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

- None

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| polygon | [`0x887c599a51e3af7b103a4d7d1f74cc03169453e6`](./contracts/polygon-137/0x887c599a51e3af7b103a4d7d1f74cc03169453e6/) | Deployer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x06737d16ad9c1e41aa44fee2a952b26723b20673`](./contracts/polygon-137/0x06737d16ad9c1e41aa44fee2a952b26723b20673/) | GT3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x0c1559907b333f4368af0d3bb4b7fa838b8815f0`](./contracts/polygon-137/0x0c1559907b333f4368af0d3bb4b7fa838b8815f0/) | GT3Bribe | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xa4b64cad3899d8b92e97690b0146e3c0239671e0`](./contracts/polygon-137/0xa4b64cad3899d8b92e97690b0146e3c0239671e0/) | GT3BribeFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x78426512c9058f40510eee552e1395f4e65ed4ed`](./contracts/polygon-137/0x78426512c9058f40510eee552e1395f4e65ed4ed/) | GT3Gauge | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x7b66667cc9735ec607cb3aa0fd65d29fb0556bb7`](./contracts/polygon-137/0x7b66667cc9735ec607cb3aa0fd65d29fb0556bb7/) | GT3GaugeFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x2353baa5e6c32bccb8a46b94a8092351df88c51c`](./contracts/polygon-137/0x2353baa5e6c32bccb8a46b94a8092351df88c51c/) | GT3Minter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xb896a917750db189bd004376c9a104cbc7f8f94e`](./contracts/polygon-137/0xb896a917750db189bd004376c9a104cbc7f8f94e/) | GT3Rebase | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x003c9f0f92031a549d0294e28084db20f912e543`](./contracts/polygon-137/0x003c9f0f92031a549d0294e28084db20f912e543/) | GT3Voter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x57df89e8582db18b21f5eacf31d84685a9e094c1`](./contracts/polygon-137/0x57df89e8582db18b21f5eacf31d84685a9e094c1/) | Pair | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x949107c541e303239cfdac63dca30321e27ec2f1`](./contracts/polygon-137/0x949107c541e303239cfdac63dca30321e27ec2f1/) | PairFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xd5f8512ad1843bc10160125ac82161851e6b6853`](./contracts/polygon-137/0xd5f8512ad1843bc10160125ac82161851e6b6853/) | PairFees | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xc07de41a1093685ac0435ca70141c27d5d44df25`](./contracts/polygon-137/0xc07de41a1093685ac0435ca70141c27d5d44df25/) | PairFeesFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x266e80a3777a029db9400628de64d3fa758345c3`](./contracts/polygon-137/0x266e80a3777a029db9400628de64d3fa758345c3/) | UniversalRouter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x9fda8c8dc7629c7c03391101fdac414ce588127c`](./contracts/polygon-137/0x9fda8c8dc7629c7c03391101fdac414ce588127c/) | xGT3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 15 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
