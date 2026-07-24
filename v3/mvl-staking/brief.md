# Agentic Audit Brief: MVL Staking

## Export Authority

- Production state: **published scope**
- Raw selected rows: 1 across 1 audit(s)
- Eligible audit results: 3 (1 matched; 2 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e40c73181a386361babecc6895e0f6c5587548f92814db09f88491f8b4a38d92`

## Project Overview

- Project: MVL Staking (`mvl-staking`)
- Website: [https://mvlchain.io/](https://mvlchain.io/)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: bsc, ethereum
- Contract surface: 72 unique implementations (73 raw deployments)
- Coverage basis: 1/2 confirmed own live verified implementations (50.0%); conservative 50.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $794,175.83
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for MVL Staking. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 2 contract row(s) across bsc, ethereum. Structural roles: 2 core. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 2
- Structural roles: core (2)
- Contract kinds: contract (2)
- Detected standards: erc20 (2), erc20permit (1)
- Frameworks: openzeppelin (2)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 18 contracts are derived from known codebases. 18 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x1bdfaa7afaa454f491b5de40d24d681f0f3adb1a`, chain 1)
- UnnamedContract (`0x34fda56b5c9aa52df9fa51b01666683b7b1434d6`, chain 1)
- UnnamedContract (`0x742ab08eec9f940bef657394720090f163f535cc`, chain 1)
- UnnamedContract (`0x92ec27935ce7b523cc70c2ffaf0728f1fa6425df`, chain 1)
- UnnamedContract (`0xb87a16fd301b3cfed03982d99840970328d185ad`, chain 1)
- UnnamedContract (`0xc0496c7b9d7150a81bd6ff1d015e95668bd4abed`, chain 1)
- UnnamedContract (`0xf7eaecebd69430b31e711df8bd9dd215a49b6d80`, chain 1)
- UnnamedContract (`0x0a3ac95445f3e02cc80267f02b9669ed75b71043`, chain 56)
- UnnamedContract (`0x121e257f4a6fa763012ef0b6b6f68905f6d4b721`, chain 56)
- UnnamedContract (`0x5a54ec1e6da36f19a806a9168fd4270fef697354`, chain 56)
- UnnamedContract (`0x5f588efaf8eb57e3837486e834fc5a4e07768d98`, chain 56)
- UnnamedContract (`0x8ceb404d939c293ad070a5b33fc197df3af1abb7`, chain 56)
- UnnamedContract (`0xc81632e77ea7262137ea815dc8ba7a47a5a01ab1`, chain 56)
- UnnamedContract (`0xc948622856a40efd50d74ba6e3624fe7100a95ef`, chain 56)
- UnnamedContract (`0xdd71d03d70848f79a1c6df6eb0f6623236bbd85b`, chain 56)
- UnnamedContract (`0xe01eda650632986b2e5b8167f629d7c7c759d4fd`, chain 56)
- MVLToken (`0xa849eaae994fb86afa73382e9bd88c2b6b18dc71`, chain 1)
- UniswapV2Pair (`0x3c8ad34155b83ddb7f43119a19503d34ed2b5c7a`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 2; live-surface rows included: 2 (2 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 18/23 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 1/2 (50.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 18 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 54 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 1
- Confirmed-live implementations: 18 of 72 unique; 54 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 1/3
- Verified + Unaudited implementations: 2
- Verified by bytecode match: 0
- Unverified implementations: 69
- Unique implementations: 72
- Raw deployments: 73
- Audits discovered: 3 (3 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022-02 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 2 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 1 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| CertiK | Tier 2 | 1 | 33.3% | 2022-02 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| MVLToken | token | project_anchor | own_supporting | 0 | ethereum | unit-389596 | `0xa849eaae994fb86afa73382e9bd88c2b6b18dc71` | ✅ Audited |

### ⚠️ Verified + Unaudited (2)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x0d9607dd5f36325dcb40da0874130e794d587ff6`; ethereum `0x7f29fba2e7543d7ad524e9c5db3522f6448f9fec` | ⚠️ Unaudited |
| UniswapV2Pair | unknown | project_anchor | own_supporting | 0 | ethereum | unit-389592 | `0x3c8ad34155b83ddb7f43119a19503d34ed2b5c7a` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (69)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x024cc7d193014cd3eff94db9b9df9a20898ca388` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0283c16c2a339fe916510008a633c76d620b4f31` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1053232134c055becd157981d7e942dcd9fa1bad` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-389590 | `0x1bdfaa7afaa454f491b5de40d24d681f0f3adb1a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1d20849ca543542cec0a5bb0551c27e8cf6ce44b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x25ddd665932fa7752394aa6aaa10b1fe6b2106ea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2918ef32f882687a1ebdd435c3eb71384b58437d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x29d21e578e25c2db1186458b463b86d9b9445707` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2b116ef04de516c8a192feff69d64db06e6792ab` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-389591 | `0x34fda56b5c9aa52df9fa51b01666683b7b1434d6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3fe4552903318e37d9b5dccd846bc07a6bfbbc78` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4abc96531eca8fcdcf683f320c4edea3a5e06047` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5690a9ca5d6b78446c72f61b4768e650219327c1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x59022439256ffa5245f84db6e42576d095a7447d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x597369b02a2cb728e473783e759c85ce069809c7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5de946c0af525e9b000f05484ea13db7a9a46b98` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x612c7d3b06c864bf6bc70184e8b3872e1fdadc6c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6365d1d1206458e9299e9faaa03da30a2f6b807b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6443533a14647fb6abdd335312f07a906dbd7efc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x672397a80f2b6622bb94bf34e5f64c4aa0239b31` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6b65471d191ff550e58ebfc122cbace86f61bfc2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x706b74144215a2d265a592faec46fb622aa6743b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-389594 | `0x742ab08eec9f940bef657394720090f163f535cc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x749fdc6588d33e2e28e21b4e59a44fb314cda2c0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x791f3c7cf0af8c745ec1c07fbfe6d3ffff96d292` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x79a77db1ab8fcc44cfcf456c6af0ae1ab1984c15` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x82bbdcb4272efc9d528c2df78afc88c93c4c6459` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x879debf26da258ad75b21721548046d0d91505aa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8d5554438911344f1cfeb71ccae6a6d1467a8051` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9090065e1495bd8b6f189570149e0cc97560ee42` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-389595 | `0x92ec27935ce7b523cc70c2ffaf0728f1fa6425df` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa791aed8a9f5b64e620f79759328ea17f1a402d6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb56b012f8865f1f5aec8f89fbc681514ade22d70` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-389597 | `0xb87a16fd301b3cfed03982d99840970328d185ad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb994f320ada949e1bbbe998b79676617dda8caa3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbe84123c15cb057c6669f24d6cea19f5c80680fa` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-389598 | `0xc0496c7b9d7150a81bd6ff1d015e95668bd4abed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc1ac84c7b9ea23e7e893b668ef368a6972c2637f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcd84f2a9b5c5eb1b8b1fdf9bfa7bcfbbde3a9306` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd3925b4316fdeb85a926207385c7fde9144555b1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd50090a480e8570ec0058d0fa2cc74b9355a4b7c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe3c087cfe3b087a9727aa8d6dab8b2f52f26360a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe700cc7c30adb5835cb19e749438c6569b2cda01` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf608e54ac3184d444ceda4625ead26e7b4878bdc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf7e5914f9dc16535029b730f3513195976b59153` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-389603 | `0xf7eaecebd69430b31e711df8bd9dd215a49b6d80` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0211633609369d88015f6756151217fd23df4473` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x074f4c05d209f97c38a089818cf06c12332f9a02` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-389604 | `0x0a3ac95445f3e02cc80267f02b9669ed75b71043` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-389605 | `0x121e257f4a6fa763012ef0b6b6f68905f6d4b721` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2804fe56d7c647182778d96cfefa9ccc92d9acfe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x35d98c281495d99e783b471176db03d097416480` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3718d97c3cf94ea78300466affe60690c97b0fa3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x390a60f8a76b75e4211bf488431414f424f01dc7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4b27f7a4feb196453637590af105023301dcd9ea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5153d81c123b9bd034caf32a2902a5ee9935edc6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-389606 | `0x5a54ec1e6da36f19a806a9168fd4270fef697354` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-389607 | `0x5f588efaf8eb57e3837486e834fc5a4e07768d98` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x76d9d2bf9cdb03ca11655262ad742c9bfe44d402` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7dcb89d20736c0c93c90699c307d829a526212a9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7ee6c388ecc71dd760441213dc1c380e9979dbdc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-389608 | `0x8ceb404d939c293ad070a5b33fc197df3af1abb7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa179f93e59c917f41bedbabcb06a8af1fb556552` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-389609 | `0xc81632e77ea7262137ea815dc8ba7a47a5a01ab1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-389610 | `0xc948622856a40efd50d74ba6e3624fe7100a95ef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xcdae562e0a9a66b0345925b8bd18cb91f2310d7a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-389611 | `0xdd71d03d70848f79a1c6df6eb0f6623236bbd85b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-389612 | `0xe01eda650632986b2e5b8167f629d7c7c759d4fd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xebef52fdb65ab493bf84237d0c98211de5d3ba85` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 57
- Live contracts: 2
- Unknown liveness contracts: 55
- Source-verified contracts: 1
- Currently scope-matched contracts retained as-is: 0
- Classification counts: exact address book overlap=2, source verified unclassified=1, unverified unclassified=54

| Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|
| exact address book overlap | UnnamedContract<br>`0x34fda56b5c9aa52df9fa51b01666683b7b1434d6` | project_anchor | unknown | live | unverified | n/a | `0x9a8a6d980952b66aadb2d38ed0360e5717ea845f` |
| exact address book overlap | UnnamedContract<br>`0x92ec27935ce7b523cc70c2ffaf0728f1fa6425df` | project_anchor | unknown | live | unverified | n/a | `0x6bb4f3f6b95b50e0baa82aa9f74c6836e5fbf574` |
| source verified unclassified | TransparentUpgradeableProxy<br>`0x7f29fba2e7543d7ad524e9c5db3522f6448f9fec` | non_address_book | unknown | unknown | verified | n/a | `0xb899d2de1f2b6928113caa92b4c02ce100829ca7` |
| unverified unclassified | UnnamedContract<br>`0x024cc7d193014cd3eff94db9b9df9a20898ca388` | non_address_book | unknown | unknown | unverified | n/a | `0xb899d2de1f2b6928113caa92b4c02ce100829ca7` |
| unverified unclassified | UnnamedContract<br>`0x0283c16c2a339fe916510008a633c76d620b4f31` | non_address_book | unknown | unknown | unverified | n/a | `0xb899d2de1f2b6928113caa92b4c02ce100829ca7` |
| unverified unclassified | UnnamedContract<br>`0x0d9607dd5f36325dcb40da0874130e794d587ff6` | non_address_book | unknown | unknown | unverified | n/a | `0xb899d2de1f2b6928113caa92b4c02ce100829ca7` |
| unverified unclassified | UnnamedContract<br>`0x1053232134c055becd157981d7e942dcd9fa1bad` | non_address_book | unknown | unknown | unverified | n/a | `0xb899d2de1f2b6928113caa92b4c02ce100829ca7` |
| unverified unclassified | UnnamedContract<br>`0x1d20849ca543542cec0a5bb0551c27e8cf6ce44b` | non_address_book | unknown | unknown | unverified | n/a | `0xb899d2de1f2b6928113caa92b4c02ce100829ca7` |
| unverified unclassified | UnnamedContract<br>`0x25ddd665932fa7752394aa6aaa10b1fe6b2106ea` | non_address_book | unknown | unknown | unverified | n/a | `0xb899d2de1f2b6928113caa92b4c02ce100829ca7` |
| unverified unclassified | UnnamedContract<br>`0x2918ef32f882687a1ebdd435c3eb71384b58437d` | non_address_book | unknown | unknown | unverified | n/a | `0xb899d2de1f2b6928113caa92b4c02ce100829ca7` |
| unverified unclassified | UnnamedContract<br>`0x29d21e578e25c2db1186458b463b86d9b9445707` | non_address_book | unknown | unknown | unverified | n/a | `0xb899d2de1f2b6928113caa92b4c02ce100829ca7` |
| unverified unclassified | UnnamedContract<br>`0x2b116ef04de516c8a192feff69d64db06e6792ab` | non_address_book | unknown | unknown | unverified | n/a | `0xb899d2de1f2b6928113caa92b4c02ce100829ca7` |
| unverified unclassified | UnnamedContract<br>`0x3fe4552903318e37d9b5dccd846bc07a6bfbbc78` | non_address_book | unknown | unknown | unverified | n/a | `0xb899d2de1f2b6928113caa92b4c02ce100829ca7` |
| unverified unclassified | UnnamedContract<br>`0x4abc96531eca8fcdcf683f320c4edea3a5e06047` | non_address_book | unknown | unknown | unverified | n/a | `0xb899d2de1f2b6928113caa92b4c02ce100829ca7` |
| unverified unclassified | UnnamedContract<br>`0x5690a9ca5d6b78446c72f61b4768e650219327c1` | non_address_book | unknown | unknown | unverified | n/a | `0xb899d2de1f2b6928113caa92b4c02ce100829ca7` |
| unverified unclassified | UnnamedContract<br>`0x59022439256ffa5245f84db6e42576d095a7447d` | non_address_book | unknown | unknown | unverified | n/a | `0x51b637b000ea7f097401a59736afc94e9d3342ce` |
| unverified unclassified | UnnamedContract<br>`0x597369b02a2cb728e473783e759c85ce069809c7` | non_address_book | unknown | unknown | unverified | n/a | `0xb899d2de1f2b6928113caa92b4c02ce100829ca7` |
| unverified unclassified | UnnamedContract<br>`0x5de946c0af525e9b000f05484ea13db7a9a46b98` | non_address_book | unknown | unknown | unverified | n/a | `0xb899d2de1f2b6928113caa92b4c02ce100829ca7` |
| unverified unclassified | UnnamedContract<br>`0x612c7d3b06c864bf6bc70184e8b3872e1fdadc6c` | non_address_book | unknown | unknown | unverified | n/a | `0xb899d2de1f2b6928113caa92b4c02ce100829ca7` |
| unverified unclassified | UnnamedContract<br>`0x6365d1d1206458e9299e9faaa03da30a2f6b807b` | non_address_book | unknown | unknown | unverified | n/a | `0xb899d2de1f2b6928113caa92b4c02ce100829ca7` |
| unverified unclassified | UnnamedContract<br>`0x6443533a14647fb6abdd335312f07a906dbd7efc` | non_address_book | unknown | unknown | unverified | n/a | `0xb899d2de1f2b6928113caa92b4c02ce100829ca7` |
| unverified unclassified | UnnamedContract<br>`0x672397a80f2b6622bb94bf34e5f64c4aa0239b31` | non_address_book | unknown | unknown | unverified | n/a | `0xb899d2de1f2b6928113caa92b4c02ce100829ca7` |
| unverified unclassified | UnnamedContract<br>`0x6b65471d191ff550e58ebfc122cbace86f61bfc2` | non_address_book | unknown | unknown | unverified | n/a | `0xb899d2de1f2b6928113caa92b4c02ce100829ca7` |
| unverified unclassified | UnnamedContract<br>`0x706b74144215a2d265a592faec46fb622aa6743b` | non_address_book | unknown | unknown | unverified | n/a | `0xb899d2de1f2b6928113caa92b4c02ce100829ca7` |
| unverified unclassified | UnnamedContract<br>`0x749fdc6588d33e2e28e21b4e59a44fb314cda2c0` | non_address_book | unknown | unknown | unverified | n/a | `0xb899d2de1f2b6928113caa92b4c02ce100829ca7` |
| unverified unclassified | UnnamedContract<br>`0x791f3c7cf0af8c745ec1c07fbfe6d3ffff96d292` | non_address_book | unknown | unknown | unverified | n/a | `0xb899d2de1f2b6928113caa92b4c02ce100829ca7` |
| unverified unclassified | UnnamedContract<br>`0x79a77db1ab8fcc44cfcf456c6af0ae1ab1984c15` | non_address_book | unknown | unknown | unverified | n/a | `0xb899d2de1f2b6928113caa92b4c02ce100829ca7` |
| unverified unclassified | UnnamedContract<br>`0x82bbdcb4272efc9d528c2df78afc88c93c4c6459` | non_address_book | unknown | unknown | unverified | n/a | `0x51b637b000ea7f097401a59736afc94e9d3342ce` |
| unverified unclassified | UnnamedContract<br>`0x879debf26da258ad75b21721548046d0d91505aa` | non_address_book | unknown | unknown | unverified | n/a | `0xb899d2de1f2b6928113caa92b4c02ce100829ca7` |
| unverified unclassified | UnnamedContract<br>`0x8d5554438911344f1cfeb71ccae6a6d1467a8051` | non_address_book | unknown | unknown | unverified | n/a | `0xb899d2de1f2b6928113caa92b4c02ce100829ca7` |
| unverified unclassified | UnnamedContract<br>`0x9090065e1495bd8b6f189570149e0cc97560ee42` | non_address_book | unknown | unknown | unverified | n/a | `0xb899d2de1f2b6928113caa92b4c02ce100829ca7` |
| unverified unclassified | UnnamedContract<br>`0xa791aed8a9f5b64e620f79759328ea17f1a402d6` | non_address_book | unknown | unknown | unverified | n/a | `0xb899d2de1f2b6928113caa92b4c02ce100829ca7` |
| unverified unclassified | UnnamedContract<br>`0xb56b012f8865f1f5aec8f89fbc681514ade22d70` | non_address_book | unknown | unknown | unverified | n/a | `0xb899d2de1f2b6928113caa92b4c02ce100829ca7` |
| unverified unclassified | UnnamedContract<br>`0xb994f320ada949e1bbbe998b79676617dda8caa3` | non_address_book | unknown | unknown | unverified | n/a | `0x9a8a6d980952b66aadb2d38ed0360e5717ea845f` |
| unverified unclassified | UnnamedContract<br>`0xbe84123c15cb057c6669f24d6cea19f5c80680fa` | non_address_book | unknown | unknown | unverified | n/a | `0xb899d2de1f2b6928113caa92b4c02ce100829ca7` |
| unverified unclassified | UnnamedContract<br>`0xc1ac84c7b9ea23e7e893b668ef368a6972c2637f` | non_address_book | unknown | unknown | unverified | n/a | `0xb899d2de1f2b6928113caa92b4c02ce100829ca7` |
| unverified unclassified | UnnamedContract<br>`0xcd84f2a9b5c5eb1b8b1fdf9bfa7bcfbbde3a9306` | non_address_book | unknown | unknown | unverified | n/a | `0x9a8a6d980952b66aadb2d38ed0360e5717ea845f` |
| unverified unclassified | UnnamedContract<br>`0xd3925b4316fdeb85a926207385c7fde9144555b1` | non_address_book | unknown | unknown | unverified | n/a | `0xb899d2de1f2b6928113caa92b4c02ce100829ca7` |
| unverified unclassified | UnnamedContract<br>`0xd50090a480e8570ec0058d0fa2cc74b9355a4b7c` | non_address_book | unknown | unknown | unverified | n/a | `0xb899d2de1f2b6928113caa92b4c02ce100829ca7` |
| unverified unclassified | UnnamedContract<br>`0xe3c087cfe3b087a9727aa8d6dab8b2f52f26360a` | non_address_book | unknown | unknown | unverified | n/a | `0xb899d2de1f2b6928113caa92b4c02ce100829ca7` |
| unverified unclassified | UnnamedContract<br>`0xe700cc7c30adb5835cb19e749438c6569b2cda01` | non_address_book | unknown | unknown | unverified | n/a | `0xb899d2de1f2b6928113caa92b4c02ce100829ca7` |
| unverified unclassified | UnnamedContract<br>`0xf608e54ac3184d444ceda4625ead26e7b4878bdc` | non_address_book | unknown | unknown | unverified | n/a | `0xb899d2de1f2b6928113caa92b4c02ce100829ca7` |
| unverified unclassified | UnnamedContract<br>`0xf7e5914f9dc16535029b730f3513195976b59153` | non_address_book | unknown | unknown | unverified | n/a | `0xb899d2de1f2b6928113caa92b4c02ce100829ca7` |
| unverified unclassified | UnnamedContract<br>`0x0211633609369d88015f6756151217fd23df4473` | non_address_book | unknown | unknown | unverified | n/a | `0x2b6d7c3bd2cfeca2221b6bef968caf8db9266ea0` |
| unverified unclassified | UnnamedContract<br>`0x074f4c05d209f97c38a089818cf06c12332f9a02` | non_address_book | unknown | unknown | unverified | n/a | `0x2b6d7c3bd2cfeca2221b6bef968caf8db9266ea0` |
| unverified unclassified | UnnamedContract<br>`0x2804fe56d7c647182778d96cfefa9ccc92d9acfe` | non_address_book | unknown | unknown | unverified | n/a | `0x54fb464d60c3f822fcb9b4d3cdfd231fff344417` |
| unverified unclassified | UnnamedContract<br>`0x35d98c281495d99e783b471176db03d097416480` | non_address_book | unknown | unknown | unverified | n/a | `0x2b6d7c3bd2cfeca2221b6bef968caf8db9266ea0` |
| unverified unclassified | UnnamedContract<br>`0x3718d97c3cf94ea78300466affe60690c97b0fa3` | non_address_book | unknown | unknown | unverified | n/a | `0x2b6d7c3bd2cfeca2221b6bef968caf8db9266ea0` |
| unverified unclassified | UnnamedContract<br>`0x390a60f8a76b75e4211bf488431414f424f01dc7` | non_address_book | unknown | unknown | unverified | n/a | `0x2b6d7c3bd2cfeca2221b6bef968caf8db9266ea0` |
| unverified unclassified | UnnamedContract<br>`0x4b27f7a4feb196453637590af105023301dcd9ea` | non_address_book | unknown | unknown | unverified | n/a | `0x2b6d7c3bd2cfeca2221b6bef968caf8db9266ea0` |
| unverified unclassified | UnnamedContract<br>`0x5153d81c123b9bd034caf32a2902a5ee9935edc6` | non_address_book | unknown | unknown | unverified | n/a | `0x2b6d7c3bd2cfeca2221b6bef968caf8db9266ea0` |
| unverified unclassified | UnnamedContract<br>`0x76d9d2bf9cdb03ca11655262ad742c9bfe44d402` | non_address_book | unknown | unknown | unverified | n/a | `0x2b6d7c3bd2cfeca2221b6bef968caf8db9266ea0` |
| unverified unclassified | UnnamedContract<br>`0x7dcb89d20736c0c93c90699c307d829a526212a9` | non_address_book | unknown | unknown | unverified | n/a | `0x54fb464d60c3f822fcb9b4d3cdfd231fff344417` |
| unverified unclassified | UnnamedContract<br>`0x7ee6c388ecc71dd760441213dc1c380e9979dbdc` | non_address_book | unknown | unknown | unverified | n/a | `0x2b6d7c3bd2cfeca2221b6bef968caf8db9266ea0` |
| unverified unclassified | UnnamedContract<br>`0xa179f93e59c917f41bedbabcb06a8af1fb556552` | non_address_book | unknown | unknown | unverified | n/a | `0x2b6d7c3bd2cfeca2221b6bef968caf8db9266ea0` |
| unverified unclassified | UnnamedContract<br>`0xcdae562e0a9a66b0345925b8bd18cb91f2310d7a` | non_address_book | unknown | unknown | unverified | n/a | `0x2b6d7c3bd2cfeca2221b6bef968caf8db9266ea0` |
| unverified unclassified | UnnamedContract<br>`0xebef52fdb65ab493bf84237d0c98211de5d3ba85` | non_address_book | unknown | unknown | unverified | n/a | `0x2b6d7c3bd2cfeca2221b6bef968caf8db9266ea0` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [skynet.certik.com/ko/projects/mvl-mass-vehicle-ledger](https://skynet.certik.com/ko/projects/mvl-mass-vehicle-ledger?utm_source=CMC&utm_campaign=AuditByCertiKLink) | CertiK | Audit | 2022-02 | stale | Direct | n/a | matched | 1 | 0 | 0 | 0 | n/a |
| [download.cm](https://mvlchain.io/download.cm?tk=YToyOntpOjA7czoxMzoiNWViMWZlNmQ3MTliZSI7aToxO3M6MjI6ImYyMDIzMDYwMjNkOTVmZjE0MDdhZTciO30=) | unknown | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [59e51efffe348.pdf](https://dataseoul.s3.ap-northeast-2.amazonaws.com/upload/S20210416bccc442510498/59e51efffe348.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [3211] skynet.certik.com/ko/projects/mvl-mass-vehicle-ledger — matched: No reason recorded
- [3212] download.cm — no match: The provided text is a URL and markdown content marker, not the actual audit report content. No contract names or audit date could be extracted.
- [11971] 59e51efffe348.pdf — no match: The document is a press kit for MVL, not an audit report. No smart contracts or audit details are present.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| skynet.certik.com/ko/projects/mvl-mass-vehicle-ledger | MVLToken | own contract | MVLToken (selected) `0xa849eaae994fb86afa73382e9bd88c2b6b18dc71` — deployed 2018-05-31 13:21:19+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 1 |
| upstream | 1 |
| standard_library | 0 |
| needs_review | 70 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Address-book scope dispositions: 1 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 0 unmatched
- Matched-own operational status: 1 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: low=2
- Match method counts: unique_name=1

Zero-match audit list:

- [3212] download.cm
- [11971] 59e51efffe348.pdf

Fork inheritance lineage and inherited audits are included when available.
