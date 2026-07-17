# Agentic Audit Brief: Mento

## Project Overview

- Project: Mento (`mento`)
- Website: [https://www.mento.org/](https://www.mento.org/)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:30.598Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-16da
- Chains: celo
- Contract surface: 55 unique implementations (79 raw deployments)
- DeFi Llama TVL: $13,334,653.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Algo-Stables. Structurally: 70 project-authored contract(s) across 1 chain(s); 6 ERC20 tokens, 1 ERC721 NFT; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 7 functional families. Its contracts share 12 common project-authored base contract(s) (usingregistry, proxy, usingprecompiles). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 79; live-surface contracts included: 79 (56 live, 23 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 22/30 (73.3%)
- Deployed-live implementations: 33 of 55 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 22/33
- Verified + Unaudited implementations: 11
- Verified by bytecode match: 0
- Unverified implementations: 22
- Unique implementations: 55
- Raw deployments: 79
- Audits discovered: 23 (23 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 7
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-02 (fresh)
- Audit staleness (calendar age): 3 fresh, 3 aging, 9 stale, 8 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 23 match-unverified
- Tier 1 coverage: 63.3% (ChainSecurity, Cyfrin, OpenZeppelin)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| ChainSecurity | Tier 1 | 14 | 42.4% | 2026-02 |
| OpenZeppelin | Tier 1 | 5 | 15.2% | 2021-02 |
| 0xMacro | Tier 2 | 3 | 9.1% | 2024-03 |
| Cyfrin | Tier 1 | 1 | 3.0% | 2024-07 |

## Contract Surface

### ✅ Verified + Audited (22)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Accounts | unknown | celo | n/a | 3 deployments: celo [`0x0fe15138b6ecf2b9cc3b2bc12fe9671d4267ef53`](./contracts/celo-42220/0x0fe15138b6ecf2b9cc3b2bc12fe9671d4267ef53/); celo `0x56567727a0da93ee0beba9400af7eb96dae2b98c`; celo `0xbac4a39ecba3c0f2e5caf30f090f094f6405f603` | ✅ Audited |
| ActivePool | core_logic | celo | n/a | [`0xa7873f4bf2a1ea2eb20b1e8a992c4748e78473b2`](./contracts/celo-42220/0xa7873f4bf2a1ea2eb20b1e8a992c4748e78473b2/) | ✅ Audited |
| AddressesRegistry | registry | celo | n/a | [`0xb3136dbadb14ab587ffa91545538126938fe0c6e`](./contracts/celo-42220/0xb3136dbadb14ab587ffa91545538126938fe0c6e/) | ✅ Audited |
| BiPoolManager | core_logic | celo | n/a | [`0x22d9db95e6ae61c104a7b6f6c78d7993b94ec901`](./contracts/celo-42220/0x22d9db95e6ae61c104a7b6f6c78d7993b94ec901/) | ✅ Audited |
| BorrowerOperations | core_logic | celo | n/a | [`0x8ec9a81871f816f1ef007a82293703057a943b8a`](./contracts/celo-42220/0x8ec9a81871f816f1ef007a82293703057a943b8a/) | ✅ Audited |
| CollateralRegistry | registry | celo | n/a | [`0x1bedd4334335522b0a0e8e610d326b16b0a605fb`](./contracts/celo-42220/0x1bedd4334335522b0a0e8e610d326b16b0a605fb/) | ✅ Audited |
| CollSurplusPool | core_logic | celo | n/a | [`0xfff48ee3bd2d534e35b54d538de30a9d7709d4b6`](./contracts/celo-42220/0xfff48ee3bd2d534e35b54d538de30a9d7709d4b6/) | ✅ Audited |
| DefaultPool | core_logic | celo | n/a | [`0x95191e52d01ec060cea753cdadfeeb07b78d0047`](./contracts/celo-42220/0x95191e52d01ec060cea753cdadfeeb07b78d0047/) | ✅ Audited |
| Election | unknown | celo | n/a | 2 deployments: celo [`0x169c946c9f70094b8ad74ee16477f27e713009bc`](./contracts/celo-42220/0x169c946c9f70094b8ad74ee16477f27e713009bc/); celo `0x3db69cf778dfa1d60145731d9ce09a674c9f6f28` | ✅ Audited |
| EpochRewards | unknown | celo | n/a | 2 deployments: celo [`0x4cadba6ae9984b408b492a3f8f451e1bb3562aba`](./contracts/celo-42220/0x4cadba6ae9984b408b492a3f8f451e1bb3562aba/); celo `0x9dc549eeb4fca1b2c00e55aa771144321ff050d9` | ✅ Audited |
| GasPool | core_logic | celo | n/a | [`0x8b61f941d89560c7d8b3d595f44f7fd97d79817b`](./contracts/celo-42220/0x8b61f941d89560c7d8b3d595f44f7fd97d79817b/) | ✅ Audited |
| GoldToken | token | celo | n/a | 2 deployments: celo [`0x04a182a01a303a4f1333a5ce1213ae54f0c7edb2`](./contracts/celo-42220/0x04a182a01a303a4f1333a5ce1213ae54f0c7edb2/); celo `0xb165169b8cccc849108d81d094d6f49324b2c19d` | ✅ Audited |
| Governance | unknown | celo | n/a | 2 deployments: celo [`0x40bca46d9f7db71ecaa1e76655c3038a5a1824e6`](./contracts/celo-42220/0x40bca46d9f7db71ecaa1e76655c3038a5a1824e6/); celo `0xf51d27777e5b2b910e0caad467ae945e4b7a215d` | ✅ Audited |
| Locking | unknown | celo | n/a | [`0x001bb66636dcd149a1a2ba8c50e408bddd80279c`](./contracts/celo-42220/0x001bb66636dcd149a1a2ba8c50e408bddd80279c/) | ✅ Audited |
| MarketHoursBreaker | unknown | celo | n/a | [`0x0a18b8e7338ef8d6025529257aa5ccd5a14e0daf`](./contracts/celo-42220/0x0a18b8e7338ef8d6025529257aa5ccd5a14e0daf/) | ✅ Audited |
| MentoToken | token | celo | n/a | [`0x7ff62f59e3e89ea34163ea1458eebcc81177cfb6`](./contracts/celo-42220/0x7ff62f59e3e89ea34163ea1458eebcc81177cfb6/) | ✅ Audited |
| Router | adapter | celo | n/a | [`0x4861840c2efb2b98312b0ae34d86fd73e8f9b6f6`](./contracts/celo-42220/0x4861840c2efb2b98312b0ae34d86fd73e8f9b6f6/) | ✅ Audited |
| SortedTroves | unknown | celo | n/a | [`0x46d0c9e51e05d6ff38b2a19d6310488f3112bf9b`](./contracts/celo-42220/0x46d0c9e51e05d6ff38b2a19d6310488f3112bf9b/) | ✅ Audited |
| StableTokenV3 | token | celo | n/a | [`0x4b9b0e94197b7b2b11d311239e1420106ce7a2a2`](./contracts/celo-42220/0x4b9b0e94197b7b2b11d311239e1420106ce7a2a2/) | ✅ Audited |
| TroveManager | governance | celo | n/a | [`0xb38aef2bf4e34b997330d626ebcd7629de3885c9`](./contracts/celo-42220/0xb38aef2bf4e34b997330d626ebcd7629de3885c9/) | ✅ Audited |
| TroveNFT | token | celo | n/a | [`0x46273a5792013973b64a42e760e6f81d0472c6b6`](./contracts/celo-42220/0x46273a5792013973b64a42e760e6f81d0472c6b6/) | ✅ Audited |
| VirtualPoolFactory | registry | celo | n/a | [`0x22abd4adf6aab38ac1022352d496a07acee5acb3`](./contracts/celo-42220/0x22abd4adf6aab38ac1022352d496a07acee5acb3/) | ✅ Audited |

### ⚠️ Verified + Unaudited (11)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AttestationsProxy | unknown | celo | n/a | 18 deployments: celo [`0x2496fda4b928e8cf799ac04ea79861ac828e9a3d`](./contracts/celo-42220/0x2496fda4b928e8cf799ac04ea79861ac828e9a3d/); celo `0x252b037054e1394cd5e4a92a76f1fbff925f1649`; celo `0x30b3c1265262d7bda066357a4678cb2d660595ac`; celo `0x3a493665dc7a609d94b87adf0af51bf8d2edb3f4`; celo `0x488debd4b7646a44cac389dae4c6b55ad26c8fa6`; celo `0x4a241b9df1b54f983fd0dc094bc400fc93877da9`; celo `0x65e25c46cb80ae5f8118d6bcfa3b69d969799411`; celo `0x673f19caa81ae317aa9acdcb3a8b0593c174eecb`; celo `0x68da817fda9f7538eb75792536b5c5c7b5504785`; celo `0x93d52a66e6300baadc91b194a246fc349ba0ecf7`; celo `0xb53ce2e9c5222049a4b374bb404b0d5f92d8d96a`; celo `0xc834e7c2252bb1b9df90a7f161bc0877dc359afd`; celo `0xcc651797284339852a38f66c31fafa8ffe9e8fbe`; celo `0xdadd05185e053f7ccd308852237b1aa57a6f9303`; celo `0xdd944d35b87dfdfb8aa249a434ecc2c01d99f451`; celo `0xeaaf5597cd2a86d9933d38bc1482244078bc9149`; celo `0xf114c70fda914a96e06afdac06fe19fef8f5406a`; celo `0xff2ba5b9d1a97e872a451e43a0e28a2a2bc9fd2d` | ⚠️ Unaudited |
| EpochManager | governance | celo | n/a | [`0x91e35ccea07a15af477e189c1e2bd12569dfc535`](./contracts/celo-42220/0x91e35ccea07a15af477e189c1e2bd12569dfc535/) | ⚠️ Unaudited |
| GnosisSafeL2 | governance | celo | n/a | [`0x87647780180b8f55980c7d3ffefe08a9b29e9ae1`](./contracts/celo-42220/0x87647780180b8f55980c7d3ffefe08a9b29e9ae1/) | ⚠️ Unaudited |
| GovernanceSlasher | unknown | celo | n/a | [`0xb1b7b6af5bb6b527094c7cc5ce8bab32f4c51e9e`](./contracts/celo-42220/0xb1b7b6af5bb6b527094c7cc5ce8bab32f4c51e9e/) | ⚠️ Unaudited |
| HintHelpers | periphery | celo | n/a | [`0xafd741674bc4aa965a788dace5b0434fd4374d82`](./contracts/celo-42220/0xafd741674bc4aa965a788dace5b0434fd4374d82/) | ⚠️ Unaudited |
| IntegerSortedLinkedList | unknown | celo | n/a | [`0xa86051f29c45218b5f6cd121ebafb690660d047c`](./contracts/celo-42220/0xa86051f29c45218b5f6cd121ebafb690660d047c/) | ⚠️ Unaudited |
| MultiSig | governance | celo | n/a | 2 deployments: celo [`0x68e231b208d82dedba0cf7d97db0d3bf9bee3903`](./contracts/celo-42220/0x68e231b208d82dedba0cf7d97db0d3bf9bee3903/); celo `0xad52b8aa73b45b0872fe05d5de2c10123414e7fc` | ⚠️ Unaudited |
| MultiTroveGetter | unknown | celo | n/a | [`0x78fd33d2bce0389cf41e15947b0eb0ce9df8327f`](./contracts/celo-42220/0x78fd33d2bce0389cf41e15947b0eb0ce9df8327f/) | ⚠️ Unaudited |
| ReserveTroveFactory | registry | celo | n/a | [`0x02859465dcc7d7f2bee183fc7fac78544c9519e1`](./contracts/celo-42220/0x02859465dcc7d7f2bee183fc7fac78544c9519e1/) | ⚠️ Unaudited |
| SafeProxy | unknown | celo | n/a | [`0xd3d2e5c5af667da817b2d752d86c8f40c22137e1`](./contracts/celo-42220/0xd3d2e5c5af667da817b2d752d86c8f40c22137e1/) | ⚠️ Unaudited |
| StableTokenCADProxy | token | celo | n/a | [`0xff4ab19391af240c311c54200a492233052b6325`](./contracts/celo-42220/0xff4ab19391af240c311c54200a492233052b6325/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (22)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | celo | n/a | `0x03e39a4747a5ad250cefb64650194228a37d1089` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x066f672c03347a24ee3f52d1f184f04f7abd25f2` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x08a4b5bc1b5adef0a283c8f0185ded6169f0bd29` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x0cb6fd1a8fef2a7ebb29b6d5083742a35b42422f` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x120c00afa9052583402ea361f43d9683c849e892` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x1e3d01fe61d1bc29a34106c682a79b1c4142ba5f` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x2dad1cd6b9597fd2b4f421aae872c4f66d64f261` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x30584e0bd69e6224b256b5a9cbbec8b6c09f3f7d` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x4efa94f406f528ec092b896ea8b0ddffe38bc05e` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x55f3b4d42c0e4371a6f84d46db6e3b328eecb381` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x65534a1cedacc6ef812f751b459db7660e043372` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x72306ff91e79054e35a785d3831b215dd072c33d` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x8bc96d9993c7613fe9a3abe00c3e302126272e59` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0xb658b5de9d6711a0ca35d1e8d688e09c67be2b54` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0xb7feac258e081415c84b7f4b1092057610ff582a` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0xb98746b9b2f00aa17e801a679323a5657bae9feb` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0xbcb789aabd2bf7be0a4a6674676b49787cc3a567` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0xc682c381ceccbffd82b25f38e518f5b50b67330d` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0xc99d541743e0570f2eebb76ac435de0c8edd411e` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0xcb32eaf22ee39fc5f8592f1720d0010150d10f3f` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0xd0716cb2023cf22cff63a632b50c677083015c3f` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0xddf776d8069d1684dbc7ca024cc5671a8a0b27fe` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [2024-04-11-cyfrin-wormhole-evm-ntt.pdf](https://github.com/mento-protocol/mento-stabletoken-ntt/blob/main/audits/evm/2024-04-11-cyfrin-wormhole-evm-ntt.pdf) | Cyfrin | Audit | 2024-04 | stale | Direct | contract_name | 1 | n/a |
| [2024-07-23-cyfrin-wormhole-evm-ntt-diff-v1.1.0.pdf](https://github.com/mento-protocol/mento-stabletoken-ntt/blob/main/audits/evm/2024-07-23-cyfrin-wormhole-evm-ntt-diff-v1.1.0.pdf) | Cyfrin | Audit | 2024-07 | stale | Direct | n/a | 0 | n/a |
| [2024-03-28-ottersec-solana-ntt.pdf](https://github.com/mento-protocol/mento-stabletoken-ntt/blob/main/audits/solana/2024-03-28-ottersec-solana-ntt.pdf) | unknown | Audit | 2024-03 | stale | Direct | n/a | 0 | n/a |
| [2024-04-12-neodyme-solana-ntt.pdf](https://github.com/mento-protocol/mento-stabletoken-ntt/blob/main/audits/solana/2024-04-12-neodyme-solana-ntt.pdf) | unknown | Audit | 2024-04 | stale | Direct | n/a | 0 | n/a |
| [2024-08-02-ottersec-solana-ntt-token-extensions.pdf](https://github.com/mento-protocol/mento-stabletoken-ntt/blob/main/audits/solana/2024-08-02-ottersec-solana-ntt-token-extensions.pdf) | unknown | Audit | 2024-08 | aging | Direct | n/a | 0 | n/a |
| [2025-04-18-wormhole-ottersec-ntt-v3.pdf](https://github.com/mento-protocol/mento-stabletoken-ntt/blob/main/audits/solana/2025-04-18-wormhole-ottersec-ntt-v3.pdf) | unknown | Audit | 2025-04 | aging | Direct | n/a | 0 | n/a |
| [2025-05-05-wormhole-ottersec-ntt-v3-solana.pdf](https://github.com/mento-protocol/mento-stabletoken-ntt/blob/main/audits/solana/2025-05-05-wormhole-ottersec-ntt-v3-solana.pdf) | unknown | Audit | 2025-05 | aging | Direct | n/a | 0 | n/a |
| [2025-08-22-ottersec-sui-ntt.pdf](https://github.com/mento-protocol/mento-stabletoken-ntt/blob/main/audits/sui/2025-08-22-ottersec-sui-ntt.pdf) | unknown | Audit | 2025-08 | fresh | Direct | n/a | 0 | n/a |
| [README.md](https://github.com/mento-protocol/docs/blob/main/dive-deeper/security/README.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [audit-reports.md](https://github.com/mento-protocol/docs/blob/main/dive-deeper/security/audit-reports.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [risk-overview.md](https://github.com/mento-protocol/docs/blob/main/dive-deeper/security/risk-overview.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [celo.org/audits](https://celo.org/audits) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [www.chainsecurity.com/security-audit/mento-core-v3](https://www.chainsecurity.com/security-audit/mento-core-v3) | ChainSecurity | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [ChainSecurity_Mento_MentoCoreV3_Audit.pdf](https://reports.chainsecurity.com/Mento/ChainSecurity_Mento_MentoCoreV3_Audit.pdf) | ChainSecurity | Audit | 2026-02 | fresh | Direct | contract_name | 4 | n/a |
| [www.chainsecurity.com/security-audit/mento-liquity-v2](https://www.chainsecurity.com/security-audit/mento-liquity-v2) | ChainSecurity | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [ChainSecurity_Mento_MentoLiquityV2_Audit.pdf](https://reports.chainsecurity.com/Mento/ChainSecurity_Mento_MentoLiquityV2_Audit.pdf) | ChainSecurity | Audit | 2026-02 | fresh | Direct | contract_name | 11 | n/a |
| [0xmacro.com/library/audits/mento-3](https://0xmacro.com/library/audits/mento-3) | 0xMacro | Audit | 2024-03 | stale | Direct | contract_name | 2 | n/a |
| [audits.sherlock.xyz/dashboard/404ec017225af69f6deff9b722393a44](https://audits.sherlock.xyz/dashboard/404ec017225af69f6deff9b722393a44) | Sherlock | Contest | 2024-03 | stale | Direct | n/a | 0 | n/a |
| [0xmacro.com/library/audits/mento-2](https://0xmacro.com/library/audits/mento-2) | 0xMacro | Audit | 2024-01 | stale | Direct | contract_name | 2 | n/a |
| [0xmacro.com/library/audits/mento-1](https://0xmacro.com/library/audits/mento-1) | 0xMacro | Audit | 2023-08 | stale | Direct | contract_name | 1 | n/a |
| [www.verilog.solutions/audits/mento](https://www.verilog.solutions/audits/mento) | Verilog Solutions | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [www.openzeppelin.com/news/celo-contracts-audit](https://www.openzeppelin.com/news/celo-contracts-audit) | OpenZeppelin | Audit | 2021-02 | stale | Direct | contract_name | 6 | n/a |
| [audits.sherlock.xyz/contests/187](https://audits.sherlock.xyz/contests/187) | Sherlock | Contest | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| celo | [`0x2496fda4b928e8cf799ac04ea79861ac828e9a3d`](./contracts/celo-42220/0x2496fda4b928e8cf799ac04ea79861ac828e9a3d/) | AttestationsProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | [`0x91e35ccea07a15af477e189c1e2bd12569dfc535`](./contracts/celo-42220/0x91e35ccea07a15af477e189c1e2bd12569dfc535/) | EpochManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | [`0xb1b7b6af5bb6b527094c7cc5ce8bab32f4c51e9e`](./contracts/celo-42220/0xb1b7b6af5bb6b527094c7cc5ce8bab32f4c51e9e/) | GovernanceSlasher | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | [`0xafd741674bc4aa965a788dace5b0434fd4374d82`](./contracts/celo-42220/0xafd741674bc4aa965a788dace5b0434fd4374d82/) | HintHelpers | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | [`0xa86051f29c45218b5f6cd121ebafb690660d047c`](./contracts/celo-42220/0xa86051f29c45218b5f6cd121ebafb690660d047c/) | IntegerSortedLinkedList | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | [`0x68e231b208d82dedba0cf7d97db0d3bf9bee3903`](./contracts/celo-42220/0x68e231b208d82dedba0cf7d97db0d3bf9bee3903/) | MultiSig | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | [`0x78fd33d2bce0389cf41e15947b0eb0ce9df8327f`](./contracts/celo-42220/0x78fd33d2bce0389cf41e15947b0eb0ce9df8327f/) | MultiTroveGetter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | [`0x02859465dcc7d7f2bee183fc7fac78544c9519e1`](./contracts/celo-42220/0x02859465dcc7d7f2bee183fc7fac78544c9519e1/) | ReserveTroveFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | [`0xff4ab19391af240c311c54200a492233052b6325`](./contracts/celo-42220/0xff4ab19391af240c311c54200a492233052b6325/) | StableTokenCADProxy | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 31 |
| upstream | 0 |
| standard_library | 2 |
| needs_review | 22 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 16
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: contract_name=27

Zero-match audit list:

- [6140] 2024-07-23-cyfrin-wormhole-evm-ntt-diff-v1.1.0.pdf
- [6141] 2024-03-28-ottersec-solana-ntt.pdf
- [6142] 2024-04-12-neodyme-solana-ntt.pdf
- [6143] 2024-08-02-ottersec-solana-ntt-token-extensions.pdf
- [6144] 2025-04-18-wormhole-ottersec-ntt-v3.pdf
- [6145] 2025-05-05-wormhole-ottersec-ntt-v3-solana.pdf
- [6146] 2025-08-22-ottersec-sui-ntt.pdf
- [6184] README.md
- [6185] audit-reports.md
- [6186] risk-overview.md
- [12415] celo.org/audits
- [12416] www.chainsecurity.com/security-audit/mento-core-v3
- [12418] www.chainsecurity.com/security-audit/mento-liquity-v2
- [12421] audits.sherlock.xyz/dashboard/404ec017225af69f6deff9b722393a44
- [12424] www.verilog.solutions/audits/mento
- [12426] audits.sherlock.xyz/contests/187

Fork inheritance lineage and inherited audits are included when available.
