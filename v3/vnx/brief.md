# Agentic Audit Brief: VNX

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 4 (0 matched; 4 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: VNX (`vnx`)
- Website: [https://vnx.li](https://vnx.li)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, avalanche, base, celo, ethereum, etherlink, fraxtal, polygon
- Contract surface: 23 unique implementations (91 raw deployments)
- Coverage basis: 0/3 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $5,338,354.15
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for VNX. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 5 contract row(s) across arbitrum, avalanche, base, celo, ethereum, etherlink, fraxtal, polygon. Structural roles: 3 unclassified, 1 core, 1 supporting. 2 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 5
- Structural roles: unclassified (3), core (1), supporting (1)
- Contract kinds: contract (5)
- Detected standards: erc1967proxy (1), erc20 (1), erc20permit (1), ownable (1), pausable (1)
- Frameworks: openzeppelin-upgradeable (2), openzeppelin (1)
- Upgradeable-pattern rows: 2

## Fork Analysis

0 of 4 contracts are derived from known codebases. 4 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x93f5475da60143c50e8be3fed10c143b0cf8b9e9`, chain 42793)
- TransparentUpgradeableProxy (`0xc8bb8eda94931ca2f20ef43ea7dbd58e68400400`, chain 137)
- VNXDGR (`0x1c17d67706423735b8bbf5b234d63b872bd584c4`, chain 1)
- VNXDGR (`0x709616610224dd12542bf7e862c00d0beb4a66c5`, chain 8453)

## Contract Surface Quality

- Logic-topography rows: 5; live-surface rows included: 5 (5 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 4/4 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/3 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 4 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 19 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 24
- Confirmed-live implementations: 4 of 23 unique; 19 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/17
- Verified + Unaudited implementations: 17
- Verified by bytecode match: 0
- Unverified implementations: 6
- Unique implementations: 23
- Raw deployments: 91
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

### ⚠️ Verified + Unaudited (17)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| VNXAnyTransferProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 11 deployments: ethereum `0xe4fadbbf24f118b1e63d65f1aac2a825a07f7619`; fraxtal `0x54849df9e4c23553e1556b23292c772874859173`; fraxtal `0x8f13524f81fc7d1d5e34e3e9256e1deb344ffc1b`; base `0xae80e93c53d813f6b9cd6ab06d088831effb649b`; base `0xbf26b82df4899a790715b00a0800aedbaaef4e50`; arbitrum `0x2cf31b8c4b4da736ce551db514258f5a567225d6`; arbitrum `0x4c0bd74da8237c08840984fdb33a84b4586aaee6`; celo `0x974587a7227d11ce29826521bc46de491304796e`; celo `0xa8bfc64f440e9c77ff95ada2cd2c9832aa41757d`; avalanche `0x75203f0bbd2ba799086ba677da51a3f1fc4cbd26`; avalanche `0xcd2e3caa79302c9dece18c607e9fb3335c30aa32` | ⚠️ Unaudited |
| VNXCToken | unknown | non_address_book | non_address_book_inventory (excluded) | 3 | ethereum | n/a | 4 deployments: ethereum `0x233db75eae26359b406e327504b6be4ad77cbfe3`; ethereum `0x34c9c643becd939c950bb9f141e35777559817cb`; ethereum `0x65faa41bd59cfd13f82efe8dc42ead720aa8a03b`; ethereum `0xf72ee0d3a252ea41845ec1185d8495e2246e6ba6` | ⚠️ Unaudited |
| VNXCToken | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | ethereum | n/a | 3 deployments: ethereum `0x6ba75d640bebfe5da1197bb5a2aff3327789b5d3`; ethereum `0x79d4f0232a66c4c91b89c76362016a1707cfbf4f`; ethereum `0xd1d7193ce1aa7808d577058f48ef8289fc2f81fc` | ⚠️ Unaudited |
| VNXCToken | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0xc279257f8c899b31d523450f12d163f8b9e81584`; ethereum `0xfa792ef15455552422c73aad53ef476102f87e65` | ⚠️ Unaudited |
| VNXCToken | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | polygon | n/a | 3 deployments: polygon `0x5cb0365674da4d167755bd3fb99a09916258ef32`; polygon `0xcdb3867935247049e87c38ea270edd305d84c9ae`; polygon `0xe4095d9372e68d108225c306a4491cacfb33b097` | ⚠️ Unaudited |
| VNXCToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | 6 deployments: ethereum `0xeb8b5eb45955e9ce610245ab5c0dd140a0f11c53`; fraxtal `0x0410d2863b1dee3c908681724b462774369c88e4`; base `0x07bf6fcdfdb6740a89a94353754d2e3c5b85ea94`; arbitrum `0x3c25cab051c0cfed3372862e3bc30f57daf1656f`; celo `0xaec61bc3ea6f16c2d847f328eaa0245995080132`; avalanche `0x4e8a3d890902ec7af9cdeb959dc6f358a41d9c80` | ⚠️ Unaudited |
| VNXCToken | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | fraxtal | n/a | 3 deployments: fraxtal `0x1891291474fe677cb63e47cc347e6b8bc0c43b4a`; fraxtal `0x418126bb59457afdba1ecf376f97400b4157425d`; fraxtal `0x4c0bd74da8237c08840984fdb33a84b4586aaee6` | ⚠️ Unaudited |
| VNXCToken | unknown | non_address_book | non_address_book_inventory (excluded) | 3 | base | n/a | 4 deployments: base `0x0d12d751e71dec6bfed7f5ac34b1fb8df4782ab1`; base `0x1fca74d9ef54a6ac80ffe7d3b14e76c4330fd5d8`; base `0x4ed9df25d38795a47f52614126e47f564d37f347`; base `0xaeb4bb7debd1e5e82266f7c3b5cff56b3a7bf411` | ⚠️ Unaudited |
| VNXCToken | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | arbitrum | n/a | 3 deployments: arbitrum `0x02cea97794d2cfb5f560e1ff4e9c59d1bec75969`; arbitrum `0x4883c8f0529f37e40ebea870f3c13cdfad5d01f8`; arbitrum `0xd3bfc79d720bc625d02dc46d822040ac7cb5045a` | ⚠️ Unaudited |
| VNXCToken | unknown | non_address_book | non_address_book_inventory (excluded) | 3 | celo | n/a | 4 deployments: celo `0x7ae4265ecfc1f31bc0e112dfcfe3d78e01f4bb7f`; celo `0x9346f43c1588b6df1d52bdd6bf846064f92d9cba`; celo `0xc5ebea9984c485ec5d58ca5a2d376620d93af871`; celo `0xf3e535d35b662015765a2d73e81db5735562b569` | ⚠️ Unaudited |
| VNXCToken | unknown | non_address_book | non_address_book_inventory (excluded) | 3 | avalanche | n/a | 4 deployments: avalanche `0x228a48df6819ccc2eca01e2192ebafffdad56c19`; avalanche `0x7678e162f38ec9ef2bfd1d0aaf9fd93355e5fa0b`; avalanche `0x832cba8c924b4e3128ab509a803d66738bc51708`; avalanche `0x8ed06eec30652b87cf9eb68fcf8793cda8075f96` | ⚠️ Unaudited |
| VNXDGR | unknown | project_anchor | own_supporting | 1 | ethereum | unit-261703 | 2 deployments: ethereum `0x1c17d67706423735b8bbf5b234d63b872bd584c4`; ethereum `0x6d57b2e05f26c26b549231c866bdd39779e4a488` | ⚠️ Unaudited |
| VNXDGR | unknown | project_anchor | own_supporting | 1 | polygon | unit-261705 | `0xc8bb8eda94931ca2f20ef43ea7dbd58e68400400` | ⚠️ Unaudited |
| VNXDGR | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 9 deployments: fraxtal `0x7a7f8075d46829a12c2fb3fe3eb566fe54353dfb`; fraxtal `0xd0b03c67d0573d8a87a4c2a67cdaf4cb12cac886`; base `0x033302353f7dc3bad0e09a21dccb1acaae4c7177`; arbitrum `0x0bd93484ca448205ed78f77b2de7596a49a910eb`; arbitrum `0x57afd445ab59ad964d95edbd3855db08ab2a312f`; celo `0xd404c292513b6c3f00d37c1cc8c516f640335584`; celo `0xdf491003cba7edaac75870cb285b25e0e640bceb`; avalanche `0x1512c8c85483a9c0d80180b2f57eda62ec2c9f54`; avalanche `0x8c66b92293cfb6be4bb44e1278f2356c6c4bd5e2` | ⚠️ Unaudited |
| VNXDGR | unknown | project_anchor | own_supporting | 1 | base | unit-261708 | 2 deployments: base `0x709616610224dd12542bf7e862c00d0beb4a66c5`; base `0xac3fe22294beaed9d1fd752323a6d06d12ff3098` | ⚠️ Unaudited |
| VNXManager | governance | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | 13 deployments: ethereum `0xcdb3867935247049e87c38ea270edd305d84c9ae`; fraxtal `0x7e36bf17c4791832c005ea4078fe1af807ea13dc`; fraxtal `0x81c2e3cdd563aa5d408420d1fc4c7fb1ba21737f`; base `0xb6622a9ec19561b0a39de87a71b845ffa5cb60ee`; base `0xc4c917fda20fc2f39c629c809c4c3662a8cf7d9d`; arbitrum `0x81c2e3cdd563aa5d408420d1fc4c7fb1ba21737f`; arbitrum `0xa67ec5147971fe38e2a8fe1ebd7b4af4ccc10278`; arbitrum `0xd4e94d74bf5be456efe46496158f6b38549b9cc2`; celo `0x86f3f198713f487bbc227a3d31fe4e06cb6c387b`; celo `0xfc4210a4e7484350f4a26ab76630b72cb1d50eee`; avalanche `0x8b84f7ab43d671b6deb51bf133ff0842eaffc31a`; avalanche `0x94b1fb4daa0097c9c31d6c7473122d1fdc7654bf`; avalanche `0xd5f57fe9f8ef96bc1f4f8c40781f0db126ea0cde` | ⚠️ Unaudited |
| VNXProxyAdmin | governance | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 11 deployments: ethereum `0xc8bb8eda94931ca2f20ef43ea7dbd58e68400400`; fraxtal `0x516fec20679a41b591780613b28449f2a813af5b`; fraxtal `0xa67ec5147971fe38e2a8fe1ebd7b4af4ccc10278`; base `0x1724768a253476159a622a1689146862d3b762c2`; base `0x35bb28feef0499d7580ed8e8ef1a19ab346b79e8`; arbitrum `0x200db84ed5f202b6955f697818c2c1d79bb9c7f3`; arbitrum `0x3d38309d072d2b6125fca946f78b6ebf950a7165`; celo `0x20aac9439e48d4b26fd7fb8c1de1e037bee7827f`; celo `0xe003bd3eccdf612fd6573bcf382d4a9cec72fabc`; avalanche `0x511942768694b0d0902465525726c17d560cd8c3`; avalanche `0x9b357fac02e035159dffad8dd21333e39f25a660` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (6)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x78c1b506b0c2520d2ccec6c05dacb33626d52938` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0410d2863b1dee3c908681724b462774369c88e4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x418126bb59457afdba1ecf376f97400b4157425d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7a7f8075d46829a12c2fb3fe3eb566fe54353dfb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8f13524f81fc7d1d5e34e3e9256e1deb344ffc1b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | etherlink | unit-261701 | `0x93f5475da60143c50e8be3fed10c143b0cf8b9e9` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [VNX_Examination_on_Management_Assertions_VNXAU_31_12_2025_signiert.pdf](https://vnx.li/wp-content/uploads/2026/03/VNX_Examination_on_Management_Assertions_VNXAU_31_12_2025_signiert.pdf) | unknown | Audit | 2026-03 | fresh | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [VNX_Commodity_Token_Security_Audit_Report_v1.0.2.pdf](https://vnx.li/wp-content/uploads/2026/03/VNX_Commodity_Token_Security_Audit_Report_v1.0.2.pdf) | unknown | Audit | 2021-10 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 8 | high |
| [page-1.md](https://vnx.gitbook.io/vnx-platform/documents/audits/page-1.md) | unknown | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [audits.md](https://vnx.gitbook.io/vnx-platform/documents/audits.md) | unknown | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [21146] VNX_Examination_on_Management_Assertions_VNXAU_31_12_2025_signiert.pdf — no match: This is not a smart contract audit report; it is an agreed-upon procedures report for gold reserves backing VNXAU tokens. No smart contracts are in scope for audit.
- [21147] VNX_Commodity_Token_Security_Audit_Report_v1.0.2.pdf — no match: All contracts listed in scope tables for versions 1.0.0, 1.0.1, and 1.0.2. Audit date is the last revision date (26.10.2021).
- [21148] page-1.md — no match: The provided text is only a page header and navigation link, containing no contract names, scope section, or audit date.
- [21149] audits.md — no match: The provided text is a documentation index page for audits, not an actual audit report. No contract names or audit date could be extracted.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| VNX_Commodity_Token_Security_Audit_Report_v1.0.2.pdf | AdminTransferProvider | unmatched — not counted | — | listed in scope table | no |
| VNX_Commodity_Token_Security_Audit_Report_v1.0.2.pdf | AnyTransferProvider | unmatched — not counted | — | listed in scope table | no |
| VNX_Commodity_Token_Security_Audit_Report_v1.0.2.pdf | DGR | unmatched — not counted | — | listed in scope table | no |
| VNX_Commodity_Token_Security_Audit_Report_v1.0.2.pdf | IRBAC | unmatched — not counted | — | listed in scope table | no |
| VNX_Commodity_Token_Security_Audit_Report_v1.0.2.pdf | ITransferProvider | unmatched — not counted | — | listed in scope table | no |
| VNX_Commodity_Token_Security_Audit_Report_v1.0.2.pdf | Manager | unmatched — not counted | — | listed in scope table | no |
| VNX_Commodity_Token_Security_Audit_Report_v1.0.2.pdf | ProxyAdmin | unmatched — not counted | — | listed in scope table | no |
| VNX_Commodity_Token_Security_Audit_Report_v1.0.2.pdf | WhitelistTransferProvider | unmatched — not counted | — | listed in scope table | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0x1c17d67706423735b8bbf5b234d63b872bd584c4` | VNXDGR | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0xc8bb8eda94931ca2f20ef43ea7dbd58e68400400` | VNXDGR | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x709616610224dd12542bf7e862c00d0beb4a66c5` | VNXDGR | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 17 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 6 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 4
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 8 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=1, low=3
- Match method counts: n/a

Zero-match audit list:

- [21146] VNX_Examination_on_Management_Assertions_VNXAU_31_12_2025_signiert.pdf
- [21147] VNX_Commodity_Token_Security_Audit_Report_v1.0.2.pdf
- [21148] page-1.md
- [21149] audits.md

Fork inheritance lineage and inherited audits are included when available.
