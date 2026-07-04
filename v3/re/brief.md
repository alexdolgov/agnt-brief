# Agentic Audit Brief: Re

## Project Overview

- Project: Re (`re`)
- Website: [https://app.re.xyz](https://app.re.xyz)
- Lifecycle: unknown
- Generated: 2026-07-03T21:06:44.208Z
- Pipeline run: v2-2026-07-02-1ba3fd
- Chains: arbitrum, avalanche, base, bsc, ethereum
- Contract surface: 41 unique implementations (41 raw deployments)
- DeFi Llama TVL: $246,864,754.08
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

RWA. Structurally: 36 project-authored contract(s) across 5 chain(s); 1 ERC20 token, 3 Chainlink feeds; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 3 functional families. Its contracts share 2 common project-authored base contract(s) (accessmanaged, owned). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 41; live-surface contracts included: 41 (38 live, 3 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/38 (0.0%)
- Deployed-live implementations: 38 of 41 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/41
- Verified + Unaudited implementations: 41
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 41
- Raw deployments: 41
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Audit staleness (calendar age): 0 fresh, 0 aging, 0 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (41)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AccessControlledOCR2Aggregator | unknown | avalanche | n/a | [`0x2c0445...69e7d7`](./contracts/avalanche-43114/0x2c04457b00b09f30d3bc866e3d14493a8069e7d7/) | ⚠️ Unaudited |
| AccessControlledOffchainAggregator | unknown | avalanche | n/a | [`0x187275...2c493f`](./contracts/avalanche-43114/0x1872758f3635aa3cfa58ca30bc2ec84e5a2c493f/) | ⚠️ Unaudited |
| AccessManager | unknown | bsc | n/a | [`0x296da4...38a2cc`](./contracts/bsc-56/0x296da459b6192ec337a4784ea4fd8c90df38a2cc/) | ⚠️ Unaudited |
| AddressBook | unknown | ethereum | n/a | [`0x6d9e4f...0d0cf5`](./contracts/ethereum-1/0x6d9e4f633ed11178f69a861913124150e00d0cf5/) | ⚠️ Unaudited |
| CollateralManagerFactory | unknown | base | n/a | [`0x18538f...f8f1c7`](./contracts/base-8453/0x18538f534c74176bd9384e28f95ef98e4ef8f1c7/) | ⚠️ Unaudited |
| CompositeOracle | unknown | arbitrum | n/a | [`0x439b0f...2accc7`](./contracts/arbitrum-42161/0x439b0f40ed075ff3052b5bf035d17c26d22accc7/) | ⚠️ Unaudited |
| DecentralizedFund | unknown | ethereum | n/a | [`0x78b52f...23ef71`](./contracts/ethereum-1/0x78b52f4d1f0d8226dc400072c66d38beae23ef71/) | ⚠️ Unaudited |
| DepositTokenRegistry | unknown | ethereum | n/a | [`0x474bd4...ec47f1`](./contracts/ethereum-1/0x474bd40cfddafb2cff7954cc50c10c6dd7ec47f1/) | ⚠️ Unaudited |
| EACAggregatorProxy | unknown | avalanche | n/a | [`0x1f41ef...0c515b`](./contracts/avalanche-43114/0x1f41ef93dece881ad0b98082b2d44d3f6f0c515b/) | ⚠️ Unaudited |
| ERC1967Proxy | unknown | avalanche | n/a | [`0x0937df...64f281`](./contracts/avalanche-43114/0x0937df35e95e8ed2d2ecd66af3426c669d64f281/) | ⚠️ Unaudited |
| ERC1967Proxy | unknown | avalanche | n/a | [`0x180af8...a625bf`](./contracts/avalanche-43114/0x180af87b47bf272b2df59dccf2d76a6eafa625bf/) | ⚠️ Unaudited |
| ExchangeRateOracle | unknown | ethereum | n/a | [`0x051755...b3fb1e`](./contracts/ethereum-1/0x05175571fe251be44511240caf3ac305a4b3fb1e/) | ⚠️ Unaudited |
| FeeVault | unknown | avalanche | n/a | [`0x15fd35...d9da45`](./contracts/avalanche-43114/0x15fd35d6207e7f3d8cc28c5965c615420fd9da45/) | ⚠️ Unaudited |
| InstantRedemption | unknown | arbitrum | n/a | [`0x121e2d...3f9de4`](./contracts/arbitrum-42161/0x121e2db2f8eed242d7265d2e2bd9a527843f9de4/) | ⚠️ Unaudited |
| InsuranceCapitalLayer | unknown | ethereum | n/a | [`0x4691c4...de3093`](./contracts/ethereum-1/0x4691c475be804fa85f91c2d6d0adf03114de3093/) | ⚠️ Unaudited |
| InsuranceCapitalLayerFactory | unknown | base | n/a | [`0x355fee...96e1f6`](./contracts/base-8453/0x355fee76e3860902b39a42fd12372b382296e1f6/) | ⚠️ Unaudited |
| KYCRegistry | unknown | avalanche | n/a | [`0x2723d4...bedb19`](./contracts/avalanche-43114/0x2723d4063765223e40d21d02d9d8685511bedb19/) | ⚠️ Unaudited |
| L2SequencerAwareOracle | unknown | base | n/a | [`0x0920f9...8a670d`](./contracts/base-8453/0x0920f9d54352df06ceba0737aa1712c3b08a670d/) | ⚠️ Unaudited |
| NAVConsumer | unknown | ethereum | n/a | [`0x105f7f...31d717`](./contracts/ethereum-1/0x105f7f110ed2293b3d34fc8871204d20a631d717/) | ⚠️ Unaudited |
| PayoutTokenRegistry | unknown | avalanche | n/a | [`0x15b533...87a0ea`](./contracts/avalanche-43114/0x15b5330d0ac7fafa5e51e763852ad54ce387a0ea/) | ⚠️ Unaudited |
| PendleREUSDESY | unknown | ethereum | n/a | [`0x070752...7432e2`](./contracts/ethereum-1/0x0707523e0cd77d8ed714feadbdd200ccd37432e2/) | ⚠️ Unaudited |
| PendleREUSDSY | unknown | ethereum | n/a | [`0x62f338...c7b2d4`](./contracts/ethereum-1/0x62f338f22045cdac5dcc6b7b0bcaa21cf1c7b2d4/) | ⚠️ Unaudited |
| PoolRegistry | unknown | base | n/a | [`0x61d551...3d2975`](./contracts/base-8453/0x61d551baa2cf670836813720bf07db98e13d2975/) | ⚠️ Unaudited |
| Prestaking | unknown | avalanche | n/a | [`0x03d16b...73875d`](./contracts/avalanche-43114/0x03d16b9a4107a2abcfe6385c8c61d6afd773875d/) | ⚠️ Unaudited |
| PriceRouter | unknown | base | n/a | [`0x2c0a73...05b9e4`](./contracts/base-8453/0x2c0a73999f8898e28f79b1bd7d9ed9f14105b9e4/) | ⚠️ Unaudited |
| RatioVaultStableTokenPriceOracle | unknown | ethereum | n/a | [`0x38ce52...08ad26`](./contracts/ethereum-1/0x38ce52d3ad37929612b047130ce804bdd308ad26/) | ⚠️ Unaudited |
| RedemptionGateway | unknown | base | n/a | [`0x380b62...9f15e7`](./contracts/base-8453/0x380b62fb2a436bc304b02950a73c6970bb9f15e7/) | ⚠️ Unaudited |
| RedemptionReserveCalculator | unknown | base | n/a | [`0x192877...9538d3`](./contracts/base-8453/0x1928772d65a7da4630ab7e2feb425d89509538d3/) | ⚠️ Unaudited |
| RedemptionVault | unknown | ethereum | n/a | [`0x5c454f...31b147`](./contracts/ethereum-1/0x5c454f5526e41fbe917b63475cd8ca7e4631b147/) | ⚠️ Unaudited |
| ReProtocolExchangeRateChainlinkAdapter | unknown | avalanche | n/a | [`0x4c5586...0ce7bc`](./contracts/avalanche-43114/0x4c558694f16484e5c7a4a52bd210d471860ce7bc/) | ⚠️ Unaudited |
| ReProtocolToken | unknown | ethereum | n/a | [`0x4d24b4...bc0273`](./contracts/ethereum-1/0x4d24b40e5b1103b3ce071192fce91ef39abc0273/) | ⚠️ Unaudited |
| ReProtocolTokenFactory | unknown | ethereum | n/a | [`0x059061...f1c984`](./contracts/ethereum-1/0x0590612e831c137c314cb2d3a7534993a1f1c984/) | ⚠️ Unaudited |
| SharePriceCalculator | unknown | arbitrum | n/a | [`0x5cd24d...3b7425`](./contracts/arbitrum-42161/0x5cd24d20e2f3c6742be752cb0f8c2531ca3b7425/) | ⚠️ Unaudited |
| SharePriceCalculatorFactory | unknown | ethereum | n/a | [`0x0520a2...e96033`](./contracts/ethereum-1/0x0520a29f93bedd7f360850e205bb070d3de96033/) | ⚠️ Unaudited |
| SharePriceOracle | unknown | ethereum | n/a | [`0x0764bf...77b6bb`](./contracts/ethereum-1/0x0764bfa862164d28799f31e7e1e7206f5177b6bb/) | ⚠️ Unaudited |
| SimpleOracle | unknown | ethereum | n/a | [`0x906a94...65c87c`](./contracts/ethereum-1/0x906a94ca3275243459fdb22324b242be4c65c87c/) | ⚠️ Unaudited |
| StableTokenPriceOracle | unknown | ethereum | n/a | [`0x024457...3525d3`](./contracts/ethereum-1/0x024457df4689e15f6453417f944a45bf9e3525d3/) | ⚠️ Unaudited |
| ThresholdOracle | unknown | base | n/a | [`0x0a5425...7a6bb6`](./contracts/base-8453/0x0a5425abdb2ff01671b0596a015a08c2037a6bb6/) | ⚠️ Unaudited |
| TimelockController | unknown | ethereum | n/a | [`0x69ddea...7fca93`](./contracts/ethereum-1/0x69ddea332723cf5407151aaf68b9b076557fca93/) | ⚠️ Unaudited |
| VolatileTokenPriceOracle | unknown | avalanche | n/a | [`0x56b079...469511`](./contracts/avalanche-43114/0x56b079978151421cbe625660eefc45380e469511/) | ⚠️ Unaudited |
| WindowRedemption | unknown | arbitrum | n/a | [`0x0f4eff...7b9686`](./contracts/arbitrum-42161/0x0f4effe40d9e479e1909212f024c0181ed7b9686/) | ⚠️ Unaudited |

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
| [www.certora.com/reports/re-core](https://www.certora.com/reports/re-core) | Hacken | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 41 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [20984] www.certora.com/reports/re-core

Fork inheritance lineage and inherited audits are included when available.
