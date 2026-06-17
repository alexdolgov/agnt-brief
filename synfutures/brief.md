# Agentic Audit Brief: SynFutures

## Project Overview

- Project: SynFutures (`synfutures`)
- Website: [https://www.synfutures.com/](https://www.synfutures.com/)
- Lifecycle: active (Tier 0, 91.2% below peak)
- Generated: 2026-06-17T07:00:42.591Z
- Pipeline run: brief-regen-topo-2026-06-17
- Chains: base, blast, bsc, ethereum
- Contract surface: 36 unique implementations (43 raw deployments)
- DeFi Llama TVL: $4,847,783.00
- On-chain TVL (included contracts): $52,406,482.58
- TVL by chain: Ethereum $51,437,122.43 | Bsc $969,360.15

## Project Description

SynFutures is an onchain trading protocol and decentralized exchange focused on perpetual futures and spot/RWA markets, including crypto assets, tokenized stocks, ETFs, and other real-world assets. Its current product emphasizes Base-heavy deployment, Oyster AMM hybrid liquidity, and an onchain/CLOB-style trading model. Tokenized stocks are described as 1:1 backed rather than synthetic exposure; unsupported options-trading claims should be removed.

### Architecture

SynFutures V3 is the active product family, with multiple proxy contracts pointing to shared implementation contracts (e.g., 0xc4f801..., 0xb19e3a..., 0xc7b285...) that serve as the core AMM and market logic. Supporting contracts include various market-specific or auxiliary implementations, while V1 and V2 remain as legacy, isolated deployments.

## Contract Surface Quality

- Indexed contracts: 486; live-surface contracts included: 43 (43 live, 0 unknown).
- Excluded by liveness: 315 inactive, 128 singleton, 0 uninitialized.
- Deployment units: 3/61 live.
- Detected codebases: none
- Dependencies extracted: 1; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 0/2 (0.0%)
- Verified + Unaudited implementations: 2
- Verified by bytecode match: 0
- Unverified implementations: 34
- Unique implementations: 36
- Raw deployments: 43
- Audits discovered: 1
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $52,406,482.58
- Latest audit: 2026-04 (fresh)
- Staleness: 1 fresh, 0 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (2)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| SynFuturesToken | token | ethereum | n/a | [`0x6e15a5...0252f9`](./contracts/ethereum-1/0x6e15a54b5ecac17e58dadeddbe8506a7560252f9/) | ⚠️ Unaudited |
| SynFuturesTokenOFT | token | bsc | n/a | [`0xc9ccbd...04d3bb`](./contracts/bsc-56/0xc9ccbd76c2353e593cc975f13295e8289d04d3bb/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (34)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Proxy (impl: 0x53bf62d84131cac36eaf3954473a54fb2791a12c) | proxy | base | unit-26061 | `0xefb4fc...4b914c` | ❓ Unverified |
| Proxy (impl: 0x83ce7c1de6d6e039e4cb0ef331e1d5e615399795) | proxy | blast | unit-26072 | `0xc003fa...4a47d1` | ❓ Unverified |
| Proxy (impl: 0xb19e3a35c12723bc8f81bbd7321b92803ce2b3d7) | proxy | base | unit-26034 (8 proxies) | 8 deployments: base `0x666f50...d9e997`; base `0x89c2e7...661a50`; base `0x90471f...71cec6`; base `0x9285aa...e20e26`; base `0xabc244...dbdb3f`; base `0xb39c83...d1ea45`; base `0xcdf971...1ec11b`; base `0xfdc1bb...1ce4ba` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x00da3a...79f096` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x00edbc...0b14cf` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x055658...dcd047` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x1b1f9a...8b4276` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x1b95bd...205c36` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x208b44...071270` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x29ee09...114d54` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x47ab1e...b1d6fb` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x4bbc0f...c0334b` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x561a3d...bf1f7d` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x693307...e49dc1` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x6cfb0c...6bccd4` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x7cbb40...2e7b59` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x8926b1...849444` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x8a5355...641915` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x8bafd6...3d6163` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x907ed8...11b9db` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x9467ae...a9ef80` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x995000...e21324` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x9b1608...c5bcac` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xb28922...3437e2` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xb97e69...a5326a` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xbb74bb...9e2e37` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xc3365f...541fed` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xcae2c6...b625f8` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xcc7d03...b8b69d` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xd45fb0...404bd1` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xe1927c...f1b23b` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xf45d60...7620d7` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xf6b705...7e92ea` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x6a372d...72c257` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Yes. Anchored, SynFutures’ partner for RWA Trading, has completed a smart contract audit with [Sherlock](https://sherlock.xyz/). The audit report is now available and can be [reviewed]() here.](https://sherlock-files.ams3.digitaloceanspaces.com/reports/2026.04.02%20-%20Final%20-%20Anchored%20Collaborative%20Audit%20Report%201775117748.pdf) | Sherlock | Contest | 2026-04 | fresh | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x6e15a5...0252f9`](./contracts/ethereum-1/0x6e15a54b5ecac17e58dadeddbe8506a7560252f9/) | SynFuturesToken | token | $51,437,122.43 | Verified native implementation with $51,437,122.43 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xc9ccbd...04d3bb`](./contracts/bsc-56/0xc9ccbd76c2353e593cc975f13295e8289d04d3bb/) | SynFuturesTokenOFT | token | $969,360.15 | Verified native implementation with $969,360.15 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 11 |
| upstream | 2 |
| standard_library | 0 |
| needs_review | 23 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [11701] Yes. Anchored, SynFutures’ partner for RWA Trading, has completed a smart contract audit with [Sherlock](https://sherlock.xyz/). The audit report is now available and can be [reviewed]() here.

Fork inheritance lineage and inherited audits are included when available.
