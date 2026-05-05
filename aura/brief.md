# Agentic Brief: aura

## Project Overview

- **Project:** aura (aura)
- **Website:** aura.finance
- **Category:** Yield
- **Chains (topography):** 1, 10, 100, 137, 1101, 8453, 42161, 43114
- **Chains (DeFiLlama):** 1, 10, 100, 137, 252, 1101, 8453, 42161, 43114
- **TVL:** $1,183,261,056 (1 DL slug(s), queried 2026-04-29)
- **Lifecycle:** active - latest deployment 2023-08-03
- **Audit history:** 35 audits; most recent 2026-04-30 (4 days ago)
- **Tier:** 1 - partial_audit_gap (Partially audited, active gap)
- **Commercial fit:** large_tvl_marketing_asset

aura has 108 deployed contract rows in current topography. This brief renders the 108 rows present in scope-match run recovery-full-v5-fixed-matcher-2026-05-05-6b7bbd16; any topography rows absent from that run are outside the visible contract tables until the scope matcher is regenerated over them.

---

## Lifecycle and Recent Activity

Lifecycle status: active. Most recent deployment 2023-08-03 (1005 days ago). Lifecycle source: default_fallback.

---

## Audit Targeting Recommendation

Audit-evaluable surface in this run: 108 contracts across 8 chains. 48 have TP audit coverage (44.4%); 60 do not.

Large-TVL protocol with partial coverage; scope should emphasize high-value uncovered surface.

Existing coverage by category is summarized below; re-audit of TP-covered rows is lower priority than unmatched and likely-in-scope rows.

---

## Scope - Core Logic

93 core-logic or audit-scope-extra contracts identified. Inclusion is provenance-mechanical per role_mapping_v1.

### ethereum (chain_id 1)

| Contract | Role | Description | Audit Status | Address |
|---|---|---|---|---|
| AuraDistributor | rewards | rewards | unmatched | [0x96d15d...a9a4](https://etherscan.io/address/0x96d15d08538a17a03b0210fd1626d5f42bdba9a4) |
| AuraLocker | core | core | audited (TP) | [0x3fa73f...bcac](https://etherscan.io/address/0x3fa73f1e5d8a792c80f426fc8f84fbf7ce9bbcac) |
| AuraMining | core | core | audited (TP) | [0x744be6...5f52](https://etherscan.io/address/0x744be650cea753de1e69bf6bad3c98490a855f52) |
| AuraProxyOFT | proxy | proxy | audited (TP) | [0xb401f0...ffff](https://etherscan.io/address/0xb401f0cff9f05d10699c0e2c88a81dd923c1ffff) |
| AuraToken | token | token | likely in scope | [0xc0c293...3dbf](https://etherscan.io/address/0xc0c293ce456ff0ed870add98a0828dd4d2903dbf) |
| BaseRewardPool4626 | vault_pool | vault_pool | audited (TP) | [0x1204f5...69f5](https://etherscan.io/address/0x1204f5060be8b716f5a62b4df4ce32acd01a69f5) |
| Booster | core | core | audited (TP) | [0xa57b8d...b234](https://etherscan.io/address/0xa57b8d98dae62b26ec3bcc4a365338157060b234) |
| BridgeDelegateReceiver | bridge | bridge | audited (TP) | [0x25e7c5...f669](https://etherscan.io/address/0x25e7c574c4016e09f608971f97c3b09a6cf4f669) |
| BridgeDelegateReceiver | bridge | bridge | audited (TP) | [0x397a2d...0cd7](https://etherscan.io/address/0x397a2d4d23c6fd1316ce25000820779006e80cd7) |
| BridgeDelegateReceiver | bridge | bridge | audited (TP) | [0x60421f...55f7](https://etherscan.io/address/0x60421ffaa36f3a8e69c25887e575689f52b055f7) |
| BridgeDelegateReceiver | bridge | bridge | audited (TP) | [0x7eb87c...2b4c](https://etherscan.io/address/0x7eb87c3a4eabdad158781d0dbb7ab3589b9c2b4c) |
| BridgeDelegateReceiver | bridge | bridge | audited (TP) | [0x80b111...ab8d](https://etherscan.io/address/0x80b1116fc9f5334bc8d6502e59dc4c42ce98ab8d) |
| BridgeDelegateReceiver | bridge | bridge | audited (TP) | [0x81ba03...ca08](https://etherscan.io/address/0x81ba0309e9e0bbabf7f552dbfd40f1818f3fca08) |
| BridgeDelegateReceiver | bridge | bridge | audited (TP) | [0xac962a...daa6](https://etherscan.io/address/0xac962acd42f93c6f26e1cf83271d2a53b208daa6) |
| BridgeDelegateReceiver | bridge | bridge | audited (TP) | [0xbcf3b1...8c48](https://etherscan.io/address/0xbcf3b107a5ecdd8efb70a74f44b827a1f7108c48) |
| GnosisSafeProxy | proxy | proxy | unmatched | [0xb370eb...bf46](https://etherscan.io/address/0xb370ebd7ded0c87b4509ff6f13f07b7f1693bf46) |
| L1Coordinator | core | core | audited (TP) | [0xaa54f3...3811](https://etherscan.io/address/0xaa54f3b282805822419265208e669d12372a3811) |
| L1PoolManagerProxy | vault_pool | vault_pool | likely in scope | [0x54f2de...a14d](https://etherscan.io/address/0x54f2dec216dffb9174edb0d53910bada5227a14d) |
| VoterProxy | proxy | proxy | likely in scope | [0xaf5269...bec2](https://etherscan.io/address/0xaf52695e1bb01a16d33d7194c28c42b10e0dbec2) |
| unnamed | unknown | unknown | unmatched | [0x208024...4c11](https://etherscan.io/address/0x208024e643564fb4c990481eb4f9ec1957f64c11) |
| unnamed | unknown | unknown | unmatched | [0x252a18...3a63](https://etherscan.io/address/0x252a18d569149cb9fd144d35842d2bee596b3a63) |
| unnamed | unknown | unknown | unmatched | [0x4ea931...b0e9](https://etherscan.io/address/0x4ea9317d90b61fc28c418c247ad0ca8939bbb0e9) |
| unnamed | unknown | unknown | unmatched | [0xa1ffac...58f4](https://etherscan.io/address/0xa1ffacb9bb1852997d2a5931659a56272dc858f4) |
| unnamed | unknown | unknown | unmatched | [0xa7cd84...2794](https://etherscan.io/address/0xa7cd8430249ae45c343b569bb8f1c6abc9a32794) |
| unnamed | unknown | unknown | unmatched | [0xb4c68e...08df](https://etherscan.io/address/0xb4c68ea0c1a5fff3736cbfb402afbb4ad88608df) |
| unnamed | unknown | unknown | unmatched | [0xbddac3...c26b](https://etherscan.io/address/0xbddac3069f4e26f4e4f445926c8eeb9dcb68c26b) |
| unnamed | unknown | unknown | unmatched | [0xc181ed...a2b0](https://etherscan.io/address/0xc181edc719480bd089b94647c2dc504e2700a2b0) |
| unnamed | unknown | unknown | unmatched | [0xc9e611...1ac7](https://etherscan.io/address/0xc9e61174b8751003f493d25c2ef49794ab6b1ac7) |
| unnamed | unknown | unknown | unmatched | [0xdf9080...7c68](https://etherscan.io/address/0xdf9080b6bfe4630a97a0655c0016e0e9b43a7c68) |
| unnamed | unknown | unknown | unmatched | [0xffa458...82d5](https://etherscan.io/address/0xffa4587c1b2e373469ab6a8fe0ce4dbdb10282d5) |

### optimism (chain_id 10)

| Contract | Role | Description | Audit Status | Address |
|---|---|---|---|---|
| BoosterOwnerLite | core | core | audited (TP) | [0xf044ee...d96f](https://optimistic.etherscan.io/address/0xf044ee152c7d731825280350d876cf760181d96f) |
| KeeperMulticall3 | strategy | strategy | unmatched | [0x37aa9a...31dd](https://optimistic.etherscan.io/address/0x37aa9ad9744d0686df1c7053225e700ce13e31dd) |
| OptimismBridgeSender | bridge | bridge | likely in scope | [0x045125...bacd](https://optimistic.etherscan.io/address/0x0451255563e2aca170b2552111837572e7a0bacd) |
| RewardFactory | factory | factory | audited (TP) | [0x2f4cdf...d4f7](https://optimistic.etherscan.io/address/0x2f4cdf0d46f4e3e6d4d37836e73073046138d4f7) |
| RewardPoolDepositWrapper | vault_pool | vault_pool | audited (TP) | [0x51b6e0...9fe1](https://optimistic.etherscan.io/address/0x51b6e0ac6d6435650748513c71db453f96749fe1) |
| StashFactoryV2 | factory | factory | audited (TP) | [0x8401b4...bae8](https://optimistic.etherscan.io/address/0x8401b48760e70a39e6bbf861abd050c00362bae8) |
| VoterProxyLite | proxy | proxy | audited (TP) | [0xc181ed...a2b0](https://optimistic.etherscan.io/address/0xc181edc719480bd089b94647c2dc504e2700a2b0) |
| unnamed | unknown | unknown | unmatched | [0xfa6b85...e98e](https://optimistic.etherscan.io/address/0xfa6b857cc17740a946c9eb85c1a6896f2e0be98e) |

### gnosis (chain_id 100)

| Contract | Role | Description | Audit Status | Address |
|---|---|---|---|---|
| BoosterOwnerLite | core | core | audited (TP) | [0xa9802d...d985](https://gnosisscan.io/address/0xa9802db57c6d9218ccfa5bed6364dfd0cf25d985) |
| GnosisBridgeSender | governance | governance | audited (TP) | [0x908c9d...52bc](https://gnosisscan.io/address/0x908c9d41183ade493effc12bb9ad11a9333052bc) |
| RewardFactory | factory | factory | audited (TP) | [0x0f641b...acae](https://gnosisscan.io/address/0x0f641b291ba374ec9b17a878c54b98005a0bacae) |
| RewardPoolDepositWrapper | vault_pool | vault_pool | audited (TP) | [0x0fec3d...7f76](https://gnosisscan.io/address/0x0fec3d212bcc29ef3e505b555d7a7343df0b7f76) |
| SidechainClaimZap | core | core | unmatched | [0x4ea38a...28e8](https://gnosisscan.io/address/0x4ea38a5739d467f7f84c06155ee2ad745e5328e8) |
| StashFactoryV2 | factory | factory | audited (TP) | [0xab9016...4c50](https://gnosisscan.io/address/0xab9016380db2a2a564f8ee0122e3ed5776ca4c50) |
| VoterProxyLite | proxy | proxy | audited (TP) | [0xc181ed...a2b0](https://gnosisscan.io/address/0xc181edc719480bd089b94647c2dc504e2700a2b0) |

### polygon (chain_id 137)

| Contract | Role | Description | Audit Status | Address |
|---|---|---|---|---|
| BoosterOwnerLite | core | core | audited (TP) | [0x8b9da5...5eee](https://polygonscan.com/address/0x8b9da502cccb32dbf19cd68e258e6fd05e1b5eee) |
| L2Coordinator | bridge | bridge | audited (TP) | [0x8b2970...8201](https://polygonscan.com/address/0x8b2970c237656d3895588b99a8bfe977d5618201) |
| RewardFactory | factory | factory | audited (TP) | [0xb292be...0144](https://polygonscan.com/address/0xb292be31649a0b079dbdb772fcf5c7a02a6e0144) |
| RewardPoolDepositWrapper | vault_pool | vault_pool | audited (TP) | [0xce66e8...1146](https://polygonscan.com/address/0xce66e8300dc1d1f5b0e46e9145fdf680a7e41146) |
| VoterProxyLite | proxy | proxy | audited (TP) | [0xc181ed...a2b0](https://polygonscan.com/address/0xc181edc719480bd089b94647c2dc504e2700a2b0) |
| unnamed | unknown | unknown | unmatched | [0x4dce82...bd1b](https://polygonscan.com/address/0x4dce82f149649906d622efca613736a2015cbd1b) |

### polygon-zkevm (chain_id 1101)

| Contract | Role | Description | Audit Status | Address |
|---|---|---|---|---|
| unnamed | unknown | unknown | unmatched | [0xc181ed...a2b0](https://zkevm.polygonscan.com/address/0xc181edc719480bd089b94647c2dc504e2700a2b0) |

### base (chain_id 8453)

| Contract | Role | Description | Audit Status | Address |
|---|---|---|---|---|
| AuraLocker | core | core | audited (TP) | [0x9e1f41...922e](https://basescan.org/address/0x9e1f4190f1a8fe0cd57421533decb57f9980922e) |
| AuraViewHelpersLite | peripheral | peripheral | unmatched | [0xbd2e14...029e](https://basescan.org/address/0xbd2e14d04777e551a8fe3822cac0df51984b029e) |
| BoosterOwnerLite | core | core | audited (TP) | [0x0f0dda...55fc](https://basescan.org/address/0x0f0ddad80025adf6c5ca45905237e5ca12b755fc) |
| RewardFactory | factory | factory | audited (TP) | [0x334df2...f6b0](https://basescan.org/address/0x334df252cc0c44c37ba85dbeaa9c230c3f22f6b0) |
| RewardPoolDepositWrapper | vault_pool | vault_pool | audited (TP) | [0xa9952c...008e](https://basescan.org/address/0xa9952c914d86f896c53bf17125c4104cc058008e) |
| SidechainClaimZap | core | core | unmatched | [0x5a5094...b10d](https://basescan.org/address/0x5a5094e2a2a4c1b48a6630138a3b1076ec00b10d) |
| SidechainView | peripheral | peripheral | unmatched | [0x609d44...beaa](https://basescan.org/address/0x609d44450231697227504e7fa6a327421b11beaa) |
| StashFactoryV2 | factory | factory | audited (TP) | [0x60d643...c84c](https://basescan.org/address/0x60d6439631cc6f60ed15c07783b4c7848f87c84c) |
| VoterProxyLite | proxy | proxy | audited (TP) | [0xc181ed...a2b0](https://basescan.org/address/0xc181edc719480bd089b94647c2dc504e2700a2b0) |
| unnamed | unknown | unknown | unmatched | [0xe4e592...a529](https://basescan.org/address/0xe4e592a04e3cc166f3d5e6b1310bd2ac5169a529) |

### arbitrum (chain_id 42161)

| Contract | Role | Description | Audit Status | Address |
|---|---|---|---|---|
| ArbitrumBridgeSender | bridge | bridge | likely in scope | [0xde386a...55bf](https://arbiscan.io/address/0xde386aedec27521daf1f8a49c03ada7c158455bf) |
| AuraBalOFT | core | core | audited (TP) | [0x223738...54ce](https://arbiscan.io/address/0x223738a747383d6f9f827d95964e4d8e8ac754ce) |
| AuraOFT | core | core | audited (TP) | [0x150970...213b](https://arbiscan.io/address/0x1509706a6c66ca549ff0cb464de88231ddbe213b) |
| BoosterLite | core | core | audited (TP) | [0x98ef32...0184](https://arbiscan.io/address/0x98ef32edd24e2c92525e59afc4475c1242a30184) |
| ChildStashRewardDistro | rewards | rewards | unmatched | [0xca85e2...7451](https://arbiscan.io/address/0xca85e2ce206b48ee28a87b0a06f9519abe627451) |
| Create2Factory | factory | factory | audited (TP) | [0x53c090...364f](https://arbiscan.io/address/0x53c09096b1dc52e2ef223b2969a714ee75da364f) |
| GnosisSafeProxy | proxy | proxy | unmatched | [0xd86ceb...d68b](https://arbiscan.io/address/0xd86ceb76e9430d3bde90ded79c82ae62bc66d68b) |
| KeeperMulticall3 | strategy | strategy | unmatched | [0x5c97f0...e798](https://arbiscan.io/address/0x5c97f09506d60b90a817eb547ea4f03ae990e798) |
| L2Coordinator | bridge | bridge | audited (TP) | [0xec1c78...0606](https://arbiscan.io/address/0xec1c780a275438916e7ceb174d80878f29580606) |
| L2PoolManagerProxy | vault_pool | vault_pool | likely in scope | [0x2b6c22...bc54](https://arbiscan.io/address/0x2b6c227b26bc0ace74bb12da86571179c2c8bc54) |
| PoolManagerLite | vault_pool | vault_pool | audited (TP) | [0xf24074...ca71](https://arbiscan.io/address/0xf24074a1a6ad620adc14745f9cc1fb1e7ba6ca71) |
| ProxyFactory | factory | factory | audited (TP) | [0x731886...d961](https://arbiscan.io/address/0x731886426a3199b988194831031dfb993f25d961) |
| RewardFactory | factory | factory | audited (TP) | [0xda2e6b...e7db](https://arbiscan.io/address/0xda2e6ba0b1abbca925b70e9747afbd481c16e7db) |
| RewardPoolDepositWrapper | vault_pool | vault_pool | audited (TP) | [0x6b02fe...16be](https://arbiscan.io/address/0x6b02fefd2f2e06f51e17b7d5b8b20d75fd6916be) |
| SimpleStrategy | strategy | strategy | audited (TP) | [0x4b5d28...41cb](https://arbiscan.io/address/0x4b5d2848678db574fbc2d2f629143d969a4f41cb) |
| VirtualRewardFactory | factory | factory | likely in scope | [0x05589c...79c2](https://arbiscan.io/address/0x05589cbbe1cc0357986df6de4031b953819079c2) |
| VoterProxyLite | proxy | proxy | audited (TP) | [0xc181ed...a2b0](https://arbiscan.io/address/0xc181edc719480bd089b94647c2dc504e2700a2b0) |
| unnamed | unknown | unknown | unmatched | [0x0a6bcb...4083](https://arbiscan.io/address/0x0a6bcb3a0c03ab2bc8a058ee02ed11d50b494083) |
| unnamed | unknown | unknown | unmatched | [0x286358...cc01](https://arbiscan.io/address/0x2863582272a424234fce76d97099acbd432acc01) |
| unnamed | unknown | unknown | unmatched | [0x4ea931...b0e9](https://arbiscan.io/address/0x4ea9317d90b61fc28c418c247ad0ca8939bbb0e9) |
| unnamed | unknown | unknown | unmatched | [0x779aa2...049b](https://arbiscan.io/address/0x779aa2880d7a701fb46d320c710944a72e2a049b) |

### avalanche (chain_id 43114)

| Contract | Role | Description | Audit Status | Address |
|---|---|---|---|---|
| unnamed | unknown | unknown | unmatched | [0x5073dc...119d](https://snowtrace.io/address/0x5073dc4072b23beb465f012d1be324bc0ebc119d) |
| unnamed | unknown | unknown | unmatched | [0x623cdc...5898](https://snowtrace.io/address/0x623cdc77dbade480060c1cf22053514bcf785898) |
| unnamed | unknown | unknown | unmatched | [0x6907d1...a017](https://snowtrace.io/address/0x6907d13cb2af4661a491562187f3beaba4c2a017) |
| unnamed | unknown | unknown | unmatched | [0x739b0c...2502](https://snowtrace.io/address/0x739b0c838e47a28877caef270df0407fe5c62502) |
| unnamed | unknown | unknown | unmatched | [0x8034fb...6f8d](https://snowtrace.io/address/0x8034fbc6246caa37d2af084b2fb0ea4a211b6f8d) |
| unnamed | unknown | unknown | unmatched | [0xa2930d...81ed](https://snowtrace.io/address/0xa2930d1e21a26fde6ed861f303205536a98381ed) |
| unnamed | unknown | unknown | unmatched | [0xb82434...8bd3](https://snowtrace.io/address/0xb82434c7506b27c226564d6ef6ac9ddcb03e8bd3) |
| unnamed | unknown | unknown | unmatched | [0xc181ed...a2b0](https://snowtrace.io/address/0xc181edc719480bd089b94647c2dc504e2700a2b0) |
| unnamed | unknown | unknown | unmatched | [0xcbdcd8...dc4e](https://snowtrace.io/address/0xcbdcd817a93e733d48086c7c068c82c5a123dc4e) |
| unnamed | unknown | unknown | unmatched | [0xcc9269...3c0e](https://snowtrace.io/address/0xcc92694a8b2367bc6a0d6c2349c30b7d8f1d3c0e) |

---

## Scope - Operational Periphery

No operational periphery surface detected.

---

## Scope - Factory Architecture

No factories detected in topography.

---

## Scope - Proxy and Upgrade Architecture

Protocol uses 1 proxies on 42161. 0 follow EIP-1967 / UUPS patterns; 0 are beacon proxies. 0 proxies share an implementation with other proxies in the project.

Upgrade authority concentrates in 1 distinct deployer addresses: 0x30019e...c8e4. Multisig membership, timelock duration, and governance-gate parameters are not extracted by the current pipeline.

---

## Scope - Integration Surface

15 integration-surface rows detected from third-party enrichment provenance.

| Integration Target | Our Contract | Chain | Trust Assumption |
|---|---|---|---|
| defillama_adapter | [BalancerGovernanceToken](https://etherscan.io/address/0xba100000625a3754423978a60c9317c58a424e3d) | ethereum | integration target not characterized; investigate |
| defillama_adapter | [Booster](https://etherscan.io/address/0x7818a1da7bd1e64c199029e86ba244a9798eee10) | ethereum | integration target not characterized; investigate |
| defillama_adapter | [Vault](https://etherscan.io/address/0xba12222222228d8ba445958a75a0704d566bf2c8) | ethereum | integration target not characterized; investigate |
| defillama_adapter | [Vyper_contract](https://etherscan.io/address/0xc128a9954e6c874ea3d62ce62b468ba073093f25) | ethereum | integration target not characterized; investigate |
| defillama_adapter | [WeightedPool2Tokens](https://etherscan.io/address/0x5c6ee304399dbdb9c8ef030ab642b10820db8f56) | ethereum | integration target not characterized; investigate |
| defillama_adapter | [0x2498a2...ba95](https://etherscan.io/address/0x2498a2b0d6462d2260eac50ae1c3e03f4829ba95) | ethereum | integration target not characterized; investigate |
| defillama_adapter | [0xaa9843...bb0d](https://etherscan.io/address/0xaa98436d09d130af48de49867af8b723bbbebb0d) | ethereum | integration target not characterized; investigate |
| defillama_adapter | [ChildChainGaugeFactory](https://optimistic.etherscan.io/address/0xa523f47a933d5020b23629ddf689695aa94612dc) | optimism | integration target not characterized; investigate |
| defillama_adapter | [ChildChainGaugeFactory](https://gnosisscan.io/address/0x83e443ef4f9963c77bd860f94500075556668cb8) | gnosis | integration target not characterized; investigate |
| defillama_adapter | [ChildChainGaugeFactory](https://polygonscan.com/address/0x22625eedd92c81a219a83e1dc48f88d54786b017) | polygon | integration target not characterized; investigate |
| defillama_adapter | [ChildChainGaugeFactory](https://zkevm.polygonscan.com/address/0x2498a2b0d6462d2260eac50ae1c3e03f4829ba95) | polygon-zkevm | integration target not characterized; investigate |
| defillama_adapter | [ChildChainGaugeFactory](https://basescan.org/address/0xb1a4fe1c6d25a0ddab47431a92a723dd71d9021f) | base | integration target not characterized; investigate |
| defillama_adapter | [ChildChainGaugeFactory](https://arbiscan.io/address/0x6817149cb753bf529565b4d023d7507ed2ff4bc0) | arbitrum | integration target not characterized; investigate |
| defillama_adapter | [ChildChainGaugeFactory](https://snowtrace.io/address/0xf23b4db826dba14c0e857029dff076b1c0264843) | avalanche | integration target not characterized; investigate |
| defillama_adapter | [VaultFactory](https://snowtrace.io/address/0xc3ccace87f6d3a81724075adcb5ddd85a8a1bb68) | avalanche | integration target not characterized; investigate |

---

## Audit Coverage

### Coverage by Scope Category

| Category | Contracts | Audited | Unaudited | Coverage % |
|---|---:|---:|---:|---:|
| Integration surface | 15 | 1 | 14 | 6.7% |
| No provenance | 93 | 47 | 46 | 50.5% |
| **Total** | 108 | 48 | 60 | 44.4% |

### Past Audits

| Date | Auditor | Scope Described | Coverage Claim | Relationship | Link |
|---|---|---|---|---|---|
| unknown | discovery-ingest-placeholder | CCProtocol Audit Report | unspecified | direct | not available |
| unknown | discovery-ingest-placeholder | FacuSpagnuolo Aura Booster migration report | unspecified | direct | not available |
| unknown | discovery-ingest-placeholder | HalalFi%20Audit%20Report | unspecified | direct | not available |
| unknown | Halborn | Halborn Aura Finance Smart Contract Audit | unspecified | direct | not available |
| unknown | discovery-ingest-placeholder | hephyrius internal report | unspecified | direct | not available |
| unknown | discovery-ingest-placeholder | spaces%2Fr4kLuYPt1EhIEVbkxHD8%2Fuploads%2FDuQMD5ULdRtqravKUwxQ%2FCode4rena Audit Report AuraFinance  | unspecified | direct | not available |
| unknown | discovery-ingest-placeholder | spaces%2Fr4kLuYPt1EhIEVbkxHD8%2Fuploads%2FMZAsINwNDzYc495yC60R%2FHalborn Audit Report AuraFinance v1 | unspecified | direct | not available |
| unknown | discovery-ingest-placeholder | spaces%2Fr4kLuYPt1EhIEVbkxHD8%2Fuploads%2FSpjxmJq2qTcJ8kMKWUnl%2Fzellic sidechain audit report | unspecified | direct | not available |
| unknown | discovery-ingest-placeholder | spaces%2Fr4kLuYPt1EhIEVbkxHD8%2Fuploads%2FY8Gh2vYEHJhByg1ubpgI%2Fhalborn sidechain audit report | unspecified | direct | not available |

### Gap Analysis

Core logic: 0 of 0 contracts covered (0.0%). Operational periphery: 0 of 0 covered (0.0%). Last audit 4 days ago.

2 contracts deployed after the most recent audit. These are by definition not covered by any existing audit.

---

## Appendix

### Docs Pages Referenced

- [https://2520301408-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2Fr4kLuYPt1EhIEVbkxHD8%2Fuploads%2FdpPicVneOrKaZPH8PMdj%2Fhalborn_aurabal_vault_audit_report.pdf?alt=media&token=c55b6e3f-98be-4381-ac84-d0756bdac87a](https://2520301408-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2Fr4kLuYPt1EhIEVbkxHD8%2Fuploads%2FdpPicVneOrKaZPH8PMdj%2Fhalborn_aurabal_vault_audit_report.pdf?alt=media&token=c55b6e3f-98be-4381-ac84-d0756bdac87a) - audit_report_link
- [https://2520301408-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2Fr4kLuYPt1EhIEVbkxHD8%2Fuploads%2FDuQMD5ULdRtqravKUwxQ%2FCode4rena-Audit-Report-AuraFinance-v1.0.pdf?alt=media&token=430daeb5-5760-4df5-bba6-636abb0f6988](https://2520301408-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2Fr4kLuYPt1EhIEVbkxHD8%2Fuploads%2FDuQMD5ULdRtqravKUwxQ%2FCode4rena-Audit-Report-AuraFinance-v1.0.pdf?alt=media&token=430daeb5-5760-4df5-bba6-636abb0f6988) - audit_report_link
- [https://3372224363-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2Fr4kLuYPt1EhIEVbkxHD8%2Fuploads%2FdpPicVneOrKaZPH8PMdj%2Fhalborn_aurabal_vault_audit_report.pdf?alt=media&token=c55b6e3f-98be-4381-ac84-d0756bdac87a](https://3372224363-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2Fr4kLuYPt1EhIEVbkxHD8%2Fuploads%2FdpPicVneOrKaZPH8PMdj%2Fhalborn_aurabal_vault_audit_report.pdf?alt=media&token=c55b6e3f-98be-4381-ac84-d0756bdac87a) - audit_report_link
- [https://3372224363-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2Fr4kLuYPt1EhIEVbkxHD8%2Fuploads%2FDuQMD5ULdRtqravKUwxQ%2FCode4rena-Audit-Report-AuraFinance-v1.0.pdf?alt=media&token=430daeb5-5760-4df5-bba6-636abb0f6988](https://3372224363-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2Fr4kLuYPt1EhIEVbkxHD8%2Fuploads%2FDuQMD5ULdRtqravKUwxQ%2FCode4rena-Audit-Report-AuraFinance-v1.0.pdf?alt=media&token=430daeb5-5760-4df5-bba6-636abb0f6988) - audit_report_link
- [https://3372224363-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2Fr4kLuYPt1EhIEVbkxHD8%2Fuploads%2FfdfqRL0AQnO06jcoxF2o%2FPeckShield-Audit-Report-AuraFinance-v1.0.pdf?alt=media&token=689db44f-f38d-45a3-9fb2-450863b46f6c](https://3372224363-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2Fr4kLuYPt1EhIEVbkxHD8%2Fuploads%2FfdfqRL0AQnO06jcoxF2o%2FPeckShield-Audit-Report-AuraFinance-v1.0.pdf?alt=media&token=689db44f-f38d-45a3-9fb2-450863b46f6c) - audit_report_link
- [https://3372224363-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2Fr4kLuYPt1EhIEVbkxHD8%2Fuploads%2FMZAsINwNDzYc495yC60R%2FHalborn-Audit-Report-AuraFinance-v1.0.pdf?alt=media&token=04515c2e-c52d-4350-ae64-c1f3053add10](https://3372224363-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2Fr4kLuYPt1EhIEVbkxHD8%2Fuploads%2FMZAsINwNDzYc495yC60R%2FHalborn-Audit-Report-AuraFinance-v1.0.pdf?alt=media&token=04515c2e-c52d-4350-ae64-c1f3053add10) - audit_report_link
- [https://3372224363-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2Fr4kLuYPt1EhIEVbkxHD8%2Fuploads%2FSpjxmJq2qTcJ8kMKWUnl%2Fzellic_sidechain_audit_report.pdf?alt=media&token=853fc8d5-b040-465d-af1d-1c013559843a](https://3372224363-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2Fr4kLuYPt1EhIEVbkxHD8%2Fuploads%2FSpjxmJq2qTcJ8kMKWUnl%2Fzellic_sidechain_audit_report.pdf?alt=media&token=853fc8d5-b040-465d-af1d-1c013559843a) - audit_report_link
- [https://3372224363-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2Fr4kLuYPt1EhIEVbkxHD8%2Fuploads%2FY8Gh2vYEHJhByg1ubpgI%2Fhalborn_sidechain_audit_report.pdf?alt=media&token=208c6c1e-0363-4b79-b0a9-31afbd91aa3d](https://3372224363-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2Fr4kLuYPt1EhIEVbkxHD8%2Fuploads%2FY8Gh2vYEHJhByg1ubpgI%2Fhalborn_sidechain_audit_report.pdf?alt=media&token=208c6c1e-0363-4b79-b0a9-31afbd91aa3d) - audit_report_link
- [https://assets.ctfassets.net/t3wqy70tc3bv/2tyR5x4zf9KL4fKXIEolh4/b5f8abaed3330897555a53904c865b82/CCProtocol-_Audit_Report.pdf](https://assets.ctfassets.net/t3wqy70tc3bv/2tyR5x4zf9KL4fKXIEolh4/b5f8abaed3330897555a53904c865b82/CCProtocol-_Audit_Report.pdf) - audit_report_link
- [https://assets.ctfassets.net/t3wqy70tc3bv/3AKcQn3fFAih0wIRLy8aTn/9823cf3d359b06ca4d1039270e3c1895/Layer3.xyz-_Audit_Report.pdf](https://assets.ctfassets.net/t3wqy70tc3bv/3AKcQn3fFAih0wIRLy8aTn/9823cf3d359b06ca4d1039270e3c1895/Layer3.xyz-_Audit_Report.pdf) - audit_report_link
- [https://assets.ctfassets.net/t3wqy70tc3bv/4EpPMbZkdqb9kf9g8Ru6A3/8ca3d0cb425da4c19f2d62ec4fa81335/Helios_Finance_-_Immunefi_Audit_Report.pdf](https://assets.ctfassets.net/t3wqy70tc3bv/4EpPMbZkdqb9kf9g8Ru6A3/8ca3d0cb425da4c19f2d62ec4fa81335/Helios_Finance_-_Immunefi_Audit_Report.pdf) - audit_report_link
- [https://assets.ctfassets.net/t3wqy70tc3bv/4toR7T1t8N33WkfVsCY21q/30280b9fd5451fee3026db8b63d083c7/Halogen_Audit_1-_Immunefi_Audit_Report.pdf](https://assets.ctfassets.net/t3wqy70tc3bv/4toR7T1t8N33WkfVsCY21q/30280b9fd5451fee3026db8b63d083c7/Halogen_Audit_1-_Immunefi_Audit_Report.pdf) - audit_report_link
- [https://assets.ctfassets.net/t3wqy70tc3bv/62rrT36yP4wJddWRtoIr91/d0635eb8e19f72c0c2ad7442c7eff348/Hoenn_-_Immunefi_Audit_Report.pdf](https://assets.ctfassets.net/t3wqy70tc3bv/62rrT36yP4wJddWRtoIr91/d0635eb8e19f72c0c2ad7442c7eff348/Hoenn_-_Immunefi_Audit_Report.pdf) - audit_report_link
- [https://assets.ctfassets.net/t3wqy70tc3bv/66zAnfsbE2s64LkOT7TXQl/7a70818409330611480ff1fd2ad9bdf9/Plume_-_Immunefi_Audit_Report.pdf](https://assets.ctfassets.net/t3wqy70tc3bv/66zAnfsbE2s64LkOT7TXQl/7a70818409330611480ff1fd2ad9bdf9/Plume_-_Immunefi_Audit_Report.pdf) - audit_report_link
- [https://assets.ctfassets.net/t3wqy70tc3bv/7rUSLDnjntD1s5u575GXh2/e091dd3a29a74e9337a69b5896b7a453/Oak_Network-_Audit_Report_-_PaymentTreasury.pdf](https://assets.ctfassets.net/t3wqy70tc3bv/7rUSLDnjntD1s5u575GXh2/e091dd3a29a74e9337a69b5896b7a453/Oak_Network-_Audit_Report_-_PaymentTreasury.pdf) - audit_report_link
- [https://assets.ctfassets.net/t3wqy70tc3bv/Di2bTLfPyec7kHGX3bV0i/0ff2640d6b40c1094d77d4ed7533a230/Plaza_Finance_-_Immunefi_Audit_Report.pdf](https://assets.ctfassets.net/t3wqy70tc3bv/Di2bTLfPyec7kHGX3bV0i/0ff2640d6b40c1094d77d4ed7533a230/Plaza_Finance_-_Immunefi_Audit_Report.pdf) - audit_report_link
- [https://bugs.immunefi.com/dashboard/new-submission](https://bugs.immunefi.com/dashboard/new-submission) - audit_report_link
- [https://bugs.immunefi.com/signup](https://bugs.immunefi.com/signup) - audit_report_link
- [https://d3i212mgfwnkvq6l.public.blob.vercel-storage.com/HalalFi%20Audit%20Report.pdf](https://d3i212mgfwnkvq6l.public.blob.vercel-storage.com/HalalFi%20Audit%20Report.pdf) - audit_report_link
- [https://drive.google.com/drive/folders/1vNJ75igTcw-4pWzGwjT36cCrthuHVSg3](https://drive.google.com/drive/folders/1vNJ75igTcw-4pWzGwjT36cCrthuHVSg3) - audit_report_link
- [https://drive.google.com/file/d/1S5jnMddjbVUsAdVZtmcIRlL4WhVueSzp/view?usp=sharing](https://drive.google.com/file/d/1S5jnMddjbVUsAdVZtmcIRlL4WhVueSzp/view?usp=sharing) - audit_report_link
- [https://drive.google.com/file/d/1vsZ9aAVJ8mobLaJ5-XDejcHdRFK1StjM/view?usp=sharing](https://drive.google.com/file/d/1vsZ9aAVJ8mobLaJ5-XDejcHdRFK1StjM/view?usp=sharing) - audit_report_link
- [https://github.com/aurafinance/aura-contracts/blob/main/audits/auraBalVault/facu_spagnuolo_aurabal_vault_audit_report.pdf](https://github.com/aurafinance/aura-contracts/blob/main/audits/auraBalVault/facu_spagnuolo_aurabal_vault_audit_report.pdf) - audit_report_link
- [https://github.com/aurafinance/aura-contracts/blob/main/audits/auraBalVault/halborn_aurabal_vault_audit_report.pdf](https://github.com/aurafinance/aura-contracts/blob/main/audits/auraBalVault/halborn_aurabal_vault_audit_report.pdf) - audit_report_link
- [https://github.com/aurafinance/aura-contracts/blob/main/audits/Code4rena-Audit-Report-AuraFinance-v1.0.pdf](https://github.com/aurafinance/aura-contracts/blob/main/audits/Code4rena-Audit-Report-AuraFinance-v1.0.pdf) - audit_report_link
- [https://github.com/aurafinance/aura-contracts/blob/main/audits/sidechain/halborn_sidechain_audit_report.pdf](https://github.com/aurafinance/aura-contracts/blob/main/audits/sidechain/halborn_sidechain_audit_report.pdf) - audit_report_link
- [https://github.com/aurafinance/aura-contracts/blob/main/audits/sidechain/hephyrius-internal-report.pdf](https://github.com/aurafinance/aura-contracts/blob/main/audits/sidechain/hephyrius-internal-report.pdf) - audit_report_link
- [https://github.com/aurafinance/aura-contracts/blob/main/audits/sidechain/zellic_sidechain_audit_report.pdf](https://github.com/aurafinance/aura-contracts/blob/main/audits/sidechain/zellic_sidechain_audit_report.pdf) - audit_report_link
- [https://github.com/aurafinance/aura-contracts/blob/main/audits/upgrades/facu_spagnuolo_aura_upgrade_01_audit_report.pdf](https://github.com/aurafinance/aura-contracts/blob/main/audits/upgrades/facu_spagnuolo_aura_upgrade_01_audit_report.pdf) - audit_report_link
- [https://github.com/aurafinance/aura-contracts/blob/main/audits/upgrades/hephyrius_aura_upgrade_01_audit_report.pdf](https://github.com/aurafinance/aura-contracts/blob/main/audits/upgrades/hephyrius_aura_upgrade_01_audit_report.pdf) - audit_report_link
- [https://github.com/aurafinance/aura-contracts/blob/main/security/audits/Code4rena-Audit-Report-AuraFinance-v1.0.pdf](https://github.com/aurafinance/aura-contracts/blob/main/security/audits/Code4rena-Audit-Report-AuraFinance-v1.0.pdf) - audit_report_link
- [https://github.com/aurafinance/aura-contracts/blob/main/security/audits/Halborn-Audit-Report-AuraFinance-v1.0.pdf](https://github.com/aurafinance/aura-contracts/blob/main/security/audits/Halborn-Audit-Report-AuraFinance-v1.0.pdf) - audit_report_link
- [https://github.com/aurafinance/aura-contracts/blob/main/security/audits/migration/Aura_Finance_Migration_Review_Hephyrius.pdf](https://github.com/aurafinance/aura-contracts/blob/main/security/audits/migration/Aura_Finance_Migration_Review_Hephyrius.pdf) - audit_report_link
- [https://github.com/aurafinance/aura-contracts/blob/main/security/audits/migration/FacuSpagnuolo-Aura-Booster-migration-report.pdf](https://github.com/aurafinance/aura-contracts/blob/main/security/audits/migration/FacuSpagnuolo-Aura-Booster-migration-report.pdf) - audit_report_link
- [https://github.com/aurafinance/aura-contracts/blob/main/security/audits/migration/Halborn-Aura_Finance___Smart_Contract_Audit.pdf](https://github.com/aurafinance/aura-contracts/blob/main/security/audits/migration/Halborn-Aura_Finance___Smart_Contract_Audit.pdf) - audit_report_link
- [https://github.com/aurafinance/aura-contracts/blob/main/security/audits/PeckShield-Audit-Report-AuraFinance-v1.0.pdf](https://github.com/aurafinance/aura-contracts/blob/main/security/audits/PeckShield-Audit-Report-AuraFinance-v1.0.pdf) - audit_report_link
- [https://github.com/aurafinance/aura-contracts/blob/main/security/disclosures/001-BaseRewardPool-Donate.md](https://github.com/aurafinance/aura-contracts/blob/main/security/disclosures/001-BaseRewardPool-Donate.md) - audit_report_link
- [https://github.com/aurafinance/aura-contracts/blob/main/security/disclosures/002-Booster-EIP1271.md](https://github.com/aurafinance/aura-contracts/blob/main/security/disclosures/002-Booster-EIP1271.md) - audit_report_link
- [https://github.com/aurafinance/aura-contracts/blob/main/security/disclosures/003-Assorted-Governance-griefing.md](https://github.com/aurafinance/aura-contracts/blob/main/security/disclosures/003-Assorted-Governance-griefing.md) - audit_report_link
- [https://github.com/aurafinance/convex-platform/blob/main/audit/Convex%20Platform%20Security%20Audit%20Report.pdf](https://github.com/aurafinance/convex-platform/blob/main/audit/Convex%20Platform%20Security%20Audit%20Report.pdf) - audit_report_link
- [https://immunefi.com/about](https://immunefi.com/about) - audit_report_link
- [https://immunefi.com/allstars](https://immunefi.com/allstars) - audit_report_link
- [https://immunefi.com/audit-competitions](https://immunefi.com/audit-competitions) - audit_report_link
- [https://immunefi.com/blog](https://immunefi.com/blog) - audit_report_link
- [https://immunefi.com/bounty/aurafinance](https://immunefi.com/bounty/aurafinance) - audit_report_link
- [https://immunefi.com/bug-bounty](https://immunefi.com/bug-bounty) - audit_report_link
- [https://immunefi.com/bug-bounty-program](https://immunefi.com/bug-bounty-program) - audit_report_link
- [https://immunefi.com/bug-bounty/aurafinance/information](https://immunefi.com/bug-bounty/aurafinance/information) - audit_report_link
- [https://immunefi.com/bug-bounty/aurafinance/resources](https://immunefi.com/bug-bounty/aurafinance/resources) - audit_report_link
- [https://immunefi.com/bug-bounty/aurafinance/scope](https://immunefi.com/bug-bounty/aurafinance/scope) - audit_report_link

### Audit Reports (full list)

- unknown - discovery-ingest-placeholder - CCProtocol Audit Report
- unknown - discovery-ingest-placeholder - FacuSpagnuolo Aura Booster migration report
- unknown - discovery-ingest-placeholder - HalalFi%20Audit%20Report
- unknown - Halborn - Halborn Aura Finance Smart Contract Audit
- unknown - discovery-ingest-placeholder - hephyrius internal report
- unknown - discovery-ingest-placeholder - spaces%2Fr4kLuYPt1EhIEVbkxHD8%2Fuploads%2FDuQMD5ULdRtqravKUwxQ%2FCode4rena Audit Report AuraFinance v1.0
- unknown - discovery-ingest-placeholder - spaces%2Fr4kLuYPt1EhIEVbkxHD8%2Fuploads%2FMZAsINwNDzYc495yC60R%2FHalborn Audit Report AuraFinance v1.0
- unknown - discovery-ingest-placeholder - spaces%2Fr4kLuYPt1EhIEVbkxHD8%2Fuploads%2FSpjxmJq2qTcJ8kMKWUnl%2Fzellic sidechain audit report
- unknown - discovery-ingest-placeholder - spaces%2Fr4kLuYPt1EhIEVbkxHD8%2Fuploads%2FY8Gh2vYEHJhByg1ubpgI%2Fhalborn sidechain audit report

### Contract Inventory (sibling artifact)

- **Structural data:** exports/agentic_briefs_v2/aura.json
- **Source code:** not fetched in v1

### Excluded Contracts (summary counts)

| Exclusion Reason | Count | Notes |
|---|---:|---|
| infrastructure blocklist | 0 | Summary from p2 provenance classifications |
| shared deployer contamination | 0 | Summary from p2 provenance classifications |
| opaque enrichment only | 0 | Summary from p2 provenance classifications |
| deployer expansion untethered | 0 | Summary from p2 provenance classifications |
| factory rpc expansion untethered | 0 | Summary from p2 provenance classifications |
| considered but unpromoted docs only | 0 | Summary from p2 provenance classifications |
| never evaluated docs only | 0 | Summary from p2 provenance classifications |
| external placeholder docs only | 0 | Summary from p2 provenance classifications |

### Data Availability Notes

- **Provenance classification:** available.
- **Multisig / timelock metadata:** not extracted by current pipeline.
- **Per-contract TVL:** available; latest total on-chain TVL snapshot is $6,379,000.
- **Docs extraction status:** Call 1 unknown, Call 2 unknown, Call 5 unknown.

### Generation Metadata

- **Generated at:** 2026-05-05T20:36:26.967Z
- **Scope-match run_id:** recovery-full-v5-fixed-matcher-2026-05-05-6b7bbd16
- **Brief exporter:** v2
- **DL snapshot:** defillama_project_enrichment_v1_defillama_20260429T183806Z (2026-04-29)
- **Topography refresh:** 2026-05-04T12:46:24.531Z

---

## Caveats

- **Audit coverage** is derived from scope matching against audit-report extracted scope data, not from operator confirmation. Contracts labeled `unmatched` may still be covered by an audit whose scope data was too sparse to extract structured coverage from.
- Upgrade admin membership, timelock duration, and governance-gate parameters are NOT extracted by the pipeline. Operator must confirm before scoping.
- Per-contract TVL snapshot available with total on-chain TVL $6,379,000.
