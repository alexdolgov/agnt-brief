# Agentic Audit Brief: Cronos zkEVM Bridge

## Export Authority

- Production state: **blocked no audit authority**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 0 (0 matched; 0 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `f59b0c07e38ecec2d34eb2896e4262470519ed280e5a0a28b0f46fc69c79a374`

## Project Overview

- Project: Cronos zkEVM Bridge (`cronos-zkevm-bridge`)
- Website: [https://zkevm.cronos.org/](https://zkevm.cronos.org/)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: ethereum, sepolia
- Contract surface: 266 unique implementations (266 raw deployments)
- Coverage basis: 0/3 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $17,420,469.54
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Cronos zkEVM Bridge. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 3 contract row(s) across cronos, ethereum, sepolia. Structural roles: 2 infra, 1 core. 2 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 3
- Structural roles: infra (2), core (1)
- Contract kinds: contract (3)
- Detected standards: erc1967proxy (2), accesscontrol (1), erc165 (1), pausable (1)
- Frameworks: openzeppelin (3)
- Upgradeable-pattern rows: 2

## Fork Analysis

0 of 10 contracts are derived from known codebases. 10 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x2260fac5e5542a773aa44fbcfedf7c193bc2c599`, chain 1)
- UnnamedContract (`0x3766eb5f07dbc60d39a2059a9a29fd9b7d3c356d`, chain 1)
- UnnamedContract (`0x5d8ba173dc6c3c90c8f7c04c9288bef5fdbad06e`, chain 1)
- UnnamedContract (`0xa0b73e1ff0b80914ab6fe0444e65848c4c34450b`, chain 1)
- UnnamedContract (`0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48`, chain 1)
- UnnamedContract (`0xd7f9f54194c633f36ccd5f3da84ad4a1c38cb2cb`, chain 1)
- UnnamedContract (`0xfa59075dfce274e028b58bddfcc3d709960f594a`, chain 1)
- ERC1967Proxy (`0x28ff2e4dd1b58efeb0fc138602a28d5ae81e44e2`, chain 1)
- ERC1967Proxy (`0x76bf2d1e6dfda645c0c17440b17eccc181dfc351`, chain 1)
- ZkCroMintAndBridge (`0xe69a535730858fd8dc386b448972a9f801ab4e12`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 3; live-surface rows included: 3 (3 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 10/37 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/3 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 10 own, 9 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 247 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 2
- Confirmed-live implementations: 10 of 266 unique; 256 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/9
- Verified + Unaudited implementations: 9
- Verified by bytecode match: 0
- Unverified implementations: 257
- Unique implementations: 266
- Raw deployments: 266
- Audits discovered: 0 (0 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Audit staleness (calendar age): 0 fresh, 0 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (9)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| BridgeMiddleware | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x248c731b155af4cae198af705fb803f087a0b01e` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | project_anchor | own_supporting | 1 | ethereum | unit-234579 | `0x28ff2e4dd1b58efeb0fc138602a28d5ae81e44e2` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | project_anchor | own_supporting | 1 | ethereum | unit-234580 | `0x76bf2d1e6dfda645c0c17440b17eccc181dfc351` | ⚠️ Unaudited |
| EthereumDeposit | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe8dd4838c47ebf87d8fdb63e7f6dd02c7432d2ac` | ⚠️ Unaudited |
| YbEthBridge | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd91629518a1ec964cfce27c2a939f689dcbdf73f` | ⚠️ Unaudited |
| YbEthNft | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x43df9d854d3fcb882847b9a638cabd06fe86d2c5` | ⚠️ Unaudited |
| YBUSD | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd501a4d2141799f3228c40af972df622c632b7ce` | ⚠️ Unaudited |
| YBUSDBridge | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x17dacad8aa962963830136422e2eaa8d27d014f8` | ⚠️ Unaudited |
| ZkCroMintAndBridge | unknown | project_anchor | own_supporting | 0 | ethereum | unit-234560 | `0xe69a535730858fd8dc386b448972a9f801ab4e12` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (257)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-234545 | `0x2260fac5e5542a773aa44fbcfedf7c193bc2c599` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x34b35bed5aced7c4472de906912acb3e4c4616a5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-234547 | `0x3766eb5f07dbc60d39a2059a9a29fd9b7d3c356d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3e8640574aa764763291ed733672d3a105107ac5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3fa18f870818b85002dd627617a7eda332d0daa2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x42696a64a238e5c661b1bad2530198d54e7b0dff` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-234549 | `0x5d8ba173dc6c3c90c8f7c04c9288bef5fdbad06e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8f6b0512e63a644631694178b83419fecd90762d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-234552 | `0xa0b73e1ff0b80914ab6fe0444e65848c4c34450b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-234553 | `0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc0c23f557e0e9cc324e2817f26fffcca4952d6a2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xca06411bd7a7296d7dbdd0050dfc846e95febeb7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-234559 | `0xd7f9f54194c633f36ccd5f3da84ad4a1c38cb2cb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xded4dd6e03a7caa6278ee453be2c26363f50643d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe5a5f138005e19a3e6d0fe68b039397eeef2322b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-234562 | `0xfa59075dfce274e028b58bddfcc3d709960f594a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x0207a8b17b63da381c891e196702cd15eecd7afc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x036af49180f9806bcbb980081ee31bb98fc1a5c3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x03cac364a8470915f30e328a0c658b7e575c5349` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x03dd3a091e84228bd850c7a01f596d2925a384f6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x0518ef9cd826a85c8f1e910f8c6eb4b0f2a9da03` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x05b877fa00794f2f84dbb42139a7486ad0e8e644` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x0b9485108135b9319a10a84a5fd71ca5899aff14` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x0bb4d467f3d91150b5beccf293f443c2dc8c89a6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x0f5882de0f6128b3e7098cb69ecbeae46e5db34a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x10858d1fa22533790d5dd14fb324f3233a3a2078` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x124a926f6a4fb63316f919fab42f3dbd876928a5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x17a295f2783579eaac1b614228896e1214a0511d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x19c16bfa60490f8a6037fbd71a18b79220e151d5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x1cb127630111a2364561567b736bcd9b4f2497e0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x1d00bc31a4b539073a8f5709405c9f1d132ffb65` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x1f05c87d6dd435840da0083e3dd764d67a7f1240` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x1f38f5bad6b59d546af4adc6460b4f31f7bb6acb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x20956e50e4fef7b91a8f6cd84575b8f8596c3156` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x21bee8f2896bfa41c5d4003135c1ab44d25c7bec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x25dc988e0f2fd1b7a8e177dcd25db5c8c8428c0d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x26c27de0bdf4cf2d317d3958695c94110a6a37a9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x26f5fcaaad7a610b733cbbec1979e5f74d8c1cbb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x28d977639ac6d731c0e3c1319d7c3bc7c629afaf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x2bbbba49c9e4920d010f28f8b6a33b89311e0d3f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x2bf522ce94ce0905e60622c6c7d4ff5f5ac58384` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x2c99e11c080e8971097f1dfcd9f2e587d3e7c8cc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x2cffc39d3d03d6a68407bca6c28dace187169be2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x2d98192b9106cbe946cc8dadf1a0e6ebc1100b84` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x2e2a96343b3d296753d5a3dc8eb8228e3254af49` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x31d60c612c2ee0b96c11e9ae034725efe919cd3d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x33288f583b19ec45780fcda28d93b9c7f538ba37` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x34f09413747cc80fc3c74a0e87f58d2f9e09463c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x35351502609b41364a5f3414e56e0a31e53fb3db` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-234565 | `0x35a54c8c757806eb6820629bc82d90e056394c92` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x372c46dd7d6d9c7eab92f15374192a6e96f1e86d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x37b374a10ab03b98f796dab6c7c1ab3168eadfd6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x384655e9ec51caf70a1eaefe32a4eb20bf0e5e1f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x38d17c81e21f4ea22b51a765436152392bb03846` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x3aa4b3414c08bde2f0fc087c8e6c292361e7ff1a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x3b328c60485492da50dac2b1971c0686f7fb6587` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x3b4f4cfd10ee7df9cb988bc37c0d5060d110973e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x3d16bbd2b1ef7df09cf9546cd7e3fba8a988f456` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x3e579b66214c0df4721cc6366d1b03bba4ab56ce` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-234566 | `0x3e8b2fe58675126ed30d0d12dea2a9bda72d18ae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x3f7da9b715bb800f085464717191b53020ab73cd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x40a8a74357f3dc9bffc6dbab0a0522ff9b60b58b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x40ef90ac3178bc4af9f961f135538253bd5ded43` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x41abb8ad7fc9c15c3daee75906c8f32215a202ef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x42022426944dc2b848a14ccbbf11113997132c2d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x445d88315145c1722ffb8ead2c7fbb67e9c4348a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x45659bd2977b5c8ce06461f2d18740a30a4bd841` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x460d2c834d99d6574b7b8e37b8a752b8272a83f2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x474d6c0c56d4aa98676811073d42746d51fcaac1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x4931deaa9647e64f82beb983f13456da2499f294` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x495fa7cdea4e921b53f245cbb932c3e95e29145e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-234567 | `0x49ce7551514f3c2bf44b50442765bb112d0e8204` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x4bf65570f944035fda7e54ff70b4fa0731272ceb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x4c505d0ac7803ec9716679ed21bd4b8ddf2f20f6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x4c6c45ee26bbc2f705375a6e6169b5806279a740` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x4ce7fbd7fd3d239934d6bd5f572df70199ac6918` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x4cf45793b120b100c0e4c08e17b11f29e5e3d2e3` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-234568 | `0x4f1cedf1be03f2100206af843851c9b14210118a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x4fe0bba1321f6d147539211146f6a7e6f6d89d9c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x50a2d6260574e8b9b5f8b0e58315abeb4173e87b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x50a30897b25a7f8257d8dc8c63b3cae4bcd19f9e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x5156dfb2afa3c844bb5fd69b013bd1d868de8893` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x51ff7449d214ef6502a0011e24510c1161f8727e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x520cc20da072d29be5bd558a1bcae144203cc269` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x527aa8dd8b1094d860d97f1121a99c7c41e52f07` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x5434415ac63329eba08aed81b44c4ef9ab724399` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x55326b53d6d4685cd61b9521b4a807967953b21f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x55e8cdc25089aa7bb2c682a738519ec4ba8e833e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x564e994a2975844a78e156f9b89dc10e7a83dd0a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x56eb336f6191cfc197fcf4fd70122757401025b5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x57014fa7c838088886170e4343381d7bf940b993` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x58dc4a00881b26ea81e06f44cbb040e9e6dbaf05` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x5a06570596a83c2e65227521e72d25f47d11a129` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x5a522b6f6ab565c9ff189217af41d1a253fad168` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x5ae980d162086d8b8d019496f957ab8eed22e147` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x5b3905e1b65194c8404b86326212046d5485a8d8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x5c8495b0d14c1b3158421a13c491e1a88ef3d12b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x5fbd0e96685a150c2ab6e00f90d338a2c4ea29cf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x611a1d80119dafbf84cc89e54e08b12f8f928953` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x61577f1a96ef02d4217b01074bf636aa4a77ad52` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x61e4dd53ba799f92f7fc0f6d915ea1993a507424` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x62b607d16a86e0d324814e186c904f9602f24102` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x63d39ba0bd113ec89eeeac85bd0df17724653a25` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x63e2fb3669786d9c1cc5088b5a800e120ba0be66` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x64dd80bfb784793413f5704f6e298364047fe97f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x688eed7eced22d1db5b1e10ee1e58b8825107bc9` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-234569 | `0x68a9affe98aed0749351e63a9cf95969cb1eff08` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x68c1cbc1bf78474ab678c858c63d3786af9affee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x69c533d258a7df342f560f19af5a1a07286d1e50` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x69f12193e28f684c8bc19523ae522f79549920be` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x6a1be206cb858659dd45362b428773fc412084f2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x6b4f4835c10358361a410b96a5dce8e4748cdf8b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x6d1faff830eb27123e7ff390a3cea2bd3f70ca53` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x6ec160e2b711f255989dbe4c1fcba4c1f0765116` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x6fb39c524088dce161f7fcf9aa1778b8d0a69e49` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x7027d976cab2e960ca5d3f2666cd0485b010d06a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x75cd57b008a1c2ad1dbf62721be529c018543572` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x762fd1f06cb2206c8784714ba897d2e62f861fbd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x77905426328ebb66fd3e8def600cf987ef65f44a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x77a876309b2d997f20b13484d55a8037b5d0a5f2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x78a0880fce37a9d1eae8c42baa2a17aa4fab50e6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x7a201c4e59bad71a5dd5c1e13f97730ab9de3f70` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x7abc4639cb861ec62f62705df6121cd565cae364` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x7d836f24c7ed087686b0bf9b14f46db11c339390` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x7ff7d0cfa9b45e312681d3d1adc766e7a70d79fa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x800448a6de306e0ac00b4e047dc34f1c0772c45d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x80f2ebf93bdf524e974079c77318eefc7bc59adb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x84c1305b9390c0bf877a988135b39db89cd627f0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x8507b280df746cb20075584cb920cbde170d4aeb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x855950ca5f330f2f4c0ef922552a8560f23449f5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x8577c0c4bb0369ae9389bd95179d61e44fbf8c74` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x86e752ced08767945d409a5fad68c5803243423b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x885525ed647437cff601d90690738dc26612e576` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x8a3dd4d331021bac3fa6877df5ec87fc6af209dc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x8af442d6421152d5a628ca203a7c3e809906b8ef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x8be29a4afd9793eced862849c3035fb97d934918` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x8bea200f6d3c9e88f44255ebbf3bc758c6ab2b8a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x8d337069bbde9abefb2cc0ffb31c5b3c1f1e5918` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x8e086498f312d66c3a7ad091caf1d95cfaebda4b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x9147bcf1708f8c729293706225a53cbd0685dce9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x92695466c747df61b90c32ac0a144ed3aab5af57` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x92dabaa6b4399df3d7c8b0f5932093a637004d6a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x954fe6eb6c831ed44f31dc0b3660246b316a7718` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x96d3762fc7112d5f6d64240ad3b804da0f2d72f1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x9734e811f7f1c73151ae845c434036ba16032bd6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x9764a5bd4cc684596c721d05fa6e60a7a98b4157` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x98d651da92724052702e67657640a0b37d6b00ae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x99b2ae66668808235b357ff25e01ee35b75f08b0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x9b8def0e2a7fa24a1e7096a82a1a0ac10261b1f8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x9f6d6ad675fd8d582f7aae94670017a94449faae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xa096aaa48b970f6a072c7cf5fdca8d36367bdc1c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xa132660305304db115badb5f155043f670fae455` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xa1cae6dda912325424623d33e2e426551d223c70` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xa1d8c2bf5d22270649388814d249fc9e8a2bbcc7` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-234573 | `0xa3062ab8d613489d8ba5303123240f7e8e98483a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xa32adcb25e34c90fde250f109d1250410043a430` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xa538d7de68ae54221417a1c4581136c266fafbfd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xa68daedd362e013cb88116a4c405084f708c443c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xa6c90eb38969e4d95ac9db38d5b3f37dd1120010` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xa7d487961a6057306a0bcd06fad571e63b65963a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xa8118dca67a128fb95b2b9d29e8619b3c072ff4b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xa94158176e5e1e888956bc887b54fb0f9546261c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xaa19a6dfbac580e1cf8952b225383ca2c0ee4f5b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xaa7963706a2cf29293f53f940655f480c7dfe839` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xab1955eca5b054ee589544eb55e46414030909a8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xac4e801ebe0faf243fd958901f572a2a533afb71` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xade82f9a0d1b20c0849e10a7aa8e36db855a87d3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xae8149b67dd7b593ed6fc6b58cb2e5635bd1639d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xaf9232a64c961fd20964aa7115cbe1e2c86cd013` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xafc7dff85b21b52b874e1b897e5c2f438850f163` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xb055621c7f4e9d599da023658d4be0d35d668ce3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xb12b4d2b41a404b87ce30e1460e52abd4a8ea054` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xb14a2eb77adc2d689576c27261065d8e4b972e0b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xb218edc8f5b37f0c92ba5b0472b67d228edcfa09` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xb2fa74cf6be0ffbffd3f28fd48db78eb5b7aa5cc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xb37d406e44b3e1039c5110889b0ada2808fd9236` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xb4253c8066130579c3f8d234aecbe372a8f8ae4d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xb54ffbd7db0c38d55f5dfd52cc5811a08d1771ba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xb6963823b3b3836d451d900ab89ed3d8dc179298` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xb7b3efaf5eb95c4b8616bb21625a12761c1e3140` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xb8f8f680084b112ac468077a2d7363d792459a63` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xb981c49f3fa69725753a2a3235ad67b4b0207164` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xb9d8ea86833e55e844be98c940e5c16e89d77c16` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xbb4c3f949b9a87b48cdad624118dec36676dc00f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xbce568c1ef32310e83c9622be46ff02da1b58eba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xbd98b66b3c6174bd61e6259c2e4739e41a4c61e6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xbe5f13bf51b2137b37084665277ef4811efa1acd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xbfa65bd2555f80fe6a8a2a22de0530bd38dfda95` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xc04167c7c5d3fc6d7cd019651ff7f79648961174` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xc05817b7e43c7379328e753fef46023c05000f36` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xc070142df7c7688cf39e674e2ea1c530d46ccbd0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xc0c1855d9e0e877d78146cbcf3e218c119f73612` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xc0e7a58368f1536bc27eb027aa2935ab2500c7f2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xc4f479ee2a2f9d594504ea3d8a52193a5ca2279d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xc54c8b2e55c9b34495a0f49baf62e2a21d50a3fa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xc91a041466f15d3a87197b668b4a8aac149f77d2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xc978b89eda72a41c3628927f9f20885942f59aa3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xca315c5042c7b19ac1de91aab084ceac5866b7d1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xca7ba8a59a79b505473f629db2b356c7c890f0fd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xcb3837e7ecc899fd5e0e89c129581a3efdb843e8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xcb3bdab2b3a23273565fdb2ff03e6e2190f0e838` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xcc8edbbf91ad27fe8f74cb11a59034f2f7fb8d16` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xcdc207c413297518e4e2c7924b53a0afd51c0943` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xcfa4a4e0ab77579cadae9fb205ff6d89847b802b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xd016ef69e26fa66c6d3ac43e03c492eabdf4f3d4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xd093aad813b1e13bdd3de102ca75d03f8beb79cd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xd0b1aadb1f5258c008bb1625b77c5c0efaca2962` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xd0fa2a1fe6ec01bb46a635f0770dff97274336b3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xd1450c240bc4b3c23bcbd9b32302cd3dbd0cc29c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xd279b2ab0ebd9dea01ad3edc817f066a53272e37` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-234574 | `0xd2b6865fd9811d00121f6678a78dbc1cd95b1ec8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xd34ac0045427fe98cdf5510b6e74d55a7a65e73a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xd363da8c97aaa4afef2aa856b027a99e35037dda` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-234575 | `0xd3876643180a79d0a56d0900c060528395f34453` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xd38f8b24c49600c42de852f4369dfbc64fa31385` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xd40c76b51471ba604dc200f46100fc235a448134` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xd520b497e75db63288c89d7f8d8a34fd0d693fc0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xd575fe760b426bc28a2589cffe93cf9f58636f03` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xd5f966ce57a3ed906b7ef7eeb1de625c527a63d6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xd6a20f6926a0c1818dbd647e058cea1ecff06cbc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xd9757670dd1a32ebc8354e7fd6a91090e7a52cd1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xdaea956e728d0aefd5935ca4bb6b94c0e6aad90a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xdbabf6d9193d0fd95e6a030d860c05566de5481a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xdc7ba3dcb863523e13383c6f57a07b5e14f21046` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xdcf3b97e1441bb87e9457e65ba7d400fca946b02` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xde86ec1c0986b9bcf35d3aedc0e36372d6fbe4a0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xde874fcaa1caf96d8bd1fda23a70af1244230aae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xdf823357fef3591f8c8536b336b1f1ff3f14ece0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xe526a725e58206dfa6f2333257661ab7401bdf96` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xe612365fc60be61017160478e9bb56debad6ed5c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xe843ed417e07a02e8ef06eae5fb1c5b8db3653b3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xea1f98e941f840d88bc16f2177c7450aab85747f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xea42b1d53484b40ab9874de240b927599e483b65` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xea88406349d5b2b58700d99da2ea6759d4211cf2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xeb80c45d60029155ed2f5172457a9ab7207edd84` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xecf00ed8e77d4f02d08d7a6b98325567ae2a0519` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xef32bc0433f803eae0717699abc1854d3a206c96` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xef379a9b52a64dc0bc7bc0bf2ef23afe52a8d0e8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xef63e508cc67a6180484c4d68b88dc3c28a640d6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xefccb4eb42cb714a74b8af3fd130e4cba8747c99` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xf38ea31f2505b598f0ff1b793a61dc485e54bbeb` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-234577 | `0xf3dfc52db4604cbd6eda747a70c82d7be122b545` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xf3e8ec518dcfa5e9c3131f4e4a7509eb2cf42f4e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xf7a9df3d0016b57eb7061078205c6f573d30669f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xf883781498324e3a3c54eb48e520e074c46a7098` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xf910d64013e5b4b530116c1bc0be0d05f40c604b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xf93126b862407642abc2be1fd809eb93ee6dd458` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xfa130cfb0017f725326dc3d6523fb45355da139c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xfa2cef22c61d1704c2b4f22aa5e4979041d69d86` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xfaa3417704b9709592415e6530570f16eaf098b7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xfae0f42fe2e9a11fb047f564f6eb4e8db443d41a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xfc457249aa2f913e0ddd26df33358a8c79961695` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xfd3c4b636fd50de7305e8b951a058cfc2d38ca71` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xfda61a565f8a0e3b3deeb953b33e1beb5752a1ec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xfe68f72a15af3020c44c7ccc38d0c0ae7894c4c9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xfe7ba4ae62733f568512c2158761acbc0e6d40b2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xfe93fdd2d16999504e9934f5a8df697ac1966191` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 241
- Live contracts: 0
- Unknown liveness contracts: 241
- Source-verified contracts: 0
- Currently scope-matched contracts retained as-is: 0
- Contract rows sorted by chain, deployer, classification, contract name, then address.
- Classification counts: unverified unclassified=241

Showing first 200 of 241 contracts. The complete deployer expansion list is in `brief.json`.

| Chain | Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|---|
| ethereum | unverified unclassified | UnnamedContract<br>`0x34b35bed5aced7c4472de906912acb3e4c4616a5` | non_address_book | unknown | unknown | unverified | n/a | `0x65b5cfaad25c39063a248684da546cab1cc46cf5` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x3fa18f870818b85002dd627617a7eda332d0daa2` | non_address_book | unknown | unknown | unverified | n/a | `0x65b5cfaad25c39063a248684da546cab1cc46cf5` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x42696a64a238e5c661b1bad2530198d54e7b0dff` | non_address_book | unknown | unknown | unverified | n/a | `0x65b5cfaad25c39063a248684da546cab1cc46cf5` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x8f6b0512e63a644631694178b83419fecd90762d` | non_address_book | unknown | unknown | unverified | n/a | `0x65b5cfaad25c39063a248684da546cab1cc46cf5` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xc0c23f557e0e9cc324e2817f26fffcca4952d6a2` | non_address_book | unknown | unknown | unverified | n/a | `0x65b5cfaad25c39063a248684da546cab1cc46cf5` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xded4dd6e03a7caa6278ee453be2c26363f50643d` | non_address_book | unknown | unknown | unverified | n/a | `0x65b5cfaad25c39063a248684da546cab1cc46cf5` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x3e8640574aa764763291ed733672d3a105107ac5` | non_address_book | unknown | unknown | unverified | n/a | `0x8b41783ad99fcbeb8d575fa7a7b5a04fa0b8d80b` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xca06411bd7a7296d7dbdd0050dfc846e95febeb7` | non_address_book | unknown | unknown | unverified | n/a | `0x8b41783ad99fcbeb8d575fa7a7b5a04fa0b8d80b` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xe5a5f138005e19a3e6d0fe68b039397eeef2322b` | non_address_book | unknown | unknown | unverified | n/a | `0x8b41783ad99fcbeb8d575fa7a7b5a04fa0b8d80b` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x0207a8b17b63da381c891e196702cd15eecd7afc` | non_address_book | unknown | unknown | unverified | n/a | `0x054cfe3fc11214ede0ef9df1810b6e1417dec3e3` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x03cac364a8470915f30e328a0c658b7e575c5349` | non_address_book | unknown | unknown | unverified | n/a | `0x054cfe3fc11214ede0ef9df1810b6e1417dec3e3` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x0bb4d467f3d91150b5beccf293f443c2dc8c89a6` | non_address_book | unknown | unknown | unverified | n/a | `0x054cfe3fc11214ede0ef9df1810b6e1417dec3e3` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x10858d1fa22533790d5dd14fb324f3233a3a2078` | non_address_book | unknown | unknown | unverified | n/a | `0x054cfe3fc11214ede0ef9df1810b6e1417dec3e3` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x124a926f6a4fb63316f919fab42f3dbd876928a5` | non_address_book | unknown | unknown | unverified | n/a | `0x054cfe3fc11214ede0ef9df1810b6e1417dec3e3` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x17a295f2783579eaac1b614228896e1214a0511d` | non_address_book | unknown | unknown | unverified | n/a | `0x054cfe3fc11214ede0ef9df1810b6e1417dec3e3` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x1f05c87d6dd435840da0083e3dd764d67a7f1240` | non_address_book | unknown | unknown | unverified | n/a | `0x054cfe3fc11214ede0ef9df1810b6e1417dec3e3` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x25dc988e0f2fd1b7a8e177dcd25db5c8c8428c0d` | non_address_book | unknown | unknown | unverified | n/a | `0x054cfe3fc11214ede0ef9df1810b6e1417dec3e3` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x2c99e11c080e8971097f1dfcd9f2e587d3e7c8cc` | non_address_book | unknown | unknown | unverified | n/a | `0x054cfe3fc11214ede0ef9df1810b6e1417dec3e3` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x2d98192b9106cbe946cc8dadf1a0e6ebc1100b84` | non_address_book | unknown | unknown | unverified | n/a | `0x054cfe3fc11214ede0ef9df1810b6e1417dec3e3` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x33288f583b19ec45780fcda28d93b9c7f538ba37` | non_address_book | unknown | unknown | unverified | n/a | `0x054cfe3fc11214ede0ef9df1810b6e1417dec3e3` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x34f09413747cc80fc3c74a0e87f58d2f9e09463c` | non_address_book | unknown | unknown | unverified | n/a | `0x054cfe3fc11214ede0ef9df1810b6e1417dec3e3` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x35351502609b41364a5f3414e56e0a31e53fb3db` | non_address_book | unknown | unknown | unverified | n/a | `0x054cfe3fc11214ede0ef9df1810b6e1417dec3e3` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x3b4f4cfd10ee7df9cb988bc37c0d5060d110973e` | non_address_book | unknown | unknown | unverified | n/a | `0x054cfe3fc11214ede0ef9df1810b6e1417dec3e3` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x3e579b66214c0df4721cc6366d1b03bba4ab56ce` | non_address_book | unknown | unknown | unverified | n/a | `0x054cfe3fc11214ede0ef9df1810b6e1417dec3e3` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x3f7da9b715bb800f085464717191b53020ab73cd` | non_address_book | unknown | unknown | unverified | n/a | `0x054cfe3fc11214ede0ef9df1810b6e1417dec3e3` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x40ef90ac3178bc4af9f961f135538253bd5ded43` | non_address_book | unknown | unknown | unverified | n/a | `0x054cfe3fc11214ede0ef9df1810b6e1417dec3e3` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x41abb8ad7fc9c15c3daee75906c8f32215a202ef` | non_address_book | unknown | unknown | unverified | n/a | `0x054cfe3fc11214ede0ef9df1810b6e1417dec3e3` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x4931deaa9647e64f82beb983f13456da2499f294` | non_address_book | unknown | unknown | unverified | n/a | `0x054cfe3fc11214ede0ef9df1810b6e1417dec3e3` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x4c505d0ac7803ec9716679ed21bd4b8ddf2f20f6` | non_address_book | unknown | unknown | unverified | n/a | `0x054cfe3fc11214ede0ef9df1810b6e1417dec3e3` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x4ce7fbd7fd3d239934d6bd5f572df70199ac6918` | non_address_book | unknown | unknown | unverified | n/a | `0x054cfe3fc11214ede0ef9df1810b6e1417dec3e3` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x4fe0bba1321f6d147539211146f6a7e6f6d89d9c` | non_address_book | unknown | unknown | unverified | n/a | `0x054cfe3fc11214ede0ef9df1810b6e1417dec3e3` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x50a2d6260574e8b9b5f8b0e58315abeb4173e87b` | non_address_book | unknown | unknown | unverified | n/a | `0x054cfe3fc11214ede0ef9df1810b6e1417dec3e3` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x50a30897b25a7f8257d8dc8c63b3cae4bcd19f9e` | non_address_book | unknown | unknown | unverified | n/a | `0x054cfe3fc11214ede0ef9df1810b6e1417dec3e3` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x51ff7449d214ef6502a0011e24510c1161f8727e` | non_address_book | unknown | unknown | unverified | n/a | `0x054cfe3fc11214ede0ef9df1810b6e1417dec3e3` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x564e994a2975844a78e156f9b89dc10e7a83dd0a` | non_address_book | unknown | unknown | unverified | n/a | `0x054cfe3fc11214ede0ef9df1810b6e1417dec3e3` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x56eb336f6191cfc197fcf4fd70122757401025b5` | non_address_book | unknown | unknown | unverified | n/a | `0x054cfe3fc11214ede0ef9df1810b6e1417dec3e3` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x57014fa7c838088886170e4343381d7bf940b993` | non_address_book | unknown | unknown | unverified | n/a | `0x054cfe3fc11214ede0ef9df1810b6e1417dec3e3` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x58dc4a00881b26ea81e06f44cbb040e9e6dbaf05` | non_address_book | unknown | unknown | unverified | n/a | `0x054cfe3fc11214ede0ef9df1810b6e1417dec3e3` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x5a522b6f6ab565c9ff189217af41d1a253fad168` | non_address_book | unknown | unknown | unverified | n/a | `0x054cfe3fc11214ede0ef9df1810b6e1417dec3e3` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x5b3905e1b65194c8404b86326212046d5485a8d8` | non_address_book | unknown | unknown | unverified | n/a | `0x054cfe3fc11214ede0ef9df1810b6e1417dec3e3` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x5fbd0e96685a150c2ab6e00f90d338a2c4ea29cf` | non_address_book | unknown | unknown | unverified | n/a | `0x054cfe3fc11214ede0ef9df1810b6e1417dec3e3` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x61577f1a96ef02d4217b01074bf636aa4a77ad52` | non_address_book | unknown | unknown | unverified | n/a | `0x054cfe3fc11214ede0ef9df1810b6e1417dec3e3` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x63d39ba0bd113ec89eeeac85bd0df17724653a25` | non_address_book | unknown | unknown | unverified | n/a | `0x054cfe3fc11214ede0ef9df1810b6e1417dec3e3` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x64dd80bfb784793413f5704f6e298364047fe97f` | non_address_book | unknown | unknown | unverified | n/a | `0x054cfe3fc11214ede0ef9df1810b6e1417dec3e3` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x688eed7eced22d1db5b1e10ee1e58b8825107bc9` | non_address_book | unknown | unknown | unverified | n/a | `0x054cfe3fc11214ede0ef9df1810b6e1417dec3e3` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x69f12193e28f684c8bc19523ae522f79549920be` | non_address_book | unknown | unknown | unverified | n/a | `0x054cfe3fc11214ede0ef9df1810b6e1417dec3e3` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x6a1be206cb858659dd45362b428773fc412084f2` | non_address_book | unknown | unknown | unverified | n/a | `0x054cfe3fc11214ede0ef9df1810b6e1417dec3e3` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x7027d976cab2e960ca5d3f2666cd0485b010d06a` | non_address_book | unknown | unknown | unverified | n/a | `0x054cfe3fc11214ede0ef9df1810b6e1417dec3e3` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x75cd57b008a1c2ad1dbf62721be529c018543572` | non_address_book | unknown | unknown | unverified | n/a | `0x054cfe3fc11214ede0ef9df1810b6e1417dec3e3` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x77a876309b2d997f20b13484d55a8037b5d0a5f2` | non_address_book | unknown | unknown | unverified | n/a | `0x054cfe3fc11214ede0ef9df1810b6e1417dec3e3` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x78a0880fce37a9d1eae8c42baa2a17aa4fab50e6` | non_address_book | unknown | unknown | unverified | n/a | `0x054cfe3fc11214ede0ef9df1810b6e1417dec3e3` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x7abc4639cb861ec62f62705df6121cd565cae364` | non_address_book | unknown | unknown | unverified | n/a | `0x054cfe3fc11214ede0ef9df1810b6e1417dec3e3` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x800448a6de306e0ac00b4e047dc34f1c0772c45d` | non_address_book | unknown | unknown | unverified | n/a | `0x054cfe3fc11214ede0ef9df1810b6e1417dec3e3` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x8507b280df746cb20075584cb920cbde170d4aeb` | non_address_book | unknown | unknown | unverified | n/a | `0x054cfe3fc11214ede0ef9df1810b6e1417dec3e3` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x855950ca5f330f2f4c0ef922552a8560f23449f5` | non_address_book | unknown | unknown | unverified | n/a | `0x054cfe3fc11214ede0ef9df1810b6e1417dec3e3` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x86e752ced08767945d409a5fad68c5803243423b` | non_address_book | unknown | unknown | unverified | n/a | `0x054cfe3fc11214ede0ef9df1810b6e1417dec3e3` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x8a3dd4d331021bac3fa6877df5ec87fc6af209dc` | non_address_book | unknown | unknown | unverified | n/a | `0x054cfe3fc11214ede0ef9df1810b6e1417dec3e3` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x8af442d6421152d5a628ca203a7c3e809906b8ef` | non_address_book | unknown | unknown | unverified | n/a | `0x054cfe3fc11214ede0ef9df1810b6e1417dec3e3` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x8d337069bbde9abefb2cc0ffb31c5b3c1f1e5918` | non_address_book | unknown | unknown | unverified | n/a | `0x054cfe3fc11214ede0ef9df1810b6e1417dec3e3` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x92695466c747df61b90c32ac0a144ed3aab5af57` | non_address_book | unknown | unknown | unverified | n/a | `0x054cfe3fc11214ede0ef9df1810b6e1417dec3e3` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x92dabaa6b4399df3d7c8b0f5932093a637004d6a` | non_address_book | unknown | unknown | unverified | n/a | `0x054cfe3fc11214ede0ef9df1810b6e1417dec3e3` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x99b2ae66668808235b357ff25e01ee35b75f08b0` | non_address_book | unknown | unknown | unverified | n/a | `0x054cfe3fc11214ede0ef9df1810b6e1417dec3e3` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x9f6d6ad675fd8d582f7aae94670017a94449faae` | non_address_book | unknown | unknown | unverified | n/a | `0x054cfe3fc11214ede0ef9df1810b6e1417dec3e3` |
| sepolia | unverified unclassified | UnnamedContract<br>`0xa1cae6dda912325424623d33e2e426551d223c70` | non_address_book | unknown | unknown | unverified | n/a | `0x054cfe3fc11214ede0ef9df1810b6e1417dec3e3` |
| sepolia | unverified unclassified | UnnamedContract<br>`0xa1d8c2bf5d22270649388814d249fc9e8a2bbcc7` | non_address_book | unknown | unknown | unverified | n/a | `0x054cfe3fc11214ede0ef9df1810b6e1417dec3e3` |
| sepolia | unverified unclassified | UnnamedContract<br>`0xa32adcb25e34c90fde250f109d1250410043a430` | non_address_book | unknown | unknown | unverified | n/a | `0x054cfe3fc11214ede0ef9df1810b6e1417dec3e3` |
| sepolia | unverified unclassified | UnnamedContract<br>`0xa6c90eb38969e4d95ac9db38d5b3f37dd1120010` | non_address_book | unknown | unknown | unverified | n/a | `0x054cfe3fc11214ede0ef9df1810b6e1417dec3e3` |
| sepolia | unverified unclassified | UnnamedContract<br>`0xa7d487961a6057306a0bcd06fad571e63b65963a` | non_address_book | unknown | unknown | unverified | n/a | `0x054cfe3fc11214ede0ef9df1810b6e1417dec3e3` |
| sepolia | unverified unclassified | UnnamedContract<br>`0xaa19a6dfbac580e1cf8952b225383ca2c0ee4f5b` | non_address_book | unknown | unknown | unverified | n/a | `0x054cfe3fc11214ede0ef9df1810b6e1417dec3e3` |
| sepolia | unverified unclassified | UnnamedContract<br>`0xab1955eca5b054ee589544eb55e46414030909a8` | non_address_book | unknown | unknown | unverified | n/a | `0x054cfe3fc11214ede0ef9df1810b6e1417dec3e3` |
| sepolia | unverified unclassified | UnnamedContract<br>`0xae8149b67dd7b593ed6fc6b58cb2e5635bd1639d` | non_address_book | unknown | unknown | unverified | n/a | `0x054cfe3fc11214ede0ef9df1810b6e1417dec3e3` |
| sepolia | unverified unclassified | UnnamedContract<br>`0xb54ffbd7db0c38d55f5dfd52cc5811a08d1771ba` | non_address_book | unknown | unknown | unverified | n/a | `0x054cfe3fc11214ede0ef9df1810b6e1417dec3e3` |
| sepolia | unverified unclassified | UnnamedContract<br>`0xb6963823b3b3836d451d900ab89ed3d8dc179298` | non_address_book | unknown | unknown | unverified | n/a | `0x054cfe3fc11214ede0ef9df1810b6e1417dec3e3` |
| sepolia | unverified unclassified | UnnamedContract<br>`0xb7b3efaf5eb95c4b8616bb21625a12761c1e3140` | non_address_book | unknown | unknown | unverified | n/a | `0x054cfe3fc11214ede0ef9df1810b6e1417dec3e3` |
| sepolia | unverified unclassified | UnnamedContract<br>`0xbce568c1ef32310e83c9622be46ff02da1b58eba` | non_address_book | unknown | unknown | unverified | n/a | `0x054cfe3fc11214ede0ef9df1810b6e1417dec3e3` |
| sepolia | unverified unclassified | UnnamedContract<br>`0xbe5f13bf51b2137b37084665277ef4811efa1acd` | non_address_book | unknown | unknown | unverified | n/a | `0x054cfe3fc11214ede0ef9df1810b6e1417dec3e3` |
| sepolia | unverified unclassified | UnnamedContract<br>`0xc05817b7e43c7379328e753fef46023c05000f36` | non_address_book | unknown | unknown | unverified | n/a | `0x054cfe3fc11214ede0ef9df1810b6e1417dec3e3` |
| sepolia | unverified unclassified | UnnamedContract<br>`0xc070142df7c7688cf39e674e2ea1c530d46ccbd0` | non_address_book | unknown | unknown | unverified | n/a | `0x054cfe3fc11214ede0ef9df1810b6e1417dec3e3` |
| sepolia | unverified unclassified | UnnamedContract<br>`0xc0c1855d9e0e877d78146cbcf3e218c119f73612` | non_address_book | unknown | unknown | unverified | n/a | `0x054cfe3fc11214ede0ef9df1810b6e1417dec3e3` |
| sepolia | unverified unclassified | UnnamedContract<br>`0xc54c8b2e55c9b34495a0f49baf62e2a21d50a3fa` | non_address_book | unknown | unknown | unverified | n/a | `0x054cfe3fc11214ede0ef9df1810b6e1417dec3e3` |
| sepolia | unverified unclassified | UnnamedContract<br>`0xc978b89eda72a41c3628927f9f20885942f59aa3` | non_address_book | unknown | unknown | unverified | n/a | `0x054cfe3fc11214ede0ef9df1810b6e1417dec3e3` |
| sepolia | unverified unclassified | UnnamedContract<br>`0xcc8edbbf91ad27fe8f74cb11a59034f2f7fb8d16` | non_address_book | unknown | unknown | unverified | n/a | `0x054cfe3fc11214ede0ef9df1810b6e1417dec3e3` |
| sepolia | unverified unclassified | UnnamedContract<br>`0xcdc207c413297518e4e2c7924b53a0afd51c0943` | non_address_book | unknown | unknown | unverified | n/a | `0x054cfe3fc11214ede0ef9df1810b6e1417dec3e3` |
| sepolia | unverified unclassified | UnnamedContract<br>`0xd0b1aadb1f5258c008bb1625b77c5c0efaca2962` | non_address_book | unknown | unknown | unverified | n/a | `0x054cfe3fc11214ede0ef9df1810b6e1417dec3e3` |
| sepolia | unverified unclassified | UnnamedContract<br>`0xd1450c240bc4b3c23bcbd9b32302cd3dbd0cc29c` | non_address_book | unknown | unknown | unverified | n/a | `0x054cfe3fc11214ede0ef9df1810b6e1417dec3e3` |
| sepolia | unverified unclassified | UnnamedContract<br>`0xd279b2ab0ebd9dea01ad3edc817f066a53272e37` | non_address_book | unknown | unknown | unverified | n/a | `0x054cfe3fc11214ede0ef9df1810b6e1417dec3e3` |
| sepolia | unverified unclassified | UnnamedContract<br>`0xd34ac0045427fe98cdf5510b6e74d55a7a65e73a` | non_address_book | unknown | unknown | unverified | n/a | `0x054cfe3fc11214ede0ef9df1810b6e1417dec3e3` |
| sepolia | unverified unclassified | UnnamedContract<br>`0xd38f8b24c49600c42de852f4369dfbc64fa31385` | non_address_book | unknown | unknown | unverified | n/a | `0x054cfe3fc11214ede0ef9df1810b6e1417dec3e3` |
| sepolia | unverified unclassified | UnnamedContract<br>`0xd520b497e75db63288c89d7f8d8a34fd0d693fc0` | non_address_book | unknown | unknown | unverified | n/a | `0x054cfe3fc11214ede0ef9df1810b6e1417dec3e3` |
| sepolia | unverified unclassified | UnnamedContract<br>`0xd9757670dd1a32ebc8354e7fd6a91090e7a52cd1` | non_address_book | unknown | unknown | unverified | n/a | `0x054cfe3fc11214ede0ef9df1810b6e1417dec3e3` |
| sepolia | unverified unclassified | UnnamedContract<br>`0xdaea956e728d0aefd5935ca4bb6b94c0e6aad90a` | non_address_book | unknown | unknown | unverified | n/a | `0x054cfe3fc11214ede0ef9df1810b6e1417dec3e3` |
| sepolia | unverified unclassified | UnnamedContract<br>`0xdbabf6d9193d0fd95e6a030d860c05566de5481a` | non_address_book | unknown | unknown | unverified | n/a | `0x054cfe3fc11214ede0ef9df1810b6e1417dec3e3` |
| sepolia | unverified unclassified | UnnamedContract<br>`0xe612365fc60be61017160478e9bb56debad6ed5c` | non_address_book | unknown | unknown | unverified | n/a | `0x054cfe3fc11214ede0ef9df1810b6e1417dec3e3` |
| sepolia | unverified unclassified | UnnamedContract<br>`0xe843ed417e07a02e8ef06eae5fb1c5b8db3653b3` | non_address_book | unknown | unknown | unverified | n/a | `0x054cfe3fc11214ede0ef9df1810b6e1417dec3e3` |
| sepolia | unverified unclassified | UnnamedContract<br>`0xea1f98e941f840d88bc16f2177c7450aab85747f` | non_address_book | unknown | unknown | unverified | n/a | `0x054cfe3fc11214ede0ef9df1810b6e1417dec3e3` |
| sepolia | unverified unclassified | UnnamedContract<br>`0xea42b1d53484b40ab9874de240b927599e483b65` | non_address_book | unknown | unknown | unverified | n/a | `0x054cfe3fc11214ede0ef9df1810b6e1417dec3e3` |
| sepolia | unverified unclassified | UnnamedContract<br>`0xea88406349d5b2b58700d99da2ea6759d4211cf2` | non_address_book | unknown | unknown | unverified | n/a | `0x054cfe3fc11214ede0ef9df1810b6e1417dec3e3` |
| sepolia | unverified unclassified | UnnamedContract<br>`0xef32bc0433f803eae0717699abc1854d3a206c96` | non_address_book | unknown | unknown | unverified | n/a | `0x054cfe3fc11214ede0ef9df1810b6e1417dec3e3` |
| sepolia | unverified unclassified | UnnamedContract<br>`0xf7a9df3d0016b57eb7061078205c6f573d30669f` | non_address_book | unknown | unknown | unverified | n/a | `0x054cfe3fc11214ede0ef9df1810b6e1417dec3e3` |
| sepolia | unverified unclassified | UnnamedContract<br>`0xfa130cfb0017f725326dc3d6523fb45355da139c` | non_address_book | unknown | unknown | unverified | n/a | `0x054cfe3fc11214ede0ef9df1810b6e1417dec3e3` |
| sepolia | unverified unclassified | UnnamedContract<br>`0xfa2cef22c61d1704c2b4f22aa5e4979041d69d86` | non_address_book | unknown | unknown | unverified | n/a | `0x054cfe3fc11214ede0ef9df1810b6e1417dec3e3` |
| sepolia | unverified unclassified | UnnamedContract<br>`0xfaa3417704b9709592415e6530570f16eaf098b7` | non_address_book | unknown | unknown | unverified | n/a | `0x054cfe3fc11214ede0ef9df1810b6e1417dec3e3` |
| sepolia | unverified unclassified | UnnamedContract<br>`0xfc457249aa2f913e0ddd26df33358a8c79961695` | non_address_book | unknown | unknown | unverified | n/a | `0x054cfe3fc11214ede0ef9df1810b6e1417dec3e3` |
| sepolia | unverified unclassified | UnnamedContract<br>`0xfd3c4b636fd50de7305e8b951a058cfc2d38ca71` | non_address_book | unknown | unknown | unverified | n/a | `0x054cfe3fc11214ede0ef9df1810b6e1417dec3e3` |
| sepolia | unverified unclassified | UnnamedContract<br>`0xfda61a565f8a0e3b3deeb953b33e1beb5752a1ec` | non_address_book | unknown | unknown | unverified | n/a | `0x054cfe3fc11214ede0ef9df1810b6e1417dec3e3` |
| sepolia | unverified unclassified | UnnamedContract<br>`0xfe68f72a15af3020c44c7ccc38d0c0ae7894c4c9` | non_address_book | unknown | unknown | unverified | n/a | `0x054cfe3fc11214ede0ef9df1810b6e1417dec3e3` |
| sepolia | unverified unclassified | UnnamedContract<br>`0xfe7ba4ae62733f568512c2158761acbc0e6d40b2` | non_address_book | unknown | unknown | unverified | n/a | `0x054cfe3fc11214ede0ef9df1810b6e1417dec3e3` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x1d00bc31a4b539073a8f5709405c9f1d132ffb65` | non_address_book | unknown | unknown | unverified | n/a | `0x13d8e59e0c06c3ee607ffd4fa9d6df8181e6bab5` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x1f38f5bad6b59d546af4adc6460b4f31f7bb6acb` | non_address_book | unknown | unknown | unverified | n/a | `0x13d8e59e0c06c3ee607ffd4fa9d6df8181e6bab5` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x26c27de0bdf4cf2d317d3958695c94110a6a37a9` | non_address_book | unknown | unknown | unverified | n/a | `0x13d8e59e0c06c3ee607ffd4fa9d6df8181e6bab5` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x28d977639ac6d731c0e3c1319d7c3bc7c629afaf` | non_address_book | unknown | unknown | unverified | n/a | `0x13d8e59e0c06c3ee607ffd4fa9d6df8181e6bab5` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x2bf522ce94ce0905e60622c6c7d4ff5f5ac58384` | non_address_book | unknown | unknown | unverified | n/a | `0x13d8e59e0c06c3ee607ffd4fa9d6df8181e6bab5` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x2e2a96343b3d296753d5a3dc8eb8228e3254af49` | non_address_book | unknown | unknown | unverified | n/a | `0x13d8e59e0c06c3ee607ffd4fa9d6df8181e6bab5` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x372c46dd7d6d9c7eab92f15374192a6e96f1e86d` | non_address_book | unknown | unknown | unverified | n/a | `0x13d8e59e0c06c3ee607ffd4fa9d6df8181e6bab5` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x37b374a10ab03b98f796dab6c7c1ab3168eadfd6` | non_address_book | unknown | unknown | unverified | n/a | `0x13d8e59e0c06c3ee607ffd4fa9d6df8181e6bab5` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x384655e9ec51caf70a1eaefe32a4eb20bf0e5e1f` | non_address_book | unknown | unknown | unverified | n/a | `0x13d8e59e0c06c3ee607ffd4fa9d6df8181e6bab5` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x38d17c81e21f4ea22b51a765436152392bb03846` | non_address_book | unknown | unknown | unverified | n/a | `0x13d8e59e0c06c3ee607ffd4fa9d6df8181e6bab5` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x42022426944dc2b848a14ccbbf11113997132c2d` | non_address_book | unknown | unknown | unverified | n/a | `0x13d8e59e0c06c3ee607ffd4fa9d6df8181e6bab5` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x45659bd2977b5c8ce06461f2d18740a30a4bd841` | non_address_book | unknown | unknown | unverified | n/a | `0x13d8e59e0c06c3ee607ffd4fa9d6df8181e6bab5` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x474d6c0c56d4aa98676811073d42746d51fcaac1` | non_address_book | unknown | unknown | unverified | n/a | `0x13d8e59e0c06c3ee607ffd4fa9d6df8181e6bab5` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x495fa7cdea4e921b53f245cbb932c3e95e29145e` | non_address_book | unknown | unknown | unverified | n/a | `0x13d8e59e0c06c3ee607ffd4fa9d6df8181e6bab5` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x520cc20da072d29be5bd558a1bcae144203cc269` | non_address_book | unknown | unknown | unverified | n/a | `0x13d8e59e0c06c3ee607ffd4fa9d6df8181e6bab5` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x61e4dd53ba799f92f7fc0f6d915ea1993a507424` | non_address_book | unknown | unknown | unverified | n/a | `0x13d8e59e0c06c3ee607ffd4fa9d6df8181e6bab5` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x68c1cbc1bf78474ab678c858c63d3786af9affee` | non_address_book | unknown | unknown | unverified | n/a | `0x13d8e59e0c06c3ee607ffd4fa9d6df8181e6bab5` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x7a201c4e59bad71a5dd5c1e13f97730ab9de3f70` | non_address_book | unknown | unknown | unverified | n/a | `0x13d8e59e0c06c3ee607ffd4fa9d6df8181e6bab5` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x7d836f24c7ed087686b0bf9b14f46db11c339390` | non_address_book | unknown | unknown | unverified | n/a | `0x13d8e59e0c06c3ee607ffd4fa9d6df8181e6bab5` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x8be29a4afd9793eced862849c3035fb97d934918` | non_address_book | unknown | unknown | unverified | n/a | `0x13d8e59e0c06c3ee607ffd4fa9d6df8181e6bab5` |
| sepolia | unverified unclassified | UnnamedContract<br>`0xa132660305304db115badb5f155043f670fae455` | non_address_book | unknown | unknown | unverified | n/a | `0x13d8e59e0c06c3ee607ffd4fa9d6df8181e6bab5` |
| sepolia | unverified unclassified | UnnamedContract<br>`0xaa7963706a2cf29293f53f940655f480c7dfe839` | non_address_book | unknown | unknown | unverified | n/a | `0x13d8e59e0c06c3ee607ffd4fa9d6df8181e6bab5` |
| sepolia | unverified unclassified | UnnamedContract<br>`0xade82f9a0d1b20c0849e10a7aa8e36db855a87d3` | non_address_book | unknown | unknown | unverified | n/a | `0x13d8e59e0c06c3ee607ffd4fa9d6df8181e6bab5` |
| sepolia | unverified unclassified | UnnamedContract<br>`0xbd98b66b3c6174bd61e6259c2e4739e41a4c61e6` | non_address_book | unknown | unknown | unverified | n/a | `0x13d8e59e0c06c3ee607ffd4fa9d6df8181e6bab5` |
| sepolia | unverified unclassified | UnnamedContract<br>`0xd016ef69e26fa66c6d3ac43e03c492eabdf4f3d4` | non_address_book | unknown | unknown | unverified | n/a | `0x13d8e59e0c06c3ee607ffd4fa9d6df8181e6bab5` |
| sepolia | unverified unclassified | UnnamedContract<br>`0xd40c76b51471ba604dc200f46100fc235a448134` | non_address_book | unknown | unknown | unverified | n/a | `0x13d8e59e0c06c3ee607ffd4fa9d6df8181e6bab5` |
| sepolia | unverified unclassified | UnnamedContract<br>`0xdcf3b97e1441bb87e9457e65ba7d400fca946b02` | non_address_book | unknown | unknown | unverified | n/a | `0x13d8e59e0c06c3ee607ffd4fa9d6df8181e6bab5` |
| sepolia | unverified unclassified | UnnamedContract<br>`0xe526a725e58206dfa6f2333257661ab7401bdf96` | non_address_book | unknown | unknown | unverified | n/a | `0x13d8e59e0c06c3ee607ffd4fa9d6df8181e6bab5` |
| sepolia | unverified unclassified | UnnamedContract<br>`0xef379a9b52a64dc0bc7bc0bf2ef23afe52a8d0e8` | non_address_book | unknown | unknown | unverified | n/a | `0x13d8e59e0c06c3ee607ffd4fa9d6df8181e6bab5` |
| sepolia | unverified unclassified | UnnamedContract<br>`0xf38ea31f2505b598f0ff1b793a61dc485e54bbeb` | non_address_book | unknown | unknown | unverified | n/a | `0x13d8e59e0c06c3ee607ffd4fa9d6df8181e6bab5` |
| sepolia | unverified unclassified | UnnamedContract<br>`0xf3e8ec518dcfa5e9c3131f4e4a7509eb2cf42f4e` | non_address_book | unknown | unknown | unverified | n/a | `0x13d8e59e0c06c3ee607ffd4fa9d6df8181e6bab5` |
| sepolia | unverified unclassified | UnnamedContract<br>`0xf883781498324e3a3c54eb48e520e074c46a7098` | non_address_book | unknown | unknown | unverified | n/a | `0x13d8e59e0c06c3ee607ffd4fa9d6df8181e6bab5` |
| sepolia | unverified unclassified | UnnamedContract<br>`0xf910d64013e5b4b530116c1bc0be0d05f40c604b` | non_address_book | unknown | unknown | unverified | n/a | `0x13d8e59e0c06c3ee607ffd4fa9d6df8181e6bab5` |
| sepolia | unverified unclassified | UnnamedContract<br>`0xfae0f42fe2e9a11fb047f564f6eb4e8db443d41a` | non_address_book | unknown | unknown | unverified | n/a | `0x13d8e59e0c06c3ee607ffd4fa9d6df8181e6bab5` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x036af49180f9806bcbb980081ee31bb98fc1a5c3` | non_address_book | unknown | unknown | unverified | n/a | `0xb4251d01eb1ade6f76b8b65f40028407fdea341c` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x03dd3a091e84228bd850c7a01f596d2925a384f6` | non_address_book | unknown | unknown | unverified | n/a | `0xb4251d01eb1ade6f76b8b65f40028407fdea341c` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x0518ef9cd826a85c8f1e910f8c6eb4b0f2a9da03` | non_address_book | unknown | unknown | unverified | n/a | `0xb4251d01eb1ade6f76b8b65f40028407fdea341c` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x05b877fa00794f2f84dbb42139a7486ad0e8e644` | non_address_book | unknown | unknown | unverified | n/a | `0xb4251d01eb1ade6f76b8b65f40028407fdea341c` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x0b9485108135b9319a10a84a5fd71ca5899aff14` | non_address_book | unknown | unknown | unverified | n/a | `0xb4251d01eb1ade6f76b8b65f40028407fdea341c` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x0f5882de0f6128b3e7098cb69ecbeae46e5db34a` | non_address_book | unknown | unknown | unverified | n/a | `0xb4251d01eb1ade6f76b8b65f40028407fdea341c` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x19c16bfa60490f8a6037fbd71a18b79220e151d5` | non_address_book | unknown | unknown | unverified | n/a | `0xb4251d01eb1ade6f76b8b65f40028407fdea341c` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x1cb127630111a2364561567b736bcd9b4f2497e0` | non_address_book | unknown | unknown | unverified | n/a | `0xb4251d01eb1ade6f76b8b65f40028407fdea341c` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x20956e50e4fef7b91a8f6cd84575b8f8596c3156` | non_address_book | unknown | unknown | unverified | n/a | `0xb4251d01eb1ade6f76b8b65f40028407fdea341c` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x21bee8f2896bfa41c5d4003135c1ab44d25c7bec` | non_address_book | unknown | unknown | unverified | n/a | `0xb4251d01eb1ade6f76b8b65f40028407fdea341c` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x26f5fcaaad7a610b733cbbec1979e5f74d8c1cbb` | non_address_book | unknown | unknown | unverified | n/a | `0xb4251d01eb1ade6f76b8b65f40028407fdea341c` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x2bbbba49c9e4920d010f28f8b6a33b89311e0d3f` | non_address_book | unknown | unknown | unverified | n/a | `0xb4251d01eb1ade6f76b8b65f40028407fdea341c` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x2cffc39d3d03d6a68407bca6c28dace187169be2` | non_address_book | unknown | unknown | unverified | n/a | `0xb4251d01eb1ade6f76b8b65f40028407fdea341c` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x31d60c612c2ee0b96c11e9ae034725efe919cd3d` | non_address_book | unknown | unknown | unverified | n/a | `0xb4251d01eb1ade6f76b8b65f40028407fdea341c` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x3aa4b3414c08bde2f0fc087c8e6c292361e7ff1a` | non_address_book | unknown | unknown | unverified | n/a | `0xb4251d01eb1ade6f76b8b65f40028407fdea341c` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x3b328c60485492da50dac2b1971c0686f7fb6587` | non_address_book | unknown | unknown | unverified | n/a | `0xb4251d01eb1ade6f76b8b65f40028407fdea341c` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x3d16bbd2b1ef7df09cf9546cd7e3fba8a988f456` | non_address_book | unknown | unknown | unverified | n/a | `0xb4251d01eb1ade6f76b8b65f40028407fdea341c` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x40a8a74357f3dc9bffc6dbab0a0522ff9b60b58b` | non_address_book | unknown | unknown | unverified | n/a | `0xb4251d01eb1ade6f76b8b65f40028407fdea341c` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x445d88315145c1722ffb8ead2c7fbb67e9c4348a` | non_address_book | unknown | unknown | unverified | n/a | `0xb4251d01eb1ade6f76b8b65f40028407fdea341c` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x460d2c834d99d6574b7b8e37b8a752b8272a83f2` | non_address_book | unknown | unknown | unverified | n/a | `0xb4251d01eb1ade6f76b8b65f40028407fdea341c` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x4bf65570f944035fda7e54ff70b4fa0731272ceb` | non_address_book | unknown | unknown | unverified | n/a | `0xb4251d01eb1ade6f76b8b65f40028407fdea341c` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x4c6c45ee26bbc2f705375a6e6169b5806279a740` | non_address_book | unknown | unknown | unverified | n/a | `0xb4251d01eb1ade6f76b8b65f40028407fdea341c` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x4cf45793b120b100c0e4c08e17b11f29e5e3d2e3` | non_address_book | unknown | unknown | unverified | n/a | `0xb4251d01eb1ade6f76b8b65f40028407fdea341c` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x5156dfb2afa3c844bb5fd69b013bd1d868de8893` | non_address_book | unknown | unknown | unverified | n/a | `0xb4251d01eb1ade6f76b8b65f40028407fdea341c` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x527aa8dd8b1094d860d97f1121a99c7c41e52f07` | non_address_book | unknown | unknown | unverified | n/a | `0xb4251d01eb1ade6f76b8b65f40028407fdea341c` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x5434415ac63329eba08aed81b44c4ef9ab724399` | non_address_book | unknown | unknown | unverified | n/a | `0xb4251d01eb1ade6f76b8b65f40028407fdea341c` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x55326b53d6d4685cd61b9521b4a807967953b21f` | non_address_book | unknown | unknown | unverified | n/a | `0xb4251d01eb1ade6f76b8b65f40028407fdea341c` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x55e8cdc25089aa7bb2c682a738519ec4ba8e833e` | non_address_book | unknown | unknown | unverified | n/a | `0xb4251d01eb1ade6f76b8b65f40028407fdea341c` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x5a06570596a83c2e65227521e72d25f47d11a129` | non_address_book | unknown | unknown | unverified | n/a | `0xb4251d01eb1ade6f76b8b65f40028407fdea341c` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x5ae980d162086d8b8d019496f957ab8eed22e147` | non_address_book | unknown | unknown | unverified | n/a | `0xb4251d01eb1ade6f76b8b65f40028407fdea341c` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x5c8495b0d14c1b3158421a13c491e1a88ef3d12b` | non_address_book | unknown | unknown | unverified | n/a | `0xb4251d01eb1ade6f76b8b65f40028407fdea341c` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x611a1d80119dafbf84cc89e54e08b12f8f928953` | non_address_book | unknown | unknown | unverified | n/a | `0xb4251d01eb1ade6f76b8b65f40028407fdea341c` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x62b607d16a86e0d324814e186c904f9602f24102` | non_address_book | unknown | unknown | unverified | n/a | `0xb4251d01eb1ade6f76b8b65f40028407fdea341c` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x63e2fb3669786d9c1cc5088b5a800e120ba0be66` | non_address_book | unknown | unknown | unverified | n/a | `0xb4251d01eb1ade6f76b8b65f40028407fdea341c` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x69c533d258a7df342f560f19af5a1a07286d1e50` | non_address_book | unknown | unknown | unverified | n/a | `0xb4251d01eb1ade6f76b8b65f40028407fdea341c` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x6b4f4835c10358361a410b96a5dce8e4748cdf8b` | non_address_book | unknown | unknown | unverified | n/a | `0xb4251d01eb1ade6f76b8b65f40028407fdea341c` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x6d1faff830eb27123e7ff390a3cea2bd3f70ca53` | non_address_book | unknown | unknown | unverified | n/a | `0xb4251d01eb1ade6f76b8b65f40028407fdea341c` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x6ec160e2b711f255989dbe4c1fcba4c1f0765116` | non_address_book | unknown | unknown | unverified | n/a | `0xb4251d01eb1ade6f76b8b65f40028407fdea341c` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x6fb39c524088dce161f7fcf9aa1778b8d0a69e49` | non_address_book | unknown | unknown | unverified | n/a | `0xb4251d01eb1ade6f76b8b65f40028407fdea341c` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x762fd1f06cb2206c8784714ba897d2e62f861fbd` | non_address_book | unknown | unknown | unverified | n/a | `0xb4251d01eb1ade6f76b8b65f40028407fdea341c` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x77905426328ebb66fd3e8def600cf987ef65f44a` | non_address_book | unknown | unknown | unverified | n/a | `0xb4251d01eb1ade6f76b8b65f40028407fdea341c` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x7ff7d0cfa9b45e312681d3d1adc766e7a70d79fa` | non_address_book | unknown | unknown | unverified | n/a | `0xb4251d01eb1ade6f76b8b65f40028407fdea341c` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x80f2ebf93bdf524e974079c77318eefc7bc59adb` | non_address_book | unknown | unknown | unverified | n/a | `0xb4251d01eb1ade6f76b8b65f40028407fdea341c` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x84c1305b9390c0bf877a988135b39db89cd627f0` | non_address_book | unknown | unknown | unverified | n/a | `0xb4251d01eb1ade6f76b8b65f40028407fdea341c` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x8577c0c4bb0369ae9389bd95179d61e44fbf8c74` | non_address_book | unknown | unknown | unverified | n/a | `0xb4251d01eb1ade6f76b8b65f40028407fdea341c` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x885525ed647437cff601d90690738dc26612e576` | non_address_book | unknown | unknown | unverified | n/a | `0xb4251d01eb1ade6f76b8b65f40028407fdea341c` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x8bea200f6d3c9e88f44255ebbf3bc758c6ab2b8a` | non_address_book | unknown | unknown | unverified | n/a | `0xb4251d01eb1ade6f76b8b65f40028407fdea341c` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x8e086498f312d66c3a7ad091caf1d95cfaebda4b` | non_address_book | unknown | unknown | unverified | n/a | `0xb4251d01eb1ade6f76b8b65f40028407fdea341c` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x9147bcf1708f8c729293706225a53cbd0685dce9` | non_address_book | unknown | unknown | unverified | n/a | `0xb4251d01eb1ade6f76b8b65f40028407fdea341c` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x954fe6eb6c831ed44f31dc0b3660246b316a7718` | non_address_book | unknown | unknown | unverified | n/a | `0xb4251d01eb1ade6f76b8b65f40028407fdea341c` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x96d3762fc7112d5f6d64240ad3b804da0f2d72f1` | non_address_book | unknown | unknown | unverified | n/a | `0xb4251d01eb1ade6f76b8b65f40028407fdea341c` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x9734e811f7f1c73151ae845c434036ba16032bd6` | non_address_book | unknown | unknown | unverified | n/a | `0xb4251d01eb1ade6f76b8b65f40028407fdea341c` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x9764a5bd4cc684596c721d05fa6e60a7a98b4157` | non_address_book | unknown | unknown | unverified | n/a | `0xb4251d01eb1ade6f76b8b65f40028407fdea341c` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x98d651da92724052702e67657640a0b37d6b00ae` | non_address_book | unknown | unknown | unverified | n/a | `0xb4251d01eb1ade6f76b8b65f40028407fdea341c` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x9b8def0e2a7fa24a1e7096a82a1a0ac10261b1f8` | non_address_book | unknown | unknown | unverified | n/a | `0xb4251d01eb1ade6f76b8b65f40028407fdea341c` |
| sepolia | unverified unclassified | UnnamedContract<br>`0xa096aaa48b970f6a072c7cf5fdca8d36367bdc1c` | non_address_book | unknown | unknown | unverified | n/a | `0xb4251d01eb1ade6f76b8b65f40028407fdea341c` |
| sepolia | unverified unclassified | UnnamedContract<br>`0xa538d7de68ae54221417a1c4581136c266fafbfd` | non_address_book | unknown | unknown | unverified | n/a | `0xb4251d01eb1ade6f76b8b65f40028407fdea341c` |
| sepolia | unverified unclassified | UnnamedContract<br>`0xa68daedd362e013cb88116a4c405084f708c443c` | non_address_book | unknown | unknown | unverified | n/a | `0xb4251d01eb1ade6f76b8b65f40028407fdea341c` |
| sepolia | unverified unclassified | UnnamedContract<br>`0xa8118dca67a128fb95b2b9d29e8619b3c072ff4b` | non_address_book | unknown | unknown | unverified | n/a | `0xb4251d01eb1ade6f76b8b65f40028407fdea341c` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

- No persisted address-book scope analysis is available.

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0xe69a535730858fd8dc386b448972a9f801ab4e12` | ZkCroMintAndBridge | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 7 |
| upstream | 0 |
| standard_library | 2 |
| needs_review | 257 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 0 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
