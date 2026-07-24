# Agentic Audit Brief: Aura

## Export Authority

- Production state: **published scope**
- Raw selected rows: 29 across 10 audit(s)
- Eligible audit results: 20 (10 matched; 10 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e40c73181a386361babecc6895e0f6c5587548f92814db09f88491f8b4a38d92`

⚠️ Lifecycle status: DEAD - TVL dropped 92.0% over 90 days

## Project Overview

- Project: Aura (`aura`)
- Website: [https://aura.finance](https://aura.finance)
- Lifecycle: dead (Tier 1, dead)
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: arbitrum, avalanche, base, ethereum, fraxtal, gnosis, goerli, optimism, polygon, polygon-zkevm
- Contract surface: 533 unique implementations (1155 raw deployments)
- Coverage basis: 12/47 confirmed own live verified implementations (25.5%); conservative 25.5% with 0 needs-review implementation(s)
- DeFi Llama TVL: $7,953,397.27
- On-chain TVL (included contracts): $74,688,480.97
- TVL by chain: Ethereum $74,682,483.95 | Optimism $3,942.34 | Arbitrum $2,054.68 | Base $0.00 | Gnosis $0.00

## Project Description

This brief describes the observed EVM deployment and audit surface for Aura. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 92 contract row(s) across arbitrum, avalanche, base, ethereum, fraxtal, gnosis, goerli, optimism, polygon, polygon-zkevm. Structural roles: 48 core, 43 supporting, 1 unclassified. 27 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 92
- Structural roles: core (48), supporting (43), unclassified (1)
- Contract kinds: contract (92)
- Detected standards: ownable (33), erc20 (11), erc165 (10), pausable (10), erc4626 (3)
- Frameworks: openzeppelin (77), openzeppelin-upgradeable (27)
- Upgradeable-pattern rows: 27

## Fork Analysis

1 of 159 contracts are derived from known codebases. 158 contracts have no detected origin.

### Forked Contracts

**BoosterLite** (`0x98ef32edd24e2c92525e59afc4475c1242a30184`, chain 10)
Origin: stake-dao (`0x98ef32...a30184`)
Containment: 100.0% - 17 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x208024e643564fb4c990481eb4f9ec1957f64c11`, chain 1)
- UnnamedContract (`0x25e7c574c4016e09f608971f97c3b09a6cf4f669`, chain 1)
- UnnamedContract (`0x81ba0309e9e0bbabf7f552dbfd40f1818f3fca08`, chain 1)
- UnnamedContract (`0xc9e61174b8751003f493d25c2ef49794ab6b1ac7`, chain 1)
- UnnamedContract (`0x2863582272a424234fce76d97099acbd432acc01`, chain 10)
- UnnamedContract (`0x2b6c227b26bc0ace74bb12da86571179c2c8bc54`, chain 10)
- UnnamedContract (`0x53c09096b1dc52e2ef223b2969a714ee75da364f`, chain 10)
- UnnamedContract (`0x57acb721fcf3d900b480a90a55191cf8f37ad478`, chain 10)
- UnnamedContract (`0x8401b48760e70a39e6bbf861abd050c00362bae8`, chain 10)
- UnnamedContract (`0xca85e2ce206b48ee28a87b0a06f9519abe627451`, chain 10)
- UnnamedContract (`0xd86ceb76e9430d3bde90ded79c82ae62bc66d68b`, chain 10)
- UnnamedContract (`0xec1c780a275438916e7ceb174d80878f29580606`, chain 10)
- UnnamedContract (`0xfa6b857cc17740a946c9eb85c1a6896f2e0be98e`, chain 10)
- UnnamedContract (`0x2863582272a424234fce76d97099acbd432acc01`, chain 100)
- UnnamedContract (`0x2b6c227b26bc0ace74bb12da86571179c2c8bc54`, chain 100)
- UnnamedContract (`0x53c09096b1dc52e2ef223b2969a714ee75da364f`, chain 100)
- UnnamedContract (`0x8b2970c237656d3895588b99a8bfe977d5618201`, chain 100)
- UnnamedContract (`0xab9016380db2a2a564f8ee0122e3ed5776ca4c50`, chain 100)
- UnnamedContract (`0x2863582272a424234fce76d97099acbd432acc01`, chain 137)
- UnnamedContract (`0x2b6c227b26bc0ace74bb12da86571179c2c8bc54`, chain 137)
- UnnamedContract (`0x4dce82f149649906d622efca613736a2015cbd1b`, chain 137)
- UnnamedContract (`0x53c09096b1dc52e2ef223b2969a714ee75da364f`, chain 137)
- UnnamedContract (`0x57acb721fcf3d900b480a90a55191cf8f37ad478`, chain 137)
- UnnamedContract (`0x8b2970c237656d3895588b99a8bfe977d5618201`, chain 137)
- UnnamedContract (`0xca85e2ce206b48ee28a87b0a06f9519abe627451`, chain 137)
- UnnamedContract (`0xd86ceb76e9430d3bde90ded79c82ae62bc66d68b`, chain 137)
- UnnamedContract (`0x2863582272a424234fce76d97099acbd432acc01`, chain 8453)
- UnnamedContract (`0x2b6c227b26bc0ace74bb12da86571179c2c8bc54`, chain 8453)
- UnnamedContract (`0x5a5094e2a2a4c1b48a6630138a3b1076ec00b10d`, chain 8453)
- UnnamedContract (`0x609d44450231697227504e7fa6a327421b11beaa`, chain 8453)
- UnnamedContract (`0x60d6439631cc6f60ed15c07783b4c7848f87c84c`, chain 8453)
- UnnamedContract (`0x8b2970c237656d3895588b99a8bfe977d5618201`, chain 8453)
- UnnamedContract (`0xca85e2ce206b48ee28a87b0a06f9519abe627451`, chain 8453)
- UnnamedContract (`0x0a6bcb3a0c03ab2bc8a058ee02ed11d50b494083`, chain 42161)
- UnnamedContract (`0x2863582272a424234fce76d97099acbd432acc01`, chain 42161)
- UnnamedContract (`0x2b6c227b26bc0ace74bb12da86571179c2c8bc54`, chain 42161)
- UnnamedContract (`0x53c09096b1dc52e2ef223b2969a714ee75da364f`, chain 42161)
- UnnamedContract (`0x57acb721fcf3d900b480a90a55191cf8f37ad478`, chain 42161)
- UnnamedContract (`0x779aa2880d7a701fb46d320c710944a72e2a049b`, chain 42161)
- UnnamedContract (`0xca85e2ce206b48ee28a87b0a06f9519abe627451`, chain 42161)
- UnnamedContract (`0xd86ceb76e9430d3bde90ded79c82ae62bc66d68b`, chain 42161)
- UnnamedContract (`0xec1c780a275438916e7ceb174d80878f29580606`, chain 42161)
- UnnamedContract (`0x1509706a6c66ca549ff0cb464de88231ddbe213b`, chain 43114)
- UnnamedContract (`0x1fd645458f6cd8eb95d161d9a38eabe5dab1900b`, chain 43114)
- UnnamedContract (`0x2b6c227b26bc0ace74bb12da86571179c2c8bc54`, chain 43114)
- UnnamedContract (`0x37aa9ad9744d0686df1c7053225e700ce13e31dd`, chain 43114)
- UnnamedContract (`0x5073dc4072b23beb465f012d1be324bc0ebc119d`, chain 43114)
- UnnamedContract (`0x623cdc77dbade480060c1cf22053514bcf785898`, chain 43114)
- UnnamedContract (`0x6907d13cb2af4661a491562187f3beaba4c2a017`, chain 43114)
- UnnamedContract (`0x731886426a3199b988194831031dfb993f25d961`, chain 43114)
- UnnamedContract (`0x739b0c838e47a28877caef270df0407fe5c62502`, chain 43114)
- UnnamedContract (`0x8034fbc6246caa37d2af084b2fb0ea4a211b6f8d`, chain 43114)
- UnnamedContract (`0x87299312c820607f1e7e4d0c6715ceb594306fe9`, chain 43114)
- UnnamedContract (`0x8b2970c237656d3895588b99a8bfe977d5618201`, chain 43114)
- UnnamedContract (`0x98ef32edd24e2c92525e59afc4475c1242a30184`, chain 43114)
- UnnamedContract (`0xa2930d1e21a26fde6ed861f303205536a98381ed`, chain 43114)
- UnnamedContract (`0xb82434c7506b27c226564d6ef6ac9ddcb03e8bd3`, chain 43114)
- UnnamedContract (`0xc181edc719480bd089b94647c2dc504e2700a2b0`, chain 43114)
- UnnamedContract (`0xcbdcd817a93e733d48086c7c068c82c5a123dc4e`, chain 43114)
- UnnamedContract (`0xcc92694a8b2367bc6a0d6c2349c30b7d8f1d3c0e`, chain 43114)
- UnnamedContract (`0xf24074a1a6ad620adc14745f9cc1fb1e7ba6ca71`, chain 43114)
- ArbitrumBridgeSender (`0xde386aedec27521daf1f8a49c03ada7c158455bf`, chain 42161)
- AuraBalOFT (`0x223738a747383d6f9f827d95964e4d8e8ac754ce`, chain 137)
- AuraBalOFT (`0x223738a747383d6f9f827d95964e4d8e8ac754ce`, chain 8453)
- AuraBalOFT (`0x223738a747383d6f9f827d95964e4d8e8ac754ce`, chain 42161)
- AuraBalProxyOFT (`0xdf9080b6bfe4630a97a0655c0016e0e9b43a7c68`, chain 1)
- AuraBalVault (`0x4ea9317d90b61fc28c418c247ad0ca8939bbb0e9`, chain 137)
- AuraBalVault (`0x4ea9317d90b61fc28c418c247ad0ca8939bbb0e9`, chain 8453)
- AuraBalVault (`0x4ea9317d90b61fc28c418c247ad0ca8939bbb0e9`, chain 42161)
- AuraDistributor (`0x96d15d08538a17a03b0210fd1626d5f42bdba9a4`, chain 1)
- AuraLocker (`0x9e1f4190f1a8fe0cd57421533decb57f9980922e`, chain 8453)
- AuraOFT (`0x1509706a6c66ca549ff0cb464de88231ddbe213b`, chain 10)
- AuraOFT (`0x1509706a6c66ca549ff0cb464de88231ddbe213b`, chain 100)
- AuraOFT (`0x1509706a6c66ca549ff0cb464de88231ddbe213b`, chain 137)
- AuraOFT (`0x1509706a6c66ca549ff0cb464de88231ddbe213b`, chain 8453)
- AuraOFT (`0x1509706a6c66ca549ff0cb464de88231ddbe213b`, chain 42161)
- AuraProxyOFT (`0xb401f0cff9f05d10699c0e2c88a81dd923c1ffff`, chain 1)
- AuraViewHelpersLite (`0x9e4cbe2eaff2fa727bc805e6cbbf2ff01ddb812b`, chain 137)
- AuraViewHelpersLite (`0xbd2e14d04777e551a8fe3822cac0df51984b029e`, chain 8453)
- BoosterLite (`0x98ef32edd24e2c92525e59afc4475c1242a30184`, chain 100)
- BoosterLite (`0x98ef32edd24e2c92525e59afc4475c1242a30184`, chain 137)
- BoosterLite (`0x98ef32edd24e2c92525e59afc4475c1242a30184`, chain 8453)
- BoosterLite (`0x98ef32edd24e2c92525e59afc4475c1242a30184`, chain 42161)
- BoosterOwnerLite (`0xf044ee152c7d731825280350d876cf760181d96f`, chain 10)
- BoosterOwnerLite (`0xa9802db57c6d9218ccfa5bed6364dfd0cf25d985`, chain 100)
- BoosterOwnerLite (`0x8b9da502cccb32dbf19cd68e258e6fd05e1b5eee`, chain 137)
- BoosterOwnerLite (`0x0f0ddad80025adf6c5ca45905237e5ca12b755fc`, chain 8453)
- BoosterOwnerLite (`0x3af95ba5c362075bb28e5a2a42d7cd1e201a1b66`, chain 42161)
- BridgeDelegateReceiver (`0x397a2d4d23c6fd1316ce25000820779006e80cd7`, chain 1)
- BridgeDelegateReceiver (`0x60421ffaa36f3a8e69c25887e575689f52b055f7`, chain 1)
- BridgeDelegateReceiver (`0x7eb87c3a4eabdad158781d0dbb7ab3589b9c2b4c`, chain 1)
- BridgeDelegateReceiver (`0x80b1116fc9f5334bc8d6502e59dc4c42ce98ab8d`, chain 1)
- BridgeDelegateReceiver (`0xac962acd42f93c6f26e1cf83271d2a53b208daa6`, chain 1)
- BridgeDelegateReceiver (`0xbcf3b107a5ecdd8efb70a74f44b827a1f7108c48`, chain 1)
- ChildStashRewardDistro (`0xca85e2ce206b48ee28a87b0a06f9519abe627451`, chain 100)
- GnosisBridgeSender (`0x908c9d41183ade493effc12bb9ad11a9333052bc`, chain 100)
- GnosisSafeProxy (`0xb370ebd7ded0c87b4509ff6f13f07b7f1693bf46`, chain 1)
- GnosisSafeProxy (`0x57acb721fcf3d900b480a90a55191cf8f37ad478`, chain 100)
- GnosisSafeProxy (`0xd86ceb76e9430d3bde90ded79c82ae62bc66d68b`, chain 100)
- KeeperMulticall3 (`0x37aa9ad9744d0686df1c7053225e700ce13e31dd`, chain 10)
- KeeperMulticall3 (`0x37aa9ad9744d0686df1c7053225e700ce13e31dd`, chain 100)
- KeeperMulticall3 (`0x37aa9ad9744d0686df1c7053225e700ce13e31dd`, chain 137)
- KeeperMulticall3 (`0x37aa9ad9744d0686df1c7053225e700ce13e31dd`, chain 8453)
- KeeperMulticall3 (`0x5c97f09506d60b90a817eb547ea4f03ae990e798`, chain 8453)
- KeeperMulticall3 (`0x5c97f09506d60b90a817eb547ea4f03ae990e798`, chain 42161)
- L1Coordinator (`0xaa54f3b282805822419265208e669d12372a3811`, chain 1)
- L1PoolManagerProxy (`0x54f2dec216dffb9174edb0d53910bada5227a14d`, chain 1)
- OptimismBridgeSender (`0x0451255563e2aca170b2552111837572e7a0bacd`, chain 10)
- PolygonBridgeSender (`0x25e7c574c4016e09f608971f97c3b09a6cf4f669`, chain 137)
- PoolManagerLite (`0xf24074a1a6ad620adc14745f9cc1fb1e7ba6ca71`, chain 10)
- PoolManagerLite (`0xf24074a1a6ad620adc14745f9cc1fb1e7ba6ca71`, chain 100)
- PoolManagerLite (`0xf24074a1a6ad620adc14745f9cc1fb1e7ba6ca71`, chain 137)
- PoolManagerLite (`0xf24074a1a6ad620adc14745f9cc1fb1e7ba6ca71`, chain 8453)
- PoolManagerLite (`0xf24074a1a6ad620adc14745f9cc1fb1e7ba6ca71`, chain 42161)
- ProxyFactory (`0x731886426a3199b988194831031dfb993f25d961`, chain 10)
- ProxyFactory (`0x731886426a3199b988194831031dfb993f25d961`, chain 100)
- ProxyFactory (`0x731886426a3199b988194831031dfb993f25d961`, chain 137)
- ProxyFactory (`0x731886426a3199b988194831031dfb993f25d961`, chain 8453)
- ProxyFactory (`0x731886426a3199b988194831031dfb993f25d961`, chain 42161)
- RewardFactory (`0x2f4cdf0d46f4e3e6d4d37836e73073046138d4f7`, chain 10)
- RewardFactory (`0x0f641b291ba374ec9b17a878c54b98005a0bacae`, chain 100)
- RewardFactory (`0xb292be31649a0b079dbdb772fcf5c7a02a6e0144`, chain 137)
- RewardFactory (`0x334df252cc0c44c37ba85dbeaa9c230c3f22f6b0`, chain 8453)
- RewardFactory (`0xda2e6ba0b1abbca925b70e9747afbd481c16e7db`, chain 42161)
- RewardPoolDepositWrapper (`0x51b6e0ac6d6435650748513c71db453f96749fe1`, chain 10)
- RewardPoolDepositWrapper (`0x0fec3d212bcc29ef3e505b555d7a7343df0b7f76`, chain 100)
- RewardPoolDepositWrapper (`0xce66e8300dc1d1f5b0e46e9145fdf680a7e41146`, chain 137)
- RewardPoolDepositWrapper (`0xa9952c914d86f896c53bf17125c4104cc058008e`, chain 8453)
- RewardPoolDepositWrapper (`0x6b02fefd2f2e06f51e17b7d5b8b20d75fd6916be`, chain 42161)
- SidechainClaimZap (`0x617963d46b882ece880ab18bc232f513e91fdd47`, chain 10)
- SidechainClaimZap (`0x4ea38a5739d467f7f84c06155ee2ad745e5328e8`, chain 100)
- SidechainClaimZap (`0x617963d46b882ece880ab18bc232f513e91fdd47`, chain 137)
- SidechainClaimZap (`0x4ea38a5739d467f7f84c06155ee2ad745e5328e8`, chain 8453)
- SidechainClaimZap (`0x617963d46b882ece880ab18bc232f513e91fdd47`, chain 42161)
- SidechainView (`0x421dbf836b903b15ba09c40553ad305d22275482`, chain 100)
- SidechainView (`0xea865d0dacf923c8d6254de734f31294ca74c1dc`, chain 137)
- SimpleStrategy (`0x4b5d2848678db574fbc2d2f629143d969a4f41cb`, chain 137)
- SimpleStrategy (`0x4b5d2848678db574fbc2d2f629143d969a4f41cb`, chain 8453)
- SimpleStrategy (`0x4b5d2848678db574fbc2d2f629143d969a4f41cb`, chain 42161)
- TokenFactory (`0x87299312c820607f1e7e4d0c6715ceb594306fe9`, chain 10)
- TokenFactory (`0x87299312c820607f1e7e4d0c6715ceb594306fe9`, chain 100)
- TokenFactory (`0x87299312c820607f1e7e4d0c6715ceb594306fe9`, chain 137)
- TokenFactory (`0x87299312c820607f1e7e4d0c6715ceb594306fe9`, chain 8453)
- TokenFactory (`0x87299312c820607f1e7e4d0c6715ceb594306fe9`, chain 42161)
- UnnamedContract (`0x252a18d569149cb9fd144d35842d2bee596b3a63`, chain 1101)
- UnnamedContract (`0xa1ffacb9bb1852997d2a5931659a56272dc858f4`, chain 1101)
- UnnamedContract (`0xa7cd8430249ae45c343b569bb8f1c6abc9a32794`, chain 1101)
- UnnamedContract (`0xb4c68ea0c1a5fff3736cbfb402afbb4ad88608df`, chain 1101)
- UnnamedContract (`0xbddac3069f4e26f4e4f445926c8eeb9dcb68c26b`, chain 1101)
- UnnamedContract (`0xffa4587c1b2e373469ab6a8fe0ce4dbdb10282d5`, chain 1101)
- VirtualRewardFactory (`0x05589cbbe1cc0357986df6de4031b953819079c2`, chain 137)
- VirtualRewardFactory (`0x05589cbbe1cc0357986df6de4031b953819079c2`, chain 8453)
- VirtualRewardFactory (`0x05589cbbe1cc0357986df6de4031b953819079c2`, chain 42161)
- VoterProxyLite (`0xc181edc719480bd089b94647c2dc504e2700a2b0`, chain 10)
- VoterProxyLite (`0xc181edc719480bd089b94647c2dc504e2700a2b0`, chain 100)
- VoterProxyLite (`0xc181edc719480bd089b94647c2dc504e2700a2b0`, chain 137)
- VoterProxyLite (`0xc181edc719480bd089b94647c2dc504e2700a2b0`, chain 8453)
- VoterProxyLite (`0xc181edc719480bd089b94647c2dc504e2700a2b0`, chain 42161)

## Contract Surface Quality

- Logic-topography rows: 92; live-surface rows included: 92 (92 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 158/209 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 12/47 (25.5%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 106 own, 25 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 402 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 1 standard proxy/library)
- Proxy deployments represented within implementation groups: 5
- Confirmed-live implementations: 106 of 533 unique; 427 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 12/242
- Verified + Unaudited implementations: 226
- Verified by bytecode match: 8
- Unverified implementations: 291
- Unique implementations: 533
- Raw deployments: 1155
- Audits discovered: 20 (20 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 10
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-12 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 14 stale, 6 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 13 match-unverified
- Tier 1 coverage: 2.1% (Code4rena)
- Note: This protocol is classified as [dead]. ASD of n/a represents exposure in a protocol with dead activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Halborn | Tier 2 | 11 | 4.5% | 2023-12 |
| Zellic | Tier 2 | 6 | 2.5% | 2023-06 |
| Hephyrius | Tier 2 | 3 | 1.2% | n/a |
| Code4rena | Tier 1 | 1 | 0.4% | 2022-07 |
| PeckShield | Tier 2 | 1 | 0.4% | 2022-04 |

## Contract Surface

### ✅ Verified + Audited (8)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AuraBalOFT | unknown | project_anchor | own_supporting | 0 | polygon | unit-227669 | 3 deployments: polygon `0x223738a747383d6f9f827d95964e4d8e8ac754ce`; base `0x223738a747383d6f9f827d95964e4d8e8ac754ce`; arbitrum `0x223738a747383d6f9f827d95964e4d8e8ac754ce` | ✅ Audited |
| AuraBalProxyOFT | unknown | project_anchor | own_supporting | 0 | ethereum | unit-227605 | `0xdf9080b6bfe4630a97a0655c0016e0e9b43a7c68` | ✅ Audited |
| AuraLocker | unknown | project_anchor | own_supporting | 0 | base | unit-227817 | `0x9e1f4190f1a8fe0cd57421533decb57f9980922e` | ✅ Audited |
| AuraProxyOFT | unknown | project_anchor | own_supporting | 0 | ethereum | unit-227602 | `0xb401f0cff9f05d10699c0e2c88a81dd923c1ffff` | ✅ Audited |
| BridgeDelegateReceiver | unknown | project_anchor | own_supporting | 0 | ethereum | unit-227593 | `0x397a2d4d23c6fd1316ce25000820779006e80cd7` | ✅ Audited |
| GnosisBridgeSender | operational_periphery | project_anchor | own_supporting | 0 | gnosis | unit-227646 | `0x908c9d41183ade493effc12bb9ad11a9333052bc` | ✅ Audited |
| L1Coordinator | unknown | project_anchor | own_supporting | 0 | ethereum | unit-227600 | `0xaa54f3b282805822419265208e669d12372a3811` | ✅ Audited |
| SimpleStrategy | core_logic | project_anchor | own_supporting | 0 | polygon | unit-227679 | 3 deployments: polygon `0x4b5d2848678db574fbc2d2f629143d969a4f41cb`; base `0x4b5d2848678db574fbc2d2f629143d969a4f41cb`; arbitrum `0x4b5d2848678db574fbc2d2f629143d969a4f41cb` | ✅ Audited |

### ⚠️ Verified + Unaudited (226)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| cvxCrvToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x616e8bfa43f920657b3497dbf40d6b1a02d4608d`; ethereum `0x62b9c7356a2dc64a1969e19c23e4f579f9810aa7` | ⚠️ Unaudited |
| BaseRewardPool | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x00a7ba8ae7bca0b10a32ea1f8e2a1da980c6cad2`; ethereum `0x3fe65692bfcd0e6cf84cb1e7d24108e434a7587e`; ethereum `0x5e5ea2048475854a5702f5b8468a51ba1296efcc`; ethereum `0xe765d4b1680b4274c96b05e0dc5c6fc2157ab806` | ⚠️ Unaudited |
| cvxRewardPool | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcf50b810e57ac33b91dcf525c6ddd9881b139332` | ⚠️ Unaudited |
| Vault | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0xba12222222228d8ba445958a75a0704d566bf2c8`; fraxtal `0xe42ffa682a26ef8f25891db4882932711d42e467` | ⚠️ Unaudited |
| cvxFpisToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa2847348b58ced0ca58d23c7e9106a49f1427df6` | ⚠️ Unaudited |
| AuraToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x665d01dbd89a0d1b693bb806feea499b5359cf15`; ethereum `0xc0c293ce456ff0ed870add98a0828dd4d2903dbf` | ⚠️ Unaudited |
| cvxFxsToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfeef77d3f69374f66429c91d732a244f074bdf74` | ⚠️ Unaudited |
| AuraBalVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0xb78c0d130dc07ba909ed5f6828abd5ea183b12bc`; ethereum `0xfaa2ed111b4f580fcb85c48e6dc6782dc5fcd7a6` | ⚠️ Unaudited |
| BalancerGovernanceToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xba100000625a3754423978a60c9317c58a424e3d` | ⚠️ Unaudited |
| Booster | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 5 deployments: ethereum `0x7818a1da7bd1e64c199029e86ba244a9798eee10`; ethereum `0xa57b8d98dae62b26ec3bcc4a365338157060b234`; ethereum `0xb314f7c160d078923eaaae9c6cbde8f1b7bfe7fd`; ethereum `0xd8bd5cdd145ed2197cb16ddb172df954e3f28659`; ethereum `0xf403c135812408bfbe8713b5a23a04b3d48aae31` | ⚠️ Unaudited |
| AuraBalRewardPool | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc47162863a12227e5c3b0860715f9cf721651c0c` | ⚠️ Unaudited |
| AggregatorBatchRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 4 deployments: optimism `0xb9d01ca61b9c181da1051bfdd28e1097e920ab14`; gnosis `0x870f988484a4b3034b6cca09829f6a1b4123fbc1`; arbitrum `0xb21a277466e7db6934556a1ce12eb3f032815c8a`; avalanche `0x136f1efcc3f8f88516b9e94110d56fdbfb1778d1` | ⚠️ Unaudited |
| AggregatorRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 5 deployments: optimism `0x84813aa3e079a665c0b80f944427ee83cba63617`; gnosis `0xb21a277466e7db6934556a1ce12eb3f032815c8a`; arbitrum `0x4b979ed48f982ba0baa946cb69c1083eb799729c`; avalanche `0x3f170631ed9821ca51a59d996ab095162438dc10`; avalanche `0x4b979ed48f982ba0baa946cb69c1083eb799729c` | ⚠️ Unaudited |
| ArbitratorVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5d208cd54f5132f2bd0c1f1e8d8c864bb6bedc40` | ⚠️ Unaudited |
| ArbitrumBridgeSender | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 3 deployments: arbitrum `0x713e883c22fa543fb28ce96e0677ae347096fbe6`; arbitrum `0xa7e41a0ab0dad61bf3aec60315b53f1d4de2815c`; arbitrum `0xabdce19340efd0f17b6c4b361d9a7e5beed6afba` | ⚠️ Unaudited |
| ArbitrumBridgeSender | operational_periphery | project_anchor | own_supporting | 0 | arbitrum | unit-227744 | `0xde386aedec27521daf1f8a49c03ada7c158455bf` | ⚠️ Unaudited |
| ArbitrumRootGaugeFactory | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x1c99324edc771c82a0dccb780cc7dda0045e50e7`; ethereum `0xad901309d9e9dbc5df19c84f729f429f0189a633` | ⚠️ Unaudited |
| AuraArbBalGrant | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8d803f7f7e26e586ee90e5a872cf7830e21f7727` | ⚠️ Unaudited |
| AuraBalProxyOFT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xab07f0279023886222e80e25cb4a01cd007b6764` | ⚠️ Unaudited |
| AuraBalRedemption | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2aa497d6c6cc0cce9a49ea70b0701092a10a1f9c` | ⚠️ Unaudited |
| AuraBalStaker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0xa3fcafca8150636c3b736a16cd73d49cc8a7e10e`; ethereum `0xac98c986d8318ff08109ae6f4e7043468da9d0a2` | ⚠️ Unaudited |
| AuraBalStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x7372ece4c18beabc19981a53b557be90dcbd2b66`; ethereum `0xca6481967e9ed5faedbc5dffa1dd8368979a2160` | ⚠️ Unaudited |
| AuraBalVault | core_logic | project_anchor | own_supporting | 0 | polygon | unit-227683 | 3 deployments: polygon `0x4ea9317d90b61fc28c418c247ad0ca8939bbb0e9`; base `0x4ea9317d90b61fc28c418c247ad0ca8939bbb0e9`; arbitrum `0x4ea9317d90b61fc28c418c247ad0ca8939bbb0e9` | ⚠️ Unaudited |
| AuraClaimZap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x2e307704efae244c4aae6b63b601ee8da69e92a9`; ethereum `0x4e7d44500eb6c198854cf5b59bdac3b610f48d3a`; ethereum `0x623b83755a39b12161a63748f3f595a530917ab2` | ⚠️ Unaudited |
| AuraClaimZapV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x1bc4d50d8785587f0d44f4296408e20f592ae347`; ethereum `0x3eb33f9a2479af1f98297834861fb4e053a0215f`; ethereum `0x5b2364fd757e262253423373e4d57c5c011ad7f4`; ethereum `0xf8d54495f41eb7c3b392f46f691c39da77ef8307` | ⚠️ Unaudited |
| AuraDistributor | operational_periphery | project_anchor | own_supporting | 0 | ethereum | unit-227599 | `0x96d15d08538a17a03b0210fd1626d5f42bdba9a4` | ⚠️ Unaudited |
| AuraLocker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3fa73f1e5d8a792c80f426fc8f84fbf7ce9bbcac` | ⚠️ Unaudited |
| AuraLockerModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x568f3df1b63af874e0f981831d0c4a6186c0dd73`; ethereum `0xbcfd07b87c27656031a1b25fffede7f9b955009a`; ethereum `0xd539ed84609d2303928aded0b80965fe646d8f1a` | ⚠️ Unaudited |
| AuraMerkleDrop | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x1a661cf8d8cd69dd2a423f3626a461a24280a8fb`; ethereum `0x45eb1a004373b1d8457134a2c04a42d69d287724` | ⚠️ Unaudited |
| AuraMining | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x744be650cea753de1e69bf6bad3c98490a855f52` | ⚠️ Unaudited |
| AuraMinter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x59a5ccd34943cd0adcf5ce703ee9f06889e13707` | ⚠️ Unaudited |
| AuraOFT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x1509706a6c66ca549ff0cb464de88231ddbe213b` | ⚠️ Unaudited |
| AuraPenaltyForwarder | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4043569200f7a7a1d989abbabc2de2bde1c20d1e` | ⚠️ Unaudited |
| AuraProxyOFT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9063c001af97c75a59dc27b0dd3d8dfa81e180ec` | ⚠️ Unaudited |
| AuraRedemption | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x559f5fa62dfbc5f22a4f7d36bd001acb27a926d6`; ethereum `0x928966752dc0cc0d7babe343fc2937ba13a5120c`; ethereum `0xa1b74299ccdc5b15ba2bcce990809ff5c94952a3` | ⚠️ Unaudited |
| AuraStakingProxy | proxy | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd9e863b7317a66fe0a4d2834910f604fd6f89c6c` | ⚠️ Unaudited |
| AuraVestedEscrow | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 9 deployments: ethereum `0x24346652e0e2ae0ce05c781501fdf4fe4553fac6`; ethereum `0x43b17088503f4ce1aed9fb302ed6bb51ad6694fa`; ethereum `0x45025ebc38647bcf7edd2b40cfdaf3fbfe1538f5`; ethereum `0x5bd3fca8d3d8c94a6419d85e0a76ec8da52d836a`; ethereum `0x87e1cabecba39797a9ccc6416ed0f77fed056806`; ethereum `0xa6bbf685b7ea73878b4fb867a96f1ca3ed5eb358`; ethereum `0xb750449e71999541574dc76a2d983a64b9d16087`; ethereum `0xefc9f1fa4ce75290deeeeb57a3b75dc79066ac3f`; ethereum `0xfd72170339ac6d7bdda09d1eaca346b21a30d422` | ⚠️ Unaudited |
| AuraViewHelpers | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x129bbda5087e132983e7c20ae1f761333d40c229` | ⚠️ Unaudited |
| AuraViewHelpersLite | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | 5 deployments: optimism `0xbddac3069f4e26f4e4f445926c8eeb9dcb68c26b`; gnosis `0x8f67bb1f24eba8d123ae7f18c13b925ba7f13552`; fraxtal `0xbd2e14d04777e551a8fe3822cac0df51984b029e`; base `0xce66e8300dc1d1f5b0e46e9145fdf680a7e41146`; arbitrum `0xb4e5fd87f3092f271f51ca416f311513d958cb4e` | ⚠️ Unaudited |
| AuraViewHelpersLite | unknown | project_anchor | own_supporting | 0 | polygon | unit-227702 | `0x9e4cbe2eaff2fa727bc805e6cbbf2ff01ddb812b` | ⚠️ Unaudited |
| AuraViewHelpersLite | periphery | project_anchor | own_supporting | 0 | base | unit-227819 | `0xbd2e14d04777e551a8fe3822cac0df51984b029e` | ⚠️ Unaudited |
| Authorizer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 7 deployments: ethereum `0xa331d84ec860bf466b4cdccfb4ac09a1b43f3ae6`; optimism `0x5cf4928a3205728bd12830e1840f7db85c62a4b9`; gnosis `0x7ba29fe8e83dd6097a7298075c4affdbda3121cc`; polygon `0x6817149cb753bf529565b4d023d7507ed2ff4bc0`; fraxtal `0xe39b5e3b6d74016b2f6a9673d7d7493b6df549d5`; base `0x809b79b53f18e9bc08a961ed4678b901ac93213a`; arbitrum `0xe3881627b8deebccf9c23b291430a549fc0be5f7` | ⚠️ Unaudited |
| AuthorizerAdaptor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | 3 deployments: ethereum `0x8f42adbba1b16eaae3bb5754915e0d06059add75`; fraxtal `0x36cac20dd805d128c1a6dd16eea845c574b5a17c`; base `0x6cad2ea22bfa7f4c14aae92e47f510cd5c509bc7` | ⚠️ Unaudited |
| AuthorizerAdaptorEntrypoint | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 7 deployments: ethereum `0xf5decdb1f3d1ee384908fbe16d2f0348ae43a9ea`; optimism `0x36cac20dd805d128c1a6dd16eea845c574b5a17c`; gnosis `0x36cac20dd805d128c1a6dd16eea845c574b5a17c`; polygon `0x36cac20dd805d128c1a6dd16eea845c574b5a17c`; fraxtal `0xb9f8ab3ed3f3acba64bc6cd2dca74b7f38fd7b88`; base `0x9129e834e15ea19b6069e8f08a8ecfc13686b8dc`; arbitrum `0x36cac20dd805d128c1a6dd16eea845c574b5a17c` | ⚠️ Unaudited |
| AuthorizerWithAdaptorValidation | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | 2 deployments: fraxtal `0x6817149cb753bf529565b4d023d7507ed2ff4bc0`; base `0xa69e0ccf150a29369d8bbc0b3f510849db7e8eee` | ⚠️ Unaudited |
| BAL | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x5dbad78818d4c8958eff2d5b95b28385a22113cd` | ⚠️ Unaudited |
| BalLiquidityProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa7429af4deb16827dad0e71d8aeea9c2bf70e32c` | ⚠️ Unaudited |
| BALTokenHolderFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb848f50141f3d4255b37ac288c25c109104f2158` | ⚠️ Unaudited |
| BatchRelayerLibrary | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | 12 deployments: ethereum `0x41b953164995c11c81da73d212ed8af25741b7ac`; ethereum `0xd02992266bb6a6324a3ab8b62fecbc9a3c58d1f9`; ethereum `0xd966d712f470067b60d37246404d6dfe5bf0b419`; optimism `0x96484f2abf5e58b15176dbf1a799627b53f13b6d`; gnosis `0x1702067424096f07a60e62ccee3de9420068492d`; polygon `0x268e2ee1413d768b6e2dc3f5a4ddc9ae03d9af42`; fraxtal `0x662112b8cb18889e81459b92ca0f894a2ef2c1b8`; base `0x82416ce6ea7dd4923d4a3ed70a79b4a432a382c4`; base `0xaf779e58dafb4307b998c7b3c9d3f788dfc80632`; base `0xdf9b5b00ef9bca66e9902bd813db14e4343be025`; arbitrum `0x96484f2abf5e58b15176dbf1a799627b53f13b6d`; avalanche `0x36cac20dd805d128c1a6dd16eea845c574b5a17c` | ⚠️ Unaudited |
| BatchRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 5 deployments: optimism `0xad89051bed8d96f045e8912ae1672c6c0bf8a85e`; gnosis `0xe2fa4e1d17725e72dcdafe943ecf45df4b9e285b`; arbitrum `0xad89051bed8d96f045e8912ae1672c6c0bf8a85e`; avalanche `0xa523f47a933d5020b23629ddf689695aa94612dc`; avalanche `0xc9b36096f5201ea332db35d6d195774ea0d5988f` | ⚠️ Unaudited |
| Boost Delegation V2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | 5 deployments: optimism `0x6817149cb753bf529565b4d023d7507ed2ff4bc0`; gnosis `0x5dbad78818d4c8958eff2d5b95b28385a22113cd`; polygon `0xd961e30156c2e0d0d925a0de45f931cb7815e970`; arbitrum `0x6b5da774890db7b7b96c6f44e6a4b0f657399e2e`; avalanche `0xe39b5e3b6d74016b2f6a9673d7d7493b6df549d5` | ⚠️ Unaudited |
| BoosterHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x0538ad853e9c191eb9826ed8c4cbc6b9b8a7270c`; ethereum `0x26f470e4b777ea4cd09f550d3e904d707df6763d`; ethereum `0x82bbbc3c7b459913ae6063858832a6c2c43d0bd0`; ethereum `0xc44a3cd908e8586f08e8bd5171dccecddac5c391` | ⚠️ Unaudited |
| BoosterLite | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x98ef32edd24e2c92525e59afc4475c1242a30184` | ⚠️ Unaudited |
| BoosterOwner | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x228a142081b456a9ff803d004504955032989f04`; ethereum `0xb927edabfa72fa4e26b8a65cbd7161cf863caced`; ethereum `0xfa838af70314135159b309bf27f1dbf1f954ec34` | ⚠️ Unaudited |
| BoosterOwnerLite | core_logic | project_anchor | own_supporting | 0 | optimism | unit-227631 | `0xf044ee152c7d731825280350d876cf760181d96f` | ⚠️ Unaudited |
| BoosterOwnerLite | core_logic | project_anchor | own_supporting | 0 | gnosis | unit-227648 | `0xa9802db57c6d9218ccfa5bed6364dfd0cf25d985` | ⚠️ Unaudited |
| BoosterOwnerLite | core_logic | project_anchor | own_supporting | 0 | polygon | unit-227698 | `0x8b9da502cccb32dbf19cd68e258e6fd05e1b5eee` | ⚠️ Unaudited |
| BoosterOwnerLite | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x04798c9b4546d90a97f687188d346d170298703c` | ⚠️ Unaudited |
| BoosterOwnerLite | core_logic | project_anchor | own_supporting | 0 | base | unit-227799 | `0x0f0ddad80025adf6c5ca45905237e5ca12b755fc` | ⚠️ Unaudited |
| BoosterOwnerLite | core_logic | project_anchor | own_supporting | 0 | arbitrum | unit-227719 | `0x3af95ba5c362075bb28e5a2a42d7cd1e201a1b66` | ⚠️ Unaudited |
| BridgeDelegateReceiver | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 7 deployments: ethereum `0x0ab84c2a7929944cecaa4cdee9255680800ffa8e`; ethereum `0x430113ce763a9b35664bfcf96088fb4caa3f36f6`; ethereum `0x6992640358de1e18da8486c80d4ad11db1af8ec4`; ethereum `0x73b4cec14883d7e861157ecfe6e282042763c909`; ethereum `0x98b6dc58053570cee332ebf664df745d8ffcaece`; ethereum `0xb6d84df0ea2c8b04ef76053d1cc46e90c75ccc11`; ethereum `0xb8ca2ae3e199587078d9955c999d4f1555d75dad` | ⚠️ Unaudited |
| BridgeDelegateReceiver | unknown | project_anchor | own_supporting | 0 | ethereum | unit-227595 | `0x60421ffaa36f3a8e69c25887e575689f52b055f7` | ⚠️ Unaudited |
| BridgeDelegateReceiver | unknown | project_anchor | own_supporting | 0 | ethereum | unit-227596 | `0x7eb87c3a4eabdad158781d0dbb7ab3589b9c2b4c` | ⚠️ Unaudited |
| BridgeDelegateReceiver | unknown | project_anchor | own_supporting | 0 | ethereum | unit-227597 | `0x80b1116fc9f5334bc8d6502e59dc4c42ce98ab8d` | ⚠️ Unaudited |
| BridgeDelegateReceiver | unknown | project_anchor | own_supporting | 0 | ethereum | unit-227601 | `0xac962acd42f93c6f26e1cf83271d2a53b208daa6` | ⚠️ Unaudited |
| BridgeDelegateReceiver | unknown | project_anchor | own_supporting | 0 | ethereum | unit-227603 | `0xbcf3b107a5ecdd8efb70a74f44b827a1f7108c48` | ⚠️ Unaudited |
| BufferRouter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 5 deployments: optimism `0x311334883921fb1b813826e585df1c2be4358615`; gnosis `0x86e67e115f96df37239e0479441303de0de7bc2b`; arbitrum `0x311334883921fb1b813826e585df1c2be4358615`; avalanche `0x22625eedd92c81a219a83e1dc48f88d54786b017`; avalanche `0x6817149cb753bf529565b4d023d7507ed2ff4bc0` | ⚠️ Unaudited |
| CanonicalView | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbc4990b6607f456477d07c4dd80fb35258ac0b57` | ⚠️ Unaudited |
| ChefForwarder | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x57d23f0f101cbd25a05fc56fd07de32bcbb622e9`; ethereum `0x7253584f04fc34c9979c570a170dc70d00a0ccf8` | ⚠️ Unaudited |
| Child Liquidity Gauge | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 4 deployments: fraxtal `0x4fb47126fa83a8734991e41b942ac29a3266c968`; base `0x59562f93c447656f6e4799fc1fc7c3d977c3324f`; base `0x9f7e65887413a8497b87ba2058ce6e4ef4b37013`; avalanche `0x4132f7acc9db7a6cf7be2dd3a9dc8b30c7e6e6c8` | ⚠️ Unaudited |
| ChildChainGaugeFactory | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 8 deployments: optimism `0xa523f47a933d5020b23629ddf689695aa94612dc`; gnosis `0x83e443ef4f9963c77bd860f94500075556668cb8`; polygon `0x22625eedd92c81a219a83e1dc48f88d54786b017`; fraxtal `0xc3ccace87f6d3a81724075adcb5ddd85a8a1bb68`; base `0x2498a2b0d6462d2260eac50ae1c3e03f4829ba95`; base `0xb1a4fe1c6d25a0ddab47431a92a723dd71d9021f`; arbitrum `0x6817149cb753bf529565b4d023d7507ed2ff4bc0`; avalanche `0xf23b4db826dba14c0e857029dff076b1c0264843` | ⚠️ Unaudited |
| ChildGaugeVoteRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 5 deployments: optimism `0xc4ef943b7c2f6b387b37689f1e9fa6ecb738845d`; gnosis `0xafac0e3e5eed2376bb52f0ff743a3e8a5a2b016c`; polygon `0x3eb33f9a2479af1f98297834861fb4e053a0215f`; base `0xb4c68ea0c1a5fff3736cbfb402afbb4ad88608df`; arbitrum `0xee19ea4b56a3350cfb6fc1b746972809fde238a6` | ⚠️ Unaudited |
| ChildStashRewardDistro | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | 5 deployments: optimism `0x7372ece4c18beabc19981a53b557be90dcbd2b66`; gnosis `0x1bec8fd56166ba66afb6d449e61b717fc9b482c0`; polygon `0x7e702e51142eb7658ce4ce734c9bdec74250f265`; base `0xeccd03d4cc029f341eaa1c208cfe14dc6862c67c`; arbitrum `0xeeda9b5b9b18c5f6b77e96dfe076cd46b7af9701` | ⚠️ Unaudited |
| ChildStashRewardDistro | unknown | project_anchor | own_supporting | 0 | gnosis | unit-227651 | `0xca85e2ce206b48ee28a87b0a06f9519abe627451` | ⚠️ Unaudited |
| CircuitBreakerLib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | 5 deployments: optimism `0xe42ffa682a26ef8f25891db4882932711d42e467`; polygon `0x956ccab09898c0af2aca5e6c229c3ad4e93d9288`; fraxtal `0x7ba29fe8e83dd6097a7298075c4affdbda3121cc`; base `0xef454a7b3f965d3f6723e462405246f8cd865425`; arbitrum `0xe42ffa682a26ef8f25891db4882932711d42e467` | ⚠️ Unaudited |
| ClaimFeesHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x6403972c1e8c6d01c57eed62e6322c191ccb28d8`; ethereum `0x999dbce0a18f721f04e793f916c30e72a9d0f56e`; ethereum `0xaf824c80aa77ae7f379da3dc05fea0dc1941c200` | ⚠️ Unaudited |
| ClaimSignatureRegistry | registry | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 19 deployments: optimism `0x56c8d8f7f926e0fb04a2cf05f18b44b2c5864aeb`; optimism `0xc86ef81e57492be65bfca9b0ed53dcbafdbe6100`; optimism `0xea692068ccf15b9560f9a694162b3f0a0fb8a687`; gnosis `0x90e065b28c9b7464b44f185f5a6b8e4b4c827f2a`; gnosis `0xa12da7dfd0792a10a5b05b575545bd685798ce35`; gnosis `0xd5584b37d1845ffed958c2d94bc675603ddcce68`; polygon `0x201efd508c8dfe9de1a13c2452863a78cb2a86cc`; polygon `0x4cb42fc3b5fb9392ce0772c3a540e4ae4da4ac4d`; polygon `0x7c1b7a97bfacd39975de53e989a16c7bc4c78275`; fraxtal `0x311334883921fb1b813826e585df1c2be4358615`; fraxtal `0x8e3feaab11b7b351e3ea1e01247ab6ccc847dd52`; fraxtal `0xad89051bed8d96f045e8912ae1672c6c0bf8a85e`; arbitrum `0x23f387a8d17978edce46fc3dc97eaf3a84b98ce4`; arbitrum `0x2b432b08679d17f8a4db785544c406bc0f47f290`; arbitrum `0x78ad1e1c10033b18ceaa20088e4e490be42a5417`; avalanche `0x45fb5af0a1ad80ea16c803146eb81844d9972373`; avalanche `0x90bd26fbb9db17d75b56e4ca3a4c438fa7c93694`; avalanche `0xdaa273aeec06e9ccb7428a77e2abb1e4659b16d2`; avalanche `0xfd214210587fb84798cbe7f37235e12898f3128f` | ⚠️ Unaudited |
| ClaimZap | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3f29cb4111cbda8081642da1f75b3c12decf2516` | ⚠️ Unaudited |
| ComposableStablePoolFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 19 deployments: ethereum `0xdba127fbc23fb20f5929c546af220a991b5c6e01`; ethereum `0xdc6d62ae091ea77331542042a72e5e38b188837c`; ethereum `0xf9ac7b9df2b3454e841110cce5550bd5ac6f875f`; optimism `0x043a2dad730d585c44fb79d2614f295d2d625412`; optimism `0x4bdcc2fb18aeb9e2d281b0278d946445070eada7`; optimism `0x85a80afee867adf27b50bdb7b76da70f1e853062`; gnosis `0x47b489bf5836f83abd928c316f8e39bc0587b020`; gnosis `0x4bdcc2fb18aeb9e2d281b0278d946445070eada7`; gnosis `0x76578ecf9a141296ec657847fb45b0585bcda3a6`; polygon `0x85a80afee867adf27b50bdb7b76da70f1e853062`; polygon `0xe2fa4e1d17725e72dcdafe943ecf45df4b9e285b`; polygon `0xeaedc32a51c510d35ebc11088fd5ff2b47aacf2e`; fraxtal `0x4bdcc2fb18aeb9e2d281b0278d946445070eada7`; base `0x8df317a729fcaa260306d7de28888932cb579b88`; arbitrum `0x4bdcc2fb18aeb9e2d281b0278d946445070eada7`; arbitrum `0x85a80afee867adf27b50bdb7b76da70f1e853062`; arbitrum `0xa8920455934da4d853faac1f94fe7bef72943ef1`; avalanche `0xb9f8ab3ed3f3acba64bc6cd2dca74b7f38fd7b88`; avalanche `0xe42ffa682a26ef8f25891db4882932711d42e467` | ⚠️ Unaudited |
| CompositeLiquidityRouter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 8 deployments: optimism `0xc9b36096f5201ea332db35d6d195774ea0d5988f`; gnosis `0x6ead84af26e997d27998fc9f8614e8a19bb93938`; gnosis `0xc1a64500e035d9159c8826e982dfb802003227f0`; arbitrum `0x1311fbc9f60359639174c1e7cc2032dbdb5cc4d1`; arbitrum `0xc1a64500e035d9159c8826e982dfb802003227f0`; avalanche `0x0c8f71d19f87c0bd1b9bad2484ecc3388d5dbb98`; avalanche `0x7a2535f5fb47b8e44c02ef5d9990588313fe8f05`; avalanche `0x96484f2abf5e58b15176dbf1a799627b53f13b6d` | ⚠️ Unaudited |
| ConstantPriceFeed | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 4 deployments: optimism `0x4eff2d77d9ffbaefb4b141a3e494c085b3ff4cb5`; gnosis `0xa0de078cd5cfa7088821b83e0bd7545ccfb7c883`; arbitrum `0x312600bc7645e47a4926dc658827398af070d431`; avalanche `0xd22eecbb495380ef52b1ccef1ca594979885d484` | ⚠️ Unaudited |
| CowSwapFeeBurner | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | 13 deployments: optimism `0xf4743d026f3d07af3747bb7d05bed06d177241d7`; gnosis `0x0e800d8d2e8b4694610aedc385aa6d763492b106`; gnosis `0x254f3a2974b97dc2e675f6115c845567c55f83b0`; gnosis `0x309abcaefa19ca6d34f0d8ff4a4103317c138657`; gnosis `0x397bc40ba584e651f4f5cf4ae089f0130569a1c7`; gnosis `0xae563e3f8219521950555f5962419c8919758ea2`; gnosis `0xd22eecbb495380ef52b1ccef1ca594979885d484`; gnosis `0xfc00536a0fd292c284deef6af8f644d8373d9cad`; arbitrum `0x774cb66e2b2db59a9daf175e9b2b7a142e17eb94`; arbitrum `0x891ec9b34829276a9a8ef2f8a9ceaf2486017e0d`; arbitrum `0xbc169a08cbdcdb218d91cd945d29b59f78c96b77`; arbitrum `0xf39ca6ede9bf7820a952b52f3c94af526bab9015`; avalanche `0x9179c06629ef7f17cb5759f501d89997fe0e7b45` | ⚠️ Unaudited |
| Create2Factory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 2 deployments: polygon `0xac98c986d8318ff08109ae6f4e7043468da9d0a2`; base `0xc9307d63b3709f537d2158f43199a69682ff0967` | ⚠️ Unaudited |
| CrvDepositor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x8014595f2ab54cd7c604b00e9fb932176fdc86ae`; ethereum `0xead792b55340aa20181a80d6a16db6a0ecd1b827` | ⚠️ Unaudited |
| CrvDepositorWrapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x68655ad9852a99c87c0934c7290bb62cfa5d4123` | ⚠️ Unaudited |
| CrvDepositorWrapperForwarder | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4e3e2424ee20d177e7749c58db0ac46327760b1a` | ⚠️ Unaudited |
| CrvDepositorWrapperForwarderV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9d6fc281587dc8a20f5e5cf9035c19751a12ef8b` | ⚠️ Unaudited |
| CrvDepositorWrapperSwapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2a2a2e691068cb1f61124c5a865756dca7f8682f` | ⚠️ Unaudited |
| CvxCrvStakingWrapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaa0c3f5f7dfd688c6e646f66cd2a6b66acdbe434` | ⚠️ Unaudited |
| CvxDistribution | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x449f2fd99174e1785cf2a1c79e665fec3dd1ddc6` | ⚠️ Unaudited |
| cvxFpisStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfa87db3eaa93b7293021e38416650d2e666bc483` | ⚠️ Unaudited |
| cvxFxsStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x49b4d1df40442f0c31b1bbaea3ede7c38e37e31a` | ⚠️ Unaudited |
| CvxLocker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd18140b4b819b895a3dba5442f959fa44994af50` | ⚠️ Unaudited |
| CvxLockerV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x72a19342e8f1838460ebfccef09f6585e32db86e` | ⚠️ Unaudited |
| DistributionScheduler | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbfd9769b061e57e478690299011a028194d66e3c` | ⚠️ Unaudited |
| DoubleEntrypointFixRelayer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xca96c4f198d343e251b1a01f3eba061ef3da73c1` | ⚠️ Unaudited |
| EclpLPOracleFactory | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 4 deployments: optimism `0xc00ff743b73346c9a4c40509e0550ffc18e5426d`; gnosis `0x9dcf4e2fea84ee8081abecfb6321ae2c55e1691d`; arbitrum `0xd9e91f7ad501929b089992842a3f193795e6479e`; avalanche `0x1780e8185199dac45284039bb3e3b64060d943ab` | ⚠️ Unaudited |
| ERC4626CowSwapFeeBurner | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 8 deployments: optimism `0x201efd508c8dfe9de1a13c2452863a78cb2a86cc`; optimism `0x7c1b7a97bfacd39975de53e989a16c7bc4c78275`; gnosis `0x5915dea04ce390f0f44ca0806f7c6dd99ce2f941`; gnosis `0x7d92fcdc8aa56057d5e318b2881f2167c67fdafa`; arbitrum `0x1cd776897ef4f647bf8241ec69549e4a9cb1d608`; arbitrum `0xd53f5d8d926fb2a0f7be614b16e649b8ac102d83`; avalanche `0x0b11209b8c5e821b18ded147583b8978c3e63911`; avalanche `0x5c6fb490bdfd3246eb0bb062c168decaf4bd9fdd` | ⚠️ Unaudited |
| ERC4626LinearPoolFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: gnosis `0x4132f7acc9db7a6cf7be2dd3a9dc8b30c7e6e6c8`; base `0x161f4014c27773840ccb4ec1957113e6dd028846` | ⚠️ Unaudited |
| ExternalWeightedMath | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: fraxtal `0xa8920455934da4d853faac1f94fe7bef72943ef1`; base `0x7920bfa1b2041911b354747ca7a6cdd2dfc50cfd` | ⚠️ Unaudited |
| ExtraRewardsDistributor | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa3739b206097317c72ef416f0e75bb8f58fbd308` | ⚠️ Unaudited |
| ExtraRewardStashModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x48e529218743e41f6de5b7e8d552e8173707ce81` | ⚠️ Unaudited |
| ExtraRewardStashV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x37c3ebfd4b0cf66df19a413e92dd21e556915f98`; ethereum `0x647596a225e27c5a3554d8f0e851cb5ff759b7ef`; ethereum `0xf9c0f3431f859e773ed052758052e06b6d175742`; fraxtal `0x7a7b39d47a64181750b7b45b88682ddb915a73d1` | ⚠️ Unaudited |
| FeeBridge | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd430246142084ec68f7ab090cbd9252a1d1410e9` | ⚠️ Unaudited |
| FeeDepositV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7a527d8bb09f7d70c148ab5de919e9bf68a0d769` | ⚠️ Unaudited |
| FeeDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x26743984e3357efc59f2fd6c1afdc310335a61c9` | ⚠️ Unaudited |
| FeeForwarder | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe14360aa496a85fcfe4b75afd2ec4d95cba38fe1` | ⚠️ Unaudited |
| FeeScheduler | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1a65276a9b6a0611506763839b1ffae3e86718b4` | ⚠️ Unaudited |
| FixedPriceLBPoolFactory | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: gnosis `0xd9e91f7ad501929b089992842a3f193795e6479e`; arbitrum `0x7f246e7bab4cdc8c7ab41eada8290009a5b26e0d` | ⚠️ Unaudited |
| ForwarderHandler | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7663fd322021d5b1f36dbf0c97d34cfa039fcca1` | ⚠️ Unaudited |
| GaugeAdder | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x2ffb7b215ae7f088ec2530c7aa8e1b24e398f26a`; ethereum `0xc33e0fe411322009947931c32d2273ee645cdb5b`; ethereum `0xed5ba579bb5d516263ff6e1c10fcac1040075fe2` | ⚠️ Unaudited |
| GaugeAdderMigrationCoordinator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1b57f637ce3408f1f834b0b70f9a595b062daea7` | ⚠️ Unaudited |
| GaugeControllerQuerier | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8e5698dc4897dc12243c8642e77b4f21349db97c` | ⚠️ Unaudited |
| GaugeVoteRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x26094f9a6a498c1fccd8ff65829f55fb8bd72a4e`; ethereum `0x54231c588b698dc9b91303c95c85f050da35189b`; ethereum `0xff209eb53ede2831b6c5e69cd3c79c36f5f39b23` | ⚠️ Unaudited |
| GaugeVoterModule | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2b5ac82c5e934407514768ce3e399d9c18381621` | ⚠️ Unaudited |
| GaugeWorkingBalanceHelper | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | 2 deployments: fraxtal `0x83e443ef4f9963c77bd860f94500075556668cb8`; base `0xa7d524046ef89de9f8e4f2d7b029f66ccb738d48` | ⚠️ Unaudited |
| GearboxLinearPoolFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x9dd32684176638d977883448a4c914311c07bd62` | ⚠️ Unaudited |
| GnosisSafe | governance | project_anchor | own_supporting | 1 | ethereum | unit-227823 | `0xb370ebd7ded0c87b4509ff6f13f07b7f1693bf46` | ⚠️ Unaudited |
| GnosisSafeL2 | governance | project_anchor | own_supporting | 2 | gnosis | unit-227824 (2 proxies) | 2 deployments: gnosis `0x57acb721fcf3d900b480a90a55191cf8f37ad478`; gnosis `0xd86ceb76e9430d3bde90ded79c82ae62bc66d68b` | ⚠️ Unaudited |
| GnosisSafeL2 | governance | non_address_book | standard_proxy_or_library (excluded) | 2 | base | n/a | 2 deployments: base `0x57acb721fcf3d900b480a90a55191cf8f37ad478`; base `0xd86ceb76e9430d3bde90ded79c82ae62bc66d68b` | ⚠️ Unaudited |
| Gyro2CLPPoolFactory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | 10 deployments: optimism `0x4b979ed48f982ba0baa946cb69c1083eb799729c`; optimism `0x99364f84d1c68d87aead0ce92eb47409a0c52c58`; gnosis `0x1c58cc548a23956469c7c528bb3a846c842dfaf9`; gnosis `0x7fa49df302a98223d98d115fc4fcd275576f6faa`; arbitrum `0x64b7dfe8a3972639712efa124d180dc3ff0f5bcf`; arbitrum `0x65a22ec32c37835ad5e77eb6f7452ac59e113a9f`; arbitrum `0x6ead84af26e997d27998fc9f8614e8a19bb93938`; avalanche `0x312600bc7645e47a4926dc658827398af070d431`; avalanche `0x8e3feaab11b7b351e3ea1e01247ab6ccc847dd52`; avalanche `0xe2fa4e1d17725e72dcdafe943ecf45df4b9e285b` | ⚠️ Unaudited |
| GyroECLPPoolFactory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | 9 deployments: optimism `0x22625eedd92c81a219a83e1dc48f88d54786b017`; optimism `0x53eff5068a1a3b39a9157da6ef5a18d555c479ef`; gnosis `0x1c53af9d683a4424d03f61d70d9f6bc53af7fcc1`; base `0x5f6848976c2914403b425f18b589a65772f082e3`; arbitrum `0x268e2ee1413d768b6e2dc3f5a4ddc9ae03d9af42`; arbitrum `0xe31715e75207acc8bfadd96902ff522058928479`; avalanche `0x268e2ee1413d768b6e2dc3f5a4ddc9ae03d9af42`; avalanche `0x83e443ef4f9963c77bd860f94500075556668cb8`; avalanche `0x86a0e97ec0d5db8dae106d3067358d41968fd12c` | ⚠️ Unaudited |
| Harvester | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6d6bcac2266468a44da9fa482ca54aaed586e1e7` | ⚠️ Unaudited |
| HHChefClaimBriberModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe2565158e9984fd736002f58e2777260f2dd0f4b` | ⚠️ Unaudited |
| HHRewardsClaimForwarderModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb034e7ac8395fb373bbf8cb4c09cc4d4c1d80aa0` | ⚠️ Unaudited |
| InterestRateCalculatorV2 | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1972b5d65a690de0bc36278ac93d47fd98bc14f7` | ⚠️ Unaudited |
| L1Coordinator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x064d9aea351205c01da2270ffe19c8e4ca91904b` | ⚠️ Unaudited |
| L1PoolManagerProxy | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-227594 | `0x54f2dec216dffb9174edb0d53910bada5227a14d` | ⚠️ Unaudited |
| LBPMigrationRouter | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 4 deployments: gnosis `0xcb3fe6cc529101af5880a05429729f967501c9e7`; gnosis `0xf9309a99836b5f07a2440c177c049b0f0a9a2c33`; arbitrum `0x99364f84d1c68d87aead0ce92eb47409a0c52c58`; arbitrum `0xfc2986feab34713e659da84f3b1fa32c1da95832` | ⚠️ Unaudited |
| LBPoolFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 13 deployments: optimism `0xc1a64500e035d9159c8826e982dfb802003227f0`; gnosis `0x2faa140f90f76eeeebc191f4ef4b2634be1e4e91`; gnosis `0x53eff5068a1a3b39a9157da6ef5a18d555c479ef`; gnosis `0x6ee18fbb1bbcc5cf700cd75ea1aef2bb21e3cb3f`; gnosis `0x89aa28a8d2b327cd9db4adc0f259d757f000ae66`; gnosis `0xa59f164d6cf6ee5d63580c0bcea5ccb2e50b908c`; gnosis `0xa9aeeb57efe61338c0d07f3e5bb82519c4ad1103`; gnosis `0xc19f5ff2fef08196e9f43448a9ce296e447a4820`; arbitrum `0x4bb42f71cab7bd13e9f958da4351b9fa2d3a42ff`; arbitrum `0x8d217cb74f675b46cc2767c8cf0aab53be1c4818`; arbitrum `0xf9309a99836b5f07a2440c177c049b0f0a9a2c33`; avalanche `0x25ea7b202cd8447e8e6f4a7c59b19c66dfef1925`; avalanche `0x3beb058de1a25dd24223fd9e1796df8589429ace` | ⚠️ Unaudited |
| LiquidityBootstrappingPoolFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x751a0bc0e3f75b38e01cf25bfce7ff36de1c87de` | ⚠️ Unaudited |
| LiquidityGaugeFactory | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x4e7bbd911cf1efa442bc1b2e9ea01ffe785412ec`; ethereum `0xf1665e19bc105be4edd3739f88315cc699cc5b65` | ⚠️ Unaudited |
| ManagedPoolAddRemoveTokenLib | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | 5 deployments: optimism `0xf24917fb88261a37cc57f686ebc831a5c0b9fd39`; polygon `0xe42ffa682a26ef8f25891db4882932711d42e467`; fraxtal `0x6b5da774890db7b7b96c6f44e6a4b0f657399e2e`; base `0xb19382073c7a0addbb56ac6af1808fa49e377b75`; arbitrum `0xf24917fb88261a37cc57f686ebc831a5c0b9fd39` | ⚠️ Unaudited |
| ManagedPoolAmmLib | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | 2 deployments: fraxtal `0x043a2dad730d585c44fb79d2614f295d2d625412`; base `0x7d2248f194755dca9a1887099394f39476d28c9a` | ⚠️ Unaudited |
| ManagedPoolFactory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | 5 deployments: optimism `0x956ccab09898c0af2aca5e6c229c3ad4e93d9288`; polygon `0x9ac3e70db606659bf32d4bdfbb687ad193fd1f5b`; fraxtal `0x7a2535f5fb47b8e44c02ef5d9990588313fe8f05`; base `0x9a62c91626d39d0216b3959112f9d4678e20134d`; arbitrum `0x956ccab09898c0af2aca5e6c229c3ad4e93d9288` | ⚠️ Unaudited |
| MasterChefRewardHook | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x6a29cfd8a5f666a7d69da9437cd4c46616326815`; ethereum `0x9593062b34db348d604d972090242106de7b6560`; ethereum `0xb5932c9cfde9adda6d578fa168d7f8d2688b84da`; ethereum `0xf8dbcfe5203c000e5dc4e2bc828b15eb4a05800e` | ⚠️ Unaudited |
| MerkleOrchard | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 8 deployments: ethereum `0xdae7e32adc5d490a43ccba1f0c736033f2b4efca`; polygon `0x4fb47126fa83a8734991e41b942ac29a3266c968`; polygon `0x5cf4928a3205728bd12830e1840f7db85c62a4b9`; polygon `0x9805dcfd25e6de36bad8fe9d3fe2c9b44b764102`; polygon `0x9da18982a33fd0c7051b19f0d7c76f2d5e7e017c`; polygon `0xc3ccace87f6d3a81724075adcb5ddd85a8a1bb68`; polygon `0xe3881627b8deebccf9c23b291430a549fc0be5f7`; arbitrum `0x9805dcfd25e6de36bad8fe9d3fe2c9b44b764102` | ⚠️ Unaudited |
| MevCaptureHook | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 4 deployments: optimism `0x3630d26e51c03026f4f063d69d65f8e234eeaf5b`; gnosis `0xa1d0791a41318c775707c56eae247af81a05322c`; arbitrum `0x5b42ec6d40f7b7965be5308c70e2603c0281c1e9`; avalanche `0x6ead84af26e997d27998fc9f8614e8a19bb93938` | ⚠️ Unaudited |
| MockERC4626Token | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x4638ab64022927c9bd5947607459d13f57f1551c` | ⚠️ Unaudited |
| MockGearboxDieselToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xb521dd5c8e13fe202626cac98873fea2b7760ce4` | ⚠️ Unaudited |
| MockGearboxVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x79e435875ccee3cd9e8da23fe34f9a011d05ea6c` | ⚠️ Unaudited |
| MockStaticAToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | 5 deployments: ethereum `0x98c57b03654575682fae7fb19da19130318bd65d`; ethereum `0xba54bb8a7e0eefe160164d00c06a4f2ee8459a5f`; ethereum `0xf9f5e0f3f74f57755a8c8be7b2fedcaa40673080`; gnosis `0x5cf4928a3205728bd12830e1840f7db85c62a4b9`; base `0x698caed853be9cea96c268f565e2b61d3b2bcda4` | ⚠️ Unaudited |
| MockVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | 4 deployments: optimism `0xe3881627b8deebccf9c23b291430a549fc0be5f7`; gnosis `0x043a2dad730d585c44fb79d2614f295d2d625412`; polygon `0x6b5da774890db7b7b96c6f44e6a4b0f657399e2e`; arbitrum `0x4fb47126fa83a8734991e41b942ac29a3266c968` | ⚠️ Unaudited |
| NoProtocolFeeLiquidityBootstrappingPoolFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 4 deployments: ethereum `0x0f3e0c4218b7b0108a3643cfe9d3ec0d4f57c54e`; gnosis `0x85a80afee867adf27b50bdb7b76da70f1e853062`; fraxtal `0x956ccab09898c0af2aca5e6c229c3ad4e93d9288`; base `0x0c6052254551eae3ecac77b01dfcf1025418828f` | ⚠️ Unaudited |
| NullVotingEscrow | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | 8 deployments: optimism `0xc3ccace87f6d3a81724075adcb5ddd85a8a1bb68`; gnosis `0x013d4382f291be5688afbcc741ee8a24c66b2c92`; polygon `0x1311fbc9f60359639174c1e7cc2032dbdb5cc4d1`; polygon `0x311334883921fb1b813826e585df1c2be4358615`; polygon `0xad89051bed8d96f045e8912ae1672c6c0bf8a85e`; fraxtal `0x5cf4928a3205728bd12830e1840f7db85c62a4b9`; base `0x475d18169be8a89357a9ee3ab00ca386d20fa229`; arbitrum `0x9da18982a33fd0c7051b19f0d7c76f2d5e7e017c` | ⚠️ Unaudited |
| OptimismBridgeSender | unknown | project_anchor | own_supporting | 0 | optimism | unit-227606 | `0x0451255563e2aca170b2552111837572e7a0bacd` | ⚠️ Unaudited |
| OptimismBridgeSender | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 4 deployments: optimism `0x25d03062d994e358a8a90b93a19bed1d989f5e3f`; optimism `0x7e702e51142eb7658ce4ce734c9bdec74250f265`; optimism `0x8d803f7f7e26e586ee90e5a872cf7830e21f7727`; base `0xc83da60a38a4163790b159345493101d72782549` | ⚠️ Unaudited |
| OptimismRootGaugeFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x3083a1c455ff38d39e58dbac5040f465cf73c5c8`; ethereum `0x866d4b65694c66fbfd15dd6fa933d0a6b3940a36` | ⚠️ Unaudited |
| PolygonBridgeSender | operational_periphery | project_anchor | own_supporting | 0 | polygon | unit-227671 | `0x25e7c574c4016e09f608971f97c3b09a6cf4f669` | ⚠️ Unaudited |
| PolygonBridgeSender | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x8ba9715a61220a8a65b50148562de1d845fdf8e0` | ⚠️ Unaudited |
| PolygonRootGaugeFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x4c4287b07d293e361281bceee8715c8cdeb64e34`; ethereum `0xa98bce70c92ad2ef3288dbcd659bc0d6b62f8f13` | ⚠️ Unaudited |
| PoolFeeManagerProxy | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd0521c061958324d06b8915ffdac3db22c8bd687` | ⚠️ Unaudited |
| PoolManagerLite | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0xf24074a1a6ad620adc14745f9cc1fb1e7ba6ca71` | ⚠️ Unaudited |
| PoolManagerProxy | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x16a04e58a77ab1ce561a37371dfb479a8594947a`; ethereum `0x2c809ec701c088099c911af9ddfa4a1db6110f3c`; ethereum `0xdc0a7fd94c089ce06ec0ff76e0c771c4f60ee65c` | ⚠️ Unaudited |
| PoolManagerSecondaryProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x153dfc50f7a93c4f3d049c105dde9786d3cfc72a`; ethereum `0xa72932aea1392b0da9edc34178da2b29ece2de54`; ethereum `0xdc274f4854831fed60f9eca12cacbd449134cf67` | ⚠️ Unaudited |
| PoolManagerV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0xaa83d1682a7f489eeec5fb5c8175856c993102ed`; ethereum `0xb58eb197c35157e6f3351718c4c387d284562be5`; ethereum `0xf843f61508fc17543412de55b10ed87f4c28de50` | ⚠️ Unaudited |
| PoolManagerV4 | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6d3a388e310aaa498430d1fe541d6d64ddb423de` | ⚠️ Unaudited |
| PoolMigrator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x12adde99768a82871eaaecfbdb065b12c56f0578`; ethereum `0x7a04e7b2c01f956575178db6d674d33d8d67188f` | ⚠️ Unaudited |
| PoolPauseHelper | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 8 deployments: optimism `0x136f1efcc3f8f88516b9e94110d56fdbfb1778d1`; optimism `0x16b50f6bf8c8ca73c07e17762188c5deee7ae5db`; gnosis `0x64b7dfe8a3972639712efa124d180dc3ff0f5bcf`; gnosis `0xdaa273aeec06e9ccb7428a77e2abb1e4659b16d2`; arbitrum `0x1780e8185199dac45284039bb3e3b64060d943ab`; arbitrum `0x9d2917e41b705bf58bd28e5422230883bbe3f521`; avalanche `0x30ff095e22dda9751b5e1a67928611dcb6308d7e`; avalanche `0x891ec9b34829276a9a8ef2f8a9ceaf2486017e0d` | ⚠️ Unaudited |
| PoolRecoveryHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 5 deployments: ethereum `0x1b300c86980a5195bcf49bd419a068d98dc133db`; ethereum `0xcd59e55f3879b915184e96db3806be2abc7fb266`; gnosis `0xc3ccace87f6d3a81724075adcb5ddd85a8a1bb68`; fraxtal `0x76578ecf9a141296ec657847fb45b0585bcda3a6`; base `0x03f3fb107e74f2eac9358862e91ad3c692712054` | ⚠️ Unaudited |
| PoolSwapFeeHelper | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | 14 deployments: optimism `0x1cd776897ef4f647bf8241ec69549e4a9cb1d608`; optimism `0x355bd33f0033066bb3de396a6d069be57353ad95`; optimism `0xbdbadc891bb95dee80ebc491699228ef0f7d6ff1`; gnosis `0x03cbccbe8d2073a1dc186ae6bcd95390fcdff36f`; gnosis `0x2b432b08679d17f8a4db785544c406bc0f47f290`; gnosis `0x56c8d8f7f926e0fb04a2cf05f18b44b2c5864aeb`; polygon `0x18cc3c68a5e64b40c846aa6e45312cbcbb94f71b`; fraxtal `0xdb8d758bcb971e482b2c45f7f8a7740283a1bd3a`; arbitrum `0x5939ab16fdf1991b0ef603c639b6b501a7841fab`; arbitrum `0xb96524227c4b5ab908fc3d42005fe3b07aba40e9`; arbitrum `0xdada7be438bdd89416f4802b679e320b15c92d49`; avalanche `0x9d2917e41b705bf58bd28e5422230883bbe3f521`; avalanche `0xb21a277466e7db6934556a1ce12eb3f032815c8a`; avalanche `0xb96524227c4b5ab908fc3d42005fe3b07aba40e9` | ⚠️ Unaudited |
| ProtocolFeeController | governance | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 4 deployments: optimism `0xdb8d758bcb971e482b2c45f7f8a7740283a1bd3a`; base `0x2ff226cd12c80511a641a6101f071d853a4e5363`; avalanche `0x3630d26e51c03026f4f063d69d65f8e234eeaf5b`; avalanche `0x9da18982a33fd0c7051b19f0d7c76f2d5e7e017c` | ⚠️ Unaudited |
| ProtocolFeeControllerMigration | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x1b6f057520b4e826271d47b8bdab98e35af17e59` | ⚠️ Unaudited |
| ProtocolFeeHelper | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 8 deployments: optimism `0x774cb66e2b2db59a9daf175e9b2b7a142e17eb94`; optimism `0xcc267d25576b48f08a90c3605624ab62a73a7a4e`; gnosis `0x6eaff7b851a065920db71d17b10572d4617872c3`; gnosis `0xcc267d25576b48f08a90c3605624ab62a73a7a4e`; arbitrum `0x30ff095e22dda9751b5e1a67928611dcb6308d7e`; arbitrum `0xea692068ccf15b9560f9a694162b3f0a0fb8a687`; avalanche `0xa1d0791a41318c775707c56eae247af81a05322c`; avalanche `0xcf7608f0136db42fdec021f755bd66406f29158c` | ⚠️ Unaudited |
| ProtocolFeePercentagesProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x97207b095e4d5c9a6e4cfbfcd2c3358e03b90c4a`; fraxtal `0xf23b4db826dba14c0e857029dff076b1c0264843`; base `0xded7fef7d8ecdcb74f22f0169e1a9ec696e6695d` | ⚠️ Unaudited |
| ProtocolFeeSweeper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 9 deployments: optimism `0x4cb42fc3b5fb9392ce0772c3a540e4ae4da4ac4d`; optimism `0x86e67e115f96df37239e0479441303de0de7bc2b`; gnosis `0x1bca39b01f451b0a05d7030e6e6981a73b716b1c`; gnosis `0x5939ab16fdf1991b0ef603c639b6b501a7841fab`; arbitrum `0x136f1efcc3f8f88516b9e94110d56fdbfb1778d1`; arbitrum `0x3beb058de1a25dd24223fd9e1796df8589429ace`; avalanche `0x5b42ec6d40f7b7965be5308c70e2603c0281c1e9`; avalanche `0x662112b8cb18889e81459b92ca0f894a2ef2c1b8`; avalanche `0xb9d01ca61b9c181da1051bfdd28e1097e920ab14` | ⚠️ Unaudited |
| ProtocolFeesWithdrawer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x5ef4c5352882b10893b70dbcaa0c000965bd23c5`; ethereum `0x8c8951476529b0710cd878d3318cf64b475654a7`; fraxtal `0x85a80afee867adf27b50bdb7b76da70f1e853062`; base `0xacf05be5134d64d150d153818f8c67ee36996650` | ⚠️ Unaudited |
| ProtocolIdRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 6 deployments: optimism `0x9805dcfd25e6de36bad8fe9d3fe2c9b44b764102`; gnosis `0x6b5da774890db7b7b96c6f44e6a4b0f657399e2e`; polygon `0xa523f47a933d5020b23629ddf689695aa94612dc`; fraxtal `0x9dd5db2d38b50bef682ce532bcca5dfd203915e1`; base `0x682f0ddbfd41d1272982f64a499fb62d80e27589`; arbitrum `0x5cf4928a3205728bd12830e1840f7db85c62a4b9` | ⚠️ Unaudited |
| RAuraRedemption | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc44d3604a332b71e2e6a87a714614a505ee88bc8` | ⚠️ Unaudited |
| ReClammPoolFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 8 deployments: optimism `0x0b11209b8c5e821b18ded147583b8978c3e63911`; optimism `0x891ec9b34829276a9a8ef2f8a9ceaf2486017e0d`; gnosis `0x1780e8185199dac45284039bb3e3b64060d943ab`; gnosis `0xc86ef81e57492be65bfca9b0ed53dcbafdbe6100`; arbitrum `0x355bd33f0033066bb3de396a6d069be57353ad95`; arbitrum `0xa1d0791a41318c775707c56eae247af81a05322c`; avalanche `0x1cd776897ef4f647bf8241ec69549e4a9cb1d608`; avalanche `0x309abcaefa19ca6d34f0d8ff4a4103317c138657` | ⚠️ Unaudited |
| RecoveryModeHelper | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | 2 deployments: fraxtal `0x013d4382f291be5688afbcc741ee8a24c66b2c92`; base `0x313a8d36b1d90a4cba3a505fdc3480c3870be053` | ⚠️ Unaudited |
| RefundLogic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2433477a10fc5d31b9513c638f19ee85caed53fd` | ⚠️ Unaudited |
| RewardFactory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x45aad11f2fa2c215bc9686eb6f06d46e0474f356`; ethereum `0xbc8d9caf4b6bf34773976c5707ad1f2778332dca`; ethereum `0xf6b287ab618d7a6ec07f28421376bdfac7f5a37d`; fraxtal `0xc24fa5948a2a356b6a7e20d08e7a5edc3697b7ac` | ⚠️ Unaudited |
| RewardFactory | registry | project_anchor | own_supporting | 0 | optimism | unit-227612 | `0x2f4cdf0d46f4e3e6d4d37836e73073046138d4f7` | ⚠️ Unaudited |
| RewardFactory | registry | project_anchor | own_supporting | 0 | gnosis | unit-227634 | `0x0f641b291ba374ec9b17a878c54b98005a0bacae` | ⚠️ Unaudited |
| RewardFactory | registry | project_anchor | own_supporting | 0 | polygon | unit-227703 | `0xb292be31649a0b079dbdb772fcf5c7a02a6e0144` | ⚠️ Unaudited |
| RewardFactory | registry | project_anchor | own_supporting | 0 | base | unit-227804 | `0x334df252cc0c44c37ba85dbeaa9c230c3f22f6b0` | ⚠️ Unaudited |
| RewardFactory | registry | project_anchor | own_supporting | 0 | arbitrum | unit-227743 | `0xda2e6ba0b1abbca925b70e9747afbd481c16e7db` | ⚠️ Unaudited |
| RewardPoolDepositWrapper | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb188b1cb84fb0ba13cb9ee1292769f903a9fec59` | ⚠️ Unaudited |
| RewardPoolDepositWrapper | core_logic | project_anchor | own_supporting | 0 | gnosis | unit-227635 | 5 deployments: optimism `0x51b6e0ac6d6435650748513c71db453f96749fe1`; gnosis `0x0fec3d212bcc29ef3e505b555d7a7343df0b7f76`; polygon `0xce66e8300dc1d1f5b0e46e9145fdf680a7e41146`; base `0xa9952c914d86f896c53bf17125c4104cc058008e`; arbitrum `0x6b02fefd2f2e06f51e17b7d5b8b20d75fd6916be` | ⚠️ Unaudited |
| Router | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 7 deployments: optimism `0xe2fa4e1d17725e72dcdafe943ecf45df4b9e285b`; gnosis `0x4eff2d77d9ffbaefb4b141a3e494c085b3ff4cb5`; gnosis `0x84813aa3e079a665c0b80f944427ee83cba63617`; arbitrum `0x0f08eef2c785aa5e7539684af04755dec1347b7c`; arbitrum `0xeaedc32a51c510d35ebc11088fd5ff2b47aacf2e`; avalanche `0x4bdcc2fb18aeb9e2d281b0278d946445070eada7`; avalanche `0xf39ca6ede9bf7820a952b52f3c94af526bab9015` | ⚠️ Unaudited |
| SidechainClaimZap | adapter | project_anchor | own_supporting | 0 | optimism | unit-227619 | 3 deployments: optimism `0x617963d46b882ece880ab18bc232f513e91fdd47`; polygon `0x617963d46b882ece880ab18bc232f513e91fdd47`; arbitrum `0x617963d46b882ece880ab18bc232f513e91fdd47` | ⚠️ Unaudited |
| SidechainClaimZap | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x4ea38a5739d467f7f84c06155ee2ad745e5328e8` | ⚠️ Unaudited |
| SidechainView | unknown | project_anchor | own_supporting | 0 | gnosis | unit-227640 | `0x421dbf836b903b15ba09c40553ad305d22275482` | ⚠️ Unaudited |
| SidechainView | unknown | project_anchor | own_supporting | 0 | polygon | unit-227708 | `0xea865d0dacf923c8d6254de734f31294ca74c1dc` | ⚠️ Unaudited |
| SidechainView | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | 3 deployments: fraxtal `0x1ba3dbd572b1b7aa3445fa51492bfc644c67ad0f`; base `0x491c07c86d46a11573b5d2d509e6bc825d41fb6e`; base `0xe14360aa496a85fcfe4b75afd2ec4d95cba38fe1` | ⚠️ Unaudited |
| SingleRecipientGaugeFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x94f68b54191f62f781fe8298a8a5fa3ed772d227` | ⚠️ Unaudited |
| SiphonToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 5 deployments: ethereum `0x71061c238ea7736d3709e801d61e09423e4be4ad`; ethereum `0xa348a39a98418dd78b242e2fd7b14e18ac080e75`; ethereum `0xbb7a6ec509d42177c100273b4cd785816daf8e4f`; ethereum `0xc9307d63b3709f537d2158f43199a69682ff0967`; ethereum `0xfeda1cda61c7f066d19b774599a2de6e516129e8` | ⚠️ Unaudited |
| SmartWalletChecker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7869296efd0a76872fee62a058c8fbca5c1c826c` | ⚠️ Unaudited |
| SmartWalletCheckerCoordinator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x26575a44755e0aaa969fdda1e4291df22c5624ea` | ⚠️ Unaudited |
| SNXRecoveryCoordinator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x56a1baf2f7a163ce66067f0062da60930dd0cb31` | ⚠️ Unaudited |
| StableLPOracleFactory | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 12 deployments: optimism `0xa0de078cd5cfa7088821b83e0bd7545ccfb7c883`; optimism `0xb96524227c4b5ab908fc3d42005fe3b07aba40e9`; optimism `0xc4c4940dc7c57df46d3a217647db1649721cf468`; gnosis `0x4efcd8bce8ac9b94bd76648e2c85bef6c40f3228`; gnosis `0xbf94192c652183c0f50056417f4d04810329f12c`; gnosis `0xfa80c17ee7e382c9c541bfa4bea0514e46dccba5`; arbitrum `0x816e90dc85bf016455017a76bc09cc0451eeb308`; arbitrum `0xa59f164d6cf6ee5d63580c0bcea5ccb2e50b908c`; arbitrum `0xc09244c585f59cb61cfb08e4fe7a560cd448834b`; avalanche `0x254f3a2974b97dc2e675f6115c845567c55f83b0`; avalanche `0x4eff2d77d9ffbaefb4b141a3e494c085b3ff4cb5`; avalanche `0x5939ab16fdf1991b0ef603c639b6b501a7841fab` | ⚠️ Unaudited |
| StablePhantomPoolFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb08e16cfc07c684daa2f93c70323badb2a6cbfd2` | ⚠️ Unaudited |
| StablePoolFactory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 12 deployments: ethereum `0x8df6efec5547e31b0eb7d1291b511ff8a2bf987c`; optimism `0x1780e8185199dac45284039bb3e3b64060d943ab`; optimism `0x268e2ee1413d768b6e2dc3f5a4ddc9ae03d9af42`; gnosis `0x22625eedd92c81a219a83e1dc48f88d54786b017`; gnosis `0x9338f9484120fdfe8f8abea8e5d6d9d8d055962d`; gnosis `0xf23b4db826dba14c0e857029dff076b1c0264843`; base `0xc49ca921c4cd1117162eaeec0ee969649997950c`; arbitrum `0x1fc7f1f84cfe61a04224ac8d3f87f56214fec08c`; arbitrum `0xeb1eeabf0126d813589c3d2cfeffe410d9ae3863`; avalanche `0x16b50f6bf8c8ca73c07e17762188c5deee7ae5db`; avalanche `0x1702067424096f07a60e62ccee3de9420068492d`; avalanche `0xeaedc32a51c510d35ebc11088fd5ff2b47aacf2e` | ⚠️ Unaudited |
| StableSurgeHook | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 5 deployments: optimism `0xf39ca6ede9bf7820a952b52f3c94af526bab9015`; gnosis `0x90bd26fbb9db17d75b56e4ca3a4c438fa7c93694`; arbitrum `0x7c1b7a97bfacd39975de53e989a16c7bc4c78275`; avalanche `0x86705ee19c0509ff68f1118c55ee2ebde383d122`; avalanche `0xad89051bed8d96f045e8912ae1672c6c0bf8a85e` | ⚠️ Unaudited |
| StableSurgePoolFactory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 11 deployments: optimism `0x3beb058de1a25dd24223fd9e1796df8589429ace`; optimism `0xfd214210587fb84798cbe7f37235e12898f3128f`; gnosis `0x268e2ee1413d768b6e2dc3f5a4ddc9ae03d9af42`; gnosis `0x45fb5af0a1ad80ea16c803146eb81844d9972373`; gnosis `0x59d55fa503faea8d95935a561f34153c273255dd`; arbitrum `0x201efd508c8dfe9de1a13c2452863a78cb2a86cc`; arbitrum `0x86e67e115f96df37239e0479441303de0de7bc2b`; arbitrum `0x8a8b9f35765899b3a0291700141470d79ea2ea88`; avalanche `0x18cc3c68a5e64b40c846aa6e45312cbcbb94f71b`; avalanche `0x311334883921fb1b813826e585df1c2be4358615`; avalanche `0x8d217cb74f675b46cc2767c8cf0aab53be1c4818` | ⚠️ Unaudited |
| StashFactoryV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x54da426efbb93fbab5cf81bef03f9b9f00a3e915`; ethereum `0x95171c9ef5ca540a6d3502e9547fcfe022458eb5`; ethereum `0xafd8904819add7a74483de8d9140fd9312a3a5a8` | ⚠️ Unaudited |
| StashRewardDistro | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x2db7d4f89de7ac7fbb31422d51ec3a7c7aa15f9c`; ethereum `0x74d2e022d38f630309a9024c4c993a3f72241298`; ethereum `0xd3a5b62a89e3f5cc61e29f5b7549c83564f998f1`; fraxtal `0xb82434c7506b27c226564d6ef6ac9ddcb03e8bd3` | ⚠️ Unaudited |
| TimelockAuthorizerMigrator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x657dee983987e1a79a996d972fe68411aef05e8d`; ethereum `0x67ae4cd9cb293f89b3e0109250962830d351ab53`; ethereum `0xf8ee6f1f9b54f9b2c192d703ea2d22112cbc062b`; ethereum `0xfbf475f236b58a1f2c0a98bcf29033ef4c30bd7c` | ⚠️ Unaudited |
| TkMrsR | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcf0a32bbef8f064969f21f7e02328fb577382018` | ⚠️ Unaudited |
| TokenFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x3ec040dbf7d953216f4c89a2e665d5073445f5ba`; ethereum `0x6537be8aea629afcfc22a7804c27ff19abc2df78`; ethereum `0xb6ce51dee8bd4a2fd11c01205414dc26f0b453ac`; fraxtal `0x87299312c820607f1e7e4d0c6715ceb594306fe9` | ⚠️ Unaudited |
| TreasuryLend | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x04dd97255ddee29c941d85f5b5cde6ace8bd207f` | ⚠️ Unaudited |
| TreasuryManager | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xeb8121b44a290ee16981d87b92fc16b2366de6b3` | ⚠️ Unaudited |
| TreasurySwap | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa25b17d7deee59f9e326e45cc3c0c1b158e74316` | ⚠️ Unaudited |
| TribeBALMinterCoordinator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x34ac9f7eba9213c827fe5abf5b09a16f4d0cc69b` | ⚠️ Unaudited |
| UnbalancedAddViaSwapRouter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 4 deployments: optimism `0x03cbccbe8d2073a1dc186ae6bcd95390fcdff36f`; gnosis `0xefb3878e07dfa9bd7ed56f2f4ec82c32e51a9575`; arbitrum `0xbf94192c652183c0f50056417f4d04810329f12c`; avalanche `0x6623d1ceeab236ae93acafb285ddfb77336b6981` | ⚠️ Unaudited |
| Utilities | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf37c41ef2281893b5971769370d6cdd35864b503` | ⚠️ Unaudited |
| VaultExplorer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | 9 deployments: optimism `0x1311fbc9f60359639174c1e7cc2032dbdb5cc4d1`; optimism `0xeaedc32a51c510d35ebc11088fd5ff2b47aacf2e`; gnosis `0x0c8f71d19f87c0bd1b9bad2484ecc3388d5dbb98`; gnosis `0x7f4c133e44381d05129f9b81bad8fa9f3345d29b`; arbitrum `0x22625eedd92c81a219a83e1dc48f88d54786b017`; arbitrum `0xb9d01ca61b9c181da1051bfdd28e1097e920ab14`; avalanche `0x0f08eef2c785aa5e7539684af04755dec1347b7c`; avalanche `0x4cb42fc3b5fb9392ce0772c3a540e4ae4da4ac4d`; avalanche `0x6b5da774890db7b7b96c6f44e6a4b0f657399e2e` | ⚠️ Unaudited |
| VaultFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 3 deployments: optimism `0x1702067424096f07a60e62ccee3de9420068492d`; avalanche `0x9805dcfd25e6de36bad8fe9d3fe2c9b44b764102`; avalanche `0xc3ccace87f6d3a81724075adcb5ddd85a8a1bb68` | ⚠️ Unaudited |
| veBALDeploymentCoordinator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xeb151668006cd04dadd098afd0a82e78f77076c3` | ⚠️ Unaudited |
| veBALGaugeFixCoordinator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xee47ef369cda5a65639d7794b70a4d247826ddf3` | ⚠️ Unaudited |
| VeBalGrant | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x89f67f3054bfd662971854190dbc18dcabb416f6` | ⚠️ Unaudited |
| veBALL2GaugeSetupCoordinator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd13afc362f619b840c8f4aac1d957ce219ef37ca` | ⚠️ Unaudited |
| VirtualBalanceRewardPool | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xac16927429c5c7af63dd75bc9d8a58c63ffd0147` | ⚠️ Unaudited |
| VirtualRewardFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x5918f576d4728cf045be29272b6585883a68bfcf`; ethereum `0x64e2df8e5463f8c14e1c28c9782f7b4b6062b2c3`; ethereum `0xdd8e702404dcf472583ad03578be015b4fa2f27b` | ⚠️ Unaudited |
| VirtualRewardFactory | registry | project_anchor | own_supporting | 0 | polygon | unit-227665 | 3 deployments: polygon `0x05589cbbe1cc0357986df6de4031b953819079c2`; base `0x05589cbbe1cc0357986df6de4031b953819079c2`; arbitrum `0x05589cbbe1cc0357986df6de4031b953819079c2` | ⚠️ Unaudited |
| VoterProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x42b047d1c751a871e61ec77bfde5fbbf2ce053ee`; ethereum `0xaf52695e1bb01a16d33d7194c28c42b10e0dbec2` | ⚠️ Unaudited |
| VoterProxyLite | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0xc181edc719480bd089b94647c2dc504e2700a2b0` | ⚠️ Unaudited |
| VotingEscrowDelegationProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 7 deployments: ethereum `0x6f5a2ee11e7a772aeb5114a20d0d7c0ff61eb8a0`; optimism `0x9da18982a33fd0c7051b19f0d7c76f2d5e7e017c`; gnosis `0x7a2535f5fb47b8e44c02ef5d9990588313fe8f05`; polygon `0x0f08eef2c785aa5e7539684af04755dec1347b7c`; fraxtal `0xe3881627b8deebccf9c23b291430a549fc0be5f7`; base `0xd87f44df0159dc78029ab9ca7d7e57e7249f5acd`; arbitrum `0x81cfae226343b24ba12ec6521db2c79e7aeeb310` | ⚠️ Unaudited |
| Vyper_contract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 23 deployments: ethereum `0x2e96068b3d5b5bae3d7515da4a1d2e52d08a2647`; ethereum `0x3b8ca519122cdd8efb272b0d3085453404b25bd0`; ethereum `0x44a41fe82c9539c1aadabee5b9c3f327eba5c8a3`; ethereum `0x575ccd8e2d300e2377b43478339e364000318e2c`; ethereum `0x5f3b5dfeb7b28cdbd7faba78963ee202a494e2a2`; ethereum `0x64e3c23bfc40722d3b649844055f1d51c1ac041d`; ethereum `0x67f8df125b796b05895a6dc8ecf944b9556ecb0b`; ethereum `0x705350c4bcd35c9441419ddd5d2f097d7a55410f`; ethereum `0x7ca5b0a2910b33e9759dc7ddb0413949071d7575`; ethereum `0xa0dabebaad1b243bbb243f933013d560819eb66f`; ethereum `0xa90996896660decc6e997655e065b23788857849`; ethereum `0xb1f2cdec61db658f091671f5f199635aef202cac`; ethereum `0xbc89cd85491d81c6ad2954e6d0362ee29fca8f53`; ethereum `0xc128468b7ce63ea702c1f104d55a2566b13d3abd`; ethereum `0xc128a9954e6c874ea3d62ce62b468ba073093f25`; ethereum `0xd061d61a4d941c39e5453435b6345dc261c2fce0`; ethereum `0xd533a949740bb3306d119cc777fa900ba034cd52`; ethereum `0xe5f96070ca00cd54795416b1a4b4c2403231c548`; optimism `0x81cfae226343b24ba12ec6521db2c79e7aeeb310`; gnosis `0x96484f2abf5e58b15176dbf1a799627b53f13b6d`; polygon `0xc9b36096f5201ea332db35d6d195774ea0d5988f`; polygon `0xeb1eeabf0126d813589c3d2cfeffe410d9ae3863`; arbitrum `0xa523f47a933d5020b23629ddf689695aa94612dc` | ⚠️ Unaudited |
| WardenQuestScheduler | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x3fcb0cc19c41e9d2db3b9764032cd457baa2fb47`; ethereum `0xa7f21dabf9ffd5f55f57c4f05677d877ce0e6633` | ⚠️ Unaudited |
| WeightedLPOracleFactory | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 12 deployments: optimism `0x6ee18fbb1bbcc5cf700cd75ea1aef2bb21e3cb3f`; optimism `0x718e1176f01ddbb2409a77b2847b749c8df4457f`; optimism `0xeb2bb012869255f8c622563dc4c3afa8619fe804`; gnosis `0x187a05fb9e4234dd310ae74215743560d1baa6ac`; gnosis `0x332694ef46d880df6ea9593e04cb8abee5f81d99`; gnosis `0x8a8b9f35765899b3a0291700141470d79ea2ea88`; arbitrum `0x2faa140f90f76eeeebc191f4ef4b2634be1e4e91`; arbitrum `0x7f4c133e44381d05129f9b81bad8fa9f3345d29b`; arbitrum `0xa9aeeb57efe61338c0d07f3e5bb82519c4ad1103`; avalanche `0x0e800d8d2e8b4694610aedc385aa6d763492b106`; avalanche `0x397bc40ba584e651f4f5cf4ae089f0130569a1c7`; avalanche `0x9958317b80ee5f10457017d54c2484d722059157` | ⚠️ Unaudited |
| WeightedPool2Tokens | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5c6ee304399dbdb9c8ef030ab642b10820db8f56` | ⚠️ Unaudited |
| WeightedPoolFactory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 14 deployments: ethereum `0x5dd94da3644ddd055fcf6b3e1aa310bb7801eb8b`; ethereum `0x8e9aa87e45e92bad84d5f8dd1bff34fb92637de9`; ethereum `0xcc508a455f5b0073973107db6a878ddbdab957bc`; optimism `0x0f08eef2c785aa5e7539684af04755dec1347b7c`; optimism `0x254f3a2974b97dc2e675f6115c845567c55f83b0`; gnosis `0x78ad1e1c10033b18ceaa20088e4e490be42a5417`; gnosis `0xeb1eeabf0126d813589c3d2cfeffe410d9ae3863`; fraxtal `0x9da18982a33fd0c7051b19f0d7c76f2d5e7e017c`; base `0x4c32a8a8fda4e24139b51b456b42290f51d6a1c4`; arbitrum `0x83bf399fa3dc49af8fb5c34031a50c7c93f56129`; arbitrum `0xd961e30156c2e0d0d925a0de45f931cb7815e970`; avalanche `0x7ba29fe8e83dd6097a7298075c4affdbda3121cc`; avalanche `0xbdbadc891bb95dee80ebc491699228ef0f7d6ff1`; avalanche `0xd961e30156c2e0d0d925a0de45f931cb7815e970` | ⚠️ Unaudited |
| WindDownCoordinator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9d53f0d2ecebc84e9114259f6084d01fb46150dc` | ⚠️ Unaudited |
| WstETHRateProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x72d07d7dca67b8a406ad1ec34ce969c90bfee768` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (4)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| BoosterLite | core_logic | project_anchor | own_supporting | 0 | optimism | unit-227625 | 6 deployments: optimism `0x98ef32edd24e2c92525e59afc4475c1242a30184`; gnosis `0x98ef32edd24e2c92525e59afc4475c1242a30184`; polygon `0x98ef32edd24e2c92525e59afc4475c1242a30184`; base `0x98ef32edd24e2c92525e59afc4475c1242a30184`; arbitrum `0x98ef32edd24e2c92525e59afc4475c1242a30184`; avalanche `0x98ef32edd24e2c92525e59afc4475c1242a30184` | ✅ Audited (bytecode match) |
| AuraOFT | unknown | project_anchor | own_supporting | 0 | optimism | unit-227608 | 6 deployments: optimism `0x1509706a6c66ca549ff0cb464de88231ddbe213b`; gnosis `0x1509706a6c66ca549ff0cb464de88231ddbe213b`; polygon `0x1509706a6c66ca549ff0cb464de88231ddbe213b`; base `0x1509706a6c66ca549ff0cb464de88231ddbe213b`; arbitrum `0x1509706a6c66ca549ff0cb464de88231ddbe213b`; avalanche `0x1509706a6c66ca549ff0cb464de88231ddbe213b` | ✅ Audited (bytecode match) |
| PoolManagerLite | core_logic | project_anchor | own_supporting | 0 | optimism | unit-227632 | 6 deployments: optimism `0xf24074a1a6ad620adc14745f9cc1fb1e7ba6ca71`; gnosis `0xf24074a1a6ad620adc14745f9cc1fb1e7ba6ca71`; polygon `0xf24074a1a6ad620adc14745f9cc1fb1e7ba6ca71`; base `0xf24074a1a6ad620adc14745f9cc1fb1e7ba6ca71`; arbitrum `0xf24074a1a6ad620adc14745f9cc1fb1e7ba6ca71`; avalanche `0xf24074a1a6ad620adc14745f9cc1fb1e7ba6ca71` | ✅ Audited (bytecode match) |
| VoterProxyLite | unknown | project_anchor | own_supporting | 0 | optimism | unit-227626 | 6 deployments: optimism `0xc181edc719480bd089b94647c2dc504e2700a2b0`; gnosis `0xc181edc719480bd089b94647c2dc504e2700a2b0`; polygon `0xc181edc719480bd089b94647c2dc504e2700a2b0`; base `0xc181edc719480bd089b94647c2dc504e2700a2b0`; arbitrum `0xc181edc719480bd089b94647c2dc504e2700a2b0`; avalanche `0xc181edc719480bd089b94647c2dc504e2700a2b0` | ✅ Audited (bytecode match) |

### ⚠️ Verified by Bytecode + Unaudited (4)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| KeeperMulticall3 | operational_periphery | project_anchor | own_supporting | 0 | optimism | unit-227613 | 8 deployments: ethereum `0x817f426b5a79599464488eccf82c3f54b9330e15`; optimism `0x37aa9ad9744d0686df1c7053225e700ce13e31dd`; gnosis `0x37aa9ad9744d0686df1c7053225e700ce13e31dd`; polygon `0x37aa9ad9744d0686df1c7053225e700ce13e31dd`; base `0x37aa9ad9744d0686df1c7053225e700ce13e31dd`; base `0x5c97f09506d60b90a817eb547ea4f03ae990e798`; arbitrum `0x5c97f09506d60b90a817eb547ea4f03ae990e798`; avalanche `0x37aa9ad9744d0686df1c7053225e700ce13e31dd` | ⚠️ Unaudited (bytecode match) |
| ProxyFactory | registry | project_anchor | own_core | 0 | optimism | unit-227620 | 10 deployments: ethereum `0x7ed9003c6003eace1e8c3ae99f0bb19894377b0f`; ethereum `0xf5e2cfde016bd55bef42a5a4baad7e21cd39720d`; ethereum `0xfcdeb46a92ff6b2980b60e175c5e6523d5d4cbab`; optimism `0x731886426a3199b988194831031dfb993f25d961`; gnosis `0x731886426a3199b988194831031dfb993f25d961`; polygon `0x731886426a3199b988194831031dfb993f25d961`; fraxtal `0x731886426a3199b988194831031dfb993f25d961`; base `0x731886426a3199b988194831031dfb993f25d961`; arbitrum `0x731886426a3199b988194831031dfb993f25d961`; avalanche `0x731886426a3199b988194831031dfb993f25d961` | ⚠️ Unaudited (bytecode match) |
| SidechainClaimZap | adapter | project_anchor | own_supporting | 0 | gnosis | unit-227641 | 3 deployments: gnosis `0x4ea38a5739d467f7f84c06155ee2ad745e5328e8`; base `0x4ea38a5739d467f7f84c06155ee2ad745e5328e8`; avalanche `0x6907d13cb2af4661a491562187f3beaba4c2a017` | ⚠️ Unaudited (bytecode match) |
| TokenFactory | registry | project_anchor | own_supporting | 0 | optimism | unit-227623 | 6 deployments: optimism `0x87299312c820607f1e7e4d0c6715ceb594306fe9`; gnosis `0x87299312c820607f1e7e4d0c6715ceb594306fe9`; polygon `0x87299312c820607f1e7e4d0c6715ceb594306fe9`; base `0x87299312c820607f1e7e4d0c6715ceb594306fe9`; arbitrum `0x87299312c820607f1e7e4d0c6715ceb594306fe9`; avalanche `0x87299312c820607f1e7e4d0c6715ceb594306fe9` | ⚠️ Unaudited (bytecode match) |

### ❓ Unverified (291)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1e3b23c0b4877261310c0001b5722f3f7f875d6f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-227591 | `0x208024e643564fb4c990481eb4f9ec1957f64c11` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-227592 | `0x25e7c574c4016e09f608971f97c3b09a6cf4f669` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x269af06e6eabee70a314990feb0c814b2118e3b7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2a7d59e327759acd5d11a8fb652bf4072d28ac04` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2e1ade7233e886d8041fd7c3b87523f3ddc2169d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2e82af65f423dc1090d6d11c68bd6a8c9ee6d4c1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2f50d538606fa9edd2b11e2446beb18c9d5846bb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x41df5d28c7e801c4df0ab33421e2ed6ce52d2567` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x49640993352dddf6b628183daaf7692eb6451286` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4ac1df9d710053aaf6eae87c6b2ca138f2d4058f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4ea9317d90b61fc28c418c247ad0ca8939bbb0e9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x51493dfb75f35fdead2b5bfa6904b59aad9a37a8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x61a04f46a00d40b35c7911ca4edee601e9bddf6b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x679fcb9b33fc4ae10ff4f96caef49c1ae3f8fa67` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x69fb7c45726cfe2badee8317005d3f94be838840` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6b02fefd2f2e06f51e17b7d5b8b20d75fd6916be` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6e8f6d1da6232d5e40b0b8758a0145d6c5123eb7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x76a383895103bde55987cef54dba7a2a57b72b73` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-227598 | `0x81ba0309e9e0bbabf7f552dbfd40f1818f3fca08` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x82b5612db33b9cee01c0440bf8521b8eb98a00d4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8ba9715a61220a8a65b50148562de1d845fdf8e0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8ede18ede974288c8a6e0fad140aff271fd65d46` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x935c23dc3bd49a28b95c2c2160696010e5742446` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x94905e703fead7f0fd0eee355d267ee909784e6d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9838f48ae18c32d3aa25a81bc862eda67c273146` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x992dc423db237ab687137de500a1f88f98fc2d37` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa1f998a5775cd85f33039a9b5c29b09097d211f3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa1fa945425ed2e08acb932e000bcc2f21b21588a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa219008f38a698cc5df6074f0f147a5eab2a2ebe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb14e420b2f9fd6ed9e75fedfc7398aeaf2ddd28b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbbe35f7b1291b782d2cb00a9efb259ad53a100c7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-227604 | `0xc9e61174b8751003f493d25c2ef49794ab6b1ac7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcd54c83759d2d55238bf742611b26a65d47f9719` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcfb7cbba3aa731e5b47873b80b21185688181bdb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd2d43555134dc575bf7279f4ba18809645db0f1d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdfcea9088c8a88a76ff74892c1457c17dfeef9c1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe3997288987e6297ad550a69b31439504f513267` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe43f4606f55edfed0764a54401cd554c86af73c1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe8e4ee488363a032aa57abe2c0e8bfd6c66685b5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf22995a3ea2c83f6764c711115b23a88411cafdd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf7dbc322d72c1788a1e37eee738e2ea9c7fa875e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf8b6a90154d8ab85e543ab2fe10f94d4b20bc9af` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfa712ee4788c042e2b7bb55e6cb8ec569c4530c1` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-227773 | `0x04798c9b4546d90a97f687188d346d170298703c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-227774 | `0x0d418ea619ebf42bf9b69f4f2d26ac690b322285` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-227775 | `0x1ba3dbd572b1b7aa3445fa51492bfc644c67ad0f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-227776 | `0x2b89339c923595b8e6cc7bc87c83dbbd53f1feb4` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-227777 | `0x3743d83ecfffa802f457bd25664d537a48182da7` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-227778 | `0x51493dfb75f35fdead2b5bfa6904b59aad9a37a8` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-227779 | `0x5849b5821faf6de7b3739f7a6d73536d9ae09558` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-227780 | `0x5a739082832ff535413cebfb2468b8d6b9f22c68` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-227781 | `0x76a383895103bde55987cef54dba7a2a57b72b73` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-227782 | `0x7a7b39d47a64181750b7b45b88682ddb915a73d1` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-227783 | `0x852ad2fde4cfead5c420f6f8027dc14f877947c6` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-227784 | `0x919eeb7d8e73bd4e9addc1e81fd1ae799f0efee6` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-227785 | `0x9838f48ae18c32d3aa25a81bc862eda67c273146` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-227786 | `0xae8e14e01fa6c651a6cc4e410e8e623dfba8bd1c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-227787 | `0xbf6a1859e2503441de34197e73bd32d8f82698b0` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-227788 | `0xc1e07a89f24b39f82d7d08b9c2be5288aa42abe3` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-227789 | `0xc24fa5948a2a356b6a7e20d08e7a5edc3697b7ac` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-227790 | `0xdfa714a90d55e9524389bc5345ac2bd8abf578ee` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-227791 | `0xe00035eb901f487d2c6a16624aff093a29feed73` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-227792 | `0xe01d927481978b59e6aebb32601a4435c8a05fb8` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-227793 | `0xe4b11aa0ca5fe0d51cb2c53a4e583406fc338224` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-227794 | `0xe8a7e8c5a39996d2cf61bdfb8fd2f846b79d3099` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-227795 | `0xee6c82b8ef215e43d485b25de0b490f0f2f708bd` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-227796 | `0xf3ae2e9620d7e93e69f9f7f0a6666e5d506aa978` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-227797 | `0xf97de68ad9968a970aef9849f2b9224506b7e1f6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-227610 | `0x2863582272a424234fce76d97099acbd432acc01` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-227611 | `0x2b6c227b26bc0ace74bb12da86571179c2c8bc54` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-227615 | `0x53c09096b1dc52e2ef223b2969a714ee75da364f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-227616 | `0x57acb721fcf3d900b480a90a55191cf8f37ad478` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-227622 | `0x8401b48760e70a39e6bbf861abd050c00362bae8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xb9f8ab3ed3f3acba64bc6cd2dca74b7f38fd7b88` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xbd2e14d04777e551a8fe3822cac0df51984b029e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xca6481967e9ed5faedbc5dffa1dd8368979a2160` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-227628 | `0xca85e2ce206b48ee28a87b0a06f9519abe627451` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-227629 | `0xd86ceb76e9430d3bde90ded79c82ae62bc66d68b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-227630 | `0xec1c780a275438916e7ceb174d80878f29580606` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-227633 | `0xfa6b857cc17740a946c9eb85c1a6896f2e0be98e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x129bbda5087e132983e7c20ae1f761333d40c229` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x1cd776897ef4f647bf8241ec69549e4a9cb1d608` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gnosis | unit-227637 | `0x2863582272a424234fce76d97099acbd432acc01` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gnosis | unit-227638 | `0x2b6c227b26bc0ace74bb12da86571179c2c8bc54` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x36e8e371e6863e5f96d00667016dde87fe1cc5d1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gnosis | unit-227642 | `0x53c09096b1dc52e2ef223b2969a714ee75da364f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x774cb66e2b2db59a9daf175e9b2b7a142e17eb94` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x891ec9b34829276a9a8ef2f8a9ceaf2486017e0d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gnosis | unit-227645 | `0x8b2970c237656d3895588b99a8bfe977d5618201` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xa523f47a933d5020b23629ddf689695aa94612dc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gnosis | unit-227649 | `0xab9016380db2a2a564f8ee0122e3ed5776ca4c50` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xd53f5d8d926fb2a0f7be614b16e649b8ac102d83` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x0f641b291ba374ec9b17a878c54b98005a0bacae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x0fec3d212bcc29ef3e505b555d7a7343df0b7f76` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x1fd645458f6cd8eb95d161d9a38eabe5dab1900b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-227673 | `0x2863582272a424234fce76d97099acbd432acc01` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-227675 | `0x2b6c227b26bc0ace74bb12da86571179c2c8bc54` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x421dbf836b903b15ba09c40553ad305d22275482` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-227681 | `0x4dce82f149649906d622efca613736a2015cbd1b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x4ea38a5739d467f7f84c06155ee2ad745e5328e8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x5073dc4072b23beb465f012d1be324bc0ebc119d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-227686 | `0x53c09096b1dc52e2ef223b2969a714ee75da364f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-227688 | `0x57acb721fcf3d900b480a90a55191cf8f37ad478` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x623cdc77dbade480060c1cf22053514bcf785898` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x6907d13cb2af4661a491562187f3beaba4c2a017` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x739b0c838e47a28877caef270df0407fe5c62502` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x8034fbc6246caa37d2af084b2fb0ea4a211b6f8d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-227696 | `0x8b2970c237656d3895588b99a8bfe977d5618201` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x908c9d41183ade493effc12bb9ad11a9333052bc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xa2930d1e21a26fde6ed861f303205536a98381ed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xa9802db57c6d9218ccfa5bed6364dfd0cf25d985` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xab9016380db2a2a564f8ee0122e3ed5776ca4c50` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xb82434c7506b27c226564d6ef6ac9ddcb03e8bd3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xb9f8ab3ed3f3acba64bc6cd2dca74b7f38fd7b88` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-227705 | `0xca85e2ce206b48ee28a87b0a06f9519abe627451` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xcbdcd817a93e733d48086c7c068c82c5a123dc4e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xcc92694a8b2367bc6a0d6c2349c30b7d8f1d3c0e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-227707 | `0xd86ceb76e9430d3bde90ded79c82ae62bc66d68b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x0451255563e2aca170b2552111837572e7a0bacd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x05589cbbe1cc0357986df6de4031b953819079c2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x0a6bcb3a0c03ab2bc8a058ee02ed11d50b494083` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x0d418ea619ebf42bf9b69f4f2d26ac690b322285` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x0f0ddad80025adf6c5ca45905237e5ca12b755fc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x0f641b291ba374ec9b17a878c54b98005a0bacae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x0fec3d212bcc29ef3e505b555d7a7343df0b7f76` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x1702067424096f07a60e62ccee3de9420068492d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x1fd645458f6cd8eb95d161d9a38eabe5dab1900b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x223738a747383d6f9f827d95964e4d8e8ac754ce` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x252a18d569149cb9fd144d35842d2bee596b3a63` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x25e7c574c4016e09f608971f97c3b09a6cf4f669` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x2863582272a424234fce76d97099acbd432acc01` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x2b89339c923595b8e6cc7bc87c83dbbd53f1feb4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x2f4cdf0d46f4e3e6d4d37836e73073046138d4f7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x334df252cc0c44c37ba85dbeaa9c230c3f22f6b0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x3743d83ecfffa802f457bd25664d537a48182da7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x37aa9ad9744d0686df1c7053225e700ce13e31dd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x3af95ba5c362075bb28e5a2a42d7cd1e201a1b66` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x421dbf836b903b15ba09c40553ad305d22275482` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x4b5d2848678db574fbc2d2f629143d969a4f41cb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x4dce82f149649906d622efca613736a2015cbd1b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x4ea9317d90b61fc28c418c247ad0ca8939bbb0e9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x5073dc4072b23beb465f012d1be324bc0ebc119d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x51b6e0ac6d6435650748513c71db453f96749fe1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x57acb721fcf3d900b480a90a55191cf8f37ad478` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x5a5094e2a2a4c1b48a6630138a3b1076ec00b10d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x5c97f09506d60b90a817eb547ea4f03ae990e798` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x609d44450231697227504e7fa6a327421b11beaa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x60d6439631cc6f60ed15c07783b4c7848f87c84c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x623cdc77dbade480060c1cf22053514bcf785898` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x6907d13cb2af4661a491562187f3beaba4c2a017` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x6b02fefd2f2e06f51e17b7d5b8b20d75fd6916be` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x739b0c838e47a28877caef270df0407fe5c62502` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x779aa2880d7a701fb46d320c710944a72e2a049b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x8034fbc6246caa37d2af084b2fb0ea4a211b6f8d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x81ba0309e9e0bbabf7f552dbfd40f1818f3fca08` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x8401b48760e70a39e6bbf861abd050c00362bae8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x852ad2fde4cfead5c420f6f8027dc14f877947c6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x8b9da502cccb32dbf19cd68e258e6fd05e1b5eee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x908c9d41183ade493effc12bb9ad11a9333052bc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x9e1f4190f1a8fe0cd57421533decb57f9980922e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x9e4cbe2eaff2fa727bc805e6cbbf2ff01ddb812b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0xa1ffacb9bb1852997d2a5931659a56272dc858f4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0xa2930d1e21a26fde6ed861f303205536a98381ed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0xa7cd8430249ae45c343b569bb8f1c6abc9a32794` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0xa9802db57c6d9218ccfa5bed6364dfd0cf25d985` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0xa9952c914d86f896c53bf17125c4104cc058008e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0xab9016380db2a2a564f8ee0122e3ed5776ca4c50` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0xae8e14e01fa6c651a6cc4e410e8e623dfba8bd1c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0xb292be31649a0b079dbdb772fcf5c7a02a6e0144` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0xb4c68ea0c1a5fff3736cbfb402afbb4ad88608df` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0xbddac3069f4e26f4e4f445926c8eeb9dcb68c26b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0xbf6a1859e2503441de34197e73bd32d8f82698b0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0xc0c293ce456ff0ed870add98a0828dd4d2903dbf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0xc1e07a89f24b39f82d7d08b9c2be5288aa42abe3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0xca85e2ce206b48ee28a87b0a06f9519abe627451` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0xcc92694a8b2367bc6a0d6c2349c30b7d8f1d3c0e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0xce66e8300dc1d1f5b0e46e9145fdf680a7e41146` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0xd86ceb76e9430d3bde90ded79c82ae62bc66d68b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0xda2e6ba0b1abbca925b70e9747afbd481c16e7db` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0xde386aedec27521daf1f8a49c03ada7c158455bf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0xdfa714a90d55e9524389bc5345ac2bd8abf578ee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0xe00035eb901f487d2c6a16624aff093a29feed73` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0xe01d927481978b59e6aebb32601a4435c8a05fb8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0xe4b11aa0ca5fe0d51cb2c53a4e583406fc338224` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0xe8a7e8c5a39996d2cf61bdfb8fd2f846b79d3099` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0xea865d0dacf923c8d6254de734f31294ca74c1dc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0xec1c780a275438916e7ceb174d80878f29580606` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0xee6c82b8ef215e43d485b25de0b490f0f2f708bd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0xf044ee152c7d731825280350d876cf760181d96f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0xf3ae2e9620d7e93e69f9f7f0a6666e5d506aa978` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0xf97de68ad9968a970aef9849f2b9224506b7e1f6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0xfa6b857cc17740a946c9eb85c1a6896f2e0be98e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0xffa4587c1b2e373469ab6a8fe0ce4dbdb10282d5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon-zkevm | n/a | 89 deployments: polygon-zkevm `0x0451255563e2aca170b2552111837572e7a0bacd`; polygon-zkevm `0x04798c9b4546d90a97f687188d346d170298703c`; polygon-zkevm `0x05589cbbe1cc0357986df6de4031b953819079c2`; polygon-zkevm `0x0a6bcb3a0c03ab2bc8a058ee02ed11d50b494083`; polygon-zkevm `0x0d418ea619ebf42bf9b69f4f2d26ac690b322285`; polygon-zkevm `0x0f0ddad80025adf6c5ca45905237e5ca12b755fc`; polygon-zkevm `0x0f641b291ba374ec9b17a878c54b98005a0bacae`; polygon-zkevm `0x0fec3d212bcc29ef3e505b555d7a7343df0b7f76`; polygon-zkevm `0x1509706a6c66ca549ff0cb464de88231ddbe213b`; polygon-zkevm `0x1ba3dbd572b1b7aa3445fa51492bfc644c67ad0f`; polygon-zkevm `0x1fd645458f6cd8eb95d161d9a38eabe5dab1900b`; polygon-zkevm `0x223738a747383d6f9f827d95964e4d8e8ac754ce`; polygon-zkevm `0x2498a2b0d6462d2260eac50ae1c3e03f4829ba95`; polygon-zkevm `0x25e7c574c4016e09f608971f97c3b09a6cf4f669`; polygon-zkevm `0x2863582272a424234fce76d97099acbd432acc01`; polygon-zkevm `0x2b6c227b26bc0ace74bb12da86571179c2c8bc54`; polygon-zkevm `0x2b89339c923595b8e6cc7bc87c83dbbd53f1feb4`; polygon-zkevm `0x2f4cdf0d46f4e3e6d4d37836e73073046138d4f7`; polygon-zkevm `0x334df252cc0c44c37ba85dbeaa9c230c3f22f6b0`; polygon-zkevm `0x3743d83ecfffa802f457bd25664d537a48182da7`; polygon-zkevm `0x37aa9ad9744d0686df1c7053225e700ce13e31dd`; polygon-zkevm `0x3af95ba5c362075bb28e5a2a42d7cd1e201a1b66`; polygon-zkevm `0x421dbf836b903b15ba09c40553ad305d22275482`; polygon-zkevm `0x4b5d2848678db574fbc2d2f629143d969a4f41cb`; polygon-zkevm `0x4dce82f149649906d622efca613736a2015cbd1b`; polygon-zkevm `0x4ea38a5739d467f7f84c06155ee2ad745e5328e8`; polygon-zkevm `0x4ea9317d90b61fc28c418c247ad0ca8939bbb0e9`; polygon-zkevm `0x5073dc4072b23beb465f012d1be324bc0ebc119d`; polygon-zkevm `0x51b6e0ac6d6435650748513c71db453f96749fe1`; polygon-zkevm `0x53c09096b1dc52e2ef223b2969a714ee75da364f`; polygon-zkevm `0x57acb721fcf3d900b480a90a55191cf8f37ad478`; polygon-zkevm `0x5849b5821faf6de7b3739f7a6d73536d9ae09558`; polygon-zkevm `0x5a5094e2a2a4c1b48a6630138a3b1076ec00b10d`; polygon-zkevm `0x5a739082832ff535413cebfb2468b8d6b9f22c68`; polygon-zkevm `0x5c97f09506d60b90a817eb547ea4f03ae990e798`; polygon-zkevm `0x609d44450231697227504e7fa6a327421b11beaa`; polygon-zkevm `0x60d6439631cc6f60ed15c07783b4c7848f87c84c`; polygon-zkevm `0x617963d46b882ece880ab18bc232f513e91fdd47`; polygon-zkevm `0x623cdc77dbade480060c1cf22053514bcf785898`; polygon-zkevm `0x6907d13cb2af4661a491562187f3beaba4c2a017`; polygon-zkevm `0x6b02fefd2f2e06f51e17b7d5b8b20d75fd6916be`; polygon-zkevm `0x731886426a3199b988194831031dfb993f25d961`; polygon-zkevm `0x739b0c838e47a28877caef270df0407fe5c62502`; polygon-zkevm `0x779aa2880d7a701fb46d320c710944a72e2a049b`; polygon-zkevm `0x7a7b39d47a64181750b7b45b88682ddb915a73d1`; polygon-zkevm `0x8034fbc6246caa37d2af084b2fb0ea4a211b6f8d`; polygon-zkevm `0x8401b48760e70a39e6bbf861abd050c00362bae8`; polygon-zkevm `0x852ad2fde4cfead5c420f6f8027dc14f877947c6`; polygon-zkevm `0x87299312c820607f1e7e4d0c6715ceb594306fe9`; polygon-zkevm `0x8b2970c237656d3895588b99a8bfe977d5618201`; polygon-zkevm `0x8b9da502cccb32dbf19cd68e258e6fd05e1b5eee`; polygon-zkevm `0x908c9d41183ade493effc12bb9ad11a9333052bc`; polygon-zkevm `0x919eeb7d8e73bd4e9addc1e81fd1ae799f0efee6`; polygon-zkevm `0x98ef32edd24e2c92525e59afc4475c1242a30184`; polygon-zkevm `0x9e1f4190f1a8fe0cd57421533decb57f9980922e`; polygon-zkevm `0x9e4cbe2eaff2fa727bc805e6cbbf2ff01ddb812b`; polygon-zkevm `0xa2930d1e21a26fde6ed861f303205536a98381ed`; polygon-zkevm `0xa9802db57c6d9218ccfa5bed6364dfd0cf25d985`; polygon-zkevm `0xa9952c914d86f896c53bf17125c4104cc058008e`; polygon-zkevm `0xab9016380db2a2a564f8ee0122e3ed5776ca4c50`; polygon-zkevm `0xae8e14e01fa6c651a6cc4e410e8e623dfba8bd1c`; polygon-zkevm `0xb292be31649a0b079dbdb772fcf5c7a02a6e0144`; polygon-zkevm `0xb82434c7506b27c226564d6ef6ac9ddcb03e8bd3`; polygon-zkevm `0xbcf3b107a5ecdd8efb70a74f44b827a1f7108c48`; polygon-zkevm `0xbd2e14d04777e551a8fe3822cac0df51984b029e`; polygon-zkevm `0xbf6a1859e2503441de34197e73bd32d8f82698b0`; polygon-zkevm `0xc181edc719480bd089b94647c2dc504e2700a2b0`; polygon-zkevm `0xc1e07a89f24b39f82d7d08b9c2be5288aa42abe3`; polygon-zkevm `0xc24fa5948a2a356b6a7e20d08e7a5edc3697b7ac`; polygon-zkevm `0xca85e2ce206b48ee28a87b0a06f9519abe627451`; polygon-zkevm `0xcbdcd817a93e733d48086c7c068c82c5a123dc4e`; polygon-zkevm `0xcc92694a8b2367bc6a0d6c2349c30b7d8f1d3c0e`; polygon-zkevm `0xce66e8300dc1d1f5b0e46e9145fdf680a7e41146`; polygon-zkevm `0xd86ceb76e9430d3bde90ded79c82ae62bc66d68b`; polygon-zkevm `0xda2e6ba0b1abbca925b70e9747afbd481c16e7db`; polygon-zkevm `0xde386aedec27521daf1f8a49c03ada7c158455bf`; polygon-zkevm `0xdfa714a90d55e9524389bc5345ac2bd8abf578ee`; polygon-zkevm `0xe00035eb901f487d2c6a16624aff093a29feed73`; polygon-zkevm `0xe01d927481978b59e6aebb32601a4435c8a05fb8`; polygon-zkevm `0xe4b11aa0ca5fe0d51cb2c53a4e583406fc338224`; polygon-zkevm `0xe8a7e8c5a39996d2cf61bdfb8fd2f846b79d3099`; polygon-zkevm `0xea865d0dacf923c8d6254de734f31294ca74c1dc`; polygon-zkevm `0xec1c780a275438916e7ceb174d80878f29580606`; polygon-zkevm `0xee6c82b8ef215e43d485b25de0b490f0f2f708bd`; polygon-zkevm `0xf044ee152c7d731825280350d876cf760181d96f`; polygon-zkevm `0xf24074a1a6ad620adc14745f9cc1fb1e7ba6ca71`; polygon-zkevm `0xf3ae2e9620d7e93e69f9f7f0a6666e5d506aa978`; polygon-zkevm `0xf97de68ad9968a970aef9849f2b9224506b7e1f6`; polygon-zkevm `0xfa6b857cc17740a946c9eb85c1a6896f2e0be98e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon-zkevm | unit-227653 | `0x252a18d569149cb9fd144d35842d2bee596b3a63` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon-zkevm | unit-227655 | `0xa1ffacb9bb1852997d2a5931659a56272dc858f4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon-zkevm | unit-227657 | `0xa7cd8430249ae45c343b569bb8f1c6abc9a32794` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon-zkevm | unit-227659 | `0xb4c68ea0c1a5fff3736cbfb402afbb4ad88608df` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon-zkevm | unit-227661 | `0xbddac3069f4e26f4e4f445926c8eeb9dcb68c26b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon-zkevm | n/a | `0xc0c293ce456ff0ed870add98a0828dd4d2903dbf` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon-zkevm | unit-227663 | `0xffa4587c1b2e373469ab6a8fe0ce4dbdb10282d5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x1802953277fd955f9a254b80aa0582f193cf1d77` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-227802 | `0x2863582272a424234fce76d97099acbd432acc01` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-227803 | `0x2b6c227b26bc0ace74bb12da86571179c2c8bc54` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-227809 | `0x5a5094e2a2a4c1b48a6630138a3b1076ec00b10d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-227811 | `0x609d44450231697227504e7fa6a327421b11beaa` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-227812 | `0x60d6439631cc6f60ed15c07783b4c7848f87c84c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-227815 | `0x8b2970c237656d3895588b99a8bfe977d5618201` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-227821 | `0xca85e2ce206b48ee28a87b0a06f9519abe627451` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0451255563e2aca170b2552111837572e7a0bacd` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-227712 | `0x0a6bcb3a0c03ab2bc8a058ee02ed11d50b494083` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0d418ea619ebf42bf9b69f4f2d26ac690b322285` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0f0ddad80025adf6c5ca45905237e5ca12b755fc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0f641b291ba374ec9b17a878c54b98005a0bacae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0fec3d212bcc29ef3e505b555d7a7343df0b7f76` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x12233c241780ae2f62ab9f6e864397a2af5a7d9f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1fd645458f6cd8eb95d161d9a38eabe5dab1900b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x25e7c574c4016e09f608971f97c3b09a6cf4f669` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-227717 | `0x2863582272a424234fce76d97099acbd432acc01` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-227718 | `0x2b6c227b26bc0ace74bb12da86571179c2c8bc54` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2b89339c923595b8e6cc7bc87c83dbbd53f1feb4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2f4cdf0d46f4e3e6d4d37836e73073046138d4f7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x334df252cc0c44c37ba85dbeaa9c230c3f22f6b0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x364675d1a4e2564ce1e30da3ff67e0899c6e617c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3743d83ecfffa802f457bd25664d537a48182da7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x37aa9ad9744d0686df1c7053225e700ce13e31dd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x421dbf836b903b15ba09c40553ad305d22275482` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4ac1df9d710053aaf6eae87c6b2ca138f2d4058f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4dce82f149649906d622efca613736a2015cbd1b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4ea38a5739d467f7f84c06155ee2ad745e5328e8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5073dc4072b23beb465f012d1be324bc0ebc119d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x51b6e0ac6d6435650748513c71db453f96749fe1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-227722 | `0x53c09096b1dc52e2ef223b2969a714ee75da364f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-227723 | `0x57acb721fcf3d900b480a90a55191cf8f37ad478` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x59b77ebeee3e29d282f6154f6e9543efdd13ccee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x609d44450231697227504e7fa6a327421b11beaa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x60d6439631cc6f60ed15c07783b4c7848f87c84c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x623cdc77dbade480060c1cf22053514bcf785898` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x6907d13cb2af4661a491562187f3beaba4c2a017` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x739b0c838e47a28877caef270df0407fe5c62502` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-227730 | `0x779aa2880d7a701fb46d320c710944a72e2a049b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8034fbc6246caa37d2af084b2fb0ea4a211b6f8d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8401b48760e70a39e6bbf861abd050c00362bae8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x852ad2fde4cfead5c420f6f8027dc14f877947c6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8b2970c237656d3895588b99a8bfe977d5618201` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8b9da502cccb32dbf19cd68e258e6fd05e1b5eee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x908c9d41183ade493effc12bb9ad11a9333052bc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x9e4cbe2eaff2fa727bc805e6cbbf2ff01ddb812b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa2930d1e21a26fde6ed861f303205536a98381ed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa9802db57c6d9218ccfa5bed6364dfd0cf25d985` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa9952c914d86f896c53bf17125c4104cc058008e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xab9016380db2a2a564f8ee0122e3ed5776ca4c50` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xae8e14e01fa6c651a6cc4e410e8e623dfba8bd1c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb292be31649a0b079dbdb772fcf5c7a02a6e0144` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb82434c7506b27c226564d6ef6ac9ddcb03e8bd3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb9f8ab3ed3f3acba64bc6cd2dca74b7f38fd7b88` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xbd2e14d04777e551a8fe3822cac0df51984b029e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xbe48923061c67c8e0e51bf4d99aed56083392ce0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xbf6a1859e2503441de34197e73bd32d8f82698b0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc1e07a89f24b39f82d7d08b9c2be5288aa42abe3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-227741 | `0xca85e2ce206b48ee28a87b0a06f9519abe627451` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xcbdcd817a93e733d48086c7c068c82c5a123dc4e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xcc92694a8b2367bc6a0d6c2349c30b7d8f1d3c0e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xce66e8300dc1d1f5b0e46e9145fdf680a7e41146` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-227742 | `0xd86ceb76e9430d3bde90ded79c82ae62bc66d68b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xdfa714a90d55e9524389bc5345ac2bd8abf578ee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe00035eb901f487d2c6a16624aff093a29feed73` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe01d927481978b59e6aebb32601a4435c8a05fb8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe4b11aa0ca5fe0d51cb2c53a4e583406fc338224` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe8a7e8c5a39996d2cf61bdfb8fd2f846b79d3099` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xea865d0dacf923c8d6254de734f31294ca74c1dc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-227745 | `0xec1c780a275438916e7ceb174d80878f29580606` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xee6c82b8ef215e43d485b25de0b490f0f2f708bd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf044ee152c7d731825280350d876cf760181d96f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf3ae2e9620d7e93e69f9f7f0a6666e5d506aa978` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf97de68ad9968a970aef9849f2b9224506b7e1f6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xfa6b857cc17740a946c9eb85c1a6896f2e0be98e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x138f951c141c2f34c1001258cd95dfeeac26bb8a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-227749 | `0x1fd645458f6cd8eb95d161d9a38eabe5dab1900b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-227751 | `0x2b6c227b26bc0ace74bb12da86571179c2c8bc54` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-227753 | `0x5073dc4072b23beb465f012d1be324bc0ebc119d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-227754 | `0x623cdc77dbade480060c1cf22053514bcf785898` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-227757 | `0x739b0c838e47a28877caef270df0407fe5c62502` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-227758 | `0x8034fbc6246caa37d2af084b2fb0ea4a211b6f8d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-227760 | `0x8b2970c237656d3895588b99a8bfe977d5618201` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-227763 | `0xa2930d1e21a26fde6ed861f303205536a98381ed` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-227766 | `0xb82434c7506b27c226564d6ef6ac9ddcb03e8bd3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-227769 | `0xcbdcd817a93e733d48086c7c068c82c5a123dc4e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-227770 | `0xcc92694a8b2367bc6a0d6c2349c30b7d8f1d3c0e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xede954497ab27aee78487940b04b2655899954e0` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 475
- Live contracts: 17
- Unknown liveness contracts: 458
- Source-verified contracts: 414
- Currently scope-matched contracts retained as-is: 2
- Classification counts: currently scope matched=2, candidate auto own=2, candidate review=88, contamination review=8, exact address book overlap=15, source verified unclassified=305, unverified unclassified=55

Showing first 200 of 475 contracts. The complete deployer expansion list is in `brief.json`.

| Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|
| currently scope matched | BridgeDelegateReceiver<br>`0x397a2d4d23c6fd1316ce25000820779006e80cd7` | project_anchor | unknown | live | verified | n/a | `0x30019eb135532bddf2da17659101cc000c73c8e4` |
| currently scope matched | L1Coordinator<br>`0xaa54f3b282805822419265208e669d12372a3811` | project_anchor | unknown | live | verified | n/a | `0x30019eb135532bddf2da17659101cc000c73c8e4` |
| candidate auto own | Booster<br>`0xb314f7c160d078923eaaae9c6cbde8f1b7bfe7fd` | non_address_book | unknown | unknown | verified | automatic_own: fresh_structural_and_independent_ownership_match | `0x0b7918e20479ef0ad21a302e463dc7624bddc740` |
| candidate auto own | VoterProxy<br>`0x42b047d1c751a871e61ec77bfde5fbbf2ce053ee` | non_address_book | unknown | unknown | verified | automatic_own: fresh_structural_and_independent_ownership_match | `0xa28ea848801da877e1844f954ff388e857d405e5` |
| candidate review | ArbitratorVault<br>`0x5d208cd54f5132f2bd0c1f1e8d8c864bb6bedc40` | non_address_book | core_logic | unknown | verified | review: no_fresh_structural_match | `0xa28ea848801da877e1844f954ff388e857d405e5` |
| candidate review | AuraBalRewardPool<br>`0xc47162863a12227e5c3b0860715f9cf721651c0c` | non_address_book | core_logic | unknown | verified | review: no_fresh_structural_match | `0xa28ea848801da877e1844f954ff388e857d405e5` |
| candidate review | AuraClaimZap<br>`0x623b83755a39b12161a63748f3f595a530917ab2` | non_address_book | adapter | unknown | verified | review: no_fresh_structural_match | `0xa28ea848801da877e1844f954ff388e857d405e5` |
| candidate review | AuraMerkleDrop<br>`0x1a661cf8d8cd69dd2a423f3626a461a24280a8fb` | non_address_book | operational_periphery | unknown | verified | review: no_fresh_structural_match | `0xa28ea848801da877e1844f954ff388e857d405e5` |
| candidate review | AuraMerkleDrop<br>`0x45eb1a004373b1d8457134a2c04a42d69d287724` | non_address_book | operational_periphery | unknown | verified | review: no_fresh_structural_match | `0xa28ea848801da877e1844f954ff388e857d405e5` |
| candidate review | AuraMinter<br>`0x59a5ccd34943cd0adcf5ce703ee9f06889e13707` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xa28ea848801da877e1844f954ff388e857d405e5` |
| candidate review | AuraPenaltyForwarder<br>`0x4043569200f7a7a1d989abbabc2de2bde1c20d1e` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xa28ea848801da877e1844f954ff388e857d405e5` |
| candidate review | AuraVestedEscrow<br>`0x24346652e0e2ae0ce05c781501fdf4fe4553fac6` | non_address_book | operational_periphery | unknown | verified | review: no_fresh_structural_match | `0xa28ea848801da877e1844f954ff388e857d405e5` |
| candidate review | AuraVestedEscrow<br>`0x43b17088503f4ce1aed9fb302ed6bb51ad6694fa` | non_address_book | operational_periphery | unknown | verified | review: no_fresh_structural_match | `0xa28ea848801da877e1844f954ff388e857d405e5` |
| candidate review | AuraVestedEscrow<br>`0x45025ebc38647bcf7edd2b40cfdaf3fbfe1538f5` | non_address_book | operational_periphery | unknown | verified | review: no_fresh_structural_match | `0xa28ea848801da877e1844f954ff388e857d405e5` |
| candidate review | AuraVestedEscrow<br>`0x5bd3fca8d3d8c94a6419d85e0a76ec8da52d836a` | non_address_book | operational_periphery | unknown | verified | review: no_fresh_structural_match | `0xa28ea848801da877e1844f954ff388e857d405e5` |
| candidate review | AuraVestedEscrow<br>`0xfd72170339ac6d7bdda09d1eaca346b21a30d422` | non_address_book | operational_periphery | unknown | verified | review: no_fresh_structural_match | `0xa28ea848801da877e1844f954ff388e857d405e5` |
| candidate review | BaseRewardPool<br>`0xe765d4b1680b4274c96b05e0dc5c6fc2157ab806` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x0b7918e20479ef0ad21a302e463dc7624bddc740` |
| candidate review | BoosterOwner<br>`0x228a142081b456a9ff803d004504955032989f04` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x0b7918e20479ef0ad21a302e463dc7624bddc740` |
| candidate review | BoosterOwner<br>`0xb927edabfa72fa4e26b8a65cbd7161cf863caced` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x0b7918e20479ef0ad21a302e463dc7624bddc740` |
| candidate review | BoosterOwner<br>`0xfa838af70314135159b309bf27f1dbf1f954ec34` | non_address_book | core_logic | unknown | verified | review: no_fresh_structural_match | `0xa28ea848801da877e1844f954ff388e857d405e5` |
| candidate review | ExtraRewardsDistributor<br>`0xa3739b206097317c72ef416f0e75bb8f58fbd308` | non_address_book | operational_periphery | unknown | verified | review: no_fresh_structural_match | `0xa28ea848801da877e1844f954ff388e857d405e5` |
| candidate review | ExtraRewardStashV3<br>`0x37c3ebfd4b0cf66df19a413e92dd21e556915f98` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x0b7918e20479ef0ad21a302e463dc7624bddc740` |
| candidate review | ExtraRewardStashV3<br>`0x647596a225e27c5a3554d8f0e851cb5ff759b7ef` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x0b7918e20479ef0ad21a302e463dc7624bddc740` |
| candidate review | ExtraRewardStashV3<br>`0xf9c0f3431f859e773ed052758052e06b6d175742` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xa28ea848801da877e1844f954ff388e857d405e5` |
| candidate review | LiquidityBootstrappingPoolFactory<br>`0x751a0bc0e3f75b38e01cf25bfce7ff36de1c87de` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x3d64fb8a2ffd08c186e8060aa57c8011d8b999cc` |
| candidate review | PoolManagerProxy<br>`0x16a04e58a77ab1ce561a37371dfb479a8594947a` | non_address_book | core_logic | unknown | verified | review: no_fresh_structural_match | `0xa28ea848801da877e1844f954ff388e857d405e5` |
| candidate review | PoolManagerProxy<br>`0x2c809ec701c088099c911af9ddfa4a1db6110f3c` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x0b7918e20479ef0ad21a302e463dc7624bddc740` |
| candidate review | PoolManagerProxy<br>`0xdc0a7fd94c089ce06ec0ff76e0c771c4f60ee65c` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x0b7918e20479ef0ad21a302e463dc7624bddc740` |
| candidate review | PoolManagerSecondaryProxy<br>`0x153dfc50f7a93c4f3d049c105dde9786d3cfc72a` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x0b7918e20479ef0ad21a302e463dc7624bddc740` |
| candidate review | PoolManagerSecondaryProxy<br>`0xa72932aea1392b0da9edc34178da2b29ece2de54` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x0b7918e20479ef0ad21a302e463dc7624bddc740` |
| candidate review | PoolManagerSecondaryProxy<br>`0xdc274f4854831fed60f9eca12cacbd449134cf67` | non_address_book | core_logic | unknown | verified | review: no_fresh_structural_match | `0xa28ea848801da877e1844f954ff388e857d405e5` |
| candidate review | PoolManagerV3<br>`0xaa83d1682a7f489eeec5fb5c8175856c993102ed` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x0b7918e20479ef0ad21a302e463dc7624bddc740` |
| candidate review | PoolManagerV3<br>`0xb58eb197c35157e6f3351718c4c387d284562be5` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x0b7918e20479ef0ad21a302e463dc7624bddc740` |
| candidate review | PoolManagerV3<br>`0xf843f61508fc17543412de55b10ed87f4c28de50` | non_address_book | core_logic | unknown | verified | review: no_fresh_structural_match | `0xa28ea848801da877e1844f954ff388e857d405e5` |
| candidate review | RewardFactory<br>`0x45aad11f2fa2c215bc9686eb6f06d46e0474f356` | non_address_book | registry | unknown | verified | review: no_fresh_structural_match | `0xa28ea848801da877e1844f954ff388e857d405e5` |
| candidate review | RewardFactory<br>`0xbc8d9caf4b6bf34773976c5707ad1f2778332dca` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x0b7918e20479ef0ad21a302e463dc7624bddc740` |
| candidate review | RewardFactory<br>`0xf6b287ab618d7a6ec07f28421376bdfac7f5a37d` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x0b7918e20479ef0ad21a302e463dc7624bddc740` |
| candidate review | StashFactoryV2<br>`0x54da426efbb93fbab5cf81bef03f9b9f00a3e915` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x0b7918e20479ef0ad21a302e463dc7624bddc740` |
| candidate review | StashFactoryV2<br>`0x95171c9ef5ca540a6d3502e9547fcfe022458eb5` | non_address_book | registry | unknown | verified | review: no_fresh_structural_match | `0xa28ea848801da877e1844f954ff388e857d405e5` |
| candidate review | StashFactoryV2<br>`0xafd8904819add7a74483de8d9140fd9312a3a5a8` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x0b7918e20479ef0ad21a302e463dc7624bddc740` |
| candidate review | StashRewardDistro<br>`0x2db7d4f89de7ac7fbb31422d51ec3a7c7aa15f9c` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x30019eb135532bddf2da17659101cc000c73c8e4` |
| candidate review | StashRewardDistro<br>`0x74d2e022d38f630309a9024c4c993a3f72241298` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x30019eb135532bddf2da17659101cc000c73c8e4` |
| candidate review | TokenFactory<br>`0x3ec040dbf7d953216f4c89a2e665d5073445f5ba` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x0b7918e20479ef0ad21a302e463dc7624bddc740` |
| candidate review | TokenFactory<br>`0x6537be8aea629afcfc22a7804c27ff19abc2df78` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x0b7918e20479ef0ad21a302e463dc7624bddc740` |
| candidate review | TokenFactory<br>`0xb6ce51dee8bd4a2fd11c01205414dc26f0b453ac` | non_address_book | registry | unknown | verified | review: no_fresh_structural_match | `0xa28ea848801da877e1844f954ff388e857d405e5` |
| candidate review | VirtualRewardFactory<br>`0x5918f576d4728cf045be29272b6585883a68bfcf` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x30019eb135532bddf2da17659101cc000c73c8e4` |
| candidate review | VirtualRewardFactory<br>`0x64e2df8e5463f8c14e1c28c9782f7b4b6062b2c3` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x30019eb135532bddf2da17659101cc000c73c8e4` |
| candidate review | VirtualRewardFactory<br>`0xdd8e702404dcf472583ad03578be015b4fa2f27b` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x30019eb135532bddf2da17659101cc000c73c8e4` |
| candidate review | VotingEscrowDelegationProxy<br>`0x6f5a2ee11e7a772aeb5114a20d0d7c0ff61eb8a0` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x3d64fb8a2ffd08c186e8060aa57c8011d8b999cc` |
| candidate review | WeightedPoolFactory<br>`0x5dd94da3644ddd055fcf6b3e1aa310bb7801eb8b` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x3d64fb8a2ffd08c186e8060aa57c8011d8b999cc` |
| candidate review | WeightedPoolFactory<br>`0x8e9aa87e45e92bad84d5f8dd1bff34fb92637de9` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x697a71353a4bc1eb1356763018a229c27a3fba0c` |
| candidate review | WeightedPoolFactory<br>`0xcc508a455f5b0073973107db6a878ddbdab957bc` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x3d64fb8a2ffd08c186e8060aa57c8011d8b999cc` |
| candidate review | ChildStashRewardDistro<br>`0x7372ece4c18beabc19981a53b557be90dcbd2b66` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x30019eb135532bddf2da17659101cc000c73c8e4` |
| candidate review | CowSwapFeeBurner<br>`0xf4743d026f3d07af3747bb7d05bed06d177241d7` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x9098b50ee2d9e4c3c69928a691da3b192b4c9673` |
| candidate review | ERC4626CowSwapFeeBurner<br>`0x201efd508c8dfe9de1a13c2452863a78cb2a86cc` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x9098b50ee2d9e4c3c69928a691da3b192b4c9673` |
| candidate review | ERC4626CowSwapFeeBurner<br>`0x7c1b7a97bfacd39975de53e989a16c7bc4c78275` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x9098b50ee2d9e4c3c69928a691da3b192b4c9673` |
| candidate review | ProtocolFeeController<br>`0xdb8d758bcb971e482b2c45f7f8a7740283a1bd3a` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0x9098b50ee2d9e4c3c69928a691da3b192b4c9673` |
| candidate review | VotingEscrowDelegationProxy<br>`0x9da18982a33fd0c7051b19f0d7c76f2d5e7e017c` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x9098b50ee2d9e4c3c69928a691da3b192b4c9673` |
| candidate review | ChildStashRewardDistro<br>`0x1bec8fd56166ba66afb6d449e61b717fc9b482c0` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x30019eb135532bddf2da17659101cc000c73c8e4` |
| candidate review | CowSwapFeeBurner<br>`0x0e800d8d2e8b4694610aedc385aa6d763492b106` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x9098b50ee2d9e4c3c69928a691da3b192b4c9673` |
| candidate review | CowSwapFeeBurner<br>`0x309abcaefa19ca6d34f0d8ff4a4103317c138657` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x9098b50ee2d9e4c3c69928a691da3b192b4c9673` |
| candidate review | CowSwapFeeBurner<br>`0x397bc40ba584e651f4f5cf4ae089f0130569a1c7` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x9098b50ee2d9e4c3c69928a691da3b192b4c9673` |
| candidate review | CowSwapFeeBurner<br>`0xae563e3f8219521950555f5962419c8919758ea2` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x9098b50ee2d9e4c3c69928a691da3b192b4c9673` |
| candidate review | CowSwapFeeBurner<br>`0xd22eecbb495380ef52b1ccef1ca594979885d484` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x9098b50ee2d9e4c3c69928a691da3b192b4c9673` |
| candidate review | CowSwapFeeBurner<br>`0xfc00536a0fd292c284deef6af8f644d8373d9cad` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x9098b50ee2d9e4c3c69928a691da3b192b4c9673` |
| candidate review | ERC4626CowSwapFeeBurner<br>`0x7d92fcdc8aa56057d5e318b2881f2167c67fdafa` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x9098b50ee2d9e4c3c69928a691da3b192b4c9673` |
| candidate review | StableSurgeHook<br>`0x90bd26fbb9db17d75b56e4ca3a4c438fa7c93694` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x9098b50ee2d9e4c3c69928a691da3b192b4c9673` |
| candidate review | StableSurgePoolFactory<br>`0x268e2ee1413d768b6e2dc3f5a4ddc9ae03d9af42` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0x9098b50ee2d9e4c3c69928a691da3b192b4c9673` |
| candidate review | VotingEscrowDelegationProxy<br>`0x7a2535f5fb47b8e44c02ef5d9990588313fe8f05` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x9098b50ee2d9e4c3c69928a691da3b192b4c9673` |
| candidate review | ChildStashRewardDistro<br>`0x7e702e51142eb7658ce4ce734c9bdec74250f265` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x30019eb135532bddf2da17659101cc000c73c8e4` |
| candidate review | VotingEscrowDelegationProxy<br>`0x0f08eef2c785aa5e7539684af04755dec1347b7c` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x9098b50ee2d9e4c3c69928a691da3b192b4c9673` |
| candidate review | Vault<br>`0xe42ffa682a26ef8f25891db4882932711d42e467` | non_address_book | core_logic | unknown | verified | review: no_fresh_structural_match | `0x9098b50ee2d9e4c3c69928a691da3b192b4c9673` |
| candidate review | VotingEscrowDelegationProxy<br>`0xe3881627b8deebccf9c23b291430a549fc0be5f7` | non_address_book | operational_periphery | unknown | verified | review: no_fresh_structural_match | `0x9098b50ee2d9e4c3c69928a691da3b192b4c9673` |
| candidate review | WeightedPoolFactory<br>`0x9da18982a33fd0c7051b19f0d7c76f2d5e7e017c` | non_address_book | registry | unknown | verified | review: no_fresh_structural_match | `0x9098b50ee2d9e4c3c69928a691da3b192b4c9673` |
| candidate review | ChildChainGaugeFactory<br>`0x2498a2b0d6462d2260eac50ae1c3e03f4829ba95` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x089775364ea24957da94348cf740375826ed3330` |
| candidate review | ChildStashRewardDistro<br>`0xeccd03d4cc029f341eaa1c208cfe14dc6862c67c` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x30019eb135532bddf2da17659101cc000c73c8e4` |
| candidate review | ProtocolFeeControllerMigration<br>`0x1b6f057520b4e826271d47b8bdab98e35af17e59` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x089775364ea24957da94348cf740375826ed3330` |
| candidate review | VotingEscrowDelegationProxy<br>`0xd87f44df0159dc78029ab9ca7d7e57e7249f5acd` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x089775364ea24957da94348cf740375826ed3330` |
| candidate review | ChildStashRewardDistro<br>`0xeeda9b5b9b18c5f6b77e96dfe076cd46b7af9701` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x30019eb135532bddf2da17659101cc000c73c8e4` |
| candidate review | CowSwapFeeBurner<br>`0x774cb66e2b2db59a9daf175e9b2b7a142e17eb94` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x9098b50ee2d9e4c3c69928a691da3b192b4c9673` |
| candidate review | CowSwapFeeBurner<br>`0xbc169a08cbdcdb218d91cd945d29b59f78c96b77` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x9098b50ee2d9e4c3c69928a691da3b192b4c9673` |
| candidate review | CowSwapFeeBurner<br>`0xf39ca6ede9bf7820a952b52f3c94af526bab9015` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x9098b50ee2d9e4c3c69928a691da3b192b4c9673` |
| candidate review | ERC4626CowSwapFeeBurner<br>`0x1cd776897ef4f647bf8241ec69549e4a9cb1d608` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x9098b50ee2d9e4c3c69928a691da3b192b4c9673` |
| candidate review | StableSurgePoolFactory<br>`0x86e67e115f96df37239e0479441303de0de7bc2b` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0x9098b50ee2d9e4c3c69928a691da3b192b4c9673` |
| candidate review | VotingEscrowDelegationProxy<br>`0x81cfae226343b24ba12ec6521db2c79e7aeeb310` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x9098b50ee2d9e4c3c69928a691da3b192b4c9673` |
| candidate review | ERC4626CowSwapFeeBurner<br>`0x0b11209b8c5e821b18ded147583b8978c3e63911` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x9098b50ee2d9e4c3c69928a691da3b192b4c9673` |
| candidate review | ProtocolFeeController<br>`0x3630d26e51c03026f4f063d69d65f8e234eeaf5b` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0x9098b50ee2d9e4c3c69928a691da3b192b4c9673` |
| candidate review | ProtocolFeeController<br>`0x9da18982a33fd0c7051b19f0d7c76f2d5e7e017c` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0x9098b50ee2d9e4c3c69928a691da3b192b4c9673` |
| candidate review | StableSurgeHook<br>`0xad89051bed8d96f045e8912ae1672c6c0bf8a85e` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x9098b50ee2d9e4c3c69928a691da3b192b4c9673` |
| candidate review | StableSurgePoolFactory<br>`0x311334883921fb1b813826e585df1c2be4358615` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0x9098b50ee2d9e4c3c69928a691da3b192b4c9673` |
| candidate review | VaultFactory<br>`0x9805dcfd25e6de36bad8fe9d3fe2c9b44b764102` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x9098b50ee2d9e4c3c69928a691da3b192b4c9673` |
| candidate review | WeightedPoolFactory<br>`0x7ba29fe8e83dd6097a7298075c4affdbda3121cc` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x9098b50ee2d9e4c3c69928a691da3b192b4c9673` |
| contamination review | BalLiquidityProvider<br>`0xa7429af4deb16827dad0e71d8aeea9c2bf70e32c` | non_address_book | unknown | unknown | verified | n/a | `0xa28ea848801da877e1844f954ff388e857d405e5` |
| contamination review | ClaimFeesHelper<br>`0x999dbce0a18f721f04e793f916c30e72a9d0f56e` | non_address_book | periphery | unknown | verified | n/a | `0xa28ea848801da877e1844f954ff388e857d405e5` |
| contamination review | ProxyFactory<br>`0x7ed9003c6003eace1e8c3ae99f0bb19894377b0f` | non_address_book | registry | unknown | verified | n/a | `0xa28ea848801da877e1844f954ff388e857d405e5` |
| contamination review | AuthorizerAdaptor<br>`0x36cac20dd805d128c1a6dd16eea845c574b5a17c` | non_address_book | unknown | unknown | verified | n/a | `0x9098b50ee2d9e4c3c69928a691da3b192b4c9673` |
| contamination review | AuthorizerWithAdaptorValidation<br>`0x6817149cb753bf529565b4d023d7507ed2ff4bc0` | non_address_book | unknown | unknown | verified | n/a | `0x9098b50ee2d9e4c3c69928a691da3b192b4c9673` |
| contamination review | GaugeWorkingBalanceHelper<br>`0x83e443ef4f9963c77bd860f94500075556668cb8` | non_address_book | operational_periphery | unknown | verified | n/a | `0x9098b50ee2d9e4c3c69928a691da3b192b4c9673` |
| contamination review | ManagedPoolFactory<br>`0x7a2535f5fb47b8e44c02ef5d9990588313fe8f05` | non_address_book | registry | unknown | verified | n/a | `0x9098b50ee2d9e4c3c69928a691da3b192b4c9673` |
| contamination review | RecoveryModeHelper<br>`0x013d4382f291be5688afbcc741ee8a24c66b2c92` | non_address_book | periphery | unknown | verified | n/a | `0x9098b50ee2d9e4c3c69928a691da3b192b4c9673` |
| exact address book overlap | BridgeDelegateReceiver<br>`0x60421ffaa36f3a8e69c25887e575689f52b055f7` | project_anchor | unknown | live | verified | n/a | `0x30019eb135532bddf2da17659101cc000c73c8e4` |
| exact address book overlap | BridgeDelegateReceiver<br>`0x7eb87c3a4eabdad158781d0dbb7ab3589b9c2b4c` | project_anchor | unknown | live | verified | n/a | `0x30019eb135532bddf2da17659101cc000c73c8e4` |
| exact address book overlap | BridgeDelegateReceiver<br>`0x80b1116fc9f5334bc8d6502e59dc4c42ce98ab8d` | project_anchor | unknown | live | verified | n/a | `0x30019eb135532bddf2da17659101cc000c73c8e4` |
| exact address book overlap | BridgeDelegateReceiver<br>`0xac962acd42f93c6f26e1cf83271d2a53b208daa6` | project_anchor | unknown | live | verified | n/a | `0x30019eb135532bddf2da17659101cc000c73c8e4` |
| exact address book overlap | BridgeDelegateReceiver<br>`0xbcf3b107a5ecdd8efb70a74f44b827a1f7108c48` | project_anchor | unknown | live | verified | n/a | `0x30019eb135532bddf2da17659101cc000c73c8e4` |
| exact address book overlap | UnnamedContract<br>`0x208024e643564fb4c990481eb4f9ec1957f64c11` | project_anchor | unknown | live | unverified | n/a | `0x30019eb135532bddf2da17659101cc000c73c8e4` |
| exact address book overlap | UnnamedContract<br>`0xc9e61174b8751003f493d25c2ef49794ab6b1ac7` | project_anchor | unknown | live | unverified | n/a | `0x30019eb135532bddf2da17659101cc000c73c8e4` |
| exact address book overlap | OptimismBridgeSender<br>`0x0451255563e2aca170b2552111837572e7a0bacd` | project_anchor | unknown | live | verified | n/a | `0x30019eb135532bddf2da17659101cc000c73c8e4` |
| exact address book overlap | UnnamedContract<br>`0xfa6b857cc17740a946c9eb85c1a6896f2e0be98e` | project_anchor | unknown | live | unverified | n/a | `0x30019eb135532bddf2da17659101cc000c73c8e4` |
| exact address book overlap | SidechainView<br>`0x421dbf836b903b15ba09c40553ad305d22275482` | project_anchor | unknown | live | verified | n/a | `0x30019eb135532bddf2da17659101cc000c73c8e4` |
| exact address book overlap | AuraViewHelpersLite<br>`0x9e4cbe2eaff2fa727bc805e6cbbf2ff01ddb812b` | project_anchor | unknown | live | verified | n/a | `0x30019eb135532bddf2da17659101cc000c73c8e4` |
| exact address book overlap | SidechainView<br>`0xea865d0dacf923c8d6254de734f31294ca74c1dc` | project_anchor | unknown | live | verified | n/a | `0x30019eb135532bddf2da17659101cc000c73c8e4` |
| exact address book overlap | UnnamedContract<br>`0x0a6bcb3a0c03ab2bc8a058ee02ed11d50b494083` | project_anchor | unknown | live | unverified | n/a | `0x30019eb135532bddf2da17659101cc000c73c8e4` |
| exact address book overlap | UnnamedContract<br>`0x5073dc4072b23beb465f012d1be324bc0ebc119d` | project_anchor | unknown | live | unverified | n/a | `0x5452e6abbc7bcb9e0907a3f8f24434cbaf438ba4` |
| exact address book overlap | UnnamedContract<br>`0x739b0c838e47a28877caef270df0407fe5c62502` | project_anchor | unknown | live | unverified | n/a | `0x5452e6abbc7bcb9e0907a3f8f24434cbaf438ba4` |
| source verified unclassified | ArbitrumRootGaugeFactory<br>`0xad901309d9e9dbc5df19c84f729f429f0189a633` | non_address_book | unknown | unknown | verified | n/a | `0x3d64fb8a2ffd08c186e8060aa57c8011d8b999cc` |
| source verified unclassified | AuraBalProxyOFT<br>`0xab07f0279023886222e80e25cb4a01cd007b6764` | non_address_book | unknown | unknown | verified | n/a | `0x30019eb135532bddf2da17659101cc000c73c8e4` |
| source verified unclassified | AuraBalStaker<br>`0xa3fcafca8150636c3b736a16cd73d49cc8a7e10e` | non_address_book | unknown | unknown | verified | n/a | `0x30019eb135532bddf2da17659101cc000c73c8e4` |
| source verified unclassified | AuraBalStaker<br>`0xac98c986d8318ff08109ae6f4e7043468da9d0a2` | non_address_book | unknown | unknown | verified | n/a | `0x30019eb135532bddf2da17659101cc000c73c8e4` |
| source verified unclassified | AuraBalStrategy<br>`0x7372ece4c18beabc19981a53b557be90dcbd2b66` | non_address_book | unknown | unknown | verified | n/a | `0x30019eb135532bddf2da17659101cc000c73c8e4` |
| source verified unclassified | AuraBalStrategy<br>`0xca6481967e9ed5faedbc5dffa1dd8368979a2160` | non_address_book | unknown | unknown | verified | n/a | `0x30019eb135532bddf2da17659101cc000c73c8e4` |
| source verified unclassified | AuraBalVault<br>`0xb78c0d130dc07ba909ed5f6828abd5ea183b12bc` | non_address_book | unknown | unknown | verified | n/a | `0x30019eb135532bddf2da17659101cc000c73c8e4` |
| source verified unclassified | AuraClaimZap<br>`0x2e307704efae244c4aae6b63b601ee8da69e92a9` | non_address_book | unknown | unknown | verified | n/a | `0x0b7918e20479ef0ad21a302e463dc7624bddc740` |
| source verified unclassified | AuraClaimZap<br>`0x4e7d44500eb6c198854cf5b59bdac3b610f48d3a` | non_address_book | unknown | unknown | verified | n/a | `0x0b7918e20479ef0ad21a302e463dc7624bddc740` |
| source verified unclassified | AuraClaimZapV3<br>`0x1bc4d50d8785587f0d44f4296408e20f592ae347` | non_address_book | unknown | unknown | verified | n/a | `0x5452e6abbc7bcb9e0907a3f8f24434cbaf438ba4` |
| source verified unclassified | AuraClaimZapV3<br>`0x3eb33f9a2479af1f98297834861fb4e053a0215f` | non_address_book | unknown | unknown | verified | n/a | `0x30019eb135532bddf2da17659101cc000c73c8e4` |
| source verified unclassified | AuraClaimZapV3<br>`0xf8d54495f41eb7c3b392f46f691c39da77ef8307` | non_address_book | unknown | unknown | verified | n/a | `0x5452e6abbc7bcb9e0907a3f8f24434cbaf438ba4` |
| source verified unclassified | AuraMining<br>`0x744be650cea753de1e69bf6bad3c98490a855f52` | non_address_book | unknown | unknown | verified | n/a | `0x5452e6abbc7bcb9e0907a3f8f24434cbaf438ba4` |
| source verified unclassified | AuraProxyOFT<br>`0x9063c001af97c75a59dc27b0dd3d8dfa81e180ec` | non_address_book | unknown | unknown | verified | n/a | `0x30019eb135532bddf2da17659101cc000c73c8e4` |
| source verified unclassified | AuraToken<br>`0x665d01dbd89a0d1b693bb806feea499b5359cf15` | non_address_book | token | unknown | verified | n/a | `0xa28ea848801da877e1844f954ff388e857d405e5` |
| source verified unclassified | AuraVestedEscrow<br>`0x87e1cabecba39797a9ccc6416ed0f77fed056806` | non_address_book | unknown | unknown | verified | n/a | `0x30019eb135532bddf2da17659101cc000c73c8e4` |
| source verified unclassified | AuraVestedEscrow<br>`0xb750449e71999541574dc76a2d983a64b9d16087` | non_address_book | unknown | unknown | verified | n/a | `0x5452e6abbc7bcb9e0907a3f8f24434cbaf438ba4` |
| source verified unclassified | AuraViewHelpers<br>`0x129bbda5087e132983e7c20ae1f761333d40c229` | non_address_book | unknown | unknown | verified | n/a | `0x30019eb135532bddf2da17659101cc000c73c8e4` |
| source verified unclassified | Authorizer<br>`0xa331d84ec860bf466b4cdccfb4ac09a1b43f3ae6` | non_address_book | unknown | unknown | verified | n/a | `0x697a71353a4bc1eb1356763018a229c27a3fba0c` |
| source verified unclassified | AuthorizerAdaptor<br>`0x8f42adbba1b16eaae3bb5754915e0d06059add75` | non_address_book | unknown | unknown | verified | n/a | `0x3d64fb8a2ffd08c186e8060aa57c8011d8b999cc` |
| source verified unclassified | AuthorizerAdaptorEntrypoint<br>`0xf5decdb1f3d1ee384908fbe16d2f0348ae43a9ea` | non_address_book | unknown | unknown | verified | n/a | `0x3d64fb8a2ffd08c186e8060aa57c8011d8b999cc` |
| source verified unclassified | BALTokenHolderFactory<br>`0xb848f50141f3d4255b37ac288c25c109104f2158` | non_address_book | unknown | unknown | verified | n/a | `0x3d64fb8a2ffd08c186e8060aa57c8011d8b999cc` |
| source verified unclassified | BatchRelayerLibrary<br>`0x41b953164995c11c81da73d212ed8af25741b7ac` | non_address_book | unknown | unknown | verified | n/a | `0x3d64fb8a2ffd08c186e8060aa57c8011d8b999cc` |
| source verified unclassified | BatchRelayerLibrary<br>`0xd02992266bb6a6324a3ab8b62fecbc9a3c58d1f9` | non_address_book | unknown | unknown | verified | n/a | `0x3d64fb8a2ffd08c186e8060aa57c8011d8b999cc` |
| source verified unclassified | BatchRelayerLibrary<br>`0xd966d712f470067b60d37246404d6dfe5bf0b419` | non_address_book | unknown | unknown | verified | n/a | `0x3d64fb8a2ffd08c186e8060aa57c8011d8b999cc` |
| source verified unclassified | BoosterHelper<br>`0x0538ad853e9c191eb9826ed8c4cbc6b9b8a7270c` | non_address_book | unknown | unknown | verified | n/a | `0x5452e6abbc7bcb9e0907a3f8f24434cbaf438ba4` |
| source verified unclassified | BoosterHelper<br>`0x82bbbc3c7b459913ae6063858832a6c2c43d0bd0` | non_address_book | unknown | unknown | verified | n/a | `0x0b7918e20479ef0ad21a302e463dc7624bddc740` |
| source verified unclassified | BoosterHelper<br>`0xc44a3cd908e8586f08e8bd5171dccecddac5c391` | non_address_book | unknown | unknown | verified | n/a | `0x0b7918e20479ef0ad21a302e463dc7624bddc740` |
| source verified unclassified | BridgeDelegateReceiver<br>`0x0ab84c2a7929944cecaa4cdee9255680800ffa8e` | non_address_book | unknown | unknown | verified | n/a | `0x30019eb135532bddf2da17659101cc000c73c8e4` |
| source verified unclassified | BridgeDelegateReceiver<br>`0x430113ce763a9b35664bfcf96088fb4caa3f36f6` | non_address_book | unknown | unknown | verified | n/a | `0x30019eb135532bddf2da17659101cc000c73c8e4` |
| source verified unclassified | BridgeDelegateReceiver<br>`0x6992640358de1e18da8486c80d4ad11db1af8ec4` | non_address_book | unknown | unknown | verified | n/a | `0x30019eb135532bddf2da17659101cc000c73c8e4` |
| source verified unclassified | BridgeDelegateReceiver<br>`0x73b4cec14883d7e861157ecfe6e282042763c909` | non_address_book | unknown | unknown | verified | n/a | `0x30019eb135532bddf2da17659101cc000c73c8e4` |
| source verified unclassified | BridgeDelegateReceiver<br>`0x98b6dc58053570cee332ebf664df745d8ffcaece` | non_address_book | unknown | unknown | verified | n/a | `0x30019eb135532bddf2da17659101cc000c73c8e4` |
| source verified unclassified | BridgeDelegateReceiver<br>`0xb6d84df0ea2c8b04ef76053d1cc46e90c75ccc11` | non_address_book | unknown | unknown | verified | n/a | `0x30019eb135532bddf2da17659101cc000c73c8e4` |
| source verified unclassified | BridgeDelegateReceiver<br>`0xb8ca2ae3e199587078d9955c999d4f1555d75dad` | non_address_book | unknown | unknown | verified | n/a | `0x30019eb135532bddf2da17659101cc000c73c8e4` |
| source verified unclassified | CanonicalView<br>`0xbc4990b6607f456477d07c4dd80fb35258ac0b57` | non_address_book | unknown | unknown | verified | n/a | `0x30019eb135532bddf2da17659101cc000c73c8e4` |
| source verified unclassified | ChefForwarder<br>`0x57d23f0f101cbd25a05fc56fd07de32bcbb622e9` | non_address_book | unknown | unknown | verified | n/a | `0x30019eb135532bddf2da17659101cc000c73c8e4` |
| source verified unclassified | ChefForwarder<br>`0x7253584f04fc34c9979c570a170dc70d00a0ccf8` | non_address_book | unknown | unknown | verified | n/a | `0x30019eb135532bddf2da17659101cc000c73c8e4` |
| source verified unclassified | ClaimFeesHelper<br>`0x6403972c1e8c6d01c57eed62e6322c191ccb28d8` | non_address_book | unknown | unknown | verified | n/a | `0x0b7918e20479ef0ad21a302e463dc7624bddc740` |
| source verified unclassified | ComposableStablePoolFactory<br>`0xdba127fbc23fb20f5929c546af220a991b5c6e01` | non_address_book | unknown | unknown | verified | n/a | `0x3d64fb8a2ffd08c186e8060aa57c8011d8b999cc` |
| source verified unclassified | ComposableStablePoolFactory<br>`0xdc6d62ae091ea77331542042a72e5e38b188837c` | non_address_book | unknown | unknown | verified | n/a | `0x3d64fb8a2ffd08c186e8060aa57c8011d8b999cc` |
| source verified unclassified | ComposableStablePoolFactory<br>`0xf9ac7b9df2b3454e841110cce5550bd5ac6f875f` | non_address_book | unknown | unknown | verified | n/a | `0x3d64fb8a2ffd08c186e8060aa57c8011d8b999cc` |
| source verified unclassified | CrvDepositorWrapperForwarder<br>`0x4e3e2424ee20d177e7749c58db0ac46327760b1a` | non_address_book | unknown | unknown | verified | n/a | `0x30019eb135532bddf2da17659101cc000c73c8e4` |
| source verified unclassified | CrvDepositorWrapperForwarderV2<br>`0x9d6fc281587dc8a20f5e5cf9035c19751a12ef8b` | non_address_book | unknown | unknown | verified | n/a | `0x5452e6abbc7bcb9e0907a3f8f24434cbaf438ba4` |
| source verified unclassified | CrvDepositorWrapperSwapper<br>`0x2a2a2e691068cb1f61124c5a865756dca7f8682f` | non_address_book | unknown | unknown | verified | n/a | `0x5452e6abbc7bcb9e0907a3f8f24434cbaf438ba4` |
| source verified unclassified | DistributionScheduler<br>`0xbfd9769b061e57e478690299011a028194d66e3c` | non_address_book | unknown | unknown | verified | n/a | `0x3d64fb8a2ffd08c186e8060aa57c8011d8b999cc` |
| source verified unclassified | DoubleEntrypointFixRelayer<br>`0xca96c4f198d343e251b1a01f3eba061ef3da73c1` | non_address_book | unknown | unknown | verified | n/a | `0x3d64fb8a2ffd08c186e8060aa57c8011d8b999cc` |
| source verified unclassified | ExtraRewardStashModule<br>`0x48e529218743e41f6de5b7e8d552e8173707ce81` | non_address_book | unknown | unknown | verified | n/a | `0x5452e6abbc7bcb9e0907a3f8f24434cbaf438ba4` |
| source verified unclassified | FeeDistributor<br>`0x26743984e3357efc59f2fd6c1afdc310335a61c9` | non_address_book | unknown | unknown | verified | n/a | `0x3d64fb8a2ffd08c186e8060aa57c8011d8b999cc` |
| source verified unclassified | FeeForwarder<br>`0xe14360aa496a85fcfe4b75afd2ec4d95cba38fe1` | non_address_book | unknown | unknown | verified | n/a | `0x30019eb135532bddf2da17659101cc000c73c8e4` |
| source verified unclassified | FeeScheduler<br>`0x1a65276a9b6a0611506763839b1ffae3e86718b4` | non_address_book | unknown | unknown | verified | n/a | `0x30019eb135532bddf2da17659101cc000c73c8e4` |
| source verified unclassified | ForwarderHandler<br>`0x7663fd322021d5b1f36dbf0c97d34cfa039fcca1` | non_address_book | unknown | unknown | verified | n/a | `0x5452e6abbc7bcb9e0907a3f8f24434cbaf438ba4` |
| source verified unclassified | GaugeAdder<br>`0x2ffb7b215ae7f088ec2530c7aa8e1b24e398f26a` | non_address_book | unknown | unknown | verified | n/a | `0x3d64fb8a2ffd08c186e8060aa57c8011d8b999cc` |
| source verified unclassified | GaugeAdder<br>`0xc33e0fe411322009947931c32d2273ee645cdb5b` | non_address_book | unknown | unknown | verified | n/a | `0x3d64fb8a2ffd08c186e8060aa57c8011d8b999cc` |
| source verified unclassified | GaugeAdder<br>`0xed5ba579bb5d516263ff6e1c10fcac1040075fe2` | non_address_book | unknown | unknown | verified | n/a | `0x3d64fb8a2ffd08c186e8060aa57c8011d8b999cc` |
| source verified unclassified | GaugeAdderMigrationCoordinator<br>`0x1b57f637ce3408f1f834b0b70f9a595b062daea7` | non_address_book | unknown | unknown | verified | n/a | `0x3d64fb8a2ffd08c186e8060aa57c8011d8b999cc` |
| source verified unclassified | GaugeControllerQuerier<br>`0x8e5698dc4897dc12243c8642e77b4f21349db97c` | non_address_book | unknown | unknown | verified | n/a | `0x3d64fb8a2ffd08c186e8060aa57c8011d8b999cc` |
| source verified unclassified | GaugeVoteRewards<br>`0x26094f9a6a498c1fccd8ff65829f55fb8bd72a4e` | non_address_book | unknown | unknown | verified | n/a | `0x30019eb135532bddf2da17659101cc000c73c8e4` |
| source verified unclassified | GaugeVoteRewards<br>`0x54231c588b698dc9b91303c95c85f050da35189b` | non_address_book | unknown | unknown | verified | n/a | `0x30019eb135532bddf2da17659101cc000c73c8e4` |
| source verified unclassified | GaugeVoteRewards<br>`0xff209eb53ede2831b6c5e69cd3c79c36f5f39b23` | non_address_book | unknown | unknown | verified | n/a | `0x30019eb135532bddf2da17659101cc000c73c8e4` |
| source verified unclassified | HHChefClaimBriberModule<br>`0xe2565158e9984fd736002f58e2777260f2dd0f4b` | non_address_book | unknown | unknown | verified | n/a | `0x5452e6abbc7bcb9e0907a3f8f24434cbaf438ba4` |
| source verified unclassified | HHRewardsClaimForwarderModule<br>`0xb034e7ac8395fb373bbf8cb4c09cc4d4c1d80aa0` | non_address_book | unknown | unknown | verified | n/a | `0x5452e6abbc7bcb9e0907a3f8f24434cbaf438ba4` |
| source verified unclassified | L1Coordinator<br>`0x064d9aea351205c01da2270ffe19c8e4ca91904b` | non_address_book | unknown | unknown | verified | n/a | `0x30019eb135532bddf2da17659101cc000c73c8e4` |
| source verified unclassified | MasterChefRewardHook<br>`0x6a29cfd8a5f666a7d69da9437cd4c46616326815` | non_address_book | unknown | unknown | verified | n/a | `0x30019eb135532bddf2da17659101cc000c73c8e4` |
| source verified unclassified | MasterChefRewardHook<br>`0x9593062b34db348d604d972090242106de7b6560` | non_address_book | unknown | unknown | verified | n/a | `0x30019eb135532bddf2da17659101cc000c73c8e4` |
| source verified unclassified | MasterChefRewardHook<br>`0xb5932c9cfde9adda6d578fa168d7f8d2688b84da` | non_address_book | unknown | unknown | verified | n/a | `0x0b7918e20479ef0ad21a302e463dc7624bddc740` |
| source verified unclassified | MasterChefRewardHook<br>`0xf8dbcfe5203c000e5dc4e2bc828b15eb4a05800e` | non_address_book | unknown | unknown | verified | n/a | `0x0b7918e20479ef0ad21a302e463dc7624bddc740` |
| source verified unclassified | MerkleOrchard<br>`0xdae7e32adc5d490a43ccba1f0c736033f2b4efca` | non_address_book | unknown | unknown | verified | n/a | `0x3d64fb8a2ffd08c186e8060aa57c8011d8b999cc` |
| source verified unclassified | MockStaticAToken<br>`0x98c57b03654575682fae7fb19da19130318bd65d` | non_address_book | unknown | unknown | verified | n/a | `0x3d64fb8a2ffd08c186e8060aa57c8011d8b999cc` |
| source verified unclassified | MockStaticAToken<br>`0xba54bb8a7e0eefe160164d00c06a4f2ee8459a5f` | non_address_book | unknown | unknown | verified | n/a | `0x3d64fb8a2ffd08c186e8060aa57c8011d8b999cc` |
| source verified unclassified | MockStaticAToken<br>`0xf9f5e0f3f74f57755a8c8be7b2fedcaa40673080` | non_address_book | unknown | unknown | verified | n/a | `0x3d64fb8a2ffd08c186e8060aa57c8011d8b999cc` |
| source verified unclassified | OptimismRootGaugeFactory<br>`0x3083a1c455ff38d39e58dbac5040f465cf73c5c8` | non_address_book | unknown | unknown | verified | n/a | `0x3d64fb8a2ffd08c186e8060aa57c8011d8b999cc` |
| source verified unclassified | OptimismRootGaugeFactory<br>`0x866d4b65694c66fbfd15dd6fa933d0a6b3940a36` | non_address_book | unknown | unknown | verified | n/a | `0x3d64fb8a2ffd08c186e8060aa57c8011d8b999cc` |
| source verified unclassified | PolygonRootGaugeFactory<br>`0x4c4287b07d293e361281bceee8715c8cdeb64e34` | non_address_book | unknown | unknown | verified | n/a | `0x3d64fb8a2ffd08c186e8060aa57c8011d8b999cc` |
| source verified unclassified | PolygonRootGaugeFactory<br>`0xa98bce70c92ad2ef3288dbcd659bc0d6b62f8f13` | non_address_book | unknown | unknown | verified | n/a | `0x3d64fb8a2ffd08c186e8060aa57c8011d8b999cc` |
| source verified unclassified | PoolMigrator<br>`0x12adde99768a82871eaaecfbdb065b12c56f0578` | non_address_book | unknown | unknown | verified | n/a | `0x0b7918e20479ef0ad21a302e463dc7624bddc740` |
| source verified unclassified | PoolMigrator<br>`0x7a04e7b2c01f956575178db6d674d33d8d67188f` | non_address_book | unknown | unknown | verified | n/a | `0x0b7918e20479ef0ad21a302e463dc7624bddc740` |
| source verified unclassified | PoolRecoveryHelper<br>`0x1b300c86980a5195bcf49bd419a068d98dc133db` | non_address_book | unknown | unknown | verified | n/a | `0x3d64fb8a2ffd08c186e8060aa57c8011d8b999cc` |
| source verified unclassified | PoolRecoveryHelper<br>`0xcd59e55f3879b915184e96db3806be2abc7fb266` | non_address_book | unknown | unknown | verified | n/a | `0x3d64fb8a2ffd08c186e8060aa57c8011d8b999cc` |
| source verified unclassified | ProtocolFeePercentagesProvider<br>`0x97207b095e4d5c9a6e4cfbfcd2c3358e03b90c4a` | non_address_book | unknown | unknown | verified | n/a | `0x3d64fb8a2ffd08c186e8060aa57c8011d8b999cc` |
| source verified unclassified | ProtocolFeesWithdrawer<br>`0x5ef4c5352882b10893b70dbcaa0c000965bd23c5` | non_address_book | unknown | unknown | verified | n/a | `0x3d64fb8a2ffd08c186e8060aa57c8011d8b999cc` |
| source verified unclassified | ProtocolFeesWithdrawer<br>`0x8c8951476529b0710cd878d3318cf64b475654a7` | non_address_book | unknown | unknown | verified | n/a | `0x3d64fb8a2ffd08c186e8060aa57c8011d8b999cc` |
| source verified unclassified | ProxyFactory<br>`0xf5e2cfde016bd55bef42a5a4baad7e21cd39720d` | non_address_book | unknown | unknown | verified | n/a | `0x0b7918e20479ef0ad21a302e463dc7624bddc740` |
| source verified unclassified | ProxyFactory<br>`0xfcdeb46a92ff6b2980b60e175c5e6523d5d4cbab` | non_address_book | unknown | unknown | verified | n/a | `0x0b7918e20479ef0ad21a302e463dc7624bddc740` |
| source verified unclassified | RefundLogic<br>`0x2433477a10fc5d31b9513c638f19ee85caed53fd` | non_address_book | unknown | unknown | verified | n/a | `0x697a71353a4bc1eb1356763018a229c27a3fba0c` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [facu_spagnuolo_aurabal_vault_audit_report.pdf](https://github.com/aurafinance/aura-contracts/blob/main/audits/auraBalVault/facu_spagnuolo_aurabal_vault_audit_report.pdf) | Facu Spagnuolo | Audit | 2023-03 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 7 | medium |
| [halborn_aurabal_vault_audit_report.pdf](https://github.com/aurafinance/aura-contracts/blob/main/audits/auraBalVault/halborn_aurabal_vault_audit_report.pdf) | Halborn | Audit | 2023-03 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 6 | high |
| [halborn_sidechain_audit_report.pdf](https://github.com/aurafinance/aura-contracts/blob/main/audits/sidechain/halborn_sidechain_audit_report.pdf) | Halborn | Audit | 2023-06 | stale | Direct | n/a | matched | 10 | 0 | 0 | 10 | n/a |
| [hephyrius-internal-report.pdf](https://github.com/aurafinance/aura-contracts/blob/main/audits/sidechain/hephyrius-internal-report.pdf) | Hephyrius | Audit | n/a | unknown | Direct | contract_name | matched | 3 | 0 | 0 | 18 | high |
| [zellic_sidechain_audit_report.pdf](https://github.com/aurafinance/aura-contracts/blob/main/audits/sidechain/zellic_sidechain_audit_report.pdf) | Zellic | Audit | 2023-06 | stale | Direct | contract_name | matched | 6 | 0 | 0 | 30 | high |
| [facu_spagnuolo_aura_upgrade_01_audit_report.pdf](https://github.com/aurafinance/aura-contracts/blob/main/audits/upgrades/facu_spagnuolo_aura_upgrade_01_audit_report.pdf) | Facu Spagnuolo | Audit | n/a | unknown | Direct | n/a | matched | 1 | 0 | 0 | 9 | n/a |
| [hephyrius_aura_upgrade_01_audit_report.pdf](https://github.com/aurafinance/aura-contracts/blob/main/audits/upgrades/hephyrius_aura_upgrade_01_audit_report.pdf) | Hephyrius | Audit | n/a | unknown | Direct | n/a | matched | 1 | 0 | 0 | 9 | n/a |
| [Code4rena-Audit-Report-AuraFinance-v1.0.pdf](https://github.com/aurafinance/aura-contracts/blob/main/security/audits/Code4rena-Audit-Report-AuraFinance-v1.0.pdf) | Code4rena | Contest | 2022-07 | stale | Direct | contract_name | matched | 2 | 0 | 0 | 29 | high |
| [Halborn-Audit-Report-AuraFinance-v1.0.pdf](https://github.com/aurafinance/aura-contracts/blob/main/security/audits/Halborn-Audit-Report-AuraFinance-v1.0.pdf) | Halborn | Audit | 2022-06 | stale | Direct | contract_name | matched | 2 | 0 | 0 | 34 | high |
| [PeckShield-Audit-Report-AuraFinance-v1.0.pdf](https://github.com/aurafinance/aura-contracts/blob/main/security/audits/PeckShield-Audit-Report-AuraFinance-v1.0.pdf) | PeckShield | Audit | 2022-04 | stale | Direct | n/a | matched | 1 | 0 | 0 | 13 | n/a |
| [Aura_Finance_Migration_Review_Hephyrius.pdf](https://github.com/aurafinance/aura-contracts/blob/main/security/audits/migration/Aura_Finance_Migration_Review_Hephyrius.pdf) | Hephyrius | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 6 | n/a |
| [FacuSpagnuolo-Aura-Booster-migration-report.pdf](https://github.com/aurafinance/aura-contracts/blob/main/security/audits/migration/FacuSpagnuolo-Aura-Booster-migration-report.pdf) | FacuSpagnuolo | Audit | 2023-12 | stale | Direct | n/a | no match | 0 | 0 | 0 | 8 | n/a |
| [Halborn-Aura_Finance___Smart_Contract_Audit.pdf](https://github.com/aurafinance/aura-contracts/blob/main/security/audits/migration/Halborn-Aura_Finance___Smart_Contract_Audit.pdf) | Halborn | Audit | 2023-12 | stale | Direct | n/a | matched | 1 | 0 | 0 | 6 | n/a |
| [001-BaseRewardPool-Donate.md](https://github.com/aurafinance/aura-contracts/blob/main/security/disclosures/001-BaseRewardPool-Donate.md) | unknown | Audit | 2022-11 | stale | Direct | n/a | no match | 0 | 0 | 0 | 2 | n/a |
| [002-Booster-EIP1271.md](https://github.com/aurafinance/aura-contracts/blob/main/security/disclosures/002-Booster-EIP1271.md) | unknown | Audit | 2022-12 | stale | Direct | n/a | no match | 0 | 0 | 0 | 2 | n/a |
| [003-Assorted-Governance-griefing.md](https://github.com/aurafinance/aura-contracts/blob/main/security/disclosures/003-Assorted-Governance-griefing.md) | unknown | Audit | 2022-12 | stale | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [README.md](https://github.com/aurafinance/aura-docs/blob/main/aura/security/README.md) | unknown | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [risks.md](https://github.com/aurafinance/aura-docs/blob/main/aura/security/risks.md) | unknown | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [spaces/r4kLuYPt1EhIEVbkxHD8/uploads/dpPicVneOrKaZPH8PMdj/halborn_aurabal_vault_audit_report.pdf](https://2520301408-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2Fr4kLuYPt1EhIEVbkxHD8%2Fuploads%2FdpPicVneOrKaZPH8PMdj%2Fhalborn_aurabal_vault_audit_report.pdf) | Halborn | Audit | 2023-03 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 7 | high |
| [spaces/r4kLuYPt1EhIEVbkxHD8/uploads/DuQMD5ULdRtqravKUwxQ/Code4rena-Audit-Report-AuraFinance-v1.0.pdf](https://2520301408-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2Fr4kLuYPt1EhIEVbkxHD8%2Fuploads%2FDuQMD5ULdRtqravKUwxQ%2FCode4rena-Audit-Report-AuraFinance-v1.0.pdf) | Code4rena | Contest | 2022-07 | stale | Direct | contract_name | matched | 2 | 0 | 0 | 23 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [5958] facu_spagnuolo_aurabal_vault_audit_report.pdf — no match: No explicit scope section; contracts inferred from findings and notes. Date from header.
- [5959] halborn_aurabal_vault_audit_report.pdf — no match: Scope section lists 'compounder/*.sol' as in-scope. Contract names extracted from file paths and code references in findings.
- [5960] halborn_sidechain_audit_report.pdf — matched: No reason recorded
- [5961] hephyrius-internal-report.pdf — matched: Extracted contract names from the report's scope sections and contract listings. No audit date found in the provided text.
- [5962] zellic_sidechain_audit_report.pdf — matched: All contracts listed in the Scope section (page 7) and threat model sections are included. The audit date is from the cover page: June 16, 2023.
- [5963] facu_spagnuolo_aura_upgrade_01_audit_report.pdf — matched: No reason recorded
- [5964] hephyrius_aura_upgrade_01_audit_report.pdf — matched: No reason recorded
- [5966] Code4rena-Audit-Report-AuraFinance-v1.0.pdf — matched: Extracted contract names from the audit report findings and file references. The report states the code is composed of 44 smart contracts; extracted all mentioned contracts and interfaces. Audit date from report header: '2022-07-26'.
- [5967] Halborn-Audit-Report-AuraFinance-v1.0.pdf — matched: All contracts listed in the Scope section (1.4) were extracted. The audit date is the end date of the engagement (June 28th, 2022).
- [5968] PeckShield-Audit-Report-AuraFinance-v1.0.pdf — matched: No reason recorded
- [5969] Aura_Finance_Migration_Review_Hephyrius.pdf — no match: No reason recorded
- [5970] FacuSpagnuolo-Aura-Booster-migration-report.pdf — no match: No reason recorded
- [5971] Halborn-Aura_Finance___Smart_Contract_Audit.pdf — matched: No reason recorded
- [5972] 001-BaseRewardPool-Donate.md — no match: No reason recorded
- [5973] 002-Booster-EIP1271.md — no match: No reason recorded
- [5974] 003-Assorted-Governance-griefing.md — no match: The report is a security finding table, not a full audit report. No scope section or contract list is present. The only contract mentioned is 'BaseRewardPool' but it is explicitly marked as 'Not in scope'.
- [5976] README.md — no match: The document is a security overview page listing multiple audits but does not contain a scope section with specific contract names. It mentions 'AuraBal Compounder contracts', 'Sidechain contracts', and 'Convex Platform lite version contracts' but these are generic descriptions, not specific contract names.
- [5977] risks.md — no match: The provided text is a risk disclaimer, not an audit report. No contracts in scope or audit date were found.
- [15042] spaces/r4kLuYPt1EhIEVbkxHD8/uploads/dpPicVneOrKaZPH8PMdj/halborn_aurabal_vault_audit_report.pdf — no match: Scope section lists 'compounder/*.sol' as in-scope. Contract names extracted from file paths and code references in findings.
- [15043] spaces/r4kLuYPt1EhIEVbkxHD8/uploads/DuQMD5ULdRtqravKUwxQ/Code4rena-Audit-Report-AuraFinance-v1.0.pdf — matched: Extracted contract names from findings and file paths mentioned throughout the report. The report does not have a dedicated scope section, but the contracts are clearly part of the audited codebase. Audit date taken from the report header: '2022-07-26'.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| facu_spagnuolo_aurabal_vault_audit_report.pdf | AuraBalStrategy | unmatched — not counted | — | mentioned in findings and notes | no |
| facu_spagnuolo_aurabal_vault_audit_report.pdf | AuraBalStrategyBase | unmatched — not counted | — | mentioned in note N3 | no |
| facu_spagnuolo_aurabal_vault_audit_report.pdf | AuraBalVault | ambiguous — not counted | AuraBalVault (alternative) `0x4ea9317d90b61fc28c418c247ad0ca8939bbb0e9` — deployed 2024-06-05 16:54:57+03 — liveness: live (code_present_context)<br>AuraBalVault (alternative) `0x4ea9317d90b61fc28c418c247ad0ca8939bbb0e9` — deployed 2023-06-14 14:38:17+03 — liveness: live (code_present_context)<br>AuraBalVault (alternative) `0x4ea9317d90b61fc28c418c247ad0ca8939bbb0e9` — deployed 2023-07-19 01:21:35+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| facu_spagnuolo_aurabal_vault_audit_report.pdf | GenericVault | unmatched — not counted | — | mentioned in findings and notes | no |
| facu_spagnuolo_aurabal_vault_audit_report.pdf | HandlerBase | unmatched — not counted | — | mentioned in note N5 | no |
| facu_spagnuolo_aurabal_vault_audit_report.pdf | BBUSDHandlerv2 | unmatched — not counted | — | mentioned in notes N3, N6 | no |
| facu_spagnuolo_aurabal_vault_audit_report.pdf | BBUSDHandler | unmatched — not counted | — | mentioned in note N3 | no |
| halborn_aurabal_vault_audit_report.pdf | GenericVault | unmatched — not counted | — | Code location in findings | no |
| halborn_aurabal_vault_audit_report.pdf | GenericUnionVault | unmatched — not counted | — | Code location in findings | no |
| halborn_aurabal_vault_audit_report.pdf | AuraBalVault | ambiguous — not counted | AuraBalVault (alternative) `0x4ea9317d90b61fc28c418c247ad0ca8939bbb0e9` — deployed 2024-06-05 16:54:57+03 — liveness: live (code_present_context)<br>AuraBalVault (alternative) `0x4ea9317d90b61fc28c418c247ad0ca8939bbb0e9` — deployed 2023-06-14 14:38:17+03 — liveness: live (code_present_context)<br>AuraBalVault (alternative) `0x4ea9317d90b61fc28c418c247ad0ca8939bbb0e9` — deployed 2023-07-19 01:21:35+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| halborn_aurabal_vault_audit_report.pdf | Strategy | unmatched — not counted | — | Code location in findings | no |
| halborn_aurabal_vault_audit_report.pdf | StrategyBase | unmatched — not counted | — | Code location in findings | no |
| halborn_aurabal_vault_audit_report.pdf | FeeForwarder | unmatched — not counted | — | Code location in findings | no |
| halborn_sidechain_audit_report.pdf | AuraBalOFT | own contract | AuraBalOFT (alternative) `0x223738a747383d6f9f827d95964e4d8e8ac754ce` — deployed 2023-07-19 01:21:13+03 — liveness: live (code_present_context)<br>AuraBalOFT (alternative) `0x223738a747383d6f9f827d95964e4d8e8ac754ce` — deployed 2024-06-05 16:50:27+03 — liveness: live (code_present_context)<br>AuraBalOFT (selected) `0x223738a747383d6f9f827d95964e4d8e8ac754ce` — deployed 2023-06-14 14:38:04+03 — liveness: live (code_present_context) | deployment-date disambiguation: 2023-06-14 was 13d from audit; next candidate 48d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| halborn_sidechain_audit_report.pdf | AuraBalProxyOFT | own contract | AuraBalProxyOFT (selected) `0xdf9080b6bfe4630a97a0655c0016e0e9b43a7c68` — deployed 2023-06-14 14:22:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| halborn_sidechain_audit_report.pdf | AuraOFT | own contract | AuraOFT (selected) `0x1509706a6c66ca549ff0cb464de88231ddbe213b` — deployed 2023-06-14 14:31:05+03 — liveness: live (code_present_context)<br>AuraOFT (alternative) `0x1509706a6c66ca549ff0cb464de88231ddbe213b` — deployed 2023-10-16 15:40:51+03 — liveness: live (code_present_context)<br>AuraOFT (alternative) `0x1509706a6c66ca549ff0cb464de88231ddbe213b` — deployed 2023-08-04 01:25:15+03 — liveness: live (code_present_context)<br>AuraOFT (alternative) `0x1509706a6c66ca549ff0cb464de88231ddbe213b` — deployed 2023-07-19 01:07:23+03 — liveness: live (code_present_context)<br>AuraOFT (alternative) `0x1509706a6c66ca549ff0cb464de88231ddbe213b` — deployed 2023-06-30 18:15:57+03 — liveness: live (code_present_context) | deployment-date disambiguation: 2023-06-14 was 13d from audit; next candidate 29d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| halborn_sidechain_audit_report.pdf | AuraProxyOFT | own contract | AuraProxyOFT (selected) `0xb401f0cff9f05d10699c0e2c88a81dd923c1ffff` — deployed 2023-06-14 14:19:23+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| halborn_sidechain_audit_report.pdf | BaseRewardPool4626 | unmatched — not counted | — | — | no |
| halborn_sidechain_audit_report.pdf | BoosterLite | own contract | BoosterLite (alternative) `0x98ef32edd24e2c92525e59afc4475c1242a30184` — deployed 2023-07-19 01:07:55+03 — liveness: live (code_present_context)<br>BoosterLite (selected) `0x98ef32edd24e2c92525e59afc4475c1242a30184` — deployed 2023-06-14 14:31:18+03 — liveness: live (code_present_context)<br>BoosterLite (alternative) `0x98ef32edd24e2c92525e59afc4475c1242a30184` — deployed 2023-08-04 01:25:50+03 — liveness: live (code_present_context)<br>BoosterLite (alternative) `0x98ef32edd24e2c92525e59afc4475c1242a30184` — deployed 2023-06-30 18:16:17+03 — liveness: live (code_present_context)<br>BoosterLite (alternative) `0x98ef32edd24e2c92525e59afc4475c1242a30184` — deployed 2023-10-16 15:41:11+03 — liveness: live (code_present_context) | deployment-date disambiguation: 2023-06-14 was 13d from audit; next candidate 29d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| halborn_sidechain_audit_report.pdf | BridgeDelegateReceiver | own contract | BridgeDelegateReceiver (alternative) `0x80b1116fc9f5334bc8d6502e59dc4c42ce98ab8d` — deployed 2024-03-27 13:09:23+03 — liveness: live (current_address_book_code)<br>BridgeDelegateReceiver (alternative) `0xac962acd42f93c6f26e1cf83271d2a53b208daa6` — deployed 2023-08-03 16:56:11+03 — liveness: live (current_address_book_code)<br>BridgeDelegateReceiver (alternative) `0xbcf3b107a5ecdd8efb70a74f44b827a1f7108c48` — deployed 2023-11-16 15:32:35+03 — liveness: live (current_address_book_code)<br>BridgeDelegateReceiver (alternative) `0x60421ffaa36f3a8e69c25887e575689f52b055f7` — deployed 2023-06-28 18:37:23+03 — liveness: live (current_address_book_code)<br>BridgeDelegateReceiver (selected) `0x397a2d4d23c6fd1316ce25000820779006e80cd7` — deployed 2023-06-14 14:27:11+03 — liveness: live (current_address_book_code)<br>BridgeDelegateReceiver (alternative) `0x7eb87c3a4eabdad158781d0dbb7ab3589b9c2b4c` — deployed 2023-10-16 15:14:59+03 — liveness: live (current_address_book_code) | deployment-date disambiguation: 2023-06-14 was 13d from audit; next candidate 27d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| halborn_sidechain_audit_report.pdf | BridgeDelegateSender | unmatched — not counted | — | — | no |
| halborn_sidechain_audit_report.pdf | Create2Factory | unmatched — not counted | — | — | no |
| halborn_sidechain_audit_report.pdf | CrossChainConfig | unmatched — not counted | — | — | no |
| halborn_sidechain_audit_report.pdf | CrossChainConfigMessages | unmatched — not counted | — | — | no |
| halborn_sidechain_audit_report.pdf | GnosisBridgeSender | own contract | GnosisBridgeSender (selected) `0x908c9d41183ade493effc12bb9ad11a9333052bc` — deployed 2023-08-03 16:42:25+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| halborn_sidechain_audit_report.pdf | L1Coordinator | own contract | L1Coordinator (selected) `0xaa54f3b282805822419265208e669d12372a3811` — deployed 2023-06-14 14:19:47+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| halborn_sidechain_audit_report.pdf | L2Coordinator | unmatched — not counted | — | — | no |
| halborn_sidechain_audit_report.pdf | PausableOFT | unmatched — not counted | — | — | no |
| halborn_sidechain_audit_report.pdf | PausableProxyOFT | unmatched — not counted | — | — | no |
| halborn_sidechain_audit_report.pdf | PauseGuardian | unmatched — not counted | — | — | no |
| halborn_sidechain_audit_report.pdf | PoolManagerLite | own contract | PoolManagerLite (selected) `0xf24074a1a6ad620adc14745f9cc1fb1e7ba6ca71` — deployed 2023-06-14 14:31:56+03 — liveness: live (code_present_context)<br>PoolManagerLite (alternative) `0xf24074a1a6ad620adc14745f9cc1fb1e7ba6ca71` — deployed 2023-06-30 18:17:25+03 — liveness: live (code_present_context)<br>PoolManagerLite (alternative) `0xf24074a1a6ad620adc14745f9cc1fb1e7ba6ca71` — deployed 2023-10-16 15:42:29+03 — liveness: live (code_present_context)<br>PoolManagerLite (alternative) `0xf24074a1a6ad620adc14745f9cc1fb1e7ba6ca71` — deployed 2023-08-04 01:28:00+03 — liveness: live (code_present_context)<br>PoolManagerLite (alternative) `0xf24074a1a6ad620adc14745f9cc1fb1e7ba6ca71` — deployed 2023-07-19 01:09:09+03 — liveness: live (code_present_context) | deployment-date disambiguation: 2023-06-14 was 13d from audit; next candidate 29d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| halborn_sidechain_audit_report.pdf | SimpleBridgeDelegateSender | unmatched — not counted | — | — | no |
| halborn_sidechain_audit_report.pdf | VoterProxyLite | own contract | VoterProxyLite (alternative) `0xc181edc719480bd089b94647c2dc504e2700a2b0` — deployed 2023-10-16 15:40:37+03 — liveness: live (code_present_context)<br>VoterProxyLite (selected) `0xc181edc719480bd089b94647c2dc504e2700a2b0` — deployed 2023-06-14 14:30:59+03 — liveness: live (code_present_context)<br>VoterProxyLite (alternative) `0xc181edc719480bd089b94647c2dc504e2700a2b0` — deployed 2023-08-04 01:24:55+03 — liveness: live (code_present_context)<br>VoterProxyLite (alternative) `0xc181edc719480bd089b94647c2dc504e2700a2b0` — deployed 2023-07-19 00:53:49+03 — liveness: live (code_present_context)<br>VoterProxyLite (alternative) `0xc181edc719480bd089b94647c2dc504e2700a2b0` — deployed 2023-06-30 18:15:47+03 — liveness: live (code_present_context) | deployment-date disambiguation: 2023-06-14 was 13d from audit; next candidate 29d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| hephyrius-internal-report.pdf | VoterProxyLite | ambiguous — not counted | VoterProxyLite (alternative) `0xc181edc719480bd089b94647c2dc504e2700a2b0` — deployed 2023-10-16 15:40:37+03 — liveness: live (code_present_context)<br>VoterProxyLite (alternative) `0xc181edc719480bd089b94647c2dc504e2700a2b0` — deployed 2023-06-14 14:30:59+03 — liveness: live (code_present_context)<br>VoterProxyLite (alternative) `0xc181edc719480bd089b94647c2dc504e2700a2b0` — deployed 2023-08-04 01:24:55+03 — liveness: live (code_present_context)<br>VoterProxyLite (alternative) `0xc181edc719480bd089b94647c2dc504e2700a2b0` — deployed 2023-07-19 00:53:49+03 — liveness: live (code_present_context)<br>VoterProxyLite (alternative) `0xc181edc719480bd089b94647c2dc504e2700a2b0` — deployed 2023-06-30 18:15:47+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| hephyrius-internal-report.pdf | PoolManagerLite | ambiguous — not counted | PoolManagerLite (alternative) `0xf24074a1a6ad620adc14745f9cc1fb1e7ba6ca71` — deployed 2023-06-14 14:31:56+03 — liveness: live (code_present_context)<br>PoolManagerLite (alternative) `0xf24074a1a6ad620adc14745f9cc1fb1e7ba6ca71` — deployed 2023-06-30 18:17:25+03 — liveness: live (code_present_context)<br>PoolManagerLite (alternative) `0xf24074a1a6ad620adc14745f9cc1fb1e7ba6ca71` — deployed 2023-10-16 15:42:29+03 — liveness: live (code_present_context)<br>PoolManagerLite (alternative) `0xf24074a1a6ad620adc14745f9cc1fb1e7ba6ca71` — deployed 2023-08-04 01:28:00+03 — liveness: live (code_present_context)<br>PoolManagerLite (alternative) `0xf24074a1a6ad620adc14745f9cc1fb1e7ba6ca71` — deployed 2023-07-19 01:09:09+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| hephyrius-internal-report.pdf | BoosterOwnerLite | ambiguous — not counted | BoosterOwnerLite (alternative) `0xf044ee152c7d731825280350d876cf760181d96f` — deployed 2023-06-30 18:17:35+03 — liveness: live (code_present_context)<br>BoosterOwnerLite (alternative) `0x8b9da502cccb32dbf19cd68e258e6fd05e1b5eee` — deployed 2023-07-19 01:09:19+03 — liveness: live (code_present_context)<br>BoosterOwnerLite (alternative) `0xa9802db57c6d9218ccfa5bed6364dfd0cf25d985` — deployed 2023-08-04 01:28:20+03 — liveness: live (code_present_context)<br>BoosterOwnerLite (alternative) `0x3af95ba5c362075bb28e5a2a42d7cd1e201a1b66` — deployed 2023-06-14 14:32:03+03 — liveness: live (current_address_book_code)<br>BoosterOwnerLite (alternative) `0x0f0ddad80025adf6c5ca45905237e5ca12b755fc` — deployed 2023-10-16 15:42:43+03 — liveness: live (current_address_book_code)<br>UnnamedContract (alternative) `0xa7cd8430249ae45c343b569bb8f1c6abc9a32794` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| hephyrius-internal-report.pdf | BoosterLite | ambiguous — not counted | BoosterLite (alternative) `0x98ef32edd24e2c92525e59afc4475c1242a30184` — deployed 2023-07-19 01:07:55+03 — liveness: live (code_present_context)<br>BoosterLite (alternative) `0x98ef32edd24e2c92525e59afc4475c1242a30184` — deployed 2023-06-14 14:31:18+03 — liveness: live (code_present_context)<br>BoosterLite (alternative) `0x98ef32edd24e2c92525e59afc4475c1242a30184` — deployed 2023-08-04 01:25:50+03 — liveness: live (code_present_context)<br>BoosterLite (alternative) `0x98ef32edd24e2c92525e59afc4475c1242a30184` — deployed 2023-06-30 18:16:17+03 — liveness: live (code_present_context)<br>BoosterLite (alternative) `0x98ef32edd24e2c92525e59afc4475c1242a30184` — deployed 2023-10-16 15:41:11+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| hephyrius-internal-report.pdf | BaseRewardPool4626 | unmatched — not counted | — | listed in scope | no |
| hephyrius-internal-report.pdf | Create2Factory | unmatched — not counted | — | listed in scope | no |
| hephyrius-internal-report.pdf | PauseGuardian | unmatched — not counted | — | listed in scope | no |
| hephyrius-internal-report.pdf | CrossChainConfig | unmatched — not counted | — | listed in scope | no |
| hephyrius-internal-report.pdf | CrossChainMessages | unmatched — not counted | — | listed in scope | no |
| hephyrius-internal-report.pdf | PausableOFT | unmatched — not counted | — | listed in scope | no |
| hephyrius-internal-report.pdf | AuraOFT | ambiguous — not counted | AuraOFT (alternative) `0x1509706a6c66ca549ff0cb464de88231ddbe213b` — deployed 2023-06-14 14:31:05+03 — liveness: live (code_present_context)<br>AuraOFT (alternative) `0x1509706a6c66ca549ff0cb464de88231ddbe213b` — deployed 2023-10-16 15:40:51+03 — liveness: live (code_present_context)<br>AuraOFT (alternative) `0x1509706a6c66ca549ff0cb464de88231ddbe213b` — deployed 2023-08-04 01:25:15+03 — liveness: live (code_present_context)<br>AuraOFT (alternative) `0x1509706a6c66ca549ff0cb464de88231ddbe213b` — deployed 2023-07-19 01:07:23+03 — liveness: live (code_present_context)<br>AuraOFT (alternative) `0x1509706a6c66ca549ff0cb464de88231ddbe213b` — deployed 2023-06-30 18:15:57+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| hephyrius-internal-report.pdf | PausableProxyOFT | unmatched — not counted | — | listed in scope | no |
| hephyrius-internal-report.pdf | AuraProxyOFT | own contract | AuraProxyOFT (selected) `0xb401f0cff9f05d10699c0e2c88a81dd923c1ffff` — deployed 2023-06-14 14:19:23+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| hephyrius-internal-report.pdf | AuraBalOFT | ambiguous — not counted | AuraBalOFT (alternative) `0x223738a747383d6f9f827d95964e4d8e8ac754ce` — deployed 2023-07-19 01:21:13+03 — liveness: live (code_present_context)<br>AuraBalOFT (alternative) `0x223738a747383d6f9f827d95964e4d8e8ac754ce` — deployed 2024-06-05 16:50:27+03 — liveness: live (code_present_context)<br>AuraBalOFT (alternative) `0x223738a747383d6f9f827d95964e4d8e8ac754ce` — deployed 2023-06-14 14:38:04+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| hephyrius-internal-report.pdf | AuraBalProxyOFT | own contract | AuraBalProxyOFT (selected) `0xdf9080b6bfe4630a97a0655c0016e0e9b43a7c68` — deployed 2023-06-14 14:22:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| hephyrius-internal-report.pdf | L2Coordinator | unmatched — not counted | — | listed in scope | no |
| hephyrius-internal-report.pdf | L1Coordinator | own contract | L1Coordinator (selected) `0xaa54f3b282805822419265208e669d12372a3811` — deployed 2023-06-14 14:19:47+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| hephyrius-internal-report.pdf | Bridge Delegate Receiver | unmatched — not counted | — | listed in scope | no |
| hephyrius-internal-report.pdf | Bridge Delegate Sender | unmatched — not counted | — | listed in scope | no |
| hephyrius-internal-report.pdf | Gnosis Bridge Delegate | unmatched — not counted | — | listed in scope | no |
| hephyrius-internal-report.pdf | Arbitrum Bridge Delegate | unmatched — not counted | — | listed in scope | no |
| zellic_sidechain_audit_report.pdf | AuraBalProxyOFT | own contract | AuraBalProxyOFT (selected) `0xdf9080b6bfe4630a97a0655c0016e0e9b43a7c68` — deployed 2023-06-14 14:22:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| zellic_sidechain_audit_report.pdf | AuraBalRewardPool | unmatched — not counted | — | listed in scope and threat model | no |
| zellic_sidechain_audit_report.pdf | AuraOFT | ambiguous — not counted | AuraOFT (alternative) `0x1509706a6c66ca549ff0cb464de88231ddbe213b` — deployed 2023-06-14 14:31:05+03 — liveness: live (code_present_context)<br>AuraOFT (alternative) `0x1509706a6c66ca549ff0cb464de88231ddbe213b` — deployed 2023-10-16 15:40:51+03 — liveness: live (code_present_context)<br>AuraOFT (alternative) `0x1509706a6c66ca549ff0cb464de88231ddbe213b` — deployed 2023-08-04 01:25:15+03 — liveness: live (code_present_context)<br>AuraOFT (alternative) `0x1509706a6c66ca549ff0cb464de88231ddbe213b` — deployed 2023-07-19 01:07:23+03 — liveness: live (code_present_context)<br>AuraOFT (alternative) `0x1509706a6c66ca549ff0cb464de88231ddbe213b` — deployed 2023-06-30 18:15:57+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| zellic_sidechain_audit_report.pdf | AuraVestedEscrow | unmatched — not counted | — | listed in scope and threat model | no |
| zellic_sidechain_audit_report.pdf | BaseRewardPool4626 | unmatched — not counted | — | listed in scope and threat model | no |
| zellic_sidechain_audit_report.pdf | BoosterLite | ambiguous — not counted | BoosterLite (alternative) `0x98ef32edd24e2c92525e59afc4475c1242a30184` — deployed 2023-07-19 01:07:55+03 — liveness: live (code_present_context)<br>BoosterLite (alternative) `0x98ef32edd24e2c92525e59afc4475c1242a30184` — deployed 2023-06-14 14:31:18+03 — liveness: live (code_present_context)<br>BoosterLite (alternative) `0x98ef32edd24e2c92525e59afc4475c1242a30184` — deployed 2023-08-04 01:25:50+03 — liveness: live (code_present_context)<br>BoosterLite (alternative) `0x98ef32edd24e2c92525e59afc4475c1242a30184` — deployed 2023-06-30 18:16:17+03 — liveness: live (code_present_context)<br>BoosterLite (alternative) `0x98ef32edd24e2c92525e59afc4475c1242a30184` — deployed 2023-10-16 15:41:11+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| zellic_sidechain_audit_report.pdf | ExtraRewardsDistributor | unmatched — not counted | — | listed in scope and threat model | no |
| zellic_sidechain_audit_report.pdf | L1Coordinator | own contract | L1Coordinator (selected) `0xaa54f3b282805822419265208e669d12372a3811` — deployed 2023-06-14 14:19:47+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| zellic_sidechain_audit_report.pdf | PausableOFT | unmatched — not counted | — | listed in scope and threat model | no |
| zellic_sidechain_audit_report.pdf | PausableProxyOFT | unmatched — not counted | — | listed in scope and threat model | no |
| zellic_sidechain_audit_report.pdf | PoolManagerLite | ambiguous — not counted | PoolManagerLite (alternative) `0xf24074a1a6ad620adc14745f9cc1fb1e7ba6ca71` — deployed 2023-06-14 14:31:56+03 — liveness: live (code_present_context)<br>PoolManagerLite (alternative) `0xf24074a1a6ad620adc14745f9cc1fb1e7ba6ca71` — deployed 2023-06-30 18:17:25+03 — liveness: live (code_present_context)<br>PoolManagerLite (alternative) `0xf24074a1a6ad620adc14745f9cc1fb1e7ba6ca71` — deployed 2023-10-16 15:42:29+03 — liveness: live (code_present_context)<br>PoolManagerLite (alternative) `0xf24074a1a6ad620adc14745f9cc1fb1e7ba6ca71` — deployed 2023-08-04 01:28:00+03 — liveness: live (code_present_context)<br>PoolManagerLite (alternative) `0xf24074a1a6ad620adc14745f9cc1fb1e7ba6ca71` — deployed 2023-07-19 01:09:09+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| zellic_sidechain_audit_report.pdf | VirtualBalanceRewardPool | unmatched — not counted | — | listed in scope and threat model | no |
| zellic_sidechain_audit_report.pdf | BaseRewardPool | unmatched — not counted | — | listed in scope | no |
| zellic_sidechain_audit_report.pdf | BoosterOwnerLite | ambiguous — not counted | BoosterOwnerLite (alternative) `0xf044ee152c7d731825280350d876cf760181d96f` — deployed 2023-06-30 18:17:35+03 — liveness: live (code_present_context)<br>BoosterOwnerLite (alternative) `0x8b9da502cccb32dbf19cd68e258e6fd05e1b5eee` — deployed 2023-07-19 01:09:19+03 — liveness: live (code_present_context)<br>BoosterOwnerLite (alternative) `0xa9802db57c6d9218ccfa5bed6364dfd0cf25d985` — deployed 2023-08-04 01:28:20+03 — liveness: live (code_present_context)<br>BoosterOwnerLite (alternative) `0x3af95ba5c362075bb28e5a2a42d7cd1e201a1b66` — deployed 2023-06-14 14:32:03+03 — liveness: live (current_address_book_code)<br>BoosterOwnerLite (alternative) `0x0f0ddad80025adf6c5ca45905237e5ca12b755fc` — deployed 2023-10-16 15:42:43+03 — liveness: live (current_address_book_code)<br>UnnamedContract (alternative) `0xa7cd8430249ae45c343b569bb8f1c6abc9a32794` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| zellic_sidechain_audit_report.pdf | VoterProxyLite | ambiguous — not counted | VoterProxyLite (alternative) `0xc181edc719480bd089b94647c2dc504e2700a2b0` — deployed 2023-10-16 15:40:37+03 — liveness: live (code_present_context)<br>VoterProxyLite (alternative) `0xc181edc719480bd089b94647c2dc504e2700a2b0` — deployed 2023-06-14 14:30:59+03 — liveness: live (code_present_context)<br>VoterProxyLite (alternative) `0xc181edc719480bd089b94647c2dc504e2700a2b0` — deployed 2023-08-04 01:24:55+03 — liveness: live (code_present_context)<br>VoterProxyLite (alternative) `0xc181edc719480bd089b94647c2dc504e2700a2b0` — deployed 2023-07-19 00:53:49+03 — liveness: live (code_present_context)<br>VoterProxyLite (alternative) `0xc181edc719480bd089b94647c2dc504e2700a2b0` — deployed 2023-06-30 18:15:47+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| zellic_sidechain_audit_report.pdf | GenericVault | unmatched — not counted | — | listed in scope | no |
| zellic_sidechain_audit_report.pdf | SimpleStrategy | own contract | SimpleStrategy (selected) `0x4b5d2848678db574fbc2d2f629143d969a4f41cb` — deployed 2023-06-14 14:38:23+03 — liveness: live (code_present_context)<br>SimpleStrategy (alternative) `0x4b5d2848678db574fbc2d2f629143d969a4f41cb` — deployed 2024-06-05 16:55:07+03 — liveness: live (code_present_context)<br>SimpleStrategy (alternative) `0x4b5d2848678db574fbc2d2f629143d969a4f41cb` — deployed 2023-07-19 01:21:45+03 — liveness: live (code_present_context) | deployment-date disambiguation: 2023-06-14 was 2d from audit; next candidate 33d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| zellic_sidechain_audit_report.pdf | Strategy | unmatched — not counted | — | listed in scope | no |
| zellic_sidechain_audit_report.pdf | LzLib | unmatched — not counted | — | listed in scope | no |
| zellic_sidechain_audit_report.pdf | LzApp | unmatched — not counted | — | listed in scope | no |
| zellic_sidechain_audit_report.pdf | NonblockingLzApp | unmatched — not counted | — | listed in scope | no |
| zellic_sidechain_audit_report.pdf | LZEndpointMock | unmatched — not counted | — | listed in scope | no |
| zellic_sidechain_audit_report.pdf | OFT | unmatched — not counted | — | listed in scope | no |
| zellic_sidechain_audit_report.pdf | OFTCore | unmatched — not counted | — | listed in scope | no |
| zellic_sidechain_audit_report.pdf | ProxyOFT | unmatched — not counted | — | listed in scope | no |
| zellic_sidechain_audit_report.pdf | AuraBalOFT | own contract | AuraBalOFT (alternative) `0x223738a747383d6f9f827d95964e4d8e8ac754ce` — deployed 2023-07-19 01:21:13+03 — liveness: live (code_present_context)<br>AuraBalOFT (alternative) `0x223738a747383d6f9f827d95964e4d8e8ac754ce` — deployed 2024-06-05 16:50:27+03 — liveness: live (code_present_context)<br>AuraBalOFT (selected) `0x223738a747383d6f9f827d95964e4d8e8ac754ce` — deployed 2023-06-14 14:38:04+03 — liveness: live (code_present_context) | deployment-date disambiguation: 2023-06-14 was 2d from audit; next candidate 33d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| zellic_sidechain_audit_report.pdf | AuraProxyOFT | own contract | AuraProxyOFT (selected) `0xb401f0cff9f05d10699c0e2c88a81dd923c1ffff` — deployed 2023-06-14 14:19:23+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| zellic_sidechain_audit_report.pdf | Create2Factory | unmatched — not counted | — | listed in scope | no |
| zellic_sidechain_audit_report.pdf | CrossChainConfig | unmatched — not counted | — | listed in scope | no |
| zellic_sidechain_audit_report.pdf | CrossChainMessages | unmatched — not counted | — | listed in scope | no |
| zellic_sidechain_audit_report.pdf | L2Coordinator | unmatched — not counted | — | listed in scope | no |
| zellic_sidechain_audit_report.pdf | PauseGuardian | unmatched — not counted | — | listed in scope | no |
| zellic_sidechain_audit_report.pdf | BridgeDelegateReceiver | ambiguous — not counted | BridgeDelegateReceiver (alternative) `0x80b1116fc9f5334bc8d6502e59dc4c42ce98ab8d` — deployed 2024-03-27 13:09:23+03 — liveness: live (current_address_book_code)<br>BridgeDelegateReceiver (alternative) `0xac962acd42f93c6f26e1cf83271d2a53b208daa6` — deployed 2023-08-03 16:56:11+03 — liveness: live (current_address_book_code)<br>BridgeDelegateReceiver (alternative) `0xbcf3b107a5ecdd8efb70a74f44b827a1f7108c48` — deployed 2023-11-16 15:32:35+03 — liveness: live (current_address_book_code)<br>BridgeDelegateReceiver (alternative) `0x60421ffaa36f3a8e69c25887e575689f52b055f7` — deployed 2023-06-28 18:37:23+03 — liveness: live (current_address_book_code)<br>BridgeDelegateReceiver (alternative) `0x397a2d4d23c6fd1316ce25000820779006e80cd7` — deployed 2023-06-14 14:27:11+03 — liveness: live (current_address_book_code)<br>BridgeDelegateReceiver (alternative) `0x7eb87c3a4eabdad158781d0dbb7ab3589b9c2b4c` — deployed 2023-10-16 15:14:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| zellic_sidechain_audit_report.pdf | BridgeDelegateSender | unmatched — not counted | — | listed in scope | no |
| zellic_sidechain_audit_report.pdf | GnosisBridgeSender | own contract | GnosisBridgeSender (selected) `0x908c9d41183ade493effc12bb9ad11a9333052bc` — deployed 2023-08-03 16:42:25+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| zellic_sidechain_audit_report.pdf | SimpleBridgeDelegateSender | unmatched — not counted | — | listed in scope | no |
| facu_spagnuolo_aura_upgrade_01_audit_report.pdf | Booster | unmatched — not counted | — | — | no |
| facu_spagnuolo_aura_upgrade_01_audit_report.pdf | BoosterOwner | unmatched — not counted | — | — | no |
| facu_spagnuolo_aura_upgrade_01_audit_report.pdf | BoosterOwnerSecondary | unmatched — not counted | — | — | no |
| facu_spagnuolo_aura_upgrade_01_audit_report.pdf | ExtraRewardStashV3 | own contract | UnnamedContract (selected) `0xffa4587c1b2e373469ab6a8fe0ce4dbdb10282d5` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| facu_spagnuolo_aura_upgrade_01_audit_report.pdf | ExtraRewardsStash | unmatched — not counted | — | — | no |
| facu_spagnuolo_aura_upgrade_01_audit_report.pdf | PoolManager | unmatched — not counted | — | — | no |
| facu_spagnuolo_aura_upgrade_01_audit_report.pdf | PoolManagerProxy | unmatched — not counted | — | — | no |
| facu_spagnuolo_aura_upgrade_01_audit_report.pdf | PoolManagerSecondayProxy | unmatched — not counted | — | — | no |
| facu_spagnuolo_aura_upgrade_01_audit_report.pdf | StashToken | unmatched — not counted | — | — | no |
| facu_spagnuolo_aura_upgrade_01_audit_report.pdf | VoterProxy | unmatched — not counted | — | — | no |
| hephyrius_aura_upgrade_01_audit_report.pdf | BaseRewardPool | unmatched — not counted | — | — | no |
| hephyrius_aura_upgrade_01_audit_report.pdf | Booster | unmatched — not counted | — | — | no |
| hephyrius_aura_upgrade_01_audit_report.pdf | BoosterOwner | unmatched — not counted | — | — | no |
| hephyrius_aura_upgrade_01_audit_report.pdf | BoosterOwnerSecondary | unmatched — not counted | — | — | no |
| hephyrius_aura_upgrade_01_audit_report.pdf | ExtraRewardStashV3 | own contract | UnnamedContract (selected) `0xffa4587c1b2e373469ab6a8fe0ce4dbdb10282d5` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| hephyrius_aura_upgrade_01_audit_report.pdf | PoolManagerSecondary | unmatched — not counted | — | — | no |
| hephyrius_aura_upgrade_01_audit_report.pdf | PoolManagerV3 | unmatched — not counted | — | — | no |
| hephyrius_aura_upgrade_01_audit_report.pdf | PoolManagerV4 | unmatched — not counted | — | — | no |
| hephyrius_aura_upgrade_01_audit_report.pdf | StashToken | unmatched — not counted | — | — | no |
| hephyrius_aura_upgrade_01_audit_report.pdf | VoterProxy | unmatched — not counted | — | — | no |
| Code4rena-Audit-Report-AuraFinance-v1.0.pdf | AuraLocker | own contract | AuraLocker (selected) `0x9e1f4190f1a8fe0cd57421533decb57f9980922e` — deployed 2024-05-29 15:08:09+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Code4rena-Audit-Report-AuraFinance-v1.0.pdf | ExtraRewardsDistributor | unmatched — not counted | — | mentioned in findings | no |
| Code4rena-Audit-Report-AuraFinance-v1.0.pdf | BaseRewardPool4626 | unmatched — not counted | — | mentioned in findings | no |
| Code4rena-Audit-Report-AuraFinance-v1.0.pdf | CrvDepositorWrapper | unmatched — not counted | — | mentioned in findings | no |
| Code4rena-Audit-Report-AuraFinance-v1.0.pdf | AuraVestedEscrow | unmatched — not counted | — | mentioned in findings | no |
| Code4rena-Audit-Report-AuraFinance-v1.0.pdf | AuraClaimZap | unmatched — not counted | — | mentioned in findings | no |
| Code4rena-Audit-Report-AuraFinance-v1.0.pdf | ConvexMasterChef | unmatched — not counted | — | mentioned in findings | no |
| Code4rena-Audit-Report-AuraFinance-v1.0.pdf | CrvDepositor | unmatched — not counted | — | mentioned in findings | no |
| Code4rena-Audit-Report-AuraFinance-v1.0.pdf | BalLiquidityProvider | unmatched — not counted | — | mentioned in findings | no |
| Code4rena-Audit-Report-AuraFinance-v1.0.pdf | AuraBalRewardPool | unmatched — not counted | — | mentioned in findings | no |
| Code4rena-Audit-Report-AuraFinance-v1.0.pdf | AuraMerkleDrop | unmatched — not counted | — | mentioned in findings | no |
| Code4rena-Audit-Report-AuraFinance-v1.0.pdf | AuraMinter | unmatched — not counted | — | mentioned in findings | no |
| Code4rena-Audit-Report-AuraFinance-v1.0.pdf | AuraPenaltyForwarder | unmatched — not counted | — | mentioned in findings | no |
| Code4rena-Audit-Report-AuraFinance-v1.0.pdf | ClaimFeesHelper | unmatched — not counted | — | mentioned in findings | no |
| Code4rena-Audit-Report-AuraFinance-v1.0.pdf | Aura | unmatched — not counted | — | mentioned in findings | no |
| Code4rena-Audit-Report-AuraFinance-v1.0.pdf | AuraStakingProxy | unmatched — not counted | — | mentioned in findings | no |
| Code4rena-Audit-Report-AuraFinance-v1.0.pdf | Interfaces | unmatched — not counted | — | mentioned in findings | no |
| Code4rena-Audit-Report-AuraFinance-v1.0.pdf | VoterProxy | unmatched — not counted | — | mentioned in findings | no |
| Code4rena-Audit-Report-AuraFinance-v1.0.pdf | BaseRewardPool | unmatched — not counted | — | mentioned in findings | no |
| Code4rena-Audit-Report-AuraFinance-v1.0.pdf | VirtualBalanceRewardPool | unmatched — not counted | — | mentioned in findings | no |
| Code4rena-Audit-Report-AuraFinance-v1.0.pdf | RewardFactory | ambiguous — not counted | UnnamedContract (alternative) `0x252a18d569149cb9fd144d35842d2bee596b3a63` — liveness: live (current_address_book_code)<br>RewardFactory (alternative) `0x0f641b291ba374ec9b17a878c54b98005a0bacae` — deployed 2023-08-04 01:26:30+03 — liveness: live (code_present_context)<br>RewardFactory (alternative) `0xda2e6ba0b1abbca925b70e9747afbd481c16e7db` — deployed 2023-06-14 14:31:26+03 — liveness: live (code_present_context)<br>RewardFactory (alternative) `0x334df252cc0c44c37ba85dbeaa9c230c3f22f6b0` — deployed 2023-10-16 15:41:35+03 — liveness: live (code_present_context)<br>RewardFactory (alternative) `0xb292be31649a0b079dbdb772fcf5c7a02a6e0144` — deployed 2023-07-19 01:08:23+03 — liveness: live (code_present_context)<br>RewardFactory (alternative) `0x2f4cdf0d46f4e3e6d4d37836e73073046138d4f7` — deployed 2023-06-30 18:16:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Code4rena-Audit-Report-AuraFinance-v1.0.pdf | TokenFactory | ambiguous — not counted | TokenFactory (alternative) `0x87299312c820607f1e7e4d0c6715ceb594306fe9` — deployed 2023-08-04 01:26:45+03 — liveness: live (code_present_context)<br>TokenFactory (alternative) `0x87299312c820607f1e7e4d0c6715ceb594306fe9` — deployed 2023-06-14 14:31:32+03 — liveness: live (code_present_context)<br>TokenFactory (alternative) `0x87299312c820607f1e7e4d0c6715ceb594306fe9` — deployed 2023-07-19 01:08:33+03 — liveness: live (current_address_book_code)<br>TokenFactory (alternative) `0x87299312c820607f1e7e4d0c6715ceb594306fe9` — deployed 2023-06-30 18:16:45+03 — liveness: live (code_present_context)<br>TokenFactory (alternative) `0x87299312c820607f1e7e4d0c6715ceb594306fe9` — deployed 2023-10-16 15:41:45+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Code4rena-Audit-Report-AuraFinance-v1.0.pdf | DepositToken | unmatched — not counted | — | mentioned in findings | no |
| Code4rena-Audit-Report-AuraFinance-v1.0.pdf | ExtraRewardStashV3 | own contract | UnnamedContract (selected) `0xffa4587c1b2e373469ab6a8fe0ce4dbdb10282d5` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Code4rena-Audit-Report-AuraFinance-v1.0.pdf | Booster | unmatched — not counted | — | mentioned in findings | no |
| Code4rena-Audit-Report-AuraFinance-v1.0.pdf | PoolManagerSecondaryProxy | unmatched — not counted | — | mentioned in findings | no |
| Code4rena-Audit-Report-AuraFinance-v1.0.pdf | BoringMath | unmatched — not counted | — | mentioned in findings | no |
| Code4rena-Audit-Report-AuraFinance-v1.0.pdf | IGaugeController | unmatched — not counted | — | mentioned in findings | no |
| Code4rena-Audit-Report-AuraFinance-v1.0.pdf | IProxyFactory | unmatched — not counted | — | mentioned in findings | no |
| Code4rena-Audit-Report-AuraFinance-v1.0.pdf | IRewardHook | unmatched — not counted | — | mentioned in findings | no |
| Code4rena-Audit-Report-AuraFinance-v1.0.pdf | IRewarder | unmatched — not counted | — | mentioned in findings | no |
| Halborn-Audit-Report-AuraFinance-v1.0.pdf | Aura | unmatched — not counted | — | listed in scope | no |
| Halborn-Audit-Report-AuraFinance-v1.0.pdf | AuraBalRewardPool | unmatched — not counted | — | listed in scope | no |
| Halborn-Audit-Report-AuraFinance-v1.0.pdf | AuraClaimZap | unmatched — not counted | — | listed in scope | no |
| Halborn-Audit-Report-AuraFinance-v1.0.pdf | AuraLocker | own contract | AuraLocker (selected) `0x9e1f4190f1a8fe0cd57421533decb57f9980922e` — deployed 2024-05-29 15:08:09+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Halborn-Audit-Report-AuraFinance-v1.0.pdf | AuraMath | unmatched — not counted | — | listed in scope | no |
| Halborn-Audit-Report-AuraFinance-v1.0.pdf | AuraMerkleDrop | unmatched — not counted | — | listed in scope | no |
| Halborn-Audit-Report-AuraFinance-v1.0.pdf | AuraMinter | unmatched — not counted | — | listed in scope | no |
| Halborn-Audit-Report-AuraFinance-v1.0.pdf | AuraPenaltyForwarder | unmatched — not counted | — | listed in scope | no |
| Halborn-Audit-Report-AuraFinance-v1.0.pdf | AuraStakingProxy | unmatched — not counted | — | listed in scope | no |
| Halborn-Audit-Report-AuraFinance-v1.0.pdf | AuraVestedEscrow | unmatched — not counted | — | listed in scope | no |
| Halborn-Audit-Report-AuraFinance-v1.0.pdf | BalInvestor | unmatched — not counted | — | listed in scope | no |
| Halborn-Audit-Report-AuraFinance-v1.0.pdf | BalLiquidityProvider | unmatched — not counted | — | listed in scope | no |
| Halborn-Audit-Report-AuraFinance-v1.0.pdf | CrvDepositorWrapper | unmatched — not counted | — | listed in scope | no |
| Halborn-Audit-Report-AuraFinance-v1.0.pdf | ExtraRewardsDistributor | unmatched — not counted | — | listed in scope | no |
| Halborn-Audit-Report-AuraFinance-v1.0.pdf | RewardPoolDepositWrapper | ambiguous — not counted | UnnamedContract (alternative) `0xbddac3069f4e26f4e4f445926c8eeb9dcb68c26b` — liveness: live (current_address_book_code)<br>RewardPoolDepositWrapper (alternative) `0xa9952c914d86f896c53bf17125c4104cc058008e` — deployed 2023-10-16 16:40:15+03 — liveness: live (current_address_book_code)<br>RewardPoolDepositWrapper (alternative) `0x0fec3d212bcc29ef3e505b555d7a7343df0b7f76` — deployed 2023-08-04 12:01:25+03 — liveness: live (current_address_book_code)<br>RewardPoolDepositWrapper (alternative) `0xce66e8300dc1d1f5b0e46e9145fdf680a7e41146` — deployed 2023-07-19 01:34:27+03 — liveness: live (current_address_book_code)<br>RewardPoolDepositWrapper (alternative) `0x51b6e0ac6d6435650748513c71db453f96749fe1` — deployed 2023-07-10 18:29:47+03 — liveness: live (current_address_book_code)<br>RewardPoolDepositWrapper (alternative) `0x6b02fefd2f2e06f51e17b7d5b8b20d75fd6916be` — deployed 2023-06-15 18:31:52+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Halborn-Audit-Report-AuraFinance-v1.0.pdf | BaseRewardPool | unmatched — not counted | — | listed in scope | no |
| Halborn-Audit-Report-AuraFinance-v1.0.pdf | VirtualBalanceRewardPool | unmatched — not counted | — | listed in scope | no |
| Halborn-Audit-Report-AuraFinance-v1.0.pdf | ProxyFactory | ambiguous — not counted | ProxyFactory (alternative) `0x731886426a3199b988194831031dfb993f25d961` — deployed 2023-08-04 01:27:05+03 — liveness: live (current_address_book_code)<br>ProxyFactory (alternative) `0x731886426a3199b988194831031dfb993f25d961` — deployed 2023-07-19 01:08:43+03 — liveness: live (current_address_book_code)<br>ProxyFactory (alternative) `0x731886426a3199b988194831031dfb993f25d961` — deployed 2023-10-16 15:41:55+03 — liveness: live (current_address_book_code)<br>ProxyFactory (alternative) `0x731886426a3199b988194831031dfb993f25d961` — deployed 2023-06-30 18:16:55+03 — liveness: live (current_address_book_code)<br>ProxyFactory (alternative) `0x731886426a3199b988194831031dfb993f25d961` — deployed 2023-06-14 14:31:38+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Halborn-Audit-Report-AuraFinance-v1.0.pdf | DepositToken | unmatched — not counted | — | listed in scope | no |
| Halborn-Audit-Report-AuraFinance-v1.0.pdf | ExtraRewardStashV3 | own contract | UnnamedContract (selected) `0xffa4587c1b2e373469ab6a8fe0ce4dbdb10282d5` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Halborn-Audit-Report-AuraFinance-v1.0.pdf | RewardFactory | ambiguous — not counted | UnnamedContract (alternative) `0x252a18d569149cb9fd144d35842d2bee596b3a63` — liveness: live (current_address_book_code)<br>RewardFactory (alternative) `0x0f641b291ba374ec9b17a878c54b98005a0bacae` — deployed 2023-08-04 01:26:30+03 — liveness: live (code_present_context)<br>RewardFactory (alternative) `0xda2e6ba0b1abbca925b70e9747afbd481c16e7db` — deployed 2023-06-14 14:31:26+03 — liveness: live (code_present_context)<br>RewardFactory (alternative) `0x334df252cc0c44c37ba85dbeaa9c230c3f22f6b0` — deployed 2023-10-16 15:41:35+03 — liveness: live (code_present_context)<br>RewardFactory (alternative) `0xb292be31649a0b079dbdb772fcf5c7a02a6e0144` — deployed 2023-07-19 01:08:23+03 — liveness: live (code_present_context)<br>RewardFactory (alternative) `0x2f4cdf0d46f4e3e6d4d37836e73073046138d4f7` — deployed 2023-06-30 18:16:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Halborn-Audit-Report-AuraFinance-v1.0.pdf | cCrv | unmatched — not counted | — | listed in scope | no |
| Halborn-Audit-Report-AuraFinance-v1.0.pdf | BaseRewardPool4626 | unmatched — not counted | — | listed in scope | no |
| Halborn-Audit-Report-AuraFinance-v1.0.pdf | StashFactoryV2 | unmatched — not counted | — | listed in scope | no |
| Halborn-Audit-Report-AuraFinance-v1.0.pdf | PoolManagerSecondaryProxy | unmatched — not counted | — | listed in scope | no |
| Halborn-Audit-Report-AuraFinance-v1.0.pdf | VoterProxy | unmatched — not counted | — | listed in scope | no |
| Halborn-Audit-Report-AuraFinance-v1.0.pdf | Interfaces | unmatched — not counted | — | listed in scope | no |
| Halborn-Audit-Report-AuraFinance-v1.0.pdf | TokenFactory | ambiguous — not counted | TokenFactory (alternative) `0x87299312c820607f1e7e4d0c6715ceb594306fe9` — deployed 2023-08-04 01:26:45+03 — liveness: live (code_present_context)<br>TokenFactory (alternative) `0x87299312c820607f1e7e4d0c6715ceb594306fe9` — deployed 2023-06-14 14:31:32+03 — liveness: live (code_present_context)<br>TokenFactory (alternative) `0x87299312c820607f1e7e4d0c6715ceb594306fe9` — deployed 2023-07-19 01:08:33+03 — liveness: live (current_address_book_code)<br>TokenFactory (alternative) `0x87299312c820607f1e7e4d0c6715ceb594306fe9` — deployed 2023-06-30 18:16:45+03 — liveness: live (code_present_context)<br>TokenFactory (alternative) `0x87299312c820607f1e7e4d0c6715ceb594306fe9` — deployed 2023-10-16 15:41:45+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Halborn-Audit-Report-AuraFinance-v1.0.pdf | PoolManagerProxy | unmatched — not counted | — | listed in scope | no |
| Halborn-Audit-Report-AuraFinance-v1.0.pdf | CrvDepositor | unmatched — not counted | — | listed in scope | no |
| Halborn-Audit-Report-AuraFinance-v1.0.pdf | Booster | unmatched — not counted | — | listed in scope | no |
| Halborn-Audit-Report-AuraFinance-v1.0.pdf | ConvexMasterChef | unmatched — not counted | — | listed in scope | no |
| Halborn-Audit-Report-AuraFinance-v1.0.pdf | BoosterOwner | unmatched — not counted | — | listed in scope | no |
| Halborn-Audit-Report-AuraFinance-v1.0.pdf | RewardHook | unmatched — not counted | — | listed in scope | no |
| Halborn-Audit-Report-AuraFinance-v1.0.pdf | PoolManagerV3 | unmatched — not counted | — | listed in scope | no |
| Halborn-Audit-Report-AuraFinance-v1.0.pdf | ArbitartorVault | unmatched — not counted | — | listed in scope | no |
| PeckShield-Audit-Report-AuraFinance-v1.0.pdf | Aura.sol | unmatched — not counted | — | — | no |
| PeckShield-Audit-Report-AuraFinance-v1.0.pdf | AuraBalRewardPool.sol | unmatched — not counted | — | — | no |
| PeckShield-Audit-Report-AuraFinance-v1.0.pdf | AuraLocker.sol | own contract | AuraLocker (selected) `0x9e1f4190f1a8fe0cd57421533decb57f9980922e` — deployed 2024-05-29 15:08:09+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| PeckShield-Audit-Report-AuraFinance-v1.0.pdf | AuraMath.sol | unmatched — not counted | — | — | no |
| PeckShield-Audit-Report-AuraFinance-v1.0.pdf | AuraMinter.sol | unmatched — not counted | — | — | no |
| PeckShield-Audit-Report-AuraFinance-v1.0.pdf | AuraStakingProxy.sol | unmatched — not counted | — | — | no |
| PeckShield-Audit-Report-AuraFinance-v1.0.pdf | AuraVestedEscrow.sol | unmatched — not counted | — | — | no |
| PeckShield-Audit-Report-AuraFinance-v1.0.pdf | BalInvestor.sol | unmatched — not counted | — | — | no |
| PeckShield-Audit-Report-AuraFinance-v1.0.pdf | BaseRewardPool.sol | unmatched — not counted | — | — | no |
| PeckShield-Audit-Report-AuraFinance-v1.0.pdf | BaseRewardPool4626.sol | unmatched — not counted | — | — | no |
| PeckShield-Audit-Report-AuraFinance-v1.0.pdf | Booster.sol | unmatched — not counted | — | — | no |
| PeckShield-Audit-Report-AuraFinance-v1.0.pdf | CrvDepositor.sol | unmatched — not counted | — | — | no |
| PeckShield-Audit-Report-AuraFinance-v1.0.pdf | CrvDepositorWrapper.sol | unmatched — not counted | — | — | no |
| PeckShield-Audit-Report-AuraFinance-v1.0.pdf | VoterProxy.sol | unmatched — not counted | — | — | no |
| Aura_Finance_Migration_Review_Hephyrius.pdf | AuraClaimZap | unmatched — not counted | — | — | no |
| Aura_Finance_Migration_Review_Hephyrius.pdf | BaseRewardPool | unmatched — not counted | — | — | no |
| Aura_Finance_Migration_Review_Hephyrius.pdf | Booster | unmatched — not counted | — | — | no |
| Aura_Finance_Migration_Review_Hephyrius.pdf | CvxCrvRewards | unmatched — not counted | — | — | no |
| Aura_Finance_Migration_Review_Hephyrius.pdf | PoolMigrator | unmatched — not counted | — | — | no |
| Aura_Finance_Migration_Review_Hephyrius.pdf | VoterProxy | unmatched — not counted | — | — | no |
| FacuSpagnuolo-Aura-Booster-migration-report.pdf | AuraClaimZap | unmatched — not counted | — | — | no |
| FacuSpagnuolo-Aura-Booster-migration-report.pdf | BaseRewardPool | unmatched — not counted | — | — | no |
| FacuSpagnuolo-Aura-Booster-migration-report.pdf | Booster | unmatched — not counted | — | — | no |
| FacuSpagnuolo-Aura-Booster-migration-report.pdf | BoosterOwner | unmatched — not counted | — | — | no |
| FacuSpagnuolo-Aura-Booster-migration-report.pdf | CvxCrvRewards | unmatched — not counted | — | — | no |
| FacuSpagnuolo-Aura-Booster-migration-report.pdf | PoolManager | unmatched — not counted | — | — | no |
| FacuSpagnuolo-Aura-Booster-migration-report.pdf | PoolMigrator | unmatched — not counted | — | — | no |
| FacuSpagnuolo-Aura-Booster-migration-report.pdf | VoterProxy | unmatched — not counted | — | — | no |
| Halborn-Aura_Finance___Smart_Contract_Audit.pdf | AuraClaimZap | unmatched — not counted | — | — | no |
| Halborn-Aura_Finance___Smart_Contract_Audit.pdf | BaseRewardPool | unmatched — not counted | — | — | no |
| Halborn-Aura_Finance___Smart_Contract_Audit.pdf | Booster | unmatched — not counted | — | — | no |
| Halborn-Aura_Finance___Smart_Contract_Audit.pdf | ExtraRewardStashV3 | own contract | UnnamedContract (selected) `0xffa4587c1b2e373469ab6a8fe0ce4dbdb10282d5` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Halborn-Aura_Finance___Smart_Contract_Audit.pdf | GaugeMigrator | unmatched — not counted | — | — | no |
| Halborn-Aura_Finance___Smart_Contract_Audit.pdf | MasterChefRewardHook | unmatched — not counted | — | — | no |
| Halborn-Aura_Finance___Smart_Contract_Audit.pdf | PoolMigrator | unmatched — not counted | — | — | no |
| 001-BaseRewardPool-Donate.md | BaseRewardPool | unmatched — not counted | — | — | no |
| 001-BaseRewardPool-Donate.md | Booster | unmatched — not counted | — | — | no |
| 002-Booster-EIP1271.md | Booster | unmatched — not counted | — | — | no |
| 002-Booster-EIP1271.md | VoterProxy | unmatched — not counted | — | — | no |
| spaces/r4kLuYPt1EhIEVbkxHD8/uploads/dpPicVneOrKaZPH8PMdj/halborn_aurabal_vault_audit_report.pdf | GenericVault | unmatched — not counted | — | Code location in findings (HAL-01, HAL-02, HAL-07, HAL-08) | no |
| spaces/r4kLuYPt1EhIEVbkxHD8/uploads/dpPicVneOrKaZPH8PMdj/halborn_aurabal_vault_audit_report.pdf | GenericUnionVault | unmatched — not counted | — | Code location in findings (HAL-08) | no |
| spaces/r4kLuYPt1EhIEVbkxHD8/uploads/dpPicVneOrKaZPH8PMdj/halborn_aurabal_vault_audit_report.pdf | AuraBalVault | ambiguous — not counted | AuraBalVault (alternative) `0x4ea9317d90b61fc28c418c247ad0ca8939bbb0e9` — deployed 2024-06-05 16:54:57+03 — liveness: live (code_present_context)<br>AuraBalVault (alternative) `0x4ea9317d90b61fc28c418c247ad0ca8939bbb0e9` — deployed 2023-06-14 14:38:17+03 — liveness: live (code_present_context)<br>AuraBalVault (alternative) `0x4ea9317d90b61fc28c418c247ad0ca8939bbb0e9` — deployed 2023-07-19 01:21:35+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| spaces/r4kLuYPt1EhIEVbkxHD8/uploads/dpPicVneOrKaZPH8PMdj/halborn_aurabal_vault_audit_report.pdf | Strategy | unmatched — not counted | — | Code location in findings (HAL-03, HAL-04, HAL-05, HAL-07, HAL-09) | no |
| spaces/r4kLuYPt1EhIEVbkxHD8/uploads/dpPicVneOrKaZPH8PMdj/halborn_aurabal_vault_audit_report.pdf | StrategyBase | unmatched — not counted | — | Code location in findings (HAL-06) | no |
| spaces/r4kLuYPt1EhIEVbkxHD8/uploads/dpPicVneOrKaZPH8PMdj/halborn_aurabal_vault_audit_report.pdf | FeeForwarder | unmatched — not counted | — | Code location in findings (HAL-05) | no |
| spaces/r4kLuYPt1EhIEVbkxHD8/uploads/dpPicVneOrKaZPH8PMdj/halborn_aurabal_vault_audit_report.pdf | AuraBalStrategy | unmatched — not counted | — | Referenced in AuraBalVault.harvest() code (HAL-03) | no |
| spaces/r4kLuYPt1EhIEVbkxHD8/uploads/DuQMD5ULdRtqravKUwxQ/Code4rena-Audit-Report-AuraFinance-v1.0.pdf | AuraLocker | own contract | AuraLocker (selected) `0x9e1f4190f1a8fe0cd57421533decb57f9980922e` — deployed 2024-05-29 15:08:09+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/r4kLuYPt1EhIEVbkxHD8/uploads/DuQMD5ULdRtqravKUwxQ/Code4rena-Audit-Report-AuraFinance-v1.0.pdf | AuraBalRewardPool | unmatched — not counted | — | mentioned in findings | no |
| spaces/r4kLuYPt1EhIEVbkxHD8/uploads/DuQMD5ULdRtqravKUwxQ/Code4rena-Audit-Report-AuraFinance-v1.0.pdf | AuraClaimZap | unmatched — not counted | — | mentioned in findings | no |
| spaces/r4kLuYPt1EhIEVbkxHD8/uploads/DuQMD5ULdRtqravKUwxQ/Code4rena-Audit-Report-AuraFinance-v1.0.pdf | AuraMerkleDrop | unmatched — not counted | — | mentioned in findings | no |
| spaces/r4kLuYPt1EhIEVbkxHD8/uploads/DuQMD5ULdRtqravKUwxQ/Code4rena-Audit-Report-AuraFinance-v1.0.pdf | AuraMinter | unmatched — not counted | — | mentioned in findings | no |
| spaces/r4kLuYPt1EhIEVbkxHD8/uploads/DuQMD5ULdRtqravKUwxQ/Code4rena-Audit-Report-AuraFinance-v1.0.pdf | AuraPenaltyForwarder | unmatched — not counted | — | mentioned in findings | no |
| spaces/r4kLuYPt1EhIEVbkxHD8/uploads/DuQMD5ULdRtqravKUwxQ/Code4rena-Audit-Report-AuraFinance-v1.0.pdf | AuraStakingProxy | unmatched — not counted | — | mentioned in findings | no |
| spaces/r4kLuYPt1EhIEVbkxHD8/uploads/DuQMD5ULdRtqravKUwxQ/Code4rena-Audit-Report-AuraFinance-v1.0.pdf | AuraVestedEscrow | unmatched — not counted | — | mentioned in findings | no |
| spaces/r4kLuYPt1EhIEVbkxHD8/uploads/DuQMD5ULdRtqravKUwxQ/Code4rena-Audit-Report-AuraFinance-v1.0.pdf | BalLiquidityProvider | unmatched — not counted | — | mentioned in findings | no |
| spaces/r4kLuYPt1EhIEVbkxHD8/uploads/DuQMD5ULdRtqravKUwxQ/Code4rena-Audit-Report-AuraFinance-v1.0.pdf | ClaimFeesHelper | unmatched — not counted | — | mentioned in findings | no |
| spaces/r4kLuYPt1EhIEVbkxHD8/uploads/DuQMD5ULdRtqravKUwxQ/Code4rena-Audit-Report-AuraFinance-v1.0.pdf | ExtraRewardsDistributor | unmatched — not counted | — | mentioned in findings | no |
| spaces/r4kLuYPt1EhIEVbkxHD8/uploads/DuQMD5ULdRtqravKUwxQ/Code4rena-Audit-Report-AuraFinance-v1.0.pdf | CrvDepositorWrapper | unmatched — not counted | — | mentioned in findings | no |
| spaces/r4kLuYPt1EhIEVbkxHD8/uploads/DuQMD5ULdRtqravKUwxQ/Code4rena-Audit-Report-AuraFinance-v1.0.pdf | CrvDepositor | unmatched — not counted | — | mentioned in findings | no |
| spaces/r4kLuYPt1EhIEVbkxHD8/uploads/DuQMD5ULdRtqravKUwxQ/Code4rena-Audit-Report-AuraFinance-v1.0.pdf | BaseRewardPool4626 | unmatched — not counted | — | mentioned in findings | no |
| spaces/r4kLuYPt1EhIEVbkxHD8/uploads/DuQMD5ULdRtqravKUwxQ/Code4rena-Audit-Report-AuraFinance-v1.0.pdf | BaseRewardPool | unmatched — not counted | — | mentioned in findings | no |
| spaces/r4kLuYPt1EhIEVbkxHD8/uploads/DuQMD5ULdRtqravKUwxQ/Code4rena-Audit-Report-AuraFinance-v1.0.pdf | VirtualBalanceRewardPool | unmatched — not counted | — | mentioned in findings | no |
| spaces/r4kLuYPt1EhIEVbkxHD8/uploads/DuQMD5ULdRtqravKUwxQ/Code4rena-Audit-Report-AuraFinance-v1.0.pdf | RewardFactory | ambiguous — not counted | UnnamedContract (alternative) `0x252a18d569149cb9fd144d35842d2bee596b3a63` — liveness: live (current_address_book_code)<br>RewardFactory (alternative) `0x0f641b291ba374ec9b17a878c54b98005a0bacae` — deployed 2023-08-04 01:26:30+03 — liveness: live (code_present_context)<br>RewardFactory (alternative) `0xda2e6ba0b1abbca925b70e9747afbd481c16e7db` — deployed 2023-06-14 14:31:26+03 — liveness: live (code_present_context)<br>RewardFactory (alternative) `0x334df252cc0c44c37ba85dbeaa9c230c3f22f6b0` — deployed 2023-10-16 15:41:35+03 — liveness: live (code_present_context)<br>RewardFactory (alternative) `0xb292be31649a0b079dbdb772fcf5c7a02a6e0144` — deployed 2023-07-19 01:08:23+03 — liveness: live (code_present_context)<br>RewardFactory (alternative) `0x2f4cdf0d46f4e3e6d4d37836e73073046138d4f7` — deployed 2023-06-30 18:16:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| spaces/r4kLuYPt1EhIEVbkxHD8/uploads/DuQMD5ULdRtqravKUwxQ/Code4rena-Audit-Report-AuraFinance-v1.0.pdf | TokenFactory | ambiguous — not counted | TokenFactory (alternative) `0x87299312c820607f1e7e4d0c6715ceb594306fe9` — deployed 2023-08-04 01:26:45+03 — liveness: live (code_present_context)<br>TokenFactory (alternative) `0x87299312c820607f1e7e4d0c6715ceb594306fe9` — deployed 2023-06-14 14:31:32+03 — liveness: live (code_present_context)<br>TokenFactory (alternative) `0x87299312c820607f1e7e4d0c6715ceb594306fe9` — deployed 2023-07-19 01:08:33+03 — liveness: live (current_address_book_code)<br>TokenFactory (alternative) `0x87299312c820607f1e7e4d0c6715ceb594306fe9` — deployed 2023-06-30 18:16:45+03 — liveness: live (code_present_context)<br>TokenFactory (alternative) `0x87299312c820607f1e7e4d0c6715ceb594306fe9` — deployed 2023-10-16 15:41:45+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| spaces/r4kLuYPt1EhIEVbkxHD8/uploads/DuQMD5ULdRtqravKUwxQ/Code4rena-Audit-Report-AuraFinance-v1.0.pdf | PoolManagerSecondaryProxy | unmatched — not counted | — | mentioned in findings | no |
| spaces/r4kLuYPt1EhIEVbkxHD8/uploads/DuQMD5ULdRtqravKUwxQ/Code4rena-Audit-Report-AuraFinance-v1.0.pdf | VoterProxy | unmatched — not counted | — | mentioned in findings | no |
| spaces/r4kLuYPt1EhIEVbkxHD8/uploads/DuQMD5ULdRtqravKUwxQ/Code4rena-Audit-Report-AuraFinance-v1.0.pdf | ExtraRewardStashV3 | own contract | UnnamedContract (selected) `0xffa4587c1b2e373469ab6a8fe0ce4dbdb10282d5` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/r4kLuYPt1EhIEVbkxHD8/uploads/DuQMD5ULdRtqravKUwxQ/Code4rena-Audit-Report-AuraFinance-v1.0.pdf | Booster | unmatched — not counted | — | mentioned in findings | no |
| spaces/r4kLuYPt1EhIEVbkxHD8/uploads/DuQMD5ULdRtqravKUwxQ/Code4rena-Audit-Report-AuraFinance-v1.0.pdf | DepositToken | unmatched — not counted | — | mentioned in findings | no |
| spaces/r4kLuYPt1EhIEVbkxHD8/uploads/DuQMD5ULdRtqravKUwxQ/Code4rena-Audit-Report-AuraFinance-v1.0.pdf | ConvexMasterChef | unmatched — not counted | — | mentioned in findings | no |
| spaces/r4kLuYPt1EhIEVbkxHD8/uploads/DuQMD5ULdRtqravKUwxQ/Code4rena-Audit-Report-AuraFinance-v1.0.pdf | Aura | unmatched — not counted | — | mentioned in findings | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| arbitrum | `0xde386aedec27521daf1f8a49c03ada7c158455bf` | ArbitrumBridgeSender | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0x4ea9317d90b61fc28c418c247ad0ca8939bbb0e9` | AuraBalVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x96d15d08538a17a03b0210fd1626d5f42bdba9a4` | AuraDistributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0x9e4cbe2eaff2fa727bc805e6cbbf2ff01ddb812b` | AuraViewHelpersLite | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xbd2e14d04777e551a8fe3822cac0df51984b029e` | AuraViewHelpersLite | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0xf044ee152c7d731825280350d876cf760181d96f` | BoosterOwnerLite | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | `0xa9802db57c6d9218ccfa5bed6364dfd0cf25d985` | BoosterOwnerLite | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0x8b9da502cccb32dbf19cd68e258e6fd05e1b5eee` | BoosterOwnerLite | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x0f0ddad80025adf6c5ca45905237e5ca12b755fc` | BoosterOwnerLite | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x3af95ba5c362075bb28e5a2a42d7cd1e201a1b66` | BoosterOwnerLite | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x60421ffaa36f3a8e69c25887e575689f52b055f7` | BridgeDelegateReceiver | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x7eb87c3a4eabdad158781d0dbb7ab3589b9c2b4c` | BridgeDelegateReceiver | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x80b1116fc9f5334bc8d6502e59dc4c42ce98ab8d` | BridgeDelegateReceiver | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xac962acd42f93c6f26e1cf83271d2a53b208daa6` | BridgeDelegateReceiver | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xbcf3b107a5ecdd8efb70a74f44b827a1f7108c48` | BridgeDelegateReceiver | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | `0xca85e2ce206b48ee28a87b0a06f9519abe627451` | ChildStashRewardDistro | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x37aa9ad9744d0686df1c7053225e700ce13e31dd` | KeeperMulticall3 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x54f2dec216dffb9174edb0d53910bada5227a14d` | L1PoolManagerProxy | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x0451255563e2aca170b2552111837572e7a0bacd` | OptimismBridgeSender | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0x25e7c574c4016e09f608971f97c3b09a6cf4f669` | PolygonBridgeSender | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x2f4cdf0d46f4e3e6d4d37836e73073046138d4f7` | RewardFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | `0x0f641b291ba374ec9b17a878c54b98005a0bacae` | RewardFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0xb292be31649a0b079dbdb772fcf5c7a02a6e0144` | RewardFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x334df252cc0c44c37ba85dbeaa9c230c3f22f6b0` | RewardFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xda2e6ba0b1abbca925b70e9747afbd481c16e7db` | RewardFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | `0x0fec3d212bcc29ef3e505b555d7a7343df0b7f76` | RewardPoolDepositWrapper | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x617963d46b882ece880ab18bc232f513e91fdd47` | SidechainClaimZap | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | `0x4ea38a5739d467f7f84c06155ee2ad745e5328e8` | SidechainClaimZap | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | `0x421dbf836b903b15ba09c40553ad305d22275482` | SidechainView | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0xea865d0dacf923c8d6254de734f31294ca74c1dc` | SidechainView | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x87299312c820607f1e7e4d0c6715ceb594306fe9` | TokenFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0x05589cbbe1cc0357986df6de4031b953819079c2` | VirtualRewardFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 215 |
| upstream | 16 |
| standard_library | 4 |
| needs_review | 298 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 10
- Inherited remapped matches: 0
- Address-book scope dispositions: 29 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 23 ambiguous, 196 unmatched
- Matched-own operational status: 29 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=7, low=3, medium=1
- Match method counts: temporal_name=8, unique_name=21

Zero-match audit list:

- [5958] facu_spagnuolo_aurabal_vault_audit_report.pdf
- [5959] halborn_aurabal_vault_audit_report.pdf
- [5969] Aura_Finance_Migration_Review_Hephyrius.pdf
- [5970] FacuSpagnuolo-Aura-Booster-migration-report.pdf
- [5972] 001-BaseRewardPool-Donate.md
- [5973] 002-Booster-EIP1271.md
- [5974] 003-Assorted-Governance-griefing.md
- [5976] README.md
- [5977] risks.md
- [15042] spaces/r4kLuYPt1EhIEVbkxHD8/uploads/dpPicVneOrKaZPH8PMdj/halborn_aurabal_vault_audit_report.pdf

Fork inheritance lineage and inherited audits are included when available.
