# Agentic Audit Brief: Swaap

⚠️ Lifecycle status: DECLINING - TVL dropped 57.3% over 90 days

## Project Overview

- Project: Swaap (`swaap`)
- Website: [https://www.swaap.finance](https://www.swaap.finance)
- Lifecycle: declining (Tier 1, declining)
- Generated: 2026-06-10T20:59:16.863Z
- Pipeline run: correction-skeletal-description-fix-all
- Chains: arbitrum, avalanche, base, bsc, ethereum, linea, mantle, mode, optimism, polygon, scroll
- Contract surface: 128 unique implementations (177 raw deployments)
- DeFi Llama TVL: $4,412,221.00
- On-chain TVL (included contracts): $3,809,615.57
- TVL by chain: Ethereum $3,350,078.07 | Base $398,761.58 | Bsc $36,855.69 | Optimism $23,919.12 | Linea $1.12

## Project Description

Swaap is an onchain trading and market-neutral AMM protocol. Its contract surface includes Vault contracts, SafeguardFactory registry/deployment contracts, SafeguardPool core logic, and related operational periphery such as oracle or adapter components where applicable. Claims that Swaap primarily operates yield-generation vault strategies should be removed or explicitly qualified unless supported by current documentation or audit scope.

### Architecture

The Swaap family consists of Vault contracts that hold user funds and execute strategies, and SafeguardFactory contracts that deploy and manage these vaults. Both contract types are deployed by two main deployer clusters and share the same infrastructure across multiple chains.

## Audit Coverage Summary

- Verified implementations audited: 2/8 (25.0%)
- Verified + Unaudited implementations: 4
- Verified by bytecode match: 2
- Unverified implementations: 120
- Unique implementations: 128
- Raw deployments: 177
- Audits discovered: 7
- Scoreable audits (matched contracts): 3
- ASD (verified + unaudited TVL): $3,809,615.57
- Latest audit: 2023-07 (stale)
- Staleness: 0 fresh, 0 aging, 6 stale, 1 unknown
- Tier 1 coverage: 25.0% (ChainSecurity)
- Note: This protocol is classified as [declining]. ASD of $3,809,615.57 represents exposure in a protocol with declining activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| ChainSecurity | Tier 1 | 2 | 25.0% | 2023-06 |
| Quantstamp | Tier 2 | 2 | 25.0% | 2023-07 |

## Contract Surface

### ✅ Verified + Audited (2)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| SafeguardFactory | registry | ethereum | 15 deployments: ethereum [`0x03c01a...153b06`](./contracts/ethereum-1/0x03c01acae3d0173a93d819efdc832c7c4f153b06/); ethereum `0xcc74bd...3369b8`; optimism [`0x03c01a...153b06`](./contracts/optimism-10/0x03c01acae3d0173a93d819efdc832c7c4f153b06/); optimism `0xcc74bd...3369b8`; bsc `0x3f255a...13e3e2`; polygon [`0x03c01a...153b06`](./contracts/polygon-137/0x03c01acae3d0173a93d819efdc832c7c4f153b06/); polygon `0xcc74bd...3369b8`; base `0xcc74bd...3369b8`; mode [`0x03c01a...153b06`](./contracts/mode-34443/0x03c01acae3d0173a93d819efdc832c7c4f153b06/); mode `0x33ddf3...a86b16`; mode `0xcc74bd...3369b8`; arbitrum [`0x03c01a...153b06`](./contracts/arbitrum-42161/0x03c01acae3d0173a93d819efdc832c7c4f153b06/); arbitrum `0xcc74bd...3369b8`; linea [`0x03c01a...153b06`](./contracts/linea-59144/0x03c01acae3d0173a93d819efdc832c7c4f153b06/); linea `0xcc74bd...3369b8` | ✅ Audited |
| SafeguardPool | core_logic | arbitrum | 5 deployments: arbitrum [`0x309854...4b8b39`](./contracts/arbitrum-42161/0x30985450cb225ec53fffb013171cadf6264b8b39/); arbitrum `0x46d0c6...d32796`; arbitrum `0x55e569...d1ca56`; arbitrum `0x981348...60137a`; arbitrum `0xbc0cb9...599c1d` | ✅ Audited |

### ⚠️ Verified + Unaudited (4)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| Vault | core_logic | bsc | 11 deployments: ethereum `0xd315a9...c76293`; optimism `0xd315a9...c76293`; bsc [`0x03c01a...153b06`](./contracts/bsc-56/0x03c01acae3d0173a93d819efdc832c7c4f153b06/); bsc `0xd315a9...c76293`; polygon `0xd315a9...c76293`; base [`0x03c01a...153b06`](./contracts/base-8453/0x03c01acae3d0173a93d819efdc832c7c4f153b06/); mode `0xd315a9...c76293`; arbitrum `0xd315a9...c76293`; avalanche `0xd315a9...c76293`; linea `0xd315a9...c76293`; scroll `0xd315a9...c76293` | ⚠️ Unaudited |
| ProxyJoinViaAggregator | unknown | arbitrum | 4 deployments: ethereum `0x9574c8...e88067`; polygon `0x9574c8...e88067`; mode `0xbc0cb9...599c1d`; arbitrum [`0x53675f...438ad3`](./contracts/arbitrum-42161/0x53675f3072b97ef652651d863b1cef5203438ad3/) | ⚠️ Unaudited |
| SwaapSafeguardOracle | operational_periphery | ethereum | 4 deployments: ethereum [`0x09dfbd...53be32`](./contracts/ethereum-1/0x09dfbd341bb932ad5266cd3a345510046f53be32/); ethereum `0x2ea2c0...718a43`; ethereum `0x916f00...cb96e6`; ethereum `0xb62286...75cd39` | ⚠️ Unaudited |
| WstETHToETHPriceAdapter | operational_periphery | ethereum | [`0x181356...66114b`](./contracts/ethereum-1/0x18135648a68918f97cf8bdda1f16dff72e66114b/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (2)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| Authorizer | unknown | ethereum | 10 deployments: ethereum [`0xca19ed...cc123c`](./contracts/ethereum-1/0xca19ed3182e6e591207e959de633a14825cc123c/); optimism [`0xca19ed...cc123c`](./contracts/optimism-10/0xca19ed3182e6e591207e959de633a14825cc123c/); bsc [`0xca19ed...cc123c`](./contracts/bsc-56/0xca19ed3182e6e591207e959de633a14825cc123c/); polygon [`0xca19ed...cc123c`](./contracts/polygon-137/0xca19ed3182e6e591207e959de633a14825cc123c/); mantle [`0xca19ed...cc123c`](./contracts/mantle-5000/0xca19ed3182e6e591207e959de633a14825cc123c/); base `0xd315a9...c76293`; mode [`0xca19ed...cc123c`](./contracts/mode-34443/0xca19ed3182e6e591207e959de633a14825cc123c/); arbitrum [`0xca19ed...cc123c`](./contracts/arbitrum-42161/0xca19ed3182e6e591207e959de633a14825cc123c/); avalanche [`0xca19ed...cc123c`](./contracts/avalanche-43114/0xca19ed3182e6e591207e959de633a14825cc123c/); linea [`0xca19ed...cc123c`](./contracts/linea-59144/0xca19ed3182e6e591207e959de633a14825cc123c/) | ⚠️ Unaudited (bytecode match) |
| ConstantPriceOracle | unknown | bsc | 7 deployments: ethereum `0x3abc21...2d80e2`; bsc [`0x11683b...27b703`](./contracts/bsc-56/0x11683b8d9123dbb319333fac25167da43c27b703/); mantle `0x26e49b...3eecd2`; base `0x943c89...d19d88`; arbitrum `0x5dd640...efdbd3`; linea `0x67b809...b9f3b0`; linea `0xc065c0...53117a` | ⚠️ Unaudited (bytecode match) |

### ❓ Unverified (120)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| Proxy (impl: 0x2ff3ab5703c229691c609318a4cf8cca06ddba67) | proxy | ethereum | `0x0444d9...e02aee` | ❓ Unverified |
| Proxy (impl: 0x37d6c8d22b886949df865e8af5c29daee4bfaf11) | proxy | avalanche | `0x766110...35eb26` | ❓ Unverified |
| Proxy (impl: 0x46d0c6f1e64664d366b4378a87bccfc61ad32796) | proxy | base | `0x3d1a98...30a4b9` | ❓ Unverified |
| Proxy (impl: 0x46f86d5f534627aa084dd0328fe03ffe5be38beb) | proxy | optimism | `0xb53d07...5633b3` | ❓ Unverified |
| Proxy (impl: 0x6e9359dd27980fb7027c179ae5e701e4bcb2f6b9) | proxy | ethereum | `0x22863c...e6ade6` | ❓ Unverified |
| Proxy (impl: 0x8338ec2f638da6abb08867a8144393574e1b4be3) | proxy | polygon | `0xfb5e78...55167f` | ❓ Unverified |
| Proxy (impl: 0x916f006ae522769badf95cf6afdb90e162cb96e6) | proxy | arbitrum | `0xae091d...969e6e` | ❓ Unverified |
| Proxy (impl: 0xb024150b7bb15440224312a742530de68a02dbbf) | proxy | arbitrum | `0xcdc43c...2ec85e` | ❓ Unverified |
| Proxy (impl: 0xcb2e1a46f1d0b7d97a11d5bf62d15120426ea5c2) | proxy | base | `0x0e2e77...9c8d90` | ❓ Unverified |
| Proxy (impl: 0xd52309f6e491e44c532dde306f0869ab71f590cd) | proxy | optimism | `0x1d063e...142deb` | ❓ Unverified |
| Proxy (impl: 0xd52309f6e491e44c532dde306f0869ab71f590cd) | proxy | polygon | `0x1d063e...142deb` | ❓ Unverified |
| Proxy (impl: 0xd6ee0f90575c0fabdd0c17ea9b582edf77ff5506) | proxy | optimism | `0x825c9b...840f2c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x1d063e...142deb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x207063...073ebc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x26ca21...e86c53` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x2768ba...252752` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x2ff3ab...ddba67` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x33ddf3...a86b16` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x360b09...b2f147` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x3ac745...475973` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x3ebe62...674a85` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x6330fd...3d1ad9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x6c759a...ca7a44` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x6e9359...b2f6b9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x7646eb...498100` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x8338ec...1b4be3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x890dd8...068210` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x8fca81...5c9943` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x9d1ec0...b838c4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xb02016...2f0f2a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xb4a42e...d50003` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xb55c74...b27834` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xb8c67b...3fa5bd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xb9f91f...2cf5e1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xc8fd1b...0e01a5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xcb7eb3...1a5244` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xd86236...127a72` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xdce4ad...c2b83b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xf7683a...9e01b9` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0x081136...3cfbde` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0x16e13f...0dc2c7` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0x46f86d...e38beb` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0x55e569...d1ca56` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0x7a039a...077e5f` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0x9d1ec0...b838c4` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0xd52309...f590cd` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0xd6ee0f...ff5506` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x08920a...2c7104` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x0c8b5f...9a4442` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x54985c...9c0afd` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x5dd640...efdbd3` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x825c9b...840f2c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x916f00...cb96e6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x943c89...d19d88` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x962ed2...d69257` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xb4a42e...d50003` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xb8519b...5e1053` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xc8a5ff...0e8378` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xd6ee0f...ff5506` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x16e13f...0dc2c7` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x37ae22...5149d3` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x441dee...ddc9bb` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x8338ec...1b4be3` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xb02415...02dbbf` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xd52309...f590cd` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xe18072...a4b1ce` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xf383ca...809564` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xf496fa...b7491a` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0x03c01a...153b06` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0x33ddf3...a86b16` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0x55e569...d1ca56` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0xcc74bd...3369b8` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0xce9a26...ec97f1` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0xd315a9...c76293` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0xd6ee0f...ff5506` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x022aa4...551132` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x11683b...27b703` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x142e5f...e4dedb` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x1e6354...30d2e6` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x252571...95f32a` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x29fbaf...f8108b` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x307d2a...8b0080` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x34ab4d...344607` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x372861...1c1e87` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x46d0c6...d32796` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x48b8ae...eb6180` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x5258de...6a04ae` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x60abcc...d353ab` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x971c6a...777918` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x973105...50186c` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xa3c636...56e548` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xb20026...5acffa` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xb45f9e...8674d5` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xcb2e1a...6ea5c2` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xec580d...7ab4cf` | ❓ Unverified |
| UnnamedContract | unknown | mode | `0xbc40a1...83263a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x11683b...27b703` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x19cd92...f661d1` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x252571...95f32a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x307d2a...8b0080` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x372995...4d3205` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x42fff9...4df59b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x441dee...ddc9bb` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x7162ae...cd068f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x78993f...6c4679` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x916f00...cb96e6` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xad1051...ae4fc4` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xb02415...02dbbf` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xb62286...75cd39` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xbbd561...8df14b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xcd180b...3cb9b1` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xe331b9...d702dc` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x03c01a...153b06` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x2d791e...da51e3` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x37d6c8...bfaf11` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x7a039a...077e5f` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xcc74bd...3369b8` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0x2d791e...da51e3` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0x69dbe8...543c4b` | ❓ Unverified |
| UnnamedContract | unknown | scroll | `0xcc74bd...3369b8` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [audit.pdf](https://github.com/swaap-labs/swaap-core-v1/blob/main/audits/chainsecurity/audit.pdf) | ChainSecurity | Audit | 2022-05 | stale | Direct | n/a | 0 | n/a |
| [audit.pdf](https://github.com/swaap-labs/swaap-core-v1/blob/main/audits/runtime-verification/audit.pdf) | Runtime Verification | Audit | 2022-05 | stale | Direct | n/a | 0 | n/a |
| [DL audit link](https://www.chainsecurity.com/security-audit/swaap-finance-safeguardpool) | ChainSecurity | Audit | n/a | unknown | Direct | contract_name | 5 | low |
| [download report](https://reports.chainsecurity.com/Swaap/ChainSecurity_Swaap_SafeguardPool_Audit.pdf) | ChainSecurity | Audit | 2023-06 | stale | Direct | contract_name | 20 | high |
| [DL audit link](https://runtimeverification.com/blog/runtime-verification-audits-swaap-s-pool-smart-contracts) | unknown | Audit | 2022-07 | stale | Direct | n/a | 0 | n/a |
| [detailed report](https://github.com/runtimeverification/publications/blob/main/reports/smart-contracts/swaap-audit-report.pdf) | Runtime Verification | Audit | 2022-05 | stale | Direct | n/a | 0 | n/a |
| [quantstamp_SafeguardPool_audit.pdf](https://github.com/swaap-labs/swaap-v2-monorepo/blob/main/audits/quantstamp/quantstamp_SafeguardPool_audit.pdf) | Quantstamp | Audit | 2023-07 | stale | Direct | contract_name | 20 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | [`0x03c01a...153b06`](./contracts/bsc-56/0x03c01acae3d0173a93d819efdc832c7c4f153b06/) | Vault | core_logic | $3,809,615.57 | Verified native implementation with $3,809,615.57 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xca19ed...cc123c`](./contracts/ethereum-1/0xca19ed3182e6e591207e959de633a14825cc123c/) | Authorizer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x53675f...438ad3`](./contracts/arbitrum-42161/0x53675f3072b97ef652651d863b1cef5203438ad3/) | ProxyJoinViaAggregator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x09dfbd...53be32`](./contracts/ethereum-1/0x09dfbd341bb932ad5266cd3a345510046f53be32/) | SwaapSafeguardOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x181356...66114b`](./contracts/ethereum-1/0x18135648a68918f97cf8bdda1f16dff72e66114b/) | WstETHToETHPriceAdapter | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 28 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 100 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 4
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=2, low=1
- Match method counts: extraction_exact=45

Zero-match audit list:

- [2587] audit.pdf
- [2588] audit.pdf
- [2591] DL audit link
- [2592] detailed report

Fork inheritance lineage and inherited audits are included when available.
