# Agentic Audit Brief: ioTube

## Project Overview

- Project: ioTube (`iotube`)
- Website: [https://iotube.org](https://iotube.org)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:23.728Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-dc67
- Chains: bsc, ethereum, polygon
- Contract surface: 36 unique implementations (53 raw deployments)
- DeFi Llama TVL: $2,285,769.39
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Bridge. Structurally: 25 project-authored contract(s) across 3 chain(s); 6 ERC20 tokens; built on openzeppelin.

### Architecture

The protocol comprises 6 functional families. Its contracts share 2 common project-authored base contract(s) (erc20burnable, uniqueappendonlyaddresslist). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 97; live-surface contracts included: 53 (31 live, 22 unknown).
- Excluded by liveness: 44 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 2/14 (14.3%)
- Deployed-live implementations: 14 of 36 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 2/14
- Verified + Unaudited implementations: 12
- Verified by bytecode match: 0
- Unverified implementations: 22
- Unique implementations: 36
- Raw deployments: 53
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-02 (aging)
- Audit staleness (calendar age): 0 fresh, 1 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 2 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Fuzzland | Tier 2 | 2 | 14.3% | 2025-02 |

## Contract Surface

### ✅ Verified + Audited (2)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| CrosschainTokenCashierWithPayloadRouter | adapter | polygon | n/a | 2 deployments: ethereum `0x3030bdc2a70076d47adba3243a68ed894ed33305`; polygon [`0x2c43e50fbdd5fa3ea4e10a5445274b4013a713a8`](./contracts/polygon-137/0x2c43e50fbdd5fa3ea4e10a5445274b4013a713a8/) | ✅ Audited |
| TetherToken | unknown | polygon | n/a | [`0x4399228352476a4a2615c70717ea5eaf724947f7`](./contracts/polygon-137/0x4399228352476a4a2615c70717ea5eaf724947f7/) | ✅ Audited |

### ⚠️ Verified + Unaudited (12)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| CrosschainERC20 | token | bsc | n/a | 4 deployments: ethereum `0x9f90b457dea25ef802e38d470dda7343691d8fe1`; ethereum `0xf79deabc1406a3ad07c70877fbaeb90777b77e68`; bsc [`0x2aaf50869739e317ab80a57bf87caa35f5b60598`](./contracts/bsc-56/0x2aaf50869739e317ab80a57bf87caa35f5b60598/); polygon `0x300211def2a644b036a9bdd3e58159bb2074d388` | ⚠️ Unaudited |
| CrosschainERC20V2 | token | ethereum | n/a | [`0x9c3af6ffccac8a4ccb31a4b769b84a517c6c13b5`](./contracts/ethereum-1/0x9c3af6ffccac8a4ccb31a4b769b84a517c6c13b5/) | ⚠️ Unaudited |
| CrosschainTokenCashierRouter | adapter | bsc | n/a | [`0x2a26fede01bfa03e65cd3c68f421cab83648391a`](./contracts/bsc-56/0x2a26fede01bfa03e65cd3c68f421cab83648391a/) | ⚠️ Unaudited |
| MinterPool | core_logic | polygon | n/a | 2 deployments: ethereum `0x964f4f19bc823e72cc1f806021937cfc06f63b45`; polygon [`0x4799d57abf5f12ca4ef5375c9dadf8fe7fa5a454`](./contracts/polygon-137/0x4799d57abf5f12ca4ef5375c9dadf8fe7fa5a454/) | ⚠️ Unaudited |
| TokenCashierWithPayload | token | ethereum | n/a | 5 deployments: ethereum [`0x1b9aa865d74b2b77ffdbcf507b56a7b3ab43bac4`](./contracts/ethereum-1/0x1b9aa865d74b2b77ffdbcf507b56a7b3ab43bac4/); ethereum `0xd57bde0a8bb77a2f65769316f6343e0a13a8d7d4`; bsc `0x78de1e0b76523ac6e190f89ffc46571346940204`; polygon `0x6bba6bab7faa5aa720f84468cba6086e0821e049`; polygon `0x990b503f8c7353f1cab6f9d5bbf8f0be2718d731` | ⚠️ Unaudited |
| TokenList | token | polygon | n/a | 2 deployments: bsc `0xa6ae9312d0aa3cc74d969fcd4806d7729a321ee3`; polygon [`0x14bf347a597aac623240ae7ac8383ae198966277`](./contracts/polygon-137/0x14bf347a597aac623240ae7ac8383ae198966277/) | ⚠️ Unaudited |
| TokenSafe | token | ethereum | n/a | [`0xc2e0f31d739cb3153ba5760a203b3bd7c27f0d7a`](./contracts/ethereum-1/0xc2e0f31d739cb3153ba5760a203b3bd7c27f0d7a/) | ⚠️ Unaudited |
| TransferValidatorWithPayload | unknown | polygon | n/a | 4 deployments: ethereum `0xe7eba1cea51ec9b3accc16728e3b8786560c59d5`; bsc `0x95c6f6af2c0fa069768203fda963d7626efc794a`; polygon [`0x86b7a9470d93e5ebfd1c099e173bce86196c85b2`](./contracts/polygon-137/0x86b7a9470d93e5ebfd1c099e173bce86196c85b2/); polygon `0x87e2d48de6cc2029ffc1a915462e4aa597890cd6` | ⚠️ Unaudited |
| Unwrapper | unknown | polygon | n/a | 2 deployments: ethereum `0xedec2dad0b20a46678491bb04c53cdc89f1b4287`; polygon [`0xc3b3fcc2df7dbcffbc7fb154eb7d41d6e6304efe`](./contracts/polygon-137/0xc3b3fcc2df7dbcffbc7fb154eb7d41d6e6304efe/) | ⚠️ Unaudited |
| VestingManager | operational_periphery | bsc | n/a | 2 deployments: bsc [`0x31603c352dcb06e5973afcf7d831824e4900b001`](./contracts/bsc-56/0x31603c352dcb06e5973afcf7d831824e4900b001/); bsc `0x668b6092f0c33f6da9e4057b8624da5eab3baae0` | ⚠️ Unaudited |
| WitnessList | unknown | polygon | n/a | 2 deployments: bsc `0x8119411f5a78f73784a1b87de43d452da4a1ee3f`; polygon [`0x1e58ca53d90fe9b37f7f6aeb548b4bc7c6292c17`](./contracts/polygon-137/0x1e58ca53d90fe9b37f7f6aeb548b4bc7c6292c17/) | ⚠️ Unaudited |
| XCashier | unknown | polygon | n/a | 2 deployments: ethereum `0xe58997b72cf7115701fc3302f36d38670924006b`; polygon [`0x6ccf305a21defff295e616ba5aa423eb563fc8db`](./contracts/polygon-137/0x6ccf305a21defff295e616ba5aa423eb563fc8db/) | ⚠️ Unaudited |

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
| UnnamedContract | unknown | ethereum | n/a | `0x0a60b06d8b2c0be447df6192911dab650d9c0b3a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x62ee799b09c2b12f3350a73a54d07434023ebcca` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbb76063476a79f73624386795f4cca855954c891` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd8165188ccc135b3a3b2a5d2bc3af9d94753d955` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf7f73af0923a1f4bcda4e082094a41c7b64cddd4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfbe9a4138afdf1fa639a8c2818a0c4513fc4ce4b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x082020ae0b38fd1bef48895c6cff4428e420f400` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x116404f86e97846110ea08cd52fc2882d4ad3123` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x52702a7301be185cc97bf3fe6d497a83e7772fde` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x797f1465796fd89ea7135e76dbc7cdb136bba1ca` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x7c0bef36e1b1cbeb1f1a5541300786a7b608aede` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x80ad2e3ff6676706157074d730366710946b0627` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd20a138c15fd4e296e511cbe410c281d2ab9f0f0` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x0aaea7b19e77a6e0913bcdf545e33d673071b446` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x2f1a0bca4005ebfd6a589850f436c8d8f9c2aed2` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x33193d4c878ea2e62e4ef4d563282249fa203f32` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x8119411f5a78f73784a1b87de43d452da4a1ee3f` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x8dd2f9b3f7e2605747cf6bf5051152d7cbf2ec1f` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x964f4f19bc823e72cc1f806021937cfc06f63b45` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xa0fd7430852361931b23a31f84374ba3314e1682` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xf72cfb704d49ac7bb7ffa420ae5f084c671a29be` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xfbe9a4138afdf1fa639a8c2818a0c4513fc4ce4b` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Iotube Audit Report v2-fuzzland.pdf](https://185197389-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F-MgvoWpXLOm6Tf5h6ulz%2Fuploads%2Fe4XSu5pssWrgS5FyaqCj%2FIotube%20Audit%20Report%20v2-fuzzland.pdf) | Fuzzland | Audit | 2025-02 | aging | Direct | contract_name | 3 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | [`0x2aaf50869739e317ab80a57bf87caa35f5b60598`](./contracts/bsc-56/0x2aaf50869739e317ab80a57bf87caa35f5b60598/) | CrosschainERC20 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9c3af6ffccac8a4ccb31a4b769b84a517c6c13b5`](./contracts/ethereum-1/0x9c3af6ffccac8a4ccb31a4b769b84a517c6c13b5/) | CrosschainERC20V2 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x2a26fede01bfa03e65cd3c68f421cab83648391a`](./contracts/bsc-56/0x2a26fede01bfa03e65cd3c68f421cab83648391a/) | CrosschainTokenCashierRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x4799d57abf5f12ca4ef5375c9dadf8fe7fa5a454`](./contracts/polygon-137/0x4799d57abf5f12ca4ef5375c9dadf8fe7fa5a454/) | MinterPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1b9aa865d74b2b77ffdbcf507b56a7b3ab43bac4`](./contracts/ethereum-1/0x1b9aa865d74b2b77ffdbcf507b56a7b3ab43bac4/) | TokenCashierWithPayload | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x14bf347a597aac623240ae7ac8383ae198966277`](./contracts/polygon-137/0x14bf347a597aac623240ae7ac8383ae198966277/) | TokenList | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc2e0f31d739cb3153ba5760a203b3bd7c27f0d7a`](./contracts/ethereum-1/0xc2e0f31d739cb3153ba5760a203b3bd7c27f0d7a/) | TokenSafe | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x86b7a9470d93e5ebfd1c099e173bce86196c85b2`](./contracts/polygon-137/0x86b7a9470d93e5ebfd1c099e173bce86196c85b2/) | TransferValidatorWithPayload | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xc3b3fcc2df7dbcffbc7fb154eb7d41d6e6304efe`](./contracts/polygon-137/0xc3b3fcc2df7dbcffbc7fb154eb7d41d6e6304efe/) | Unwrapper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x31603c352dcb06e5973afcf7d831824e4900b001`](./contracts/bsc-56/0x31603c352dcb06e5973afcf7d831824e4900b001/) | VestingManager | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x1e58ca53d90fe9b37f7f6aeb548b4bc7c6292c17`](./contracts/polygon-137/0x1e58ca53d90fe9b37f7f6aeb548b4bc7c6292c17/) | WitnessList | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x6ccf305a21defff295e616ba5aa423eb563fc8db`](./contracts/polygon-137/0x6ccf305a21defff295e616ba5aa423eb563fc8db/) | XCashier | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 14 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 22 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1
- Match method counts: extraction_exact=3

Fork inheritance lineage and inherited audits are included when available.
