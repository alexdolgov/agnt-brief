# Agentic Audit Brief: SmartCredit

## Project Overview

- Project: SmartCredit (`smartcredit`)
- Website: [https://smartcredit.io](https://smartcredit.io)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:56.395Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-43c7
- Chains: ethereum
- Contract surface: 90 unique implementations (101 raw deployments)
- DeFi Llama TVL: $708,424.45
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Lending. Structurally: 10 project-authored contract(s) across 1 chain(s); 2 ERC20 tokens; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 6 functional families. Its contracts share 2 common project-authored base contract(s) (upgradeabilityproxy, proxy). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 104; live-surface contracts included: 101 (16 live, 85 unknown).
- Excluded by liveness: 3 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 1/7 (14.3%)
- Deployed-live implementations: 9 of 90 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 1/9
- Verified + Unaudited implementations: 8
- Verified by bytecode match: 0
- Unverified implementations: 81
- Unique implementations: 90
- Raw deployments: 101
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022-01 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 1 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 1 | 11.1% | 2022-01 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| SMARTCREDIT | unknown | ethereum | n/a | [`0x72e9d9038ce484ee986fea183f8d8df93f9ada13`](./contracts/ethereum-1/0x72e9d9038ce484ee986fea183f8d8df93f9ada13/) | ✅ Audited |

### ⚠️ Verified + Unaudited (8)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AdminUpgradeabilityProxy | unknown | ethereum | n/a | [`0x84cb833f3f2e0443c5fc40f4a4619881213638a7`](./contracts/ethereum-1/0x84cb833f3f2e0443c5fc40f4a4619881213638a7/) | ⚠️ Unaudited |
| ProxyAdmin | unknown | ethereum | n/a | 2 deployments: ethereum [`0x11c0a2a7e33f1227105e6f22c571acc5bfbbcf8b`](./contracts/ethereum-1/0x11c0a2a7e33f1227105e6f22c571acc5bfbbcf8b/); ethereum `0x81590d3a76fdf0a3f7ddc122f3c519bc97474ecd` | ⚠️ Unaudited |
| ReputationToken | token | ethereum | n/a | [`0x221657776846890989a759ba2973e427dff5c9bb`](./contracts/ethereum-1/0x221657776846890989a759ba2973e427dff5c9bb/) | ⚠️ Unaudited |
| SmartCreditTimelock | governance | ethereum | n/a | 5 deployments: ethereum [`0x967f978e36299cc2c250587e0a150e113ebd87b6`](./contracts/ethereum-1/0x967f978e36299cc2c250587e0a150e113ebd87b6/); ethereum `0x96b424daef21ba3f815ff95bffc6f6c438caf59a`; ethereum `0xac1c03272270a2cad05b15d99f8003ca15ae7118`; ethereum `0xd0209d339271b8049cd021a4a44ce915d4a77179`; ethereum `0xf29a2fc7ee889256f8d45ccea9dcfdf0690c5e73` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | 3 deployments: ethereum [`0x1a0a75cd4b0e43e7a2cce92ce1406d30ec10afbf`](./contracts/ethereum-1/0x1a0a75cd4b0e43e7a2cce92ce1406d30ec10afbf/); ethereum `0xf26848918644858bf7309cf3dda3c64d393f5e43`; ethereum `0xfc94c04ff51355bc195e9a85e8f6acea9c907d0d` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | 2 deployments: ethereum [`0x31ba589072278d82207212702de9a1c2b9d42c28`](./contracts/ethereum-1/0x31ba589072278d82207212702de9a1c2b9d42c28/); ethereum `0x90de6b950b90d3977cfc832c5ea33ed3c8ebf7e4` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | 2 deployments: ethereum [`0x36e8616a2e5c3681e256a489d32c31430b0dcc6d`](./contracts/ethereum-1/0x36e8616a2e5c3681e256a489d32c31430b0dcc6d/); ethereum `0x784c9c6def70cad7312f4e9f2af58094447c30e6` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | 3 deployments: ethereum [`0x44b00324f72f10896bf3a18bb25fb161a8fe9631`](./contracts/ethereum-1/0x44b00324f72f10896bf3a18bb25fb161a8fe9631/); ethereum `0x4c91455e0b8baf1fc255f7d8aed658f7b4ee82df`; ethereum `0x52291d11ef4930be59d12c4988b80c94b2616cff` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (81)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x03e33b89c6ba724d10165871a78b6f85d33f8fff` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0755a67e663fe71367bcaede4f540b840a95686d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0931c14dc8827c8f08d76f0f5d31910ba76078fa` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0e644479c1d90831c64fbcfe19aa41330e4daf90` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x13998c6bcb673ae2aeecf2c21aaa927c95560ce7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x13c7c67f5708b9fa6069d3e7ac5e750104afa6df` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x14bd940cf6815f53e0c8e309fe89f78baf673757` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x183b12880091e2d36013060f398cd627de4fa2ec` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1abd8272cd0ea0cd646b10fa14fef80197226fad` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1c3ea9fd468276c445927f53df51ee5ec87e3c84` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1f05dc0b6281b6f1e5d79f4875a0dee54d82018c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x20af969f2c963f53608f492340b0a208e2ab16bb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x213a7b19b497141876e7639b43134513cea07e7c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2208c79e91d8d1945425cea4268f058ce2ec4dbf` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x24805a247f2399282cf13554b90d62a761d59455` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2515976c73e933b718dd869670d61248114b6532` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x273808b64019e24323bc837bdb7d8a2724e6e5c1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2841a080463524ea33023e95e421fa911049f6de` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3c33079dbbd2ac3a1ea50779648c07a567e6be11` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3f4d7a8fa7bc9922ef0c168fc84f6123222bc57d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4024467a311c41e3d276064b75d68fbf47385572` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4122ef18ee8106438954a759d754159dff114249` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x41a8120b9789bc7be4c2b737f8eca08fbee62a4f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x432d098e3c586bcbff15346259cb8d051f2278fc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x45d45615955d03e53befc72187bfc6c247dacff9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x495adbf5ee22415a9b44684dd711d64962d94eb5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4b14ddc1b1b4bb3a89d574c2708c609d4e192730` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4ba13e454ac0410e2dd95b67c429359be87221ab` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4e7ce3b1acd3006d6a8f28dc598d6fde77ae565c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4f9d9b1a4d17f60951529e3ea22f864413ffb6af` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x508d31b209c2b3b805be14c1d97bef3e0a9134a3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5409341c32481a1fed818f0395dae0f9ccaa8ab8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x550bf90cf0a0478a9b1f9b6d0b45a4c8268b1d86` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x56a88c00ea5da684c5ed650536fe218827f76794` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x58c0cede28c221273319e9be2998292360e180f8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5c13b6e81c6c77c41975e7a6b1d5c4ad97189c58` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x60af549e70c06de06881e0bbcc33a6e2d60581d0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x659773f2ef968a848570836796188cfadefa1d4a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6af29228067c1a91aa422eb88a000d1947cdb1ec` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6d3d91a78cec98e208100a70a7a92e8299c3bbde` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6e300f6671bd3812490380b427fa1532aa5de6c0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x701f89924782e6f28166df6112cd5fc928ebd16d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x70ca91db0b61f4391cd924e27b8594abcd7f293c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x76c05c757e0764b5a15322a424a3c081126d2891` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x772b459a58d985eeb98ad845ba513434daca7056` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7768c4f860682e512984c9c3e65eb7cdb1e1fd21` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x788b237aaa7265137f61d3a8998352064b1ac663` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x79dfac5995e6c68523518138f01111b6be611c51` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7a3a18528e072c26e21dc28f12d72c4f44c22f03` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8b9ca706375dc2af5425fb8d5c0adce73fa31f1f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x91a149c826dcdce89b02c7f6441e3738ae4d2e58` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9454a06c73f0cbb8c94d11d8b5f9bd057a1d393e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x98180899d924060e82f6248666a259b2f63e26d9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9a39acb341374f1aedd9eb63849ffe68b59118cb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9d385e24a6dae6d1101387a06c6c1f05db4f4767` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9f9c9b8312914341f2f39e3ac25a081276b50f82` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa0e9c91d9b39c3465d11bdb708abfb62899e4b3a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa229d0504937f99326a36ea4a32d5328bfad30f2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa4f309c997b92776ae0fd20874dd465b39b634ba` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa5d072b5464028f9a082fdfca22248a007404abc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb255f73c4ca59f806ab974425892eac39bb72063` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc099fe8cee4462f0c614077e95afa3df9e2e79b7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc46507ce7b32e4243ae39644f4b2fe42e6d9c46f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc922035077c4aee65eb58b47994920d234d85d35` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc9a4a838cf5132d98d2d9558c8498f05da9cbc18` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcad5ab5b32b0c82d39e28ce0b541e1da45e5e2ab` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcfe4d6273f4209e02a09d6b17532f89872c1e628` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd090ccca29e6a8c5dc185649bfef61afec954879` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd0f55366641d6faaf923399473a2c34d8e4dcc90` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd516cddd59e8a8e33fba1e8495f51c662cdd7ac5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd88080814403597a601720b66e5aa12d4a42e675` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xdab506b36c76c83bfd72be3fb9dc73d3b2d4908e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xdb51879b85c45614495fd7b6ef4be3c3138fdb0c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe0e3235989247782c70c55b0a2e0ef859d0728a4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe582dc371b2d7e1fffe6194cccef215736b4d981` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe7cf608072c89ba0d02ccc4fc087aac8c69587a3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe97f36717a51fd61c54f35e8fb2ca49d82c121bd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xea873c735f740a3f9eaaf460b93dbdd429448908` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xee323561a3dd1a4e9f2040259728e4cddd939e42` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf2ec7c4058f843322c8e2e3df2cd3bc5ce29c793` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf7af33821d410d659118b935138e57751124d447` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [SmartCredit Security Analysis by Pessimistic.pdf](https://github.com/pessimistic-io/audits/blob/ca048cb8eaba4f7959fb83c1c6f5cb4803c85718/SmartCredit%20Security%20Analysis%20by%20Pessimistic.pdf) | unknown | Audit | 2022-01 | stale | Direct | contract_name | 1 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x221657776846890989a759ba2973e427dff5c9bb`](./contracts/ethereum-1/0x221657776846890989a759ba2973e427dff5c9bb/) | ReputationToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x967f978e36299cc2c250587e0a150e113ebd87b6`](./contracts/ethereum-1/0x967f978e36299cc2c250587e0a150e113ebd87b6/) | SmartCreditTimelock | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 3 |
| upstream | 0 |
| standard_library | 4 |
| needs_review | 83 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1
- Match method counts: extraction_exact=1

Fork inheritance lineage and inherited audits are included when available.
