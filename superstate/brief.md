# Agentic Audit Brief: Superstate

## Project Overview

- Project: Superstate (`superstate`)
- Website: [https://superstate.com/](https://superstate.com/)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:59.106Z
- Pipeline run: v2-2026-07-02-1ba3fd
- Chains: ethereum
- Contract surface: 32 unique implementations (32 raw deployments)
- DeFi Llama TVL: $872,953,120.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Basis Trading. Structurally: 32 project-authored contract(s) across 1 chain(s); 6 ERC20 tokens, 5 Chainlink feeds; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 2 functional families. Its contracts share 15 common project-authored base contract(s) (owned, simplereadaccesscontroller, simplewriteaccesscontroller). Dominant framework: openzeppelin.

## Fork Lineage

This project reuses audited code from **Lido** (`lido`) in the AccessControlledAggregator, DualAggregator subsystem.
15 audits inherited from `lido`, scoped to that subsystem.

Total inherited audits: 15. Inherited coverage reflects forked/shared code audited by the origin project — it is not a direct audit of this project.

## Contract Surface Quality

- Indexed contracts: 32; live-surface contracts included: 32 (32 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 2/28 (7.1%)
- Deployed-live implementations: 32 of 32 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 2/32
- Verified + Unaudited implementations: 30
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 32
- Raw deployments: 32
- Audits discovered: 15 (0 direct, 15 inherited from forked code)
- Scoreable audits (matched contracts): 15
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-06 (fresh)
- Audit staleness (calendar age): 15 fresh, 0 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 2 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: 7.1% (Code4rena, Cyfrin, MixBytes, Spearbit)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Code4rena | Tier 1 | 2 | 6.3% | 2026-03 |
| Composable Security | Tier 2 | 2 | 6.3% | 2026-06 |
| Cyfrin | Tier 1 | 2 | 6.3% | 2026-05 |
| MixBytes | Tier 1 | 2 | 6.3% | 2026-05 |
| Nethermind | Tier 2 | 2 | 6.3% | 2026-04 |
| Spearbit | Tier 1 | 2 | 6.3% | 2026-03 |
| yAudit | Tier 2 | 2 | 6.3% | 2026-04 |

## Contract Surface

### ✅ Verified + Audited (2)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AccessControlledAggregator | unknown | ethereum | n/a | [`0x0086e1e119ecc95be344c3efca7b39f15a01b423`](./contracts/ethereum-1/0x0086e1e119ecc95be344c3efca7b39f15a01b423/) | ✅ Audited |
| DualAggregator | unknown | ethereum | n/a | [`0x1eeb875dd64f6313ff315679791ae1a27c19a5df`](./contracts/ethereum-1/0x1eeb875dd64f6313ff315679791ae1a27c19a5df/) | ✅ Audited |

### ⚠️ Verified + Unaudited (30)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AccessControlledOCR2Aggregator | unknown | ethereum | n/a | [`0x04397a4f83256e7aed344d974b70d8a120c67ece`](./contracts/ethereum-1/0x04397a4f83256e7aed344d974b70d8a120c67ece/) | ⚠️ Unaudited |
| AccessControlledOffchainAggregator | unknown | ethereum | n/a | [`0x002c4ee1829294f7ca9de8a90d4bdd467310e5ae`](./contracts/ethereum-1/0x002c4ee1829294f7ca9de8a90d4bdd467310e5ae/) | ⚠️ Unaudited |
| Allowlist | unknown | ethereum | n/a | [`0x02f1fa8b196d21c7b733eb2700b825611d8a38e5`](./contracts/ethereum-1/0x02f1fa8b196d21c7b733eb2700b825611d8a38e5/) | ⚠️ Unaudited |
| BurnMintTokenPool | unknown | ethereum | n/a | [`0x4841f6098f09b8c2b7b5024abecc6b6ffdfc544d`](./contracts/ethereum-1/0x4841f6098f09b8c2b7b5024abecc6b6ffdfc544d/) | ⚠️ Unaudited |
| ChannelConfigStore | unknown | ethereum | n/a | [`0x1affdb984bbd8c3382f1ddc8bd605383830160f3`](./contracts/ethereum-1/0x1affdb984bbd8c3382f1ddc8bd605383830160f3/) | ⚠️ Unaudited |
| Configurator | unknown | ethereum | n/a | [`0x6d05b6b04a4f456e0ea6a0379b6173eae52e71b1`](./contracts/ethereum-1/0x6d05b6b04a4f456e0ea6a0379b6173eae52e71b1/) | ⚠️ Unaudited |
| ConfirmedTransactionModule | unknown | ethereum | n/a | [`0x04b2218a03f4b034a2e83e9e8d1e7ea0da8748ba`](./contracts/ethereum-1/0x04b2218a03f4b034a2e83e9e8d1e7ea0da8748ba/) | ⚠️ Unaudited |
| EACAggregatorProxy | unknown | ethereum | n/a | [`0x014f606c37cfd6fc42ec11d10086df500125e0a5`](./contracts/ethereum-1/0x014f606c37cfd6fc42ec11d10086df500125e0a5/) | ⚠️ Unaudited |
| EquityToken | unknown | ethereum | n/a | [`0x2ed862ea0da8edb9070fd8ac996b8267992a7ee9`](./contracts/ethereum-1/0x2ed862ea0da8edb9070fd8ac996b8267992a7ee9/) | ⚠️ Unaudited |
| FeeManager | unknown | ethereum | n/a | [`0x48a42f6aed34fd936355b5358fee4de847dcf649`](./contracts/ethereum-1/0x48a42f6aed34fd936355b5358fee4de847dcf649/) | ⚠️ Unaudited |
| GnosisSafe | unknown | ethereum | n/a | [`0x4adfbf10e9833ee6dd57b3569c5755f8139a993d`](./contracts/ethereum-1/0x4adfbf10e9833ee6dd57b3569c5755f8139a993d/) | ⚠️ Unaudited |
| GnosisSafeProxyFactory | unknown | ethereum | n/a | [`0x6ea64a20d3a459622d67b288062a3edcf686e0fb`](./contracts/ethereum-1/0x6ea64a20d3a459622d67b288062a3edcf686e0fb/) | ⚠️ Unaudited |
| LockReleaseTokenPool | unknown | ethereum | n/a | [`0x3a2ea8bae01410425d01c2c5f488e4777daa54df`](./contracts/ethereum-1/0x3a2ea8bae01410425d01c2c5f488e4777daa54df/) | ⚠️ Unaudited |
| MultiSend | unknown | ethereum | n/a | [`0x77deaa3c55f576d3ec0c130cadfbc5bf1cd64081`](./contracts/ethereum-1/0x77deaa3c55f576d3ec0c130cadfbc5bf1cd64081/) | ⚠️ Unaudited |
| ProxyAdmin | unknown | ethereum | n/a | [`0xcb8d325c0af19697b8454481602097f93aa9040f`](./contracts/ethereum-1/0xcb8d325c0af19697b8454481602097f93aa9040f/) | ⚠️ Unaudited |
| RedemptionIdle | unknown | ethereum | n/a | [`0x4c21b7577c8fe8b0b0669165ee7c8f67fa1454cf`](./contracts/ethereum-1/0x4c21b7577c8fe8b0b0669165ee7c8f67fa1454cf/) | ⚠️ Unaudited |
| RewardManager | unknown | ethereum | n/a | [`0x1a2a2dc0aab0defc092ed8636330eaebd975e7ec`](./contracts/ethereum-1/0x1a2a2dc0aab0defc092ed8636330eaebd975e7ec/) | ⚠️ Unaudited |
| SimpleReadAccessController | unknown | ethereum | n/a | [`0x70e7d9a2fe6225d926b7c0bb728529eb64a02ab9`](./contracts/ethereum-1/0x70e7d9a2fe6225d926b7c0bb728529eb64a02ab9/) | ⚠️ Unaudited |
| SimpleWriteAccessController | unknown | ethereum | n/a | [`0xe0ba139337a3618186f3aa9f71ed8aa943c3dcae`](./contracts/ethereum-1/0xe0ba139337a3618186f3aa9f71ed8aa943c3dcae/) | ⚠️ Unaudited |
| SuperstateOracle | unknown | ethereum | n/a | [`0xe4fa682f94610ccd170680cc3b045d77d9e528a8`](./contracts/ethereum-1/0xe4fa682f94610ccd170680cc3b045d77d9e528a8/) | ⚠️ Unaudited |
| SuperstateToken | unknown | ethereum | n/a | [`0x0f3bfe75fb5a66a3c01b9ba33b57de353df7270d`](./contracts/ethereum-1/0x0f3bfe75fb5a66a3c01b9ba33b57de353df7270d/) | ⚠️ Unaudited |
| SuperstateTokenV5_1 | unknown | ethereum | n/a | [`0x14d60e7fdc0d71d8611742720e4c50e7a974020c`](./contracts/ethereum-1/0x14d60e7fdc0d71d8611742720e4c50e7a974020c/) | ⚠️ Unaudited |
| UniswapAnchoredView | unknown | ethereum | n/a | [`0x046728da7cb8272284238bd3e47909823d63a58d`](./contracts/ethereum-1/0x046728da7cb8272284238bd3e47909823d63a58d/) | ⚠️ Unaudited |
| USCC | unknown | ethereum | n/a | [`0x41feb4943df07f6793c059f98f28ed0e15f6852b`](./contracts/ethereum-1/0x41feb4943df07f6793c059f98f28ed0e15f6852b/) | ⚠️ Unaudited |
| USCCv2 | unknown | ethereum | n/a | [`0x5ce236c888fa6d8dba00e7d66cfd9bc9cadea2e1`](./contracts/ethereum-1/0x5ce236c888fa6d8dba00e7d66cfd9bc9cadea2e1/) | ⚠️ Unaudited |
| USTB | unknown | ethereum | n/a | [`0x3986a1475f3c7786973e1b83cd6240521c51a1af`](./contracts/ethereum-1/0x3986a1475f3c7786973e1b83cd6240521c51a1af/) | ⚠️ Unaudited |
| USTBv2 | unknown | ethereum | n/a | [`0x34ee7037db155b6fa18c9727169d39f63a8794da`](./contracts/ethereum-1/0x34ee7037db155b6fa18c9727169d39f63a8794da/) | ⚠️ Unaudited |
| ValidatorProxy | unknown | ethereum | n/a | [`0x0238247e71ad0ab272203af13baea72e99ee7c3c`](./contracts/ethereum-1/0x0238247e71ad0ab272203af13baea72e99ee7c3c/) | ⚠️ Unaudited |
| Verifier | unknown | ethereum | n/a | [`0xa618f119504455762c9bbbce4ac9ee7fde457d05`](./contracts/ethereum-1/0xa618f119504455762c9bbbce4ac9ee7fde457d05/) | ⚠️ Unaudited |
| VerifierProxy | unknown | ethereum | n/a | [`0xaae5ec245bb779883786b44ab3aaad5313ff6582`](./contracts/ethereum-1/0xaae5ec245bb779883786b44ab3aaad5313ff6582/) | ⚠️ Unaudited |

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
| [2026-04-13_Nethermind_NM-0891_Mellow-5507eaaf13402e03f180e0342c78c045.pdf](https://docs.lido.fi/assets/files/2026-04-13_Nethermind_NM-0891_Mellow-5507eaaf13402e03f180e0342c78c045.pdf) | Nethermind | Audit | 2026-04 | fresh | Inherited from Lido — forked code, scoped to AccessControlledAggregator, DualAggregator | inherited | 2 | n/a |
| [zkSync-2026-03-05-Cantina-PR-85-fix-report.pdf](https://github.com/lidofinance/audits/blob/main/L2/zkSync-2026-03-05-Cantina-PR-85-fix-report.pdf) | Spearbit | Audit | 2026-03 | fresh | Inherited from Lido — forked code, scoped to AccessControlledAggregator, DualAggregator | inherited | 2 | n/a |
| [2026-03-02_Nethermind_NM-0758_Mellow.pdf](https://docs.lido.fi/audits/mellow/2026-03-02_Nethermind_NM-0758_Mellow.pdf) | Nethermind | Audit | 2026-03 | fresh | Inherited from Lido — forked code, scoped to AccessControlledAggregator, DualAggregator | inherited | 2 | n/a |
| [2026-03-02_Nethermind_NM-0758_Mellow-16bc93dbff41496cfb995655c453cf0f.pdf](https://docs.lido.fi/assets/files/2026-03-02_Nethermind_NM-0758_Mellow-16bc93dbff41496cfb995655c453cf0f.pdf) | Code4rena | Contest | 2026-03 | fresh | Inherited from Lido — forked code, scoped to AccessControlledAggregator, DualAggregator | inherited | 2 | n/a |
| [2026-01-07_Nethermind_NM-0798_Mellow.pdf](https://docs.lido.fi/audits/mellow/2026-01-07_Nethermind_NM-0798_Mellow.pdf) | Nethermind | Audit | 2026-01 | fresh | Inherited from Lido — forked code, scoped to AccessControlledAggregator, DualAggregator | inherited | 2 | n/a |
| [2026-01-21_Nethermind_NM-0812_Mellow.pdf](https://docs.lido.fi/audits/mellow/2026-01-21_Nethermind_NM-0812_Mellow.pdf) | Nethermind | Audit | 2026-01 | fresh | Inherited from Lido — forked code, scoped to AccessControlledAggregator, DualAggregator | inherited | 2 | n/a |
| [2026-01-07_Nethermind_NM-0798_Mellow-234cd31bcfcfe7e0239fa7c3da25fda8.pdf](https://docs.lido.fi/assets/files/2026-01-07_Nethermind_NM-0798_Mellow-234cd31bcfcfe7e0239fa7c3da25fda8.pdf) | Nethermind | Audit | 2026-01 | fresh | Inherited from Lido — forked code, scoped to AccessControlledAggregator, DualAggregator | inherited | 2 | n/a |
| [2026-01-21_Nethermind_NM-0812_Mellow-a9c3d364fc476f68a4f82d6bc5c993ac.pdf](https://docs.lido.fi/assets/files/2026-01-21_Nethermind_NM-0812_Mellow-a9c3d364fc476f68a4f82d6bc5c993ac.pdf) | Code4rena | Contest | 2026-01 | fresh | Inherited from Lido — forked code, scoped to AccessControlledAggregator, DualAggregator | inherited | 2 | n/a |
| [Composable Security Lido Oracle V8 Audit Report.pdf](https://github.com/lidofinance/audits/blob/main/Composable%20Security%20Lido%20Oracle%20V8%20Audit%20Report.pdf) | Composable Security | Audit | 2026-06 | fresh | Inherited from Lido — forked code, scoped to AccessControlledAggregator, DualAggregator | inherited | 2 | n/a |
| [Cyfrin CircuitBreaker Audit Report 04-2026.pdf](https://github.com/lidofinance/audits/blob/main/Cyfrin%20CircuitBreaker%20Audit%20Report%2004-2026.pdf) | Cyfrin | Audit | 2026-05 | fresh | Inherited from Lido — forked code, scoped to AccessControlledAggregator, DualAggregator | inherited | 2 | n/a |
| [MixBytes CircuitBreaker Audit Report 04-2026.pdf](https://github.com/lidofinance/audits/blob/main/MixBytes%20CircuitBreaker%20Audit%20Report%2004-2026.pdf) | MixBytes | Audit | 2026-05 | fresh | Inherited from Lido — forked code, scoped to AccessControlledAggregator, DualAggregator | inherited | 2 | n/a |
| [MixBytes Lido v3 Security Audit Report 03-26.pdf](https://github.com/lidofinance/audits/blob/main/MixBytes%20Lido%20v3%20Security%20Audit%20Report%2003-26.pdf) | yAudit | Audit | 2026-04 | fresh | Inherited from Lido — forked code, scoped to AccessControlledAggregator, DualAggregator | inherited | 2 | n/a |
| [MixBytes Lido Easy Track stVaults Security Audit Report 03-26.pdf](https://github.com/lidofinance/audits/blob/main/MixBytes%20Lido%20Easy%20Track%20stVaults%20Security%20Audit%20Report%2003-26.pdf) | yAudit | Audit | 2026-04 | fresh | Inherited from Lido — forked code, scoped to AccessControlledAggregator, DualAggregator | inherited | 2 | n/a |
| [Cyfrin CircuitBreaker Formal Verification Report 04-2026.pdf](https://github.com/lidofinance/audits/blob/main/Cyfrin%20CircuitBreaker%20Formal%20Verification%20Report%2004-2026.pdf) | Cyfrin | Audit | 2026-04 | fresh | Inherited from Lido — forked code, scoped to AccessControlledAggregator, DualAggregator | inherited | 2 | n/a |
| [MixBytes Lido DeFi Wrapper MellowStrategyAdapter Security Audit Report 03-2026.pdf](https://github.com/lidofinance/audits/blob/main/MixBytes%20Lido%20DeFi%20Wrapper%20MellowStrategyAdapter%20Security%20Audit%20Report%2003-2026.pdf) | yAudit | Audit | 2026-03 | fresh | Inherited from Lido — forked code, scoped to AccessControlledAggregator, DualAggregator | inherited | 2 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x04397a4f83256e7aed344d974b70d8a120c67ece`](./contracts/ethereum-1/0x04397a4f83256e7aed344d974b70d8a120c67ece/) | AccessControlledOCR2Aggregator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x002c4ee1829294f7ca9de8a90d4bdd467310e5ae`](./contracts/ethereum-1/0x002c4ee1829294f7ca9de8a90d4bdd467310e5ae/) | AccessControlledOffchainAggregator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x02f1fa8b196d21c7b733eb2700b825611d8a38e5`](./contracts/ethereum-1/0x02f1fa8b196d21c7b733eb2700b825611d8a38e5/) | Allowlist | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4841f6098f09b8c2b7b5024abecc6b6ffdfc544d`](./contracts/ethereum-1/0x4841f6098f09b8c2b7b5024abecc6b6ffdfc544d/) | BurnMintTokenPool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1affdb984bbd8c3382f1ddc8bd605383830160f3`](./contracts/ethereum-1/0x1affdb984bbd8c3382f1ddc8bd605383830160f3/) | ChannelConfigStore | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6d05b6b04a4f456e0ea6a0379b6173eae52e71b1`](./contracts/ethereum-1/0x6d05b6b04a4f456e0ea6a0379b6173eae52e71b1/) | Configurator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x04b2218a03f4b034a2e83e9e8d1e7ea0da8748ba`](./contracts/ethereum-1/0x04b2218a03f4b034a2e83e9e8d1e7ea0da8748ba/) | ConfirmedTransactionModule | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x014f606c37cfd6fc42ec11d10086df500125e0a5`](./contracts/ethereum-1/0x014f606c37cfd6fc42ec11d10086df500125e0a5/) | EACAggregatorProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2ed862ea0da8edb9070fd8ac996b8267992a7ee9`](./contracts/ethereum-1/0x2ed862ea0da8edb9070fd8ac996b8267992a7ee9/) | EquityToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x48a42f6aed34fd936355b5358fee4de847dcf649`](./contracts/ethereum-1/0x48a42f6aed34fd936355b5358fee4de847dcf649/) | FeeManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6ea64a20d3a459622d67b288062a3edcf686e0fb`](./contracts/ethereum-1/0x6ea64a20d3a459622d67b288062a3edcf686e0fb/) | GnosisSafeProxyFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3a2ea8bae01410425d01c2c5f488e4777daa54df`](./contracts/ethereum-1/0x3a2ea8bae01410425d01c2c5f488e4777daa54df/) | LockReleaseTokenPool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4c21b7577c8fe8b0b0669165ee7c8f67fa1454cf`](./contracts/ethereum-1/0x4c21b7577c8fe8b0b0669165ee7c8f67fa1454cf/) | RedemptionIdle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1a2a2dc0aab0defc092ed8636330eaebd975e7ec`](./contracts/ethereum-1/0x1a2a2dc0aab0defc092ed8636330eaebd975e7ec/) | RewardManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x70e7d9a2fe6225d926b7c0bb728529eb64a02ab9`](./contracts/ethereum-1/0x70e7d9a2fe6225d926b7c0bb728529eb64a02ab9/) | SimpleReadAccessController | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe0ba139337a3618186f3aa9f71ed8aa943c3dcae`](./contracts/ethereum-1/0xe0ba139337a3618186f3aa9f71ed8aa943c3dcae/) | SimpleWriteAccessController | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe4fa682f94610ccd170680cc3b045d77d9e528a8`](./contracts/ethereum-1/0xe4fa682f94610ccd170680cc3b045d77d9e528a8/) | SuperstateOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0f3bfe75fb5a66a3c01b9ba33b57de353df7270d`](./contracts/ethereum-1/0x0f3bfe75fb5a66a3c01b9ba33b57de353df7270d/) | SuperstateToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x14d60e7fdc0d71d8611742720e4c50e7a974020c`](./contracts/ethereum-1/0x14d60e7fdc0d71d8611742720e4c50e7a974020c/) | SuperstateTokenV5_1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x41feb4943df07f6793c059f98f28ed0e15f6852b`](./contracts/ethereum-1/0x41feb4943df07f6793c059f98f28ed0e15f6852b/) | USCC | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5ce236c888fa6d8dba00e7d66cfd9bc9cadea2e1`](./contracts/ethereum-1/0x5ce236c888fa6d8dba00e7d66cfd9bc9cadea2e1/) | USCCv2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3986a1475f3c7786973e1b83cd6240521c51a1af`](./contracts/ethereum-1/0x3986a1475f3c7786973e1b83cd6240521c51a1af/) | USTB | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x34ee7037db155b6fa18c9727169d39f63a8794da`](./contracts/ethereum-1/0x34ee7037db155b6fa18c9727169d39f63a8794da/) | USTBv2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0238247e71ad0ab272203af13baea72e99ee7c3c`](./contracts/ethereum-1/0x0238247e71ad0ab272203af13baea72e99ee7c3c/) | ValidatorProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa618f119504455762c9bbbce4ac9ee7fde457d05`](./contracts/ethereum-1/0xa618f119504455762c9bbbce4ac9ee7fde457d05/) | Verifier | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xaae5ec245bb779883786b44ab3aaad5313ff6582`](./contracts/ethereum-1/0xaae5ec245bb779883786b44ab3aaad5313ff6582/) | VerifierProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 28 |
| upstream | 1 |
| standard_library | 3 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: inherited_name_remap=30

Fork inheritance lineage and inherited audits are included when available.
