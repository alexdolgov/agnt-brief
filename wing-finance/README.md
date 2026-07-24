# Agentic Audit Brief: Wing Finance

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 6 (0 matched; 6 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e40c73181a386361babecc6895e0f6c5587548f92814db09f88491f8b4a38d92`

## Project Overview

- Project: Wing Finance (`wing-finance`)
- Website: [https://wing.finance](https://wing.finance)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: bsc, ethereum
- Contract surface: 183 unique implementations (220 raw deployments)
- Coverage basis: not assessable — No confirmed own live-verified denominator is available.
- DeFi Llama TVL: $25,592,668.44
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Wing Finance. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 1 contract row(s) across bsc, ethereum, kaia. Structural roles: 1 core. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 1
- Structural roles: core (1)
- Contract kinds: contract (1)
- Detected standards: erc20 (1)
- Frameworks: openzeppelin (1)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 7 contracts are derived from known codebases. 7 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x0855524fac05dda9e35e7cb9047cc6fd1cf21989`, chain 1)
- UnnamedContract (`0x2f9fa63066cfa2d727f57ddf1991557ba86f12c9`, chain 1)
- UnnamedContract (`0x3db35c654bbf0f777fc3b4b35a80ade783936552`, chain 1)
- UnnamedContract (`0x4f24ec178c862497aa4519c18f9462c8dc3fcdb9`, chain 1)
- UnnamedContract (`0x750b9848b8f4956a41f6822f53ac1f80b4486bde`, chain 1)
- UnnamedContract (`0x17afa1eb1feede3ed791e1b5c4b32b544e6cbc0b`, chain 56)
- UnnamedContract (`0x49620e9bfd117c7b05b4732980b05b7afee60a69`, chain 56)

## Contract Surface Quality

- Logic-topography rows: 1; live-surface rows included: 1 (0 live, 1 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 4/7 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No confirmed own live-verified denominator is available.
- Address-book implementation classification: 4 own, 2 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 177 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 29
- Confirmed-live implementations: 4 of 183 unique; 179 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/32
- Verified + Unaudited implementations: 32
- Verified by bytecode match: 0
- Unverified implementations: 151
- Unique implementations: 183
- Raw deployments: 220
- Audits discovered: 6 (6 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022-08 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 4 stale, 2 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (32)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AirdropDistribution | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0xa48f90ea06a2c9d9a86067504fde2b8f1f3897bd`; ethereum `0xe783e76b3f89ea913c33aab1d54564bd4c6df886` | ⚠️ Unaudited |
| BendProxyAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x92a28fd877daf3a9f13c64e8d855279c9f13dbdc` | ⚠️ Unaudited |
| BEP20TokenImplementation | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xdfebae62a29595a7a00afe2676b8fb54110c3817` | ⚠️ Unaudited |
| BNFTRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x11dd0d4a92d34ae3cdcd56998d68884d225a9768`; ethereum `0xed3eb04984774de5fc6003db7a08f09a3920a6fd` | ⚠️ Unaudited |
| BNFTRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbd1df6a8da9983578d6f0aaf2af4c9f564e534a1` | ⚠️ Unaudited |
| CCompLikeDelegate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa1849880593e96d2f7df77d0d38a7f2372ae10e0` | ⚠️ Unaudited |
| CErc20 | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x39aa39c021dfbae8fac545936693ac917d5e7563` | ⚠️ Unaudited |
| CErc20Delegate | token | non_address_book | non_address_book_inventory (excluded) | 2 | ethereum | n/a | 2 deployments: ethereum `0x5d3a536e4d6dbd6114cc1ead35777bab948e3643`; ethereum `0x70e36f6bf80a52b3b46b3af8e106cc0ed743e8e4` | ⚠️ Unaudited |
| CEther | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4ddc2d193948926d02f9b1fe9e1daa0718270ed5` | ⚠️ Unaudited |
| Comptroller | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x707b501cbce95c5fdb25005a51f33c5b1aa30607`; ethereum `0x7b5e3521a049c8ff88e6349f33044c6cc33c113c` | ⚠️ Unaudited |
| ComptrollerSweeper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xff3c813559127d60da732a0e8ec836f4c162df82` | ⚠️ Unaudited |
| ERC20Template | token | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-262113 | `0xdb0f18081b505a7de20b18ac41856bcb4ba86a1a` | ⚠️ Unaudited |
| GovernorBravoDelegate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 5 deployments: ethereum `0x3d11b5b86e137827633decf793bc241dd552b213`; ethereum `0x44b68e6f47b4eb2f3b6d8158b60a5fa681a5b911`; ethereum `0x563a63d650a5d259abae9248dddc6867813d3f87`; ethereum `0x6f6e4785c97885d26466945055d4ae8931be6f7a`; ethereum `0xef3b6e9e13706a8f01fe98fdcf66335dc5cfdeed` | ⚠️ Unaudited |
| JumpRateModelV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 5 deployments: ethereum `0x461c23c25942a1bb4b5f3d6b01c6d10f3d45862c`; ethereum `0x637e07416562e673312fadd8b65cee68da013c3d`; ethereum `0xd88b94128ff2b8cf2d7886cd1c1e46757418ca2a`; ethereum `0xd956188795ca6f4a74092ddca33e0ea4ca3a1395`; ethereum `0xfb564da37b41b2f6b6edcc3e56fbf523bd9f2012` | ⚠️ Unaudited |
| LegacyJumpRateModelV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x186658240be759df3d3cf0be79d619ad5772102a`; ethereum `0xd8ec56013ea119e7181d231e5048f90fbbe753c0`; ethereum `0xf9583618169920c544ec89795a346f487cb5a227` | ⚠️ Unaudited |
| LockProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x250e76987d838a75310c34bf422ea9f1ac4cc906` | ⚠️ Unaudited |
| NFTOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x45239322a846578294eb9b2155d5cdb98d2519af`; ethereum `0xeb917441daa18b6f4810412c52cd00be0ea9d6f1` | ⚠️ Unaudited |
| OSWAP | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe9b0db26a0085e5119757a5179a499abf595bcab` | ⚠️ Unaudited |
| OTCSettlement | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2d658bbe50b1d3723498f9808c44c9726dd490cc` | ⚠️ Unaudited |
| pONT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcb46c550539ac3db72dc7af7c89b11c306c727c2` | ⚠️ Unaudited |
| ProxyAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3d5754ebbf1220dac838d02fcdcfe729dee1dce9` | ⚠️ Unaudited |
| SigRelayer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf61d8eef3f479dfa24beaa46bf6f235e6e2f7af8` | ⚠️ Unaudited |
| SigRelayer2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaae15233798a477c47d1ea3d4586770a68b9d344` | ⚠️ Unaudited |
| StableSendETH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfdcf4827668f333d0a6a29066731769eda7cc073` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | ethereum | n/a | 3 deployments: ethereum `0x0e3ea0a265f2deea2717db9979c756d9d759a711`; ethereum `0x1b553878f0ee707c59c140940be3b41b5bb44e5c`; ethereum `0x7b7c823cfcc9231b8a676c3b4b03066fce251ebb` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x207fe8b61ca54d93ce46d94a55c49678dec51f59`; ethereum `0xbebaadc9662db614706f560221cd37e35a491e0d` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x2103e3b1e2bf1025a96461e2e21be0f83d25f13f`; ethereum `0xace336b02cdcbf7c66a3f8b42e68d7a6b212d40d` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x5441892940873195b1298ac0603306b10c443380`; ethereum `0xd632845c89c2ef329702257d0da2f08c0e0efcad` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x6f9e94296364b7b620d1289521933e43767ffc95`; ethereum `0xece74c943eb325c8444f7e914af07eaea468ec4d` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x74e104fef61679b3cf08138eb1166a6b4553f88f`; ethereum `0xa43a62b90810086a310a1e9aa74cbdf6181c92ee` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x9385fe25b39d1e5ac310ba16c631865add4ecee7`; ethereum `0xca04b61aa227019d5957f8ebe3dbddb030348a61` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0xcc80b869ba5efcdf35261b8e966937e0e9dbde1c`; ethereum `0xf19944e4d4910d2eb304f12272bead3f5af6fb69` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (151)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Proxy (impl: 0x3e7a502aa00317b470108ab1773289f57b487ed9) | proxy | project_anchor | own_supporting | 1 | ethereum | unit-262117 | `0x2f9fa63066cfa2d727f57ddf1991557ba86f12c9` | ❓ Unverified |
| Proxy (impl: 0x4f24ec178c862497aa4519c18f9462c8dc3fcdb9) | unknown | project_anchor | own_supporting | 1 | ethereum | unit-262118 | 2 deployments: ethereum `0x0855524fac05dda9e35e7cb9047cc6fd1cf21989`; ethereum `0x4f24ec178c862497aa4519c18f9462c8dc3fcdb9` | ❓ Unverified |
| Proxy (impl: 0x84815a3738aef9aa81d7bc3a6dbfa8d26970445e) | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x5304e9188b6e2c4988f230b3d1c4786d9e05fadb`; ethereum `0x84815a3738aef9aa81d7bc3a6dbfa8d26970445e` | ❓ Unverified |
| Proxy (impl: 0xaf8ca43e6f422f06c2f2c9fecfb09035d70858e3) | proxy | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x091806040fd70b40bcda5e01d00eafad8d10ab56` | ❓ Unverified |
| Proxy (impl: 0xfdef1ab044b69785ae57be3395afc837efb07440) | unknown | non_address_book | non_address_book_inventory (excluded) | 4 | ethereum | n/a | 5 deployments: ethereum `0x0b3497204bda07d8b1c07c6ae246a1b267a9cecf`; ethereum `0x12ee9b2e5f8746ca8a4a36260799301d03a066a4`; ethereum `0x3c22f604cc8b422f43beca8d8cdef9922b96f454`; ethereum `0x47dac542c5b9377e3a5d30992a6c32a3ad7f33db`; ethereum `0xfdef1ab044b69785ae57be3395afc837efb07440` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x00e0a0b36874e707b2240e8b6458912537427c75` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x03799d4ab15e58e59c1c9db747ebe060972a4c99` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x05a431d759fef7ec0eed3af7b6077e170086e6b8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x06c7b7269d4ad8a613e22a90efb56658650d3ee9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x087c44cb3de4e8f5cafdc5dd8cdb012ef7ae3199` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x08fa91c61173277de84be4ba13a71d815e266086` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0a705821cd494dfab4c09603460126cc05eb894f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0ba412aea25bca6c25f46967c7714a343ac781e3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1022d340e43db4ac390395755c7507530da5493e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x15595b257724163dc62f61fff789f5a8e09478ce` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x17c0fa99710e930e7c6add23ec9daaa24a52d3ea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1d47178bf91f848b971a1edd5089537a70b74e1b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2255e3a57a593a4d98f6ffdba42d584e3e19e79a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x22ada8420468ea3b3b39b87cda5742b183c7e28b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2437bb2cc68763e6113743af436312b692bf21de` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x252a7aa203a6df2f7781a124cb95c27aae4f286c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2c4206a2bd18d581b62e793b97e89e0977619f95` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x30061d6b51f193223300787c3052aab6cfcb6df7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x30439551a4adedb9f29a5bdba6b4aafcc36dff98` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x363838fa35711ea3f8c8f95151203723cc6ee535` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x381225768dd2bd60d70482b51109d0defee92503` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3d732aed4f05b4e32315f612b05d2e3340fb43e2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 1 | ethereum | unit-262116 | 2 deployments: ethereum `0x3db35c654bbf0f777fc3b4b35a80ade783936552`; ethereum `0x750b9848b8f4956a41f6822f53ac1f80b4486bde` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x409b55175196fafc0e13f12b85fd9a27adad9d0b`; ethereum `0xbb81669b6aba6e15b5da4e30ab90bea920bc7b24` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x411cb02b25b8ad0e1e4296b8919b27baff6a0b55` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x433b57d0e9a7d555c6c802a39df9519013895d4c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x454f7bf0afa2201d34e770730174662ea519431d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x47ddda94ae5d8d0e62e770d199ed419b88e801ea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x49831fd1b9753b630a5b220656dd42d6cd7ae8f1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4e05308b1e5424884ebec7822936d1af39b9b76e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4ebb34865ae375bc7f298384de5eeab78fd3572a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4fa2425edf435b52016447ab897d300d78c0afe4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x519020fa558a52df57854135345c28024a596b68` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x53a13a87124bbd71f58f6595b9133b5ef2173bc1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x53c5f74caea8b937b0d820c1d13b73b695f16728` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5409ff9585c9c942389f4f84ee4dc28ae2f361f1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x54a69e1de50b3d44def302087dbe3de0687213da` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5577d30300b7f7fa3ac8c5041a9909a031738b93` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5b433b06e73004a24217af16e6efe4b3292d45d5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5c1bbf2898022858ce348e8175f728c8a9f7aee5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5e5003e1b658a9c37660f4e6a730833b8a433047` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6206001e5e83c954eb11a7fb842f848bb12894bd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x63445986a5ff58cf9b344564f41ef039f5e848e1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x63644b7464bd753dea3cb5aeddf5edec00c0facb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6482d3157634e1f595066a945db68b88c642e4a4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x64ef1210965b7974b6cdb959d6d610c57cc64b8b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x65d999ddaaa6b0424be37a53d5574e43e9433788` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x674090a992d4cbf3d752a7998e864a6942af23e4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6a4c89eb9a26a2da34f13f8976daa9fd7526f35c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6d5058b64d5a51ab5b5f08382d3f99c35cace36f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x729ef93f7715cbac3f3fa604f5d0229af8db6153` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7300a4ddf133ac71fc1fbebee1fc3dd2de3ecd50` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7327717994a4ebabc6be9a09fe0f8379d7cc0b19` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x77b3e31498113fef92372832820f4d93a65fc3f0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7bb823a17a427eb920ca2ff16c3b70ae33cf6f82` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7c7cb2485f3c04ef2ebd08fcc2356545c541142c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x85ed5c4488f9d17f81cc963ec17c2236209d7dd0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8815e486fb446e954497358582decd9fb3451ec6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8dac0a3750f198043af6080a13720681fbd222be` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8dd5d5b857213c9cba215a7e60ff80f9e3e02869` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8de3197dce575b0307a66f79607f9f21cd90a41f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x8e1c20f6a4b1756358d1d8f961b60fa458d55da9`; ethereum `0xe4e525d22f25d800db2cfd2af842cffaf627668b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8ea0c108981bff3b22115643ec453a6918a2298e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8f75358c5c48828ddbd249d8cbc6b43f4a56140c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x956eb73f4296b2cd16b26343296529dc76aadf4a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x9687837f69ac8653857c15d05f8c5903582dd486`; ethereum `0xf804ba63992259dcddd7e6d8a88c45ea60fa0445` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x98fa8859b368279167c882fc9b9e638112dfe613` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9bf292c080f34c7f1c32f24c993ad9f3795d76c0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9d5f0495721e9002130a1cb1751d5653181b43e0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9f895e4f6ee3ed98488fe46fe25b537f6efd309d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa66fc863bd81878d2cc1dc0bc95c1fbae6b80c46` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa6b7fa5112c0c3dfe93430936047811f98bb8b40` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa7e576a5867d08d1bf0fd7f27b1ec710fd28e071` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xabcad77679099fef11cb7249c7dbe8f122812948` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xabdead9f8085c2321a5a66a2a0e649fd917e9aff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xacbddf6f7a1b74c0aaea425b605397e443bdcd8a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xafa9c49b07f2e4375ab853091221a86b0c7e8855` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb2265a122814da516318f727183a5d8feca8bace` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb51d7a841911461d4ae97a49de78be086a71a724` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb936e24d9d4b47f8ed3100964e0c96663019b28c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbb86f659b3236d2d28f0bd474375ee4179e8714f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbb9de9e1178731720b39c99c0248b5604a953fab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbbf53226c3447a9e2acb1bd2c338375bdd970f78` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbc11091d6203500c480f0305140c687ab52b224b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbc6785e44a4a3ace7ede61c39f67376c4a5dc12b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbde7da64d68d7db95837f6e72b4e52b9cec05051` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbeb5bc6d40234ef89b24ca98f23ca5817709f0da` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbee0e20401ccbfb3f59dbfef3b9158799853e390` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc148934d44cc2e6592a8879cc5a7f5d0e8bb73f6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc6061ca95ad0378bdb12381206a1d723d14b72c4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc626befa4d22cc78c5fb74ab68edb02aaa9ab079` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc8757865920e0467f5d23b59845aa357a24ea38c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc91857b90e367d2a9d4e991659a358b5f3e8e74d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd0fd9390cd2a45756524ee9f07080d4b6b76b22a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd114e338290faeb55a449841a9c3ed0c87ecdeda` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd6701b114df3303ffee13bc08a8b7345ee454afe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd6c64e28c09d889950862a3456395739f55233f0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd93f4cf882d7d576a8dc09e606b38caf18eda796` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdb79f131acac4bd38b320e36c60ac542468a3b89` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe014b8351f61bf37d2329fe3f8c845548bef61b5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe21b6194903282772bcf40fef6848f28f50b51ee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe2a1d30cb17c44eb601812a5181043c203e897e6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe69762c9e19c6537bc1884287cd341c6e7014713` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe6dcf2a3ea2f90865205ae7c4709a3a6cce15d77` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe7604d54a8e5a37ce605218f3aa2c573544e24a1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe8db158643595b0f998cb9ff9ddbf7410918cb23` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xeb063e3c21ee3468f056d1f477b8ed8697aa7ff8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xed38db26a3a7643f4ea274c3e6139eb3d3a13d49` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xef40fd44b78775df6fb0b19eb680475cf2d239ea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf04d66d509ce3dfa386ed5c57c10e608dcc00c4a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf14da7fc73c903936a89b30d5be3448ac840a751` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf199236b7af110f492c1a622089020b946911ffd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf1f4a550cfdf9c50deabfba69ba3b0f35834d04d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf5fbbdc4b69dcaafb3fb8e1dad532c266892cf0c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf8e8dcbba08fcf38ecf26228a99a1f27ba3e78ea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfa02a5cd14a15c4717bdc7a4479aba40eb93a01c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfaaeafc5cdd1b8b54849b77f8e74a4d8c3895c44` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x120af5748207161cc539ee5878fef9e3a12ad11a`; bsc `0xbc11091d6203500c480f0305140c687ab52b224b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 1 | bsc | unit-262119 | 2 deployments: bsc `0x17afa1eb1feede3ed791e1b5c4b32b544e6cbc0b`; bsc `0x49620e9bfd117c7b05b4732980b05b7afee60a69` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x206e179b89c18bf077b03df4ce224a7339447a0f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x22ada8420468ea3b3b39b87cda5742b183c7e28b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x252a7aa203a6df2f7781a124cb95c27aae4f286c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x30061d6b51f193223300787c3052aab6cfcb6df7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x3c22f604cc8b422f43beca8d8cdef9922b96f454`; bsc `0x65d999ddaaa6b0424be37a53d5574e43e9433788` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3c43b7a07bf8ef7fb8fa0ebe7b822a94a5731136` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-262114 | `0x3cb7378565718c64ab86970802140cc48ef1f969` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x49831fd1b9753b630a5b220656dd42d6cd7ae8f1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4ebb34865ae375bc7f298384de5eeab78fd3572a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5409ff9585c9c942389f4f84ee4dc28ae2f361f1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5e5003e1b658a9c37660f4e6a730833b8a433047` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6575cfa99a00a054cc3536f7978636701498fc81` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x683f5af0fdfc2894363517f7cf30fd8bdadf7b96` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6c75b6a04250c80b379a6b1cb0973020c9cbea26` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x730c1be5c55ecef7ccdffbe1c6841ca08b5e9076` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7ab3a7059ebc247b25df7b492548c5e2737db84f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8dfb9566316ef988978fdd5abf816e772880f549` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xab96cb2317dfc8280a90deb7ef7b97efe34f926f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb51701488e07b5afcc8e1ec046292baa2a4e2770` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb51d7a841911461d4ae97a49de78be086a71a724` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xcd8f29e4f73b725b83d73949e4a9cf2369737cfb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xdf69e8da10f0f8407b87ac839550053a001d3d7d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe21b6194903282772bcf40fef6848f28f50b51ee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xef40fd44b78775df6fb0b19eb680475cf2d239ea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf0ee3d7181c3e3a46f85fa113e629167e06aa916` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf78274d7b5cca63b7d6692dfffd8398d69cefa34` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xfabf6eb0219e2ce7f38b0534053104b3400b8718` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 182
- Live contracts: 5
- Unknown liveness contracts: 177
- Source-verified contracts: 40
- Currently scope-matched contracts retained as-is: 0
- Classification counts: candidate review=4, contamination review=5, exact address book overlap=2, source verified unclassified=31, unverified unclassified=140

| Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|
| candidate review | BendUpgradeableProxy<br>`0x45239322a846578294eb9b2155d5cdb98d2519af` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x9ac4317298bf4ed0fa835beb7dc3363e6956d95a` |
| candidate review | CCompLikeDelegate<br>`0xa1849880593e96d2f7df77d0d38a7f2372ae10e0` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x2b384212edc04ae8bb41738d05ba20e33277bf33` |
| candidate review | Comptroller<br>`0x7b5e3521a049c8ff88e6349f33044c6cc33c113c` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0x2b384212edc04ae8bb41738d05ba20e33277bf33` |
| candidate review | ComptrollerSweeper<br>`0xff3c813559127d60da732a0e8ec836f4c162df82` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x2b384212edc04ae8bb41738d05ba20e33277bf33` |
| contamination review | GovernorBravoDelegate<br>`0x3d11b5b86e137827633decf793bc241dd552b213` | non_address_book | unknown | unknown | verified | n/a | `0x2b384212edc04ae8bb41738d05ba20e33277bf33` |
| contamination review | JumpRateModelV2<br>`0x461c23c25942a1bb4b5f3d6b01c6d10f3d45862c` | non_address_book | unknown | unknown | verified | n/a | `0x2b384212edc04ae8bb41738d05ba20e33277bf33` |
| contamination review | LegacyJumpRateModelV2<br>`0x186658240be759df3d3cf0be79d619ad5772102a` | non_address_book | unknown | unknown | verified | n/a | `0x2b384212edc04ae8bb41738d05ba20e33277bf33` |
| contamination review | SigRelayer<br>`0xf61d8eef3f479dfa24beaa46bf6f235e6e2f7af8` | non_address_book | unknown | unknown | verified | n/a | `0x2b384212edc04ae8bb41738d05ba20e33277bf33` |
| contamination review | SigRelayer2<br>`0xaae15233798a477c47d1ea3d4586770a68b9d344` | non_address_book | unknown | unknown | verified | n/a | `0x2b384212edc04ae8bb41738d05ba20e33277bf33` |
| exact address book overlap | 0x3db35c654bbf0f777fc3b4b35a80ade783936552<br>`0x750b9848b8f4956a41f6822f53ac1f80b4486bde` | project_anchor | unknown | live | unverified | n/a | `0x9ac4317298bf4ed0fa835beb7dc3363e6956d95a` |
| exact address book overlap | 0x4f24ec178c862497aa4519c18f9462c8dc3fcdb9<br>`0x0855524fac05dda9e35e7cb9047cc6fd1cf21989` | project_anchor | unknown | live | unverified | n/a | `0x9ac4317298bf4ed0fa835beb7dc3363e6956d95a` |
| source verified unclassified | AirdropDistribution<br>`0xe783e76b3f89ea913c33aab1d54564bd4c6df886` | non_address_book | unknown | unknown | verified | n/a | `0x9ac4317298bf4ed0fa835beb7dc3363e6956d95a` |
| source verified unclassified | BendProxyAdmin<br>`0x92a28fd877daf3a9f13c64e8d855279c9f13dbdc` | non_address_book | unknown | unknown | verified | n/a | `0x9ac4317298bf4ed0fa835beb7dc3363e6956d95a` |
| source verified unclassified | BNFTRegistry<br>`0xbd1df6a8da9983578d6f0aaf2af4c9f564e534a1` | non_address_book | unknown | unknown | verified | n/a | `0x9ac4317298bf4ed0fa835beb7dc3363e6956d95a` |
| source verified unclassified | BNFTRegistry<br>`0xed3eb04984774de5fc6003db7a08f09a3920a6fd` | non_address_book | unknown | unknown | verified | n/a | `0x9ac4317298bf4ed0fa835beb7dc3363e6956d95a` |
| source verified unclassified | BNFTUpgradeableProxy<br>`0xa48f90ea06a2c9d9a86067504fde2b8f1f3897bd` | non_address_book | unknown | unknown | verified | n/a | `0x9ac4317298bf4ed0fa835beb7dc3363e6956d95a` |
| source verified unclassified | GovernorBravoDelegate<br>`0x44b68e6f47b4eb2f3b6d8158b60a5fa681a5b911` | non_address_book | unknown | unknown | verified | n/a | `0x2b384212edc04ae8bb41738d05ba20e33277bf33` |
| source verified unclassified | GovernorBravoDelegate<br>`0x563a63d650a5d259abae9248dddc6867813d3f87` | non_address_book | unknown | unknown | verified | n/a | `0x2b384212edc04ae8bb41738d05ba20e33277bf33` |
| source verified unclassified | GovernorBravoDelegate<br>`0x6f6e4785c97885d26466945055d4ae8931be6f7a` | non_address_book | unknown | unknown | verified | n/a | `0x2b384212edc04ae8bb41738d05ba20e33277bf33` |
| source verified unclassified | GovernorBravoDelegate<br>`0xef3b6e9e13706a8f01fe98fdcf66335dc5cfdeed` | non_address_book | unknown | unknown | verified | n/a | `0x2b384212edc04ae8bb41738d05ba20e33277bf33` |
| source verified unclassified | JumpRateModelV2<br>`0x637e07416562e673312fadd8b65cee68da013c3d` | non_address_book | unknown | unknown | verified | n/a | `0x2b384212edc04ae8bb41738d05ba20e33277bf33` |
| source verified unclassified | JumpRateModelV2<br>`0xd88b94128ff2b8cf2d7886cd1c1e46757418ca2a` | non_address_book | unknown | unknown | verified | n/a | `0x2b384212edc04ae8bb41738d05ba20e33277bf33` |
| source verified unclassified | JumpRateModelV2<br>`0xd956188795ca6f4a74092ddca33e0ea4ca3a1395` | non_address_book | unknown | unknown | verified | n/a | `0x2b384212edc04ae8bb41738d05ba20e33277bf33` |
| source verified unclassified | JumpRateModelV2<br>`0xfb564da37b41b2f6b6edcc3e56fbf523bd9f2012` | non_address_book | unknown | unknown | verified | n/a | `0x2b384212edc04ae8bb41738d05ba20e33277bf33` |
| source verified unclassified | LegacyJumpRateModelV2<br>`0xd8ec56013ea119e7181d231e5048f90fbbe753c0` | non_address_book | unknown | unknown | verified | n/a | `0x2b384212edc04ae8bb41738d05ba20e33277bf33` |
| source verified unclassified | LegacyJumpRateModelV2<br>`0xf9583618169920c544ec89795a346f487cb5a227` | non_address_book | unknown | unknown | verified | n/a | `0x2b384212edc04ae8bb41738d05ba20e33277bf33` |
| source verified unclassified | LockProxy<br>`0x250e76987d838a75310c34bf422ea9f1ac4cc906` | non_address_book | unknown | unknown | verified | n/a | `0x8b35064b158634458fd53a861d68eb84152e4106` |
| source verified unclassified | NFTOracle<br>`0xeb917441daa18b6f4810412c52cd00be0ea9d6f1` | non_address_book | unknown | unknown | verified | n/a | `0x9ac4317298bf4ed0fa835beb7dc3363e6956d95a` |
| source verified unclassified | OSWAP<br>`0xe9b0db26a0085e5119757a5179a499abf595bcab` | non_address_book | unknown | unknown | verified | n/a | `0x8b35064b158634458fd53a861d68eb84152e4106` |
| source verified unclassified | OTCSettlement<br>`0x2d658bbe50b1d3723498f9808c44c9726dd490cc` | non_address_book | unknown | unknown | verified | n/a | `0x2b384212edc04ae8bb41738d05ba20e33277bf33` |
| source verified unclassified | ProxyAdmin<br>`0x3d5754ebbf1220dac838d02fcdcfe729dee1dce9` | non_address_book | unknown | unknown | verified | n/a | `0x9ac4317298bf4ed0fa835beb7dc3363e6956d95a` |
| source verified unclassified | StableSendETH<br>`0xfdcf4827668f333d0a6a29066731769eda7cc073` | non_address_book | unknown | unknown | verified | n/a | `0x2b384212edc04ae8bb41738d05ba20e33277bf33` |
| source verified unclassified | TransparentUpgradeableProxy<br>`0x1b553878f0ee707c59c140940be3b41b5bb44e5c` | non_address_book | unknown | unknown | verified | n/a | `0x9ac4317298bf4ed0fa835beb7dc3363e6956d95a` |
| source verified unclassified | TransparentUpgradeableProxy<br>`0x2103e3b1e2bf1025a96461e2e21be0f83d25f13f` | non_address_book | unknown | unknown | verified | n/a | `0x9ac4317298bf4ed0fa835beb7dc3363e6956d95a` |
| source verified unclassified | TransparentUpgradeableProxy<br>`0x5441892940873195b1298ac0603306b10c443380` | non_address_book | unknown | unknown | verified | n/a | `0x9ac4317298bf4ed0fa835beb7dc3363e6956d95a` |
| source verified unclassified | TransparentUpgradeableProxy<br>`0x6f9e94296364b7b620d1289521933e43767ffc95` | non_address_book | unknown | unknown | verified | n/a | `0x9ac4317298bf4ed0fa835beb7dc3363e6956d95a` |
| source verified unclassified | TransparentUpgradeableProxy<br>`0x7b7c823cfcc9231b8a676c3b4b03066fce251ebb` | non_address_book | unknown | unknown | verified | n/a | `0x9ac4317298bf4ed0fa835beb7dc3363e6956d95a` |
| source verified unclassified | TransparentUpgradeableProxy<br>`0xa43a62b90810086a310a1e9aa74cbdf6181c92ee` | non_address_book | unknown | unknown | verified | n/a | `0x9ac4317298bf4ed0fa835beb7dc3363e6956d95a` |
| source verified unclassified | TransparentUpgradeableProxy<br>`0xbebaadc9662db614706f560221cd37e35a491e0d` | non_address_book | unknown | unknown | verified | n/a | `0x9ac4317298bf4ed0fa835beb7dc3363e6956d95a` |
| source verified unclassified | TransparentUpgradeableProxy<br>`0xca04b61aa227019d5957f8ebe3dbddb030348a61` | non_address_book | unknown | unknown | verified | n/a | `0x9ac4317298bf4ed0fa835beb7dc3363e6956d95a` |
| source verified unclassified | TransparentUpgradeableProxy<br>`0xcc80b869ba5efcdf35261b8e966937e0e9dbde1c` | non_address_book | unknown | unknown | verified | n/a | `0x9ac4317298bf4ed0fa835beb7dc3363e6956d95a` |
| source verified unclassified | BEP20TokenImplementation<br>`0xdfebae62a29595a7a00afe2676b8fb54110c3817` | non_address_book | unknown | unknown | verified | n/a | `0x28fa655c09918afc1798f4c152013685b21507bb` |
| unverified unclassified | 0x409b55175196fafc0e13f12b85fd9a27adad9d0b<br>`0xbb81669b6aba6e15b5da4e30ab90bea920bc7b24` | non_address_book | unknown | unknown | unverified | n/a | `0x9ac4317298bf4ed0fa835beb7dc3363e6956d95a` |
| unverified unclassified | 0x84815a3738aef9aa81d7bc3a6dbfa8d26970445e<br>`0x5304e9188b6e2c4988f230b3d1c4786d9e05fadb` | non_address_book | unknown | unknown | unverified | n/a | `0x9ac4317298bf4ed0fa835beb7dc3363e6956d95a` |
| unverified unclassified | 0x8e1c20f6a4b1756358d1d8f961b60fa458d55da9<br>`0xe4e525d22f25d800db2cfd2af842cffaf627668b` | non_address_book | unknown | unknown | unverified | n/a | `0x9ac4317298bf4ed0fa835beb7dc3363e6956d95a` |
| unverified unclassified | 0x9687837f69ac8653857c15d05f8c5903582dd486<br>`0xf804ba63992259dcddd7e6d8a88c45ea60fa0445` | non_address_book | unknown | unknown | unverified | n/a | `0x9ac4317298bf4ed0fa835beb7dc3363e6956d95a` |
| unverified unclassified | 0xfdef1ab044b69785ae57be3395afc837efb07440<br>`0x0b3497204bda07d8b1c07c6ae246a1b267a9cecf` | non_address_book | unknown | unknown | unverified | n/a | `0x28fa655c09918afc1798f4c152013685b21507bb` |
| unverified unclassified | 0xfdef1ab044b69785ae57be3395afc837efb07440<br>`0x12ee9b2e5f8746ca8a4a36260799301d03a066a4` | non_address_book | unknown | unknown | unverified | n/a | `0x28fa655c09918afc1798f4c152013685b21507bb` |
| unverified unclassified | 0xfdef1ab044b69785ae57be3395afc837efb07440<br>`0x3c22f604cc8b422f43beca8d8cdef9922b96f454` | non_address_book | unknown | unknown | unverified | n/a | `0x28fa655c09918afc1798f4c152013685b21507bb` |
| unverified unclassified | 0xfdef1ab044b69785ae57be3395afc837efb07440<br>`0x47dac542c5b9377e3a5d30992a6c32a3ad7f33db` | non_address_book | unknown | unknown | unverified | n/a | `0x28fa655c09918afc1798f4c152013685b21507bb` |
| unverified unclassified | BNFTRegistry<br>`0x11dd0d4a92d34ae3cdcd56998d68884d225a9768` | non_address_book | unknown | unknown | unverified | n/a | `0x9ac4317298bf4ed0fa835beb7dc3363e6956d95a` |
| unverified unclassified | UnnamedContract<br>`0x00e0a0b36874e707b2240e8b6458912537427c75` | non_address_book | unknown | unknown | unverified | n/a | `0x9ac4317298bf4ed0fa835beb7dc3363e6956d95a` |
| unverified unclassified | UnnamedContract<br>`0x03799d4ab15e58e59c1c9db747ebe060972a4c99` | non_address_book | unknown | unknown | unverified | n/a | `0x28fa655c09918afc1798f4c152013685b21507bb` |
| unverified unclassified | UnnamedContract<br>`0x05a431d759fef7ec0eed3af7b6077e170086e6b8` | non_address_book | unknown | unknown | unverified | n/a | `0x9ac4317298bf4ed0fa835beb7dc3363e6956d95a` |
| unverified unclassified | UnnamedContract<br>`0x06c7b7269d4ad8a613e22a90efb56658650d3ee9` | non_address_book | unknown | unknown | unverified | n/a | `0x9ac4317298bf4ed0fa835beb7dc3363e6956d95a` |
| unverified unclassified | UnnamedContract<br>`0x087c44cb3de4e8f5cafdc5dd8cdb012ef7ae3199` | non_address_book | unknown | unknown | unverified | n/a | `0x28fa655c09918afc1798f4c152013685b21507bb` |
| unverified unclassified | UnnamedContract<br>`0x08fa91c61173277de84be4ba13a71d815e266086` | non_address_book | unknown | unknown | unverified | n/a | `0x9ac4317298bf4ed0fa835beb7dc3363e6956d95a` |
| unverified unclassified | UnnamedContract<br>`0x0a705821cd494dfab4c09603460126cc05eb894f` | non_address_book | unknown | unknown | unverified | n/a | `0x28fa655c09918afc1798f4c152013685b21507bb` |
| unverified unclassified | UnnamedContract<br>`0x0ba412aea25bca6c25f46967c7714a343ac781e3` | non_address_book | unknown | unknown | unverified | n/a | `0x28fa655c09918afc1798f4c152013685b21507bb` |
| unverified unclassified | UnnamedContract<br>`0x0e3ea0a265f2deea2717db9979c756d9d759a711` | non_address_book | unknown | unknown | unverified | n/a | `0x9ac4317298bf4ed0fa835beb7dc3363e6956d95a` |
| unverified unclassified | UnnamedContract<br>`0x1022d340e43db4ac390395755c7507530da5493e` | non_address_book | unknown | unknown | unverified | n/a | `0x9ac4317298bf4ed0fa835beb7dc3363e6956d95a` |
| unverified unclassified | UnnamedContract<br>`0x15595b257724163dc62f61fff789f5a8e09478ce` | non_address_book | unknown | unknown | unverified | n/a | `0x9ac4317298bf4ed0fa835beb7dc3363e6956d95a` |
| unverified unclassified | UnnamedContract<br>`0x17c0fa99710e930e7c6add23ec9daaa24a52d3ea` | non_address_book | unknown | unknown | unverified | n/a | `0x9ac4317298bf4ed0fa835beb7dc3363e6956d95a` |
| unverified unclassified | UnnamedContract<br>`0x1d47178bf91f848b971a1edd5089537a70b74e1b` | non_address_book | unknown | unknown | unverified | n/a | `0x9ac4317298bf4ed0fa835beb7dc3363e6956d95a` |
| unverified unclassified | UnnamedContract<br>`0x207fe8b61ca54d93ce46d94a55c49678dec51f59` | non_address_book | unknown | unknown | unverified | n/a | `0x9ac4317298bf4ed0fa835beb7dc3363e6956d95a` |
| unverified unclassified | UnnamedContract<br>`0x2255e3a57a593a4d98f6ffdba42d584e3e19e79a` | non_address_book | unknown | unknown | unverified | n/a | `0x28fa655c09918afc1798f4c152013685b21507bb` |
| unverified unclassified | UnnamedContract<br>`0x22ada8420468ea3b3b39b87cda5742b183c7e28b` | non_address_book | unknown | unknown | unverified | n/a | `0x28fa655c09918afc1798f4c152013685b21507bb` |
| unverified unclassified | UnnamedContract<br>`0x2437bb2cc68763e6113743af436312b692bf21de` | non_address_book | unknown | unknown | unverified | n/a | `0x9ac4317298bf4ed0fa835beb7dc3363e6956d95a` |
| unverified unclassified | UnnamedContract<br>`0x252a7aa203a6df2f7781a124cb95c27aae4f286c` | non_address_book | unknown | unknown | unverified | n/a | `0x28fa655c09918afc1798f4c152013685b21507bb` |
| unverified unclassified | UnnamedContract<br>`0x2c4206a2bd18d581b62e793b97e89e0977619f95` | non_address_book | unknown | unknown | unverified | n/a | `0x28fa655c09918afc1798f4c152013685b21507bb` |
| unverified unclassified | UnnamedContract<br>`0x30061d6b51f193223300787c3052aab6cfcb6df7` | non_address_book | unknown | unknown | unverified | n/a | `0x28fa655c09918afc1798f4c152013685b21507bb` |
| unverified unclassified | UnnamedContract<br>`0x30439551a4adedb9f29a5bdba6b4aafcc36dff98` | non_address_book | unknown | unknown | unverified | n/a | `0x8b35064b158634458fd53a861d68eb84152e4106` |
| unverified unclassified | UnnamedContract<br>`0x363838fa35711ea3f8c8f95151203723cc6ee535` | non_address_book | unknown | unknown | unverified | n/a | `0x28fa655c09918afc1798f4c152013685b21507bb` |
| unverified unclassified | UnnamedContract<br>`0x381225768dd2bd60d70482b51109d0defee92503` | non_address_book | unknown | unknown | unverified | n/a | `0x8b35064b158634458fd53a861d68eb84152e4106` |
| unverified unclassified | UnnamedContract<br>`0x3d732aed4f05b4e32315f612b05d2e3340fb43e2` | non_address_book | unknown | unknown | unverified | n/a | `0x9ac4317298bf4ed0fa835beb7dc3363e6956d95a` |
| unverified unclassified | UnnamedContract<br>`0x3db35c654bbf0f777fc3b4b35a80ade783936552` | retained_scope_excluded_inventory | unknown | live | unverified | n/a | `0x9ac4317298bf4ed0fa835beb7dc3363e6956d95a` |
| unverified unclassified | UnnamedContract<br>`0x409b55175196fafc0e13f12b85fd9a27adad9d0b` | non_address_book | unknown | unknown | unverified | n/a | `0x9ac4317298bf4ed0fa835beb7dc3363e6956d95a` |
| unverified unclassified | UnnamedContract<br>`0x411cb02b25b8ad0e1e4296b8919b27baff6a0b55` | non_address_book | unknown | unknown | unverified | n/a | `0x9ac4317298bf4ed0fa835beb7dc3363e6956d95a` |
| unverified unclassified | UnnamedContract<br>`0x433b57d0e9a7d555c6c802a39df9519013895d4c` | non_address_book | unknown | unknown | unverified | n/a | `0x9ac4317298bf4ed0fa835beb7dc3363e6956d95a` |
| unverified unclassified | UnnamedContract<br>`0x454f7bf0afa2201d34e770730174662ea519431d` | non_address_book | unknown | unknown | unverified | n/a | `0x9ac4317298bf4ed0fa835beb7dc3363e6956d95a` |
| unverified unclassified | UnnamedContract<br>`0x47ddda94ae5d8d0e62e770d199ed419b88e801ea` | non_address_book | unknown | unknown | unverified | n/a | `0x9ac4317298bf4ed0fa835beb7dc3363e6956d95a` |
| unverified unclassified | UnnamedContract<br>`0x49831fd1b9753b630a5b220656dd42d6cd7ae8f1` | non_address_book | unknown | unknown | unverified | n/a | `0x28fa655c09918afc1798f4c152013685b21507bb` |
| unverified unclassified | UnnamedContract<br>`0x4e05308b1e5424884ebec7822936d1af39b9b76e` | non_address_book | unknown | unknown | unverified | n/a | `0x9ac4317298bf4ed0fa835beb7dc3363e6956d95a` |
| unverified unclassified | UnnamedContract<br>`0x4ebb34865ae375bc7f298384de5eeab78fd3572a` | non_address_book | unknown | unknown | unverified | n/a | `0x28fa655c09918afc1798f4c152013685b21507bb` |
| unverified unclassified | UnnamedContract<br>`0x4f24ec178c862497aa4519c18f9462c8dc3fcdb9` | retained_scope_excluded_inventory | unknown | live | unverified | n/a | `0x9ac4317298bf4ed0fa835beb7dc3363e6956d95a` |
| unverified unclassified | UnnamedContract<br>`0x4fa2425edf435b52016447ab897d300d78c0afe4` | non_address_book | unknown | unknown | unverified | n/a | `0x28fa655c09918afc1798f4c152013685b21507bb` |
| unverified unclassified | UnnamedContract<br>`0x519020fa558a52df57854135345c28024a596b68` | non_address_book | unknown | unknown | unverified | n/a | `0x8b35064b158634458fd53a861d68eb84152e4106` |
| unverified unclassified | UnnamedContract<br>`0x53a13a87124bbd71f58f6595b9133b5ef2173bc1` | non_address_book | unknown | unknown | unverified | n/a | `0x9ac4317298bf4ed0fa835beb7dc3363e6956d95a` |
| unverified unclassified | UnnamedContract<br>`0x53c5f74caea8b937b0d820c1d13b73b695f16728` | non_address_book | unknown | unknown | unverified | n/a | `0x28fa655c09918afc1798f4c152013685b21507bb` |
| unverified unclassified | UnnamedContract<br>`0x5409ff9585c9c942389f4f84ee4dc28ae2f361f1` | non_address_book | unknown | unknown | unverified | n/a | `0x28fa655c09918afc1798f4c152013685b21507bb` |
| unverified unclassified | UnnamedContract<br>`0x54a69e1de50b3d44def302087dbe3de0687213da` | non_address_book | unknown | unknown | unverified | n/a | `0x9ac4317298bf4ed0fa835beb7dc3363e6956d95a` |
| unverified unclassified | UnnamedContract<br>`0x5577d30300b7f7fa3ac8c5041a9909a031738b93` | non_address_book | unknown | unknown | unverified | n/a | `0x9ac4317298bf4ed0fa835beb7dc3363e6956d95a` |
| unverified unclassified | UnnamedContract<br>`0x5b433b06e73004a24217af16e6efe4b3292d45d5` | non_address_book | unknown | unknown | unverified | n/a | `0x28fa655c09918afc1798f4c152013685b21507bb` |
| unverified unclassified | UnnamedContract<br>`0x5c1bbf2898022858ce348e8175f728c8a9f7aee5` | non_address_book | unknown | unknown | unverified | n/a | `0x9ac4317298bf4ed0fa835beb7dc3363e6956d95a` |
| unverified unclassified | UnnamedContract<br>`0x5e5003e1b658a9c37660f4e6a730833b8a433047` | non_address_book | unknown | unknown | unverified | n/a | `0x28fa655c09918afc1798f4c152013685b21507bb` |
| unverified unclassified | UnnamedContract<br>`0x6206001e5e83c954eb11a7fb842f848bb12894bd` | non_address_book | unknown | unknown | unverified | n/a | `0x28fa655c09918afc1798f4c152013685b21507bb` |
| unverified unclassified | UnnamedContract<br>`0x63445986a5ff58cf9b344564f41ef039f5e848e1` | non_address_book | unknown | unknown | unverified | n/a | `0x9ac4317298bf4ed0fa835beb7dc3363e6956d95a` |
| unverified unclassified | UnnamedContract<br>`0x63644b7464bd753dea3cb5aeddf5edec00c0facb` | non_address_book | unknown | unknown | unverified | n/a | `0x28fa655c09918afc1798f4c152013685b21507bb` |
| unverified unclassified | UnnamedContract<br>`0x6482d3157634e1f595066a945db68b88c642e4a4` | non_address_book | unknown | unknown | unverified | n/a | `0x9ac4317298bf4ed0fa835beb7dc3363e6956d95a` |
| unverified unclassified | UnnamedContract<br>`0x64ef1210965b7974b6cdb959d6d610c57cc64b8b` | non_address_book | unknown | unknown | unverified | n/a | `0x9ac4317298bf4ed0fa835beb7dc3363e6956d95a` |
| unverified unclassified | UnnamedContract<br>`0x6a4c89eb9a26a2da34f13f8976daa9fd7526f35c` | non_address_book | unknown | unknown | unverified | n/a | `0x8b35064b158634458fd53a861d68eb84152e4106` |
| unverified unclassified | UnnamedContract<br>`0x6d5058b64d5a51ab5b5f08382d3f99c35cace36f` | non_address_book | unknown | unknown | unverified | n/a | `0x9ac4317298bf4ed0fa835beb7dc3363e6956d95a` |
| unverified unclassified | UnnamedContract<br>`0x729ef93f7715cbac3f3fa604f5d0229af8db6153` | non_address_book | unknown | unknown | unverified | n/a | `0x9ac4317298bf4ed0fa835beb7dc3363e6956d95a` |
| unverified unclassified | UnnamedContract<br>`0x7300a4ddf133ac71fc1fbebee1fc3dd2de3ecd50` | non_address_book | unknown | unknown | unverified | n/a | `0x9ac4317298bf4ed0fa835beb7dc3363e6956d95a` |
| unverified unclassified | UnnamedContract<br>`0x7327717994a4ebabc6be9a09fe0f8379d7cc0b19` | non_address_book | unknown | unknown | unverified | n/a | `0x28fa655c09918afc1798f4c152013685b21507bb` |
| unverified unclassified | UnnamedContract<br>`0x74e104fef61679b3cf08138eb1166a6b4553f88f` | non_address_book | unknown | unknown | unverified | n/a | `0x9ac4317298bf4ed0fa835beb7dc3363e6956d95a` |
| unverified unclassified | UnnamedContract<br>`0x7bb823a17a427eb920ca2ff16c3b70ae33cf6f82` | non_address_book | unknown | unknown | unverified | n/a | `0x28fa655c09918afc1798f4c152013685b21507bb` |
| unverified unclassified | UnnamedContract<br>`0x7c7cb2485f3c04ef2ebd08fcc2356545c541142c` | non_address_book | unknown | unknown | unverified | n/a | `0x9ac4317298bf4ed0fa835beb7dc3363e6956d95a` |
| unverified unclassified | UnnamedContract<br>`0x84815a3738aef9aa81d7bc3a6dbfa8d26970445e` | non_address_book | unknown | unknown | unverified | n/a | `0x9ac4317298bf4ed0fa835beb7dc3363e6956d95a` |
| unverified unclassified | UnnamedContract<br>`0x85ed5c4488f9d17f81cc963ec17c2236209d7dd0` | non_address_book | unknown | unknown | unverified | n/a | `0x28fa655c09918afc1798f4c152013685b21507bb` |
| unverified unclassified | UnnamedContract<br>`0x8815e486fb446e954497358582decd9fb3451ec6` | non_address_book | unknown | unknown | unverified | n/a | `0x9ac4317298bf4ed0fa835beb7dc3363e6956d95a` |
| unverified unclassified | UnnamedContract<br>`0x8dac0a3750f198043af6080a13720681fbd222be` | non_address_book | unknown | unknown | unverified | n/a | `0x9ac4317298bf4ed0fa835beb7dc3363e6956d95a` |
| unverified unclassified | UnnamedContract<br>`0x8de3197dce575b0307a66f79607f9f21cd90a41f` | non_address_book | unknown | unknown | unverified | n/a | `0x8b35064b158634458fd53a861d68eb84152e4106` |
| unverified unclassified | UnnamedContract<br>`0x8e1c20f6a4b1756358d1d8f961b60fa458d55da9` | non_address_book | unknown | unknown | unverified | n/a | `0x9ac4317298bf4ed0fa835beb7dc3363e6956d95a` |
| unverified unclassified | UnnamedContract<br>`0x8f75358c5c48828ddbd249d8cbc6b43f4a56140c` | non_address_book | unknown | unknown | unverified | n/a | `0x28fa655c09918afc1798f4c152013685b21507bb` |
| unverified unclassified | UnnamedContract<br>`0x9385fe25b39d1e5ac310ba16c631865add4ecee7` | non_address_book | unknown | unknown | unverified | n/a | `0x9ac4317298bf4ed0fa835beb7dc3363e6956d95a` |
| unverified unclassified | UnnamedContract<br>`0x956eb73f4296b2cd16b26343296529dc76aadf4a` | non_address_book | unknown | unknown | unverified | n/a | `0x28fa655c09918afc1798f4c152013685b21507bb` |
| unverified unclassified | UnnamedContract<br>`0x9687837f69ac8653857c15d05f8c5903582dd486` | non_address_book | unknown | unknown | unverified | n/a | `0x9ac4317298bf4ed0fa835beb7dc3363e6956d95a` |
| unverified unclassified | UnnamedContract<br>`0x98fa8859b368279167c882fc9b9e638112dfe613` | non_address_book | unknown | unknown | unverified | n/a | `0x28fa655c09918afc1798f4c152013685b21507bb` |
| unverified unclassified | UnnamedContract<br>`0x9bf292c080f34c7f1c32f24c993ad9f3795d76c0` | non_address_book | unknown | unknown | unverified | n/a | `0x28fa655c09918afc1798f4c152013685b21507bb` |
| unverified unclassified | UnnamedContract<br>`0x9f895e4f6ee3ed98488fe46fe25b537f6efd309d` | non_address_book | unknown | unknown | unverified | n/a | `0x28fa655c09918afc1798f4c152013685b21507bb` |
| unverified unclassified | UnnamedContract<br>`0xa66fc863bd81878d2cc1dc0bc95c1fbae6b80c46` | non_address_book | unknown | unknown | unverified | n/a | `0x9ac4317298bf4ed0fa835beb7dc3363e6956d95a` |
| unverified unclassified | UnnamedContract<br>`0xa6b7fa5112c0c3dfe93430936047811f98bb8b40` | non_address_book | unknown | unknown | unverified | n/a | `0x9ac4317298bf4ed0fa835beb7dc3363e6956d95a` |
| unverified unclassified | UnnamedContract<br>`0xa7e576a5867d08d1bf0fd7f27b1ec710fd28e071` | non_address_book | unknown | unknown | unverified | n/a | `0x28fa655c09918afc1798f4c152013685b21507bb` |
| unverified unclassified | UnnamedContract<br>`0xabcad77679099fef11cb7249c7dbe8f122812948` | non_address_book | unknown | unknown | unverified | n/a | `0x28fa655c09918afc1798f4c152013685b21507bb` |
| unverified unclassified | UnnamedContract<br>`0xabdead9f8085c2321a5a66a2a0e649fd917e9aff` | non_address_book | unknown | unknown | unverified | n/a | `0x9ac4317298bf4ed0fa835beb7dc3363e6956d95a` |
| unverified unclassified | UnnamedContract<br>`0xacbddf6f7a1b74c0aaea425b605397e443bdcd8a` | non_address_book | unknown | unknown | unverified | n/a | `0x9ac4317298bf4ed0fa835beb7dc3363e6956d95a` |
| unverified unclassified | UnnamedContract<br>`0xace336b02cdcbf7c66a3f8b42e68d7a6b212d40d` | non_address_book | unknown | unknown | unverified | n/a | `0x9ac4317298bf4ed0fa835beb7dc3363e6956d95a` |
| unverified unclassified | UnnamedContract<br>`0xafa9c49b07f2e4375ab853091221a86b0c7e8855` | non_address_book | unknown | unknown | unverified | n/a | `0x9ac4317298bf4ed0fa835beb7dc3363e6956d95a` |
| unverified unclassified | UnnamedContract<br>`0xb2265a122814da516318f727183a5d8feca8bace` | non_address_book | unknown | unknown | unverified | n/a | `0x8b35064b158634458fd53a861d68eb84152e4106` |
| unverified unclassified | UnnamedContract<br>`0xb51d7a841911461d4ae97a49de78be086a71a724` | non_address_book | unknown | unknown | unverified | n/a | `0x28fa655c09918afc1798f4c152013685b21507bb` |
| unverified unclassified | UnnamedContract<br>`0xb936e24d9d4b47f8ed3100964e0c96663019b28c` | non_address_book | unknown | unknown | unverified | n/a | `0x8b35064b158634458fd53a861d68eb84152e4106` |
| unverified unclassified | UnnamedContract<br>`0xbb86f659b3236d2d28f0bd474375ee4179e8714f` | non_address_book | unknown | unknown | unverified | n/a | `0x9ac4317298bf4ed0fa835beb7dc3363e6956d95a` |
| unverified unclassified | UnnamedContract<br>`0xbb9de9e1178731720b39c99c0248b5604a953fab` | non_address_book | unknown | unknown | unverified | n/a | `0x9ac4317298bf4ed0fa835beb7dc3363e6956d95a` |
| unverified unclassified | UnnamedContract<br>`0xbc11091d6203500c480f0305140c687ab52b224b` | non_address_book | unknown | unknown | unverified | n/a | `0x28fa655c09918afc1798f4c152013685b21507bb` |
| unverified unclassified | UnnamedContract<br>`0xbc6785e44a4a3ace7ede61c39f67376c4a5dc12b` | non_address_book | unknown | unknown | unverified | n/a | `0x9ac4317298bf4ed0fa835beb7dc3363e6956d95a` |
| unverified unclassified | UnnamedContract<br>`0xbde7da64d68d7db95837f6e72b4e52b9cec05051` | non_address_book | unknown | unknown | unverified | n/a | `0x28fa655c09918afc1798f4c152013685b21507bb` |
| unverified unclassified | UnnamedContract<br>`0xbeb5bc6d40234ef89b24ca98f23ca5817709f0da` | non_address_book | unknown | unknown | unverified | n/a | `0x9ac4317298bf4ed0fa835beb7dc3363e6956d95a` |
| unverified unclassified | UnnamedContract<br>`0xbee0e20401ccbfb3f59dbfef3b9158799853e390` | non_address_book | unknown | unknown | unverified | n/a | `0x9ac4317298bf4ed0fa835beb7dc3363e6956d95a` |
| unverified unclassified | UnnamedContract<br>`0xc148934d44cc2e6592a8879cc5a7f5d0e8bb73f6` | non_address_book | unknown | unknown | unverified | n/a | `0x9ac4317298bf4ed0fa835beb7dc3363e6956d95a` |
| unverified unclassified | UnnamedContract<br>`0xc6061ca95ad0378bdb12381206a1d723d14b72c4` | non_address_book | unknown | unknown | unverified | n/a | `0x8b35064b158634458fd53a861d68eb84152e4106` |
| unverified unclassified | UnnamedContract<br>`0xc626befa4d22cc78c5fb74ab68edb02aaa9ab079` | non_address_book | unknown | unknown | unverified | n/a | `0x9ac4317298bf4ed0fa835beb7dc3363e6956d95a` |
| unverified unclassified | UnnamedContract<br>`0xc8757865920e0467f5d23b59845aa357a24ea38c` | non_address_book | unknown | unknown | unverified | n/a | `0x8b35064b158634458fd53a861d68eb84152e4106` |
| unverified unclassified | UnnamedContract<br>`0xc91857b90e367d2a9d4e991659a358b5f3e8e74d` | non_address_book | unknown | unknown | unverified | n/a | `0x9ac4317298bf4ed0fa835beb7dc3363e6956d95a` |
| unverified unclassified | UnnamedContract<br>`0xd0fd9390cd2a45756524ee9f07080d4b6b76b22a` | non_address_book | unknown | unknown | unverified | n/a | `0x28fa655c09918afc1798f4c152013685b21507bb` |
| unverified unclassified | UnnamedContract<br>`0xd114e338290faeb55a449841a9c3ed0c87ecdeda` | non_address_book | unknown | unknown | unverified | n/a | `0x28fa655c09918afc1798f4c152013685b21507bb` |
| unverified unclassified | UnnamedContract<br>`0xd632845c89c2ef329702257d0da2f08c0e0efcad` | non_address_book | unknown | unknown | unverified | n/a | `0x9ac4317298bf4ed0fa835beb7dc3363e6956d95a` |
| unverified unclassified | UnnamedContract<br>`0xd6701b114df3303ffee13bc08a8b7345ee454afe` | non_address_book | unknown | unknown | unverified | n/a | `0x9ac4317298bf4ed0fa835beb7dc3363e6956d95a` |
| unverified unclassified | UnnamedContract<br>`0xd6c64e28c09d889950862a3456395739f55233f0` | non_address_book | unknown | unknown | unverified | n/a | `0x28fa655c09918afc1798f4c152013685b21507bb` |
| unverified unclassified | UnnamedContract<br>`0xdb79f131acac4bd38b320e36c60ac542468a3b89` | non_address_book | unknown | unknown | unverified | n/a | `0x28fa655c09918afc1798f4c152013685b21507bb` |
| unverified unclassified | UnnamedContract<br>`0xe014b8351f61bf37d2329fe3f8c845548bef61b5` | non_address_book | unknown | unknown | unverified | n/a | `0x28fa655c09918afc1798f4c152013685b21507bb` |
| unverified unclassified | UnnamedContract<br>`0xe21b6194903282772bcf40fef6848f28f50b51ee` | non_address_book | unknown | unknown | unverified | n/a | `0x28fa655c09918afc1798f4c152013685b21507bb` |
| unverified unclassified | UnnamedContract<br>`0xe2a1d30cb17c44eb601812a5181043c203e897e6` | non_address_book | unknown | unknown | unverified | n/a | `0x9ac4317298bf4ed0fa835beb7dc3363e6956d95a` |
| unverified unclassified | UnnamedContract<br>`0xe69762c9e19c6537bc1884287cd341c6e7014713` | non_address_book | unknown | unknown | unverified | n/a | `0x9ac4317298bf4ed0fa835beb7dc3363e6956d95a` |
| unverified unclassified | UnnamedContract<br>`0xe7604d54a8e5a37ce605218f3aa2c573544e24a1` | non_address_book | unknown | unknown | unverified | n/a | `0x28fa655c09918afc1798f4c152013685b21507bb` |
| unverified unclassified | UnnamedContract<br>`0xe8db158643595b0f998cb9ff9ddbf7410918cb23` | non_address_book | unknown | unknown | unverified | n/a | `0x28fa655c09918afc1798f4c152013685b21507bb` |
| unverified unclassified | UnnamedContract<br>`0xece74c943eb325c8444f7e914af07eaea468ec4d` | non_address_book | unknown | unknown | unverified | n/a | `0x9ac4317298bf4ed0fa835beb7dc3363e6956d95a` |
| unverified unclassified | UnnamedContract<br>`0xed38db26a3a7643f4ea274c3e6139eb3d3a13d49` | non_address_book | unknown | unknown | unverified | n/a | `0x9ac4317298bf4ed0fa835beb7dc3363e6956d95a` |
| unverified unclassified | UnnamedContract<br>`0xef40fd44b78775df6fb0b19eb680475cf2d239ea` | non_address_book | unknown | unknown | unverified | n/a | `0x28fa655c09918afc1798f4c152013685b21507bb` |
| unverified unclassified | UnnamedContract<br>`0xf04d66d509ce3dfa386ed5c57c10e608dcc00c4a` | non_address_book | unknown | unknown | unverified | n/a | `0x9ac4317298bf4ed0fa835beb7dc3363e6956d95a` |
| unverified unclassified | UnnamedContract<br>`0xf14da7fc73c903936a89b30d5be3448ac840a751` | non_address_book | unknown | unknown | unverified | n/a | `0x9ac4317298bf4ed0fa835beb7dc3363e6956d95a` |
| unverified unclassified | UnnamedContract<br>`0xf199236b7af110f492c1a622089020b946911ffd` | non_address_book | unknown | unknown | unverified | n/a | `0x9ac4317298bf4ed0fa835beb7dc3363e6956d95a` |
| unverified unclassified | UnnamedContract<br>`0xf19944e4d4910d2eb304f12272bead3f5af6fb69` | non_address_book | unknown | unknown | unverified | n/a | `0x9ac4317298bf4ed0fa835beb7dc3363e6956d95a` |
| unverified unclassified | UnnamedContract<br>`0xf1f4a550cfdf9c50deabfba69ba3b0f35834d04d` | non_address_book | unknown | unknown | unverified | n/a | `0x9ac4317298bf4ed0fa835beb7dc3363e6956d95a` |
| unverified unclassified | UnnamedContract<br>`0xf5fbbdc4b69dcaafb3fb8e1dad532c266892cf0c` | non_address_book | unknown | unknown | unverified | n/a | `0x28fa655c09918afc1798f4c152013685b21507bb` |
| unverified unclassified | UnnamedContract<br>`0xf8e8dcbba08fcf38ecf26228a99a1f27ba3e78ea` | non_address_book | unknown | unknown | unverified | n/a | `0x9ac4317298bf4ed0fa835beb7dc3363e6956d95a` |
| unverified unclassified | UnnamedContract<br>`0xfaaeafc5cdd1b8b54849b77f8e74a4d8c3895c44` | non_address_book | unknown | unknown | unverified | n/a | `0x9ac4317298bf4ed0fa835beb7dc3363e6956d95a` |
| unverified unclassified | UnnamedContract<br>`0xfdef1ab044b69785ae57be3395afc837efb07440` | non_address_book | unknown | unknown | unverified | n/a | `0x28fa655c09918afc1798f4c152013685b21507bb` |
| unverified unclassified | 0x120af5748207161cc539ee5878fef9e3a12ad11a<br>`0xbc11091d6203500c480f0305140c687ab52b224b` | non_address_book | unknown | unknown | unverified | n/a | `0x28fa655c09918afc1798f4c152013685b21507bb` |
| unverified unclassified | 0x3c22f604cc8b422f43beca8d8cdef9922b96f454<br>`0x65d999ddaaa6b0424be37a53d5574e43e9433788` | non_address_book | unknown | unknown | unverified | n/a | `0x28fa655c09918afc1798f4c152013685b21507bb` |
| unverified unclassified | UnnamedContract<br>`0x120af5748207161cc539ee5878fef9e3a12ad11a` | non_address_book | unknown | unknown | unverified | n/a | `0x28fa655c09918afc1798f4c152013685b21507bb` |
| unverified unclassified | UnnamedContract<br>`0x17afa1eb1feede3ed791e1b5c4b32b544e6cbc0b` | retained_scope_excluded_inventory | unknown | live | unverified | n/a | `0x90dac303c9bcf43cb6e31eedad999490670f387e` |
| unverified unclassified | UnnamedContract<br>`0x206e179b89c18bf077b03df4ce224a7339447a0f` | non_address_book | unknown | unknown | unverified | n/a | `0x28fa655c09918afc1798f4c152013685b21507bb` |
| unverified unclassified | UnnamedContract<br>`0x3c22f604cc8b422f43beca8d8cdef9922b96f454` | non_address_book | unknown | unknown | unverified | n/a | `0x28fa655c09918afc1798f4c152013685b21507bb` |
| unverified unclassified | UnnamedContract<br>`0x3c43b7a07bf8ef7fb8fa0ebe7b822a94a5731136` | non_address_book | unknown | unknown | unverified | n/a | `0x28fa655c09918afc1798f4c152013685b21507bb` |
| unverified unclassified | UnnamedContract<br>`0x5409ff9585c9c942389f4f84ee4dc28ae2f361f1` | non_address_book | unknown | unknown | unverified | n/a | `0x28fa655c09918afc1798f4c152013685b21507bb` |
| unverified unclassified | UnnamedContract<br>`0x5e5003e1b658a9c37660f4e6a730833b8a433047` | non_address_book | unknown | unknown | unverified | n/a | `0x28fa655c09918afc1798f4c152013685b21507bb` |
| unverified unclassified | UnnamedContract<br>`0x6c75b6a04250c80b379a6b1cb0973020c9cbea26` | non_address_book | unknown | unknown | unverified | n/a | `0x28fa655c09918afc1798f4c152013685b21507bb` |
| unverified unclassified | UnnamedContract<br>`0x730c1be5c55ecef7ccdffbe1c6841ca08b5e9076` | non_address_book | unknown | unknown | unverified | n/a | `0x28fa655c09918afc1798f4c152013685b21507bb` |
| unverified unclassified | UnnamedContract<br>`0x8dfb9566316ef988978fdd5abf816e772880f549` | non_address_book | unknown | unknown | unverified | n/a | `0x90dac303c9bcf43cb6e31eedad999490670f387e` |
| unverified unclassified | UnnamedContract<br>`0xb51701488e07b5afcc8e1ec046292baa2a4e2770` | non_address_book | unknown | unknown | unverified | n/a | `0x28fa655c09918afc1798f4c152013685b21507bb` |
| unverified unclassified | UnnamedContract<br>`0xcd8f29e4f73b725b83d73949e4a9cf2369737cfb` | non_address_book | unknown | unknown | unverified | n/a | `0x28fa655c09918afc1798f4c152013685b21507bb` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [lianantech.com](https://lianantech.com/) | BEOSIN | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [peckshield.com/en](https://peckshield.com/en) | PeckShield | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [Smart contract security audit report—WING.pdf](https://3730995086-files.gitbook.io/~/files/v0/b/gitbook-legacy-files/o/assets%2F-MJP_Z6dq1ohzr1zOvcp%2F-MLelX8p2K88vPZoMqdW%2F-MLenAyhREQ5-daJvZSY%2FSmart%20contract%20security%20audit%20report%E2%80%94WING.pdf) | yAudit | Audit | 2020-09 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [Wing Flash Pool (EVM) Audit Report.pdf](https://3730995086-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F-MJP_Z6dq1ohzr1zOvcp%2Fuploads%2FaDE6vquvjLtsAAhMuP5k%2FWing%20Flash%20Pool%20(EVM)%20Audit%20Report.pdf) | PeckShield | Audit | 2021-04 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 4 | medium |
| [WING token (OKX) Audit Report.pdf](https://3730995086-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F-MJP_Z6dq1ohzr1zOvcp%2Fuploads%2FGRr8IG0K57uUZtAdqYLZ%2FWING%20token%20(OKX)%20Audit%20Report.pdf) | CERTIK | Audit | 2021-05 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [Wing NFT Pool Audit.pdf](https://3730995086-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F-MJP_Z6dq1ohzr1zOvcp%2Fuploads%2FQJ1x61eFyqKSqJx4VXLI%2FWing%20NFT%20Pool%20Audit.pdf) | unknown | Audit | 2022-08 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 9 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [11717] lianantech.com — no match: The provided text only contains the auditor name 'Lianantech - 成都链安' and no other content. No contracts, files, or dates are identifiable.
- [11718] peckshield.com/en — no match: The provided text is a placeholder page requiring JavaScript, containing no audit report content.
- [28401] Smart contract security audit report—WING.pdf — no match: Single contract wing.py audited. CompletionDate is 2020.09.13.
- [28403] Wing Flash Pool (EVM) Audit Report.pdf — no match: No explicit scope table; contracts extracted from findings targets and mentions in report.
- [28404] WING token (OKX) Audit Report.pdf — no match: Only one contract in scope: WingToken.sol
- [28405] Wing NFT Pool Audit.pdf — no match: Extracted contract names from findings lines and project description. Audit date from cover page.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| Smart contract security audit report—WING.pdf | wing | unmatched — not counted | — | SmartContractName: wing.py | no |
| Wing Flash Pool (EVM) Audit Report.pdf | CToken | unmatched — not counted | — | Target in findings PVE-001, PVE-003, PVE-005, PVE-007, PVE-008 | no |
| Wing Flash Pool (EVM) Audit Report.pdf | Comptroller | unmatched — not counted | — | Target in findings PVE-002, PVE-003, PVE-006, PVE-008, PVE-009, PVE-010 | no |
| Wing Flash Pool (EVM) Audit Report.pdf | KComptroller | unmatched — not counted | — | Target in finding PVE-004 | no |
| Wing Flash Pool (EVM) Audit Report.pdf | IToken | unmatched — not counted | — | Target in findings PVE-004, PVE-007, PVE-008 | no |
| WING token (OKX) Audit Report.pdf | WingToken | unmatched — not counted | — | listed in scope table | no |
| Wing NFT Pool Audit.pdf | InsurancePool | unmatched — not counted | — | mentioned in findings wing-nft-pool-1 and wing-nft-pool-6 | no |
| Wing NFT Pool Audit.pdf | PunkGateway | unmatched — not counted | — | mentioned in finding wing-nft-pool-2 | no |
| Wing NFT Pool Audit.pdf | LiquidateLogic | unmatched — not counted | — | mentioned in findings wing-nft-pool-3, wing-nft-pool-5, and wing-nft-pool-12 | no |
| Wing NFT Pool Audit.pdf | BendProtocolIncentivesController | unmatched — not counted | — | mentioned in finding wing-nft-pool-4 | no |
| Wing NFT Pool Audit.pdf | WETHGateway | unmatched — not counted | — | mentioned in finding wing-nft-pool-7 | no |
| Wing NFT Pool Audit.pdf | ReserveOracle | unmatched — not counted | — | mentioned in finding wing-nft-pool-8 | no |
| Wing NFT Pool Audit.pdf | BToken | unmatched — not counted | — | mentioned in finding wing-nft-pool-9 | no |
| Wing NFT Pool Audit.pdf | FutureBondAVAX | unmatched — not counted | — | mentioned in finding wing-nft-pool-10 | no |
| Wing NFT Pool Audit.pdf | ReserveLogic | unmatched — not counted | — | mentioned in finding wing-nft-pool-11 | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 22 |
| upstream | 0 |
| standard_library | 5 |
| needs_review | 156 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 6
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 15 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=3, low=2, medium=1
- Match method counts: n/a

Zero-match audit list:

- [11717] lianantech.com
- [11718] peckshield.com/en
- [28401] Smart contract security audit report—WING.pdf
- [28403] Wing Flash Pool (EVM) Audit Report.pdf
- [28404] WING token (OKX) Audit Report.pdf
- [28405] Wing NFT Pool Audit.pdf

Fork inheritance lineage and inherited audits are included when available.
