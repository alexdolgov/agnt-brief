# Agentic Audit Brief: Re7 Labs

## Project Overview

- Project: Re7 Labs (`re7-labs`)
- Website: [https://www.re7labs.xyz](https://www.re7labs.xyz)
- Lifecycle: active (Tier 0, 90.3% below peak)
- Generated: 2026-06-17T07:00:52.570Z
- Pipeline run: brief-regen-topo-2026-06-17
- Chains: avalanche, base, ethereum, optimism, polygon, unichain
- Contract surface: 16 unique implementations (57 raw deployments)
- DeFi Llama TVL: $84,763,292.69
- On-chain TVL (included contracts): $6,550,725.40
- TVL by chain: Ethereum $5,211,279.65 | Base $1,236,164.98 | Optimism $103,280.77

## Project Description

Re7 Labs is a DeFi risk curator, advisor, ecosystem designer, and research/risk tooling organization active across multiple ecosystems. Its on-chain surface includes managed yield vault deployments such as captured MultiVault and MellowVaultCompat vault contracts governed through multisig infrastructure, but those contracts represent only part of the broader Re7 Labs project footprint.

### Architecture

All vaults are governed by Gnosis Safe multisigs, which control upgrades and parameter changes. The vaults share common implementation contracts (MultiVault and MellowVaultCompat) deployed via TransparentUpgradeableProxy, enabling consistent risk management across chains.

## Contract Surface Quality

- Indexed contracts: 59; live-surface contracts included: 57 (46 live, 11 unknown).
- Excluded by liveness: 2 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 10/12 live.
- Detected codebases: none
- Dependencies extracted: 2; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 0/16 (0.0%)
- Verified + Unaudited implementations: 16
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 16
- Raw deployments: 57
- Audits discovered: 0
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $6,550,725.40
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (16)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| MultiVault | core_logic | ethereum | unit-31936 (7 proxies) | 7 deployments: ethereum [`0x2759e4...8f2faf`](./contracts/ethereum-1/0x2759e4741b370506be2ccef898960108e98f2faf/); ethereum `0x4c690c...3c48d6`; ethereum `0x617895...0ad40c`; ethereum `0x62f0ba...3e041c`; ethereum `0x7a4eff...327e3a`; ethereum `0x84631c...a9f93a`; ethereum `0x8b0e80...32a2e8` | ⚠️ Unaudited |
| VaultV2 | core_logic | ethereum | n/a | 9 deployments: ethereum [`0x044472...042122`](./contracts/ethereum-1/0x04447273ee808702a4855403af0ace8e7c042122/); ethereum `0x1ce235...3da446`; ethereum `0x5181cd...4643ae`; ethereum `0x787fc6...af7af9`; optimism `0x3d6393...79dd76`; base `0x0b7ee8...171d25`; base `0x618495...b07b9b`; base `0xc9c474...ead645`; base `0xca120d...8edec4` | ⚠️ Unaudited |
| MellowVaultCompat | core_logic | ethereum | unit-31938 (3 proxies) | 3 deployments: ethereum [`0x3a828c...45b4c7`](./contracts/ethereum-1/0x3a828c183b3f382d030136c824844ea30145b4c7/); ethereum `0x7f43fd...9ce444`; ethereum `0xc65433...c47bd8` | ⚠️ Unaudited |
| EVault | core_logic | ethereum | unit-31935 (10 proxies) | 10 deployments: ethereum [`0x117576...bfa866`](./contracts/ethereum-1/0x117576b8854a03ab7c3df1cf1cd8e04767bfa866/); ethereum `0x586719...1193e8`; ethereum `0x631d8e...634de8`; ethereum `0x82c710...7f86fa`; ethereum `0x8dde38...44dc4c`; ethereum `0xa992d3...f737af`; ethereum `0xac73ef...b70eda`; ethereum `0xbd9a87...36e0cb`; ethereum `0xce45ef...7873de`; ethereum `0xe3b66c...126760` | ⚠️ Unaudited |
| Vault | core_logic | ethereum | unit-31937 (2 proxies) | 2 deployments: ethereum [`0x35e44d...e75fe7`](./contracts/ethereum-1/0x35e44d92e8f738a272bddbae53d1dc9490e75fe7/); ethereum `0x3d93b3...cdd46e` | ⚠️ Unaudited |
| GnosisSafe | governance | ethereum | unit-31942 (3 proxies) | 3 deployments: ethereum [`0x81698f...df0af0`](./contracts/ethereum-1/0x81698f87c6482bf1ce9bfcfc0f103c4a0adf0af0/); ethereum `0x9437b2...f72003`; ethereum `0xe86399...a04433` | ⚠️ Unaudited |
| GnosisSafeL2 | governance | base | unit-31946 | [`0xd8b0f4...99c940`](./contracts/base-8453/0xd8b0f4e54a8dac04e0a57392f5a630cedb99c940/) | ⚠️ Unaudited |
| MetaMorpho | unknown | base | n/a | 7 deployments: ethereum `0x78fc2c...d094d0`; ethereum `0x95eef5...be01a8`; ethereum `0xa02f5e...a772f7`; ethereum `0xe0c986...823763`; base [`0x12afde...70406e`](./contracts/base-8453/0x12afdefb2237a5963e7bab3e2d46ad0eee70406e/); base `0x6e37c9...7a001b`; base `0xa2cac0...203afc` | ⚠️ Unaudited |
| MetaMorphoV1_1 | unknown | base | n/a | 8 deployments: ethereum `0x341193...bd0dda`; ethereum `0x4d5254...c4acfe`; ethereum `0x64964e...1aeb8e`; unichain `0x2c0f7e...10858c`; unichain `0x6af5e4...c26e52`; unichain `0xa48f8a...50f8cd`; polygon `0xf91d80...2c1c69`; base [`0x00dfdb...9fb330`](./contracts/base-8453/0x00dfdb8c7295a03dcf1adff4d21eb5d9d19fb330/) | ⚠️ Unaudited |
| MRe7BtcDepositVault | core_logic | ethereum | unit-31941 | [`0x5e1549...0e47f6`](./contracts/ethereum-1/0x5e154946561aea4e750aac6dead23d37e00e47f6/) | ⚠️ Unaudited |
| MRe7BtcRedemptionVaultWithSwapper | adapter | ethereum | unit-31939 | [`0x4fd4dd...4321b0`](./contracts/ethereum-1/0x4fd4dd7171d14e5bd93025ec35374d2b9b4321b0/) | ⚠️ Unaudited |
| MRe7DepositVault | core_logic | ethereum | unit-31944 | [`0xce0a29...924ac7`](./contracts/ethereum-1/0xce0a2953a5d46400af601a9857235312d1924ac7/) | ⚠️ Unaudited |
| MRe7RedemptionVaultWithSwapper | adapter | ethereum | unit-31940 | [`0x5356b8...565234`](./contracts/ethereum-1/0x5356b8e06589de894d86b24f4079c629e8565234/) | ⚠️ Unaudited |
| NetworkRestakeDelegator | unknown | ethereum | n/a | [`0xde43da...e51da0`](./contracts/ethereum-1/0xde43dade5d05b31b1e3524a268b32314dee51da0/) | ⚠️ Unaudited |
| SafeProxy | unknown | avalanche | n/a | [`0x3ba156...62be65`](./contracts/avalanche-43114/0x3ba1566ed39f865baf4c1eb9ace53f3d2062be65/) | ⚠️ Unaudited |
| SymbioticWithdrawalQueue | operational_periphery | ethereum | unit-31943 | [`0xbac961...09900e`](./contracts/ethereum-1/0xbac96113f4f29b622c24fe2af9abbce29909900e/) | ⚠️ Unaudited |

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

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 16 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
