# Agentic Audit Brief: the-graph

## Project Overview

- Project: the-graph (`the-graph`)
- Lifecycle: unknown
- Generated: 2026-07-04T14:54:01.361Z
- Pipeline run: v2-2026-07-02-1ba3fd
- Chains: arbitrum, ethereum
- Contract surface: 66 unique implementations (66 raw deployments)
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Structural profile: 64 project-authored contract(s) across 2 chain(s); 2 ERC20 tokens, 2 ERC721 NFTs; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 3 functional families. Its contracts share 18 common project-authored base contract(s) (graphproxystorage, governed, stakingv2storage). Dominant framework: openzeppelin.

## Fork Lineage

This project reuses audited code from **Hinkal** (`hinkal`) in the Curation, GNS, GraphSale, GraphTallyCollector, GraphTokenLockSimple, L2GraphTokenLockManager, … subsystem.
8 audits inherited from `hinkal`, scoped to that subsystem.

Total inherited audits: 8. Inherited coverage reflects forked/shared code audited by the origin project — it is not a direct audit of this project.

## Contract Surface Quality

- Indexed contracts: 66; live-surface contracts included: 66 (66 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 11/65 (16.9%)
- Deployed-live implementations: 66 of 66 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 11/66
- Verified + Unaudited implementations: 55
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 66
- Raw deployments: 66
- Audits discovered: 8 (0 direct, 8 inherited from forked code)
- Scoreable audits (matched contracts): 8
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Audit staleness (calendar age): 0 fresh, 0 aging, 0 stale, 8 unknown
- Coverage code basis (deployed vs audited code): 11 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: 16.9% (Immunefi)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Immunefi | Tier 1 | 11 | 16.7% | n/a |
| Quantstamp | Tier 2 | 11 | 16.7% | n/a |
| unknown | Tier 2 | 11 | 16.7% | n/a |
| yAudit | Tier 2 | 11 | 16.7% | n/a |

## Contract Surface

### ✅ Verified + Audited (11)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Curation | unknown | ethereum | n/a | [`0x147a7758ea71d91d545407927b34dd77a5f7c21a`](./contracts/ethereum-1/0x147a7758ea71d91d545407927b34dd77a5f7c21a/) | ✅ Audited |
| GNS | unknown | ethereum | n/a | [`0x28037b93702335e55fe6319e1c144b8a4d05daeb`](./contracts/ethereum-1/0x28037b93702335e55fe6319e1c144b8a4d05daeb/) | ✅ Audited |
| GraphSale | unknown | ethereum | n/a | [`0x09695a6dff47b0053ef9553fee49d2d833afa68b`](./contracts/ethereum-1/0x09695a6dff47b0053ef9553fee49d2d833afa68b/) | ✅ Audited |
| GraphTallyCollector | unknown | arbitrum | n/a | [`0x8f69f5c07477ac46fbc491b1e6d91e2bb0111a9e`](./contracts/arbitrum-42161/0x8f69f5c07477ac46fbc491b1e6d91e2bb0111a9e/) | ✅ Audited |
| GraphTokenLockSimple | unknown | ethereum | n/a | [`0x32ec7a59549b9f114c9d7d8b21891d91ae7f2ca1`](./contracts/ethereum-1/0x32ec7a59549b9f114c9d7d8b21891d91ae7f2ca1/) | ✅ Audited |
| L1GNS | unknown | ethereum | n/a | [`0x83a5b6c542ab20436087fc79724bdf06ea80f836`](./contracts/ethereum-1/0x83a5b6c542ab20436087fc79724bdf06ea80f836/) | ✅ Audited |
| L2GNS | unknown | arbitrum | n/a | [`0x5cbdb6cfb91d435c5899fc05741e7d371fd71667`](./contracts/arbitrum-42161/0x5cbdb6cfb91d435c5899fc05741e7d371fd71667/) | ✅ Audited |
| L2GraphTokenLockManager | unknown | arbitrum | n/a | [`0x4f74c728cee713191e500e68a8c8cc32bff9d911`](./contracts/arbitrum-42161/0x4f74c728cee713191e500e68a8c8cc32bff9d911/) | ✅ Audited |
| L2GraphTokenLockWallet | unknown | arbitrum | n/a | [`0x6864cdd6d69dbef02e5e06c5534b20fdaf8b51b0`](./contracts/arbitrum-42161/0x6864cdd6d69dbef02e5e06c5534b20fdaf8b51b0/) | ✅ Audited |
| L2Staking | unknown | arbitrum | n/a | [`0x069facd162023626866efda1c079d848575750d3`](./contracts/arbitrum-42161/0x069facd162023626866efda1c079d848575750d3/) | ✅ Audited |
| PaymentsEscrow | unknown | arbitrum | n/a | [`0xc493e8ebede3d1cc61632736108d943693da11f7`](./contracts/arbitrum-42161/0xc493e8ebede3d1cc61632736108d943693da11f7/) | ✅ Audited |

### ⚠️ Verified + Unaudited (55)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AllocationExchange | unknown | ethereum | n/a | [`0x0c5b5083036ed7c39fe8d8368c24782fdaa52d6a`](./contracts/ethereum-1/0x0c5b5083036ed7c39fe8d8368c24782fdaa52d6a/) | ⚠️ Unaudited |
| AllocationIDTracker | unknown | arbitrum | n/a | [`0x5b2f33d7ca6ec88f5586f2528f58c20843d9fe7c`](./contracts/arbitrum-42161/0x5b2f33d7ca6ec88f5586f2528f58c20843d9fe7c/) | ⚠️ Unaudited |
| BancorFormula | unknown | arbitrum | n/a | [`0xa489fdc65229d6225014c0b357bcd19af6f00ee9`](./contracts/arbitrum-42161/0xa489fdc65229d6225014c0b357bcd19af6f00ee9/) | ⚠️ Unaudited |
| BanxaWrapper | unknown | arbitrum | n/a | [`0xc9e1aa57223add21cc88a03088af552f1ea8a34a`](./contracts/arbitrum-42161/0xc9e1aa57223add21cc88a03088af552f1ea8a34a/) | ⚠️ Unaudited |
| BaseRegistrarImplementation | unknown | ethereum | n/a | [`0x57f1887a8bf19b14fc0df6fd9b2acc9af147ea85`](./contracts/ethereum-1/0x57f1887a8bf19b14fc0df6fd9b2acc9af147ea85/) | ⚠️ Unaudited |
| Billing | unknown | arbitrum | n/a | [`0x1b07d3344188908fb6deceac381f3ee63c48477a`](./contracts/arbitrum-42161/0x1b07d3344188908fb6deceac381f3ee63c48477a/) | ⚠️ Unaudited |
| BillingConnector | unknown | ethereum | n/a | [`0x8017b9af3f199cc6b08a48da3859410f20bbea72`](./contracts/ethereum-1/0x8017b9af3f199cc6b08a48da3859410f20bbea72/) | ⚠️ Unaudited |
| BridgeEscrow | unknown | ethereum | n/a | [`0x36aff7001294dae4c2ed4fdefc478a00de77f090`](./contracts/ethereum-1/0x36aff7001294dae4c2ed4fdefc478a00de77f090/) | ⚠️ Unaudited |
| Controller | unknown | arbitrum | n/a | [`0x0a8491544221dd212964fbb96487467291b2c97e`](./contracts/arbitrum-42161/0x0a8491544221dd212964fbb96487467291b2c97e/) | ⚠️ Unaudited |
| DataEdge | unknown | ethereum | n/a | [`0xade906194c923b28f03f48bc5d9d987aae21ffab`](./contracts/ethereum-1/0xade906194c923b28f03f48bc5d9d987aae21ffab/) | ⚠️ Unaudited |
| DefaultReverseResolver | unknown | ethereum | n/a | [`0xa2c122be93b0074270ebee7f6b7292c7deb45047`](./contracts/ethereum-1/0xa2c122be93b0074270ebee7f6b7292c7deb45047/) | ⚠️ Unaudited |
| DisputeManager | unknown | arbitrum | n/a | [`0x0ab2b043138352413bb02e67e626a70320e3bd46`](./contracts/arbitrum-42161/0x0ab2b043138352413bb02e67e626a70320e3bd46/) | ⚠️ Unaudited |
| DNSRegistrar | unknown | ethereum | n/a | [`0xa2f428617a523837d4adc81c67a296d42fd95e86`](./contracts/ethereum-1/0xa2f428617a523837d4adc81c67a296d42fd95e86/) | ⚠️ Unaudited |
| ENSMigrationSubdomainRegistrar | unknown | ethereum | n/a | [`0xe65d8aaf34cb91087d1598e0a15b582f57f217d9`](./contracts/ethereum-1/0xe65d8aaf34cb91087d1598e0a15b582f57f217d9/) | ⚠️ Unaudited |
| ENSRegistryWithFallback | unknown | ethereum | n/a | [`0x00000000000c2e074ec69a0dfb2997ba6c7d2e1e`](./contracts/ethereum-1/0x00000000000c2e074ec69a0dfb2997ba6c7d2e1e/) | ⚠️ Unaudited |
| EpochManager | unknown | ethereum | n/a | [`0x3fab259f2392f733c60c19492b5678e5d2d2ee31`](./contracts/ethereum-1/0x3fab259f2392f733c60c19492b5678e5d2d2ee31/) | ⚠️ Unaudited |
| Escrow | unknown | arbitrum | n/a | [`0x8f477709ef277d4a880801d01a140a9cf88ba0d3`](./contracts/arbitrum-42161/0x8f477709ef277d4a880801d01a140a9cf88ba0d3/) | ⚠️ Unaudited |
| EthereumDIDRegistry | unknown | arbitrum | n/a | [`0xa9aeb1c6f14f4244547b9a0946c485da99047638`](./contracts/arbitrum-42161/0xa9aeb1c6f14f4244547b9a0946c485da99047638/) | ⚠️ Unaudited |
| ETHRegistrarController | unknown | ethereum | n/a | [`0x283af0b28c62c092c9727f1ee09c02ca627eb7f5`](./contracts/ethereum-1/0x283af0b28c62c092c9727f1ee09c02ca627eb7f5/) | ⚠️ Unaudited |
| EventfulDataEdge | unknown | arbitrum | n/a | [`0xed16cebd4fa74a0016e1149cc03563db4b223aec`](./contracts/arbitrum-42161/0xed16cebd4fa74a0016e1149cc03563db4b223aec/) | ⚠️ Unaudited |
| GraphCurationToken | unknown | arbitrum | n/a | [`0x47a0d56ea574419b524285d52ffe7198297d209c`](./contracts/arbitrum-42161/0x47a0d56ea574419b524285d52ffe7198297d209c/) | ⚠️ Unaudited |
| GraphPayments | unknown | arbitrum | n/a | [`0x6bc86e5d64c6c4882670804ca7ee4919cccca86a`](./contracts/arbitrum-42161/0x6bc86e5d64c6c4882670804ca7ee4919cccca86a/) | ⚠️ Unaudited |
| GraphPreToken | unknown | ethereum | n/a | [`0x5d96113bac24d0b24f73d4cbb27b65ca7e559e10`](./contracts/ethereum-1/0x5d96113bac24d0b24f73d4cbb27b65ca7e559e10/) | ⚠️ Unaudited |
| GraphProxy | unknown | arbitrum | n/a | [`0x65e1a5e8946e7e87d9774f5288f41c30a99fd302`](./contracts/arbitrum-42161/0x65e1a5e8946e7e87d9774f5288f41c30a99fd302/) | ⚠️ Unaudited |
| GraphProxyAdmin | unknown | arbitrum | n/a | [`0x2983936ac20202a6555993448e0d5654ac8ca5fd`](./contracts/arbitrum-42161/0x2983936ac20202a6555993448e0d5654ac8ca5fd/) | ⚠️ Unaudited |
| GraphToken | unknown | ethereum | n/a | [`0xc944e90c64b2c07662a292be6244bdf05cda44a7`](./contracts/ethereum-1/0xc944e90c64b2c07662a292be6244bdf05cda44a7/) | ⚠️ Unaudited |
| GraphTokenLockManager | unknown | ethereum | n/a | [`0x455466e99033d1d33d6fa6eca40f182e0a551847`](./contracts/ethereum-1/0x455466e99033d1d33d6fa6eca40f182e0a551847/) | ⚠️ Unaudited |
| GraphTokenLockWallet | unknown | ethereum | n/a | [`0x624984fd288e28c0d24d7e0e4adfda130717720b`](./contracts/ethereum-1/0x624984fd288e28c0d24d7e0e4adfda130717720b/) | ⚠️ Unaudited |
| GRTTokenSwap | unknown | arbitrum | n/a | [`0xde2f97cf98411b4aeb2b2952556ff9553d548b94`](./contracts/arbitrum-42161/0xde2f97cf98411b4aeb2b2952556ff9553d548b94/) | ⚠️ Unaudited |
| HorizonStaking | unknown | arbitrum | n/a | [`0x00669a4cf01450b64e8a2a20e9b1fcb71e61ef03`](./contracts/arbitrum-42161/0x00669a4cf01450b64e8a2a20e9b1fcb71e61ef03/) | ⚠️ Unaudited |
| HorizonStakingExtension | unknown | arbitrum | n/a | [`0x3396f4f9b3c9e9b28126713b32d1d9939a219d64`](./contracts/arbitrum-42161/0x3396f4f9b3c9e9b28126713b32d1d9939a219d64/) | ⚠️ Unaudited |
| L1GraphTokenGateway | unknown | ethereum | n/a | [`0x01cdc91b0a9ba741903aa3699bf4ce31d6c5cc06`](./contracts/ethereum-1/0x01cdc91b0a9ba741903aa3699bf4ce31d6c5cc06/) | ⚠️ Unaudited |
| L1GraphTokenLockTransferTool | unknown | ethereum | n/a | [`0x6a2a9bad7b9fa6ecee8f249a0850f47ee184a275`](./contracts/ethereum-1/0x6a2a9bad7b9fa6ecee8f249a0850f47ee184a275/) | ⚠️ Unaudited |
| L1Staking | unknown | ethereum | n/a | [`0x20a14d78848bc8b3f3d4b77239f2adc3c0259a10`](./contracts/ethereum-1/0x20a14d78848bc8b3f3d4b77239f2adc3c0259a10/) | ⚠️ Unaudited |
| L2Curation | unknown | arbitrum | n/a | [`0x1b75515d958b7d18f07e5239513f1f285545168d`](./contracts/arbitrum-42161/0x1b75515d958b7d18f07e5239513f1f285545168d/) | ⚠️ Unaudited |
| L2GraphToken | unknown | arbitrum | n/a | [`0x9623063377ad1b27544c965ccd7342f7ea7e88c7`](./contracts/arbitrum-42161/0x9623063377ad1b27544c965ccd7342f7ea7e88c7/) | ⚠️ Unaudited |
| L2GraphTokenLockTransferTool | unknown | arbitrum | n/a | [`0x23c9c8575e6ba0349a497b6d0e8f0b9239e68028`](./contracts/arbitrum-42161/0x23c9c8575e6ba0349a497b6d0e8f0b9239e68028/) | ⚠️ Unaudited |
| LibCobbDouglas | unknown | ethereum | n/a | [`0x054f94ab35ee8e92aa5a51084fe44295844a2dee`](./contracts/ethereum-1/0x054f94ab35ee8e92aa5a51084fe44295844a2dee/) | ⚠️ Unaudited |
| LibExponential | unknown | arbitrum | n/a | [`0x208f638d8804e4ccc874ec39e240feea3dc289ee`](./contracts/arbitrum-42161/0x208f638d8804e4ccc874ec39e240feea3dc289ee/) | ⚠️ Unaudited |
| ProxyAdmin | unknown | arbitrum | n/a | [`0x69e5e6aae945d342d6fa17d112c137d18e52c4af`](./contracts/arbitrum-42161/0x69e5e6aae945d342d6fa17d112c137d18e52c4af/) | ⚠️ Unaudited |
| PublicResolver | unknown | ethereum | n/a | [`0xdaaf96c344f63131acadd0ea35170e7892d3dfba`](./contracts/ethereum-1/0xdaaf96c344f63131acadd0ea35170e7892d3dfba/) | ⚠️ Unaudited |
| RegistrarMigration | unknown | ethereum | n/a | [`0x60c7c2a24b5e86c38639fd1586917a8fef66a56d`](./contracts/ethereum-1/0x60c7c2a24b5e86c38639fd1586917a8fef66a56d/) | ⚠️ Unaudited |
| ReverseRegistrar | unknown | ethereum | n/a | [`0x084b1c3c81545d370f3634392de611caabff8148`](./contracts/ethereum-1/0x084b1c3c81545d370f3634392de611caabff8148/) | ⚠️ Unaudited |
| RewardsEligibilityOracle | unknown | arbitrum | n/a | [`0x7381f99a610f6c438206811183e2d3969ae7eb01`](./contracts/arbitrum-42161/0x7381f99a610f6c438206811183e2d3969ae7eb01/) | ⚠️ Unaudited |
| RewardsManager | unknown | arbitrum | n/a | [`0x225ab818cd003bb17728768e6a48c160d89c64d0`](./contracts/arbitrum-42161/0x225ab818cd003bb17728768e6a48c160d89c64d0/) | ⚠️ Unaudited |
| Root | unknown | ethereum | n/a | [`0xab528d626ec275e3fad363ff1393a41f581c5897`](./contracts/ethereum-1/0xab528d626ec275e3fad363ff1393a41f581c5897/) | ⚠️ Unaudited |
| ServiceRegistry | unknown | arbitrum | n/a | [`0x072884c745c0a23144753335776c99be22588f8a`](./contracts/arbitrum-42161/0x072884c745c0a23144753335776c99be22588f8a/) | ⚠️ Unaudited |
| Staking | unknown | ethereum | n/a | [`0x0cf97e609937418ebc8c209404b947cbc914f599`](./contracts/ethereum-1/0x0cf97e609937418ebc8c209404b947cbc914f599/) | ⚠️ Unaudited |
| StakingExtension | unknown | ethereum | n/a | [`0x31ea58a81b7791b815bf2679394230ea0160e589`](./contracts/ethereum-1/0x31ea58a81b7791b815bf2679394230ea0160e589/) | ⚠️ Unaudited |
| SubgraphAvailabilityManager | unknown | arbitrum | n/a | [`0x10223d466d9acdf50798fbc3ac0c231eb616ad4d`](./contracts/arbitrum-42161/0x10223d466d9acdf50798fbc3ac0c231eb616ad4d/) | ⚠️ Unaudited |
| SubgraphNFT | unknown | ethereum | n/a | [`0x24e36639b3a3aaa9c928a8a6f12d34f942f1ab67`](./contracts/ethereum-1/0x24e36639b3a3aaa9c928a8a6f12d34f942f1ab67/) | ⚠️ Unaudited |
| SubgraphNFTDescriptor | unknown | ethereum | n/a | [`0x8f0b7e136891e8bad6aa4abcb64eeefe29dc2af0`](./contracts/ethereum-1/0x8f0b7e136891e8bad6aa4abcb64eeefe29dc2af0/) | ⚠️ Unaudited |
| SubgraphService | unknown | arbitrum | n/a | [`0x80d1a23472a4ecfa484c95779d5ce855c24747cd`](./contracts/arbitrum-42161/0x80d1a23472a4ecfa484c95779d5ce855c24747cd/) | ⚠️ Unaudited |
| Subscriptions | unknown | arbitrum | n/a | [`0x482f58d3513e386036670404b35cb3f2df67a750`](./contracts/arbitrum-42161/0x482f58d3513e386036670404b35cb3f2df67a750/) | ⚠️ Unaudited |
| TAPVerifier | unknown | arbitrum | n/a | [`0x33f9e93266ce0e108fc85dde2f71dab555a0f05a`](./contracts/arbitrum-42161/0x33f9e93266ce0e108fc85dde2f71dab555a0f05a/) | ⚠️ Unaudited |

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
| [Hinkal_Zokyo_Feb20th_2024.pdf](https://github.com/zokyo-sec/audit-reports/blob/main/Hinkal/Hinkal_Zokyo_Feb20th_2024.pdf) | unknown | Audit | n/a | unknown | Inherited from Hinkal — forked code, scoped to Curation, GNS, GraphSale, GraphTallyCollector, +5 more | inherited | 11 | n/a |
| [index.html](https://certificate.quantstamp.com/full/hinkal-protocol/66b9b783-8b42-4a4e-89ed-3ef2a2df5958/index.html) | Quantstamp | Audit | n/a | unknown | Inherited from Hinkal — forked code, scoped to Curation, GNS, GraphSale, GraphTallyCollector, +5 more | inherited | 11 | n/a |
| [www.zksecurity.xyz/reports/hinkal-audit](https://www.zksecurity.xyz/reports/hinkal-audit) | unknown | Audit | n/a | unknown | Inherited from Hinkal — forked code, scoped to Curation, GNS, GraphSale, GraphTallyCollector, +5 more | inherited | 11 | n/a |
| [immunefi.com/audit-competition/hinkal-iop/leaderboard](https://immunefi.com/audit-competition/hinkal-iop/leaderboard) | Immunefi | Contest | n/a | unknown | Inherited from Hinkal — forked code, scoped to Curation, GNS, GraphSale, GraphTallyCollector, +5 more | inherited | 11 | n/a |
| [drive.google.com/file/d/1DomEnIQ0o4Fv7ELFvnVAIP9vgd6Ez__A/view](https://drive.google.com/file/d/1DomEnIQ0o4Fv7ELFvnVAIP9vgd6Ez__A/view?usp=sharing&utm_source=immunefi) | unknown | Contest | n/a | unknown | Inherited from Hinkal — forked code, scoped to Curation, GNS, GraphSale, GraphTallyCollector, +5 more | inherited | 11 | n/a |
| [security-audits.md](https://hinkal-team.gitbook.io/hinkal/technical-description/security-audits.md) | yAudit | Audit | n/a | unknown | Inherited from Hinkal — forked code, scoped to Curation, GNS, GraphSale, GraphTallyCollector, +5 more | inherited | 11 | n/a |
| [drive.google.com/file/d/1A0kGmlg04X88-_c4uU0F5WvaMGTDUT3s/view](https://drive.google.com/file/d/1A0kGmlg04X88-_c4uU0F5WvaMGTDUT3s/view?usp=sharing) | Quantstamp | Audit | n/a | unknown | Inherited from Hinkal — forked code, scoped to Curation, GNS, GraphSale, GraphTallyCollector, +5 more | inherited | 11 | n/a |
| [drive.google.com/file/d/1SclKWU99HSVgVxfIh7zz4BWuJO46Jd9W/view](https://drive.google.com/file/d/1SclKWU99HSVgVxfIh7zz4BWuJO46Jd9W/view?usp=sharing) | Quantstamp | Audit | n/a | unknown | Inherited from Hinkal — forked code, scoped to Curation, GNS, GraphSale, GraphTallyCollector, +5 more | inherited | 11 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x0c5b5083036ed7c39fe8d8368c24782fdaa52d6a`](./contracts/ethereum-1/0x0c5b5083036ed7c39fe8d8368c24782fdaa52d6a/) | AllocationExchange | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x5b2f33d7ca6ec88f5586f2528f58c20843d9fe7c`](./contracts/arbitrum-42161/0x5b2f33d7ca6ec88f5586f2528f58c20843d9fe7c/) | AllocationIDTracker | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xa489fdc65229d6225014c0b357bcd19af6f00ee9`](./contracts/arbitrum-42161/0xa489fdc65229d6225014c0b357bcd19af6f00ee9/) | BancorFormula | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xc9e1aa57223add21cc88a03088af552f1ea8a34a`](./contracts/arbitrum-42161/0xc9e1aa57223add21cc88a03088af552f1ea8a34a/) | BanxaWrapper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x57f1887a8bf19b14fc0df6fd9b2acc9af147ea85`](./contracts/ethereum-1/0x57f1887a8bf19b14fc0df6fd9b2acc9af147ea85/) | BaseRegistrarImplementation | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x1b07d3344188908fb6deceac381f3ee63c48477a`](./contracts/arbitrum-42161/0x1b07d3344188908fb6deceac381f3ee63c48477a/) | Billing | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8017b9af3f199cc6b08a48da3859410f20bbea72`](./contracts/ethereum-1/0x8017b9af3f199cc6b08a48da3859410f20bbea72/) | BillingConnector | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x36aff7001294dae4c2ed4fdefc478a00de77f090`](./contracts/ethereum-1/0x36aff7001294dae4c2ed4fdefc478a00de77f090/) | BridgeEscrow | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x0a8491544221dd212964fbb96487467291b2c97e`](./contracts/arbitrum-42161/0x0a8491544221dd212964fbb96487467291b2c97e/) | Controller | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xade906194c923b28f03f48bc5d9d987aae21ffab`](./contracts/ethereum-1/0xade906194c923b28f03f48bc5d9d987aae21ffab/) | DataEdge | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa2c122be93b0074270ebee7f6b7292c7deb45047`](./contracts/ethereum-1/0xa2c122be93b0074270ebee7f6b7292c7deb45047/) | DefaultReverseResolver | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x0ab2b043138352413bb02e67e626a70320e3bd46`](./contracts/arbitrum-42161/0x0ab2b043138352413bb02e67e626a70320e3bd46/) | DisputeManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa2f428617a523837d4adc81c67a296d42fd95e86`](./contracts/ethereum-1/0xa2f428617a523837d4adc81c67a296d42fd95e86/) | DNSRegistrar | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe65d8aaf34cb91087d1598e0a15b582f57f217d9`](./contracts/ethereum-1/0xe65d8aaf34cb91087d1598e0a15b582f57f217d9/) | ENSMigrationSubdomainRegistrar | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x00000000000c2e074ec69a0dfb2997ba6c7d2e1e`](./contracts/ethereum-1/0x00000000000c2e074ec69a0dfb2997ba6c7d2e1e/) | ENSRegistryWithFallback | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3fab259f2392f733c60c19492b5678e5d2d2ee31`](./contracts/ethereum-1/0x3fab259f2392f733c60c19492b5678e5d2d2ee31/) | EpochManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x8f477709ef277d4a880801d01a140a9cf88ba0d3`](./contracts/arbitrum-42161/0x8f477709ef277d4a880801d01a140a9cf88ba0d3/) | Escrow | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xa9aeb1c6f14f4244547b9a0946c485da99047638`](./contracts/arbitrum-42161/0xa9aeb1c6f14f4244547b9a0946c485da99047638/) | EthereumDIDRegistry | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x283af0b28c62c092c9727f1ee09c02ca627eb7f5`](./contracts/ethereum-1/0x283af0b28c62c092c9727f1ee09c02ca627eb7f5/) | ETHRegistrarController | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xed16cebd4fa74a0016e1149cc03563db4b223aec`](./contracts/arbitrum-42161/0xed16cebd4fa74a0016e1149cc03563db4b223aec/) | EventfulDataEdge | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x47a0d56ea574419b524285d52ffe7198297d209c`](./contracts/arbitrum-42161/0x47a0d56ea574419b524285d52ffe7198297d209c/) | GraphCurationToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x6bc86e5d64c6c4882670804ca7ee4919cccca86a`](./contracts/arbitrum-42161/0x6bc86e5d64c6c4882670804ca7ee4919cccca86a/) | GraphPayments | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5d96113bac24d0b24f73d4cbb27b65ca7e559e10`](./contracts/ethereum-1/0x5d96113bac24d0b24f73d4cbb27b65ca7e559e10/) | GraphPreToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x65e1a5e8946e7e87d9774f5288f41c30a99fd302`](./contracts/arbitrum-42161/0x65e1a5e8946e7e87d9774f5288f41c30a99fd302/) | GraphProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x2983936ac20202a6555993448e0d5654ac8ca5fd`](./contracts/arbitrum-42161/0x2983936ac20202a6555993448e0d5654ac8ca5fd/) | GraphProxyAdmin | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc944e90c64b2c07662a292be6244bdf05cda44a7`](./contracts/ethereum-1/0xc944e90c64b2c07662a292be6244bdf05cda44a7/) | GraphToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x455466e99033d1d33d6fa6eca40f182e0a551847`](./contracts/ethereum-1/0x455466e99033d1d33d6fa6eca40f182e0a551847/) | GraphTokenLockManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x624984fd288e28c0d24d7e0e4adfda130717720b`](./contracts/ethereum-1/0x624984fd288e28c0d24d7e0e4adfda130717720b/) | GraphTokenLockWallet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xde2f97cf98411b4aeb2b2952556ff9553d548b94`](./contracts/arbitrum-42161/0xde2f97cf98411b4aeb2b2952556ff9553d548b94/) | GRTTokenSwap | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x00669a4cf01450b64e8a2a20e9b1fcb71e61ef03`](./contracts/arbitrum-42161/0x00669a4cf01450b64e8a2a20e9b1fcb71e61ef03/) | HorizonStaking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x3396f4f9b3c9e9b28126713b32d1d9939a219d64`](./contracts/arbitrum-42161/0x3396f4f9b3c9e9b28126713b32d1d9939a219d64/) | HorizonStakingExtension | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x01cdc91b0a9ba741903aa3699bf4ce31d6c5cc06`](./contracts/ethereum-1/0x01cdc91b0a9ba741903aa3699bf4ce31d6c5cc06/) | L1GraphTokenGateway | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6a2a9bad7b9fa6ecee8f249a0850f47ee184a275`](./contracts/ethereum-1/0x6a2a9bad7b9fa6ecee8f249a0850f47ee184a275/) | L1GraphTokenLockTransferTool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x20a14d78848bc8b3f3d4b77239f2adc3c0259a10`](./contracts/ethereum-1/0x20a14d78848bc8b3f3d4b77239f2adc3c0259a10/) | L1Staking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x1b75515d958b7d18f07e5239513f1f285545168d`](./contracts/arbitrum-42161/0x1b75515d958b7d18f07e5239513f1f285545168d/) | L2Curation | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x9623063377ad1b27544c965ccd7342f7ea7e88c7`](./contracts/arbitrum-42161/0x9623063377ad1b27544c965ccd7342f7ea7e88c7/) | L2GraphToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x23c9c8575e6ba0349a497b6d0e8f0b9239e68028`](./contracts/arbitrum-42161/0x23c9c8575e6ba0349a497b6d0e8f0b9239e68028/) | L2GraphTokenLockTransferTool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x054f94ab35ee8e92aa5a51084fe44295844a2dee`](./contracts/ethereum-1/0x054f94ab35ee8e92aa5a51084fe44295844a2dee/) | LibCobbDouglas | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x208f638d8804e4ccc874ec39e240feea3dc289ee`](./contracts/arbitrum-42161/0x208f638d8804e4ccc874ec39e240feea3dc289ee/) | LibExponential | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xdaaf96c344f63131acadd0ea35170e7892d3dfba`](./contracts/ethereum-1/0xdaaf96c344f63131acadd0ea35170e7892d3dfba/) | PublicResolver | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x60c7c2a24b5e86c38639fd1586917a8fef66a56d`](./contracts/ethereum-1/0x60c7c2a24b5e86c38639fd1586917a8fef66a56d/) | RegistrarMigration | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x084b1c3c81545d370f3634392de611caabff8148`](./contracts/ethereum-1/0x084b1c3c81545d370f3634392de611caabff8148/) | ReverseRegistrar | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x7381f99a610f6c438206811183e2d3969ae7eb01`](./contracts/arbitrum-42161/0x7381f99a610f6c438206811183e2d3969ae7eb01/) | RewardsEligibilityOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x225ab818cd003bb17728768e6a48c160d89c64d0`](./contracts/arbitrum-42161/0x225ab818cd003bb17728768e6a48c160d89c64d0/) | RewardsManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xab528d626ec275e3fad363ff1393a41f581c5897`](./contracts/ethereum-1/0xab528d626ec275e3fad363ff1393a41f581c5897/) | Root | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x072884c745c0a23144753335776c99be22588f8a`](./contracts/arbitrum-42161/0x072884c745c0a23144753335776c99be22588f8a/) | ServiceRegistry | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0cf97e609937418ebc8c209404b947cbc914f599`](./contracts/ethereum-1/0x0cf97e609937418ebc8c209404b947cbc914f599/) | Staking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x31ea58a81b7791b815bf2679394230ea0160e589`](./contracts/ethereum-1/0x31ea58a81b7791b815bf2679394230ea0160e589/) | StakingExtension | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x10223d466d9acdf50798fbc3ac0c231eb616ad4d`](./contracts/arbitrum-42161/0x10223d466d9acdf50798fbc3ac0c231eb616ad4d/) | SubgraphAvailabilityManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x24e36639b3a3aaa9c928a8a6f12d34f942f1ab67`](./contracts/ethereum-1/0x24e36639b3a3aaa9c928a8a6f12d34f942f1ab67/) | SubgraphNFT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8f0b7e136891e8bad6aa4abcb64eeefe29dc2af0`](./contracts/ethereum-1/0x8f0b7e136891e8bad6aa4abcb64eeefe29dc2af0/) | SubgraphNFTDescriptor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x80d1a23472a4ecfa484c95779d5ce855c24747cd`](./contracts/arbitrum-42161/0x80d1a23472a4ecfa484c95779d5ce855c24747cd/) | SubgraphService | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x482f58d3513e386036670404b35cb3f2df67a750`](./contracts/arbitrum-42161/0x482f58d3513e386036670404b35cb3f2df67a750/) | Subscriptions | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x33f9e93266ce0e108fc85dde2f71dab555a0f05a`](./contracts/arbitrum-42161/0x33f9e93266ce0e108fc85dde2f71dab555a0f05a/) | TAPVerifier | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 65 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: inherited_name_remap=88

Fork inheritance lineage and inherited audits are included when available.
