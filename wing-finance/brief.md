# Agentic Audit Brief: Wing Finance

## Project Overview

- Project: Wing Finance (`wing-finance`)
- Website: [https://wing.finance](https://wing.finance)
- Lifecycle: unknown
- Generated: 2026-07-04T14:54:10.242Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-b097
- Chains: bsc, ethereum, klaytn
- Contract surface: 169 unique implementations (184 raw deployments)
- DeFi Llama TVL: $25,592,668.44
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Lending. Structurally: 34 project-authored contract(s) across 2 chain(s); 10 ERC20 tokens; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 4 functional families. Its contracts share 21 common project-authored base contract(s) (ctoken, exponential, carefulmath). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 215; live-surface contracts included: 184 (10 live, 174 unknown).
- Excluded by liveness: 31 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/8 (0.0%)
- Deployed-live implementations: 8 of 169 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/9
- Verified + Unaudited implementations: 9
- Verified by bytecode match: 0
- Unverified implementations: 160
- Unique implementations: 169
- Raw deployments: 184
- Audits discovered: 2 (2 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Audit staleness (calendar age): 0 fresh, 0 aging, 0 stale, 2 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (9)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| CCompLikeDelegate | unknown | ethereum | n/a | [`0xa1849880593e96d2f7df77d0d38a7f2372ae10e0`](./contracts/ethereum-1/0xa1849880593e96d2f7df77d0d38a7f2372ae10e0/) | ⚠️ Unaudited |
| CErc20 | token | ethereum | n/a | [`0x39aa39c021dfbae8fac545936693ac917d5e7563`](./contracts/ethereum-1/0x39aa39c021dfbae8fac545936693ac917d5e7563/) | ⚠️ Unaudited |
| CErc20Delegate | token | ethereum | n/a | 2 deployments: ethereum [`0x5d3a536e4d6dbd6114cc1ead35777bab948e3643`](./contracts/ethereum-1/0x5d3a536e4d6dbd6114cc1ead35777bab948e3643/); ethereum `0x70e36f6bf80a52b3b46b3af8e106cc0ed743e8e4` | ⚠️ Unaudited |
| CEther | unknown | ethereum | n/a | [`0x4ddc2d193948926d02f9b1fe9e1daa0718270ed5`](./contracts/ethereum-1/0x4ddc2d193948926d02f9b1fe9e1daa0718270ed5/) | ⚠️ Unaudited |
| Comptroller | unknown | ethereum | n/a | 2 deployments: ethereum [`0x707b501cbce95c5fdb25005a51f33c5b1aa30607`](./contracts/ethereum-1/0x707b501cbce95c5fdb25005a51f33c5b1aa30607/); ethereum `0x7b5e3521a049c8ff88e6349f33044c6cc33c113c` | ⚠️ Unaudited |
| ComptrollerSweeper | unknown | ethereum | n/a | [`0xff3c813559127d60da732a0e8ec836f4c162df82`](./contracts/ethereum-1/0xff3c813559127d60da732a0e8ec836f4c162df82/) | ⚠️ Unaudited |
| ERC20Template | token | ethereum | n/a | [`0xdb0f18081b505a7de20b18ac41856bcb4ba86a1a`](./contracts/ethereum-1/0xdb0f18081b505a7de20b18ac41856bcb4ba86a1a/) | ⚠️ Unaudited |
| NFTOracle | unknown | ethereum | n/a | [`0x45239322a846578294eb9b2155d5cdb98d2519af`](./contracts/ethereum-1/0x45239322a846578294eb9b2155d5cdb98d2519af/) | ⚠️ Unaudited |
| pONT | unknown | ethereum | n/a | [`0xcb46c550539ac3db72dc7af7c89b11c306c727c2`](./contracts/ethereum-1/0xcb46c550539ac3db72dc7af7c89b11c306c727c2/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (160)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| BNFTRegistry | unknown | ethereum | n/a | `0x11dd0d4a92d34ae3cdcd56998d68884d225a9768` | ❓ Unverified |
| Proxy (impl: 0x3e7a502aa00317b470108ab1773289f57b487ed9) | proxy | ethereum | n/a | `0x2f9fa63066cfa2d727f57ddf1991557ba86f12c9` | ❓ Unverified |
| Proxy (impl: 0x4f24ec178c862497aa4519c18f9462c8dc3fcdb9) | unknown | ethereum | n/a | 2 deployments: ethereum `0x0855524fac05dda9e35e7cb9047cc6fd1cf21989`; ethereum `0x4f24ec178c862497aa4519c18f9462c8dc3fcdb9` | ❓ Unverified |
| Proxy (impl: 0x84815a3738aef9aa81d7bc3a6dbfa8d26970445e) | unknown | ethereum | n/a | 2 deployments: ethereum `0x5304e9188b6e2c4988f230b3d1c4786d9e05fadb`; ethereum `0x84815a3738aef9aa81d7bc3a6dbfa8d26970445e` | ❓ Unverified |
| Proxy (impl: 0xaf8ca43e6f422f06c2f2c9fecfb09035d70858e3) | proxy | ethereum | n/a | `0x091806040fd70b40bcda5e01d00eafad8d10ab56` | ❓ Unverified |
| Proxy (impl: 0xfdef1ab044b69785ae57be3395afc837efb07440) | unknown | ethereum | n/a | 5 deployments: ethereum `0x0b3497204bda07d8b1c07c6ae246a1b267a9cecf`; ethereum `0x12ee9b2e5f8746ca8a4a36260799301d03a066a4`; ethereum `0x3c22f604cc8b422f43beca8d8cdef9922b96f454`; ethereum `0x47dac542c5b9377e3a5d30992a6c32a3ad7f33db`; ethereum `0xfdef1ab044b69785ae57be3395afc837efb07440` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x00e0a0b36874e707b2240e8b6458912537427c75` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x03799d4ab15e58e59c1c9db747ebe060972a4c99` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x05a431d759fef7ec0eed3af7b6077e170086e6b8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x06c7b7269d4ad8a613e22a90efb56658650d3ee9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x087c44cb3de4e8f5cafdc5dd8cdb012ef7ae3199` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x08fa91c61173277de84be4ba13a71d815e266086` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0a705821cd494dfab4c09603460126cc05eb894f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0ba412aea25bca6c25f46967c7714a343ac781e3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0e3ea0a265f2deea2717db9979c756d9d759a711` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1022d340e43db4ac390395755c7507530da5493e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x15595b257724163dc62f61fff789f5a8e09478ce` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x17c0fa99710e930e7c6add23ec9daaa24a52d3ea` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1d47178bf91f848b971a1edd5089537a70b74e1b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x207fe8b61ca54d93ce46d94a55c49678dec51f59` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2255e3a57a593a4d98f6ffdba42d584e3e19e79a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x22ada8420468ea3b3b39b87cda5742b183c7e28b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2437bb2cc68763e6113743af436312b692bf21de` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x252a7aa203a6df2f7781a124cb95c27aae4f286c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2c4206a2bd18d581b62e793b97e89e0977619f95` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x30061d6b51f193223300787c3052aab6cfcb6df7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x30439551a4adedb9f29a5bdba6b4aafcc36dff98` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x363838fa35711ea3f8c8f95151203723cc6ee535` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x381225768dd2bd60d70482b51109d0defee92503` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3d732aed4f05b4e32315f612b05d2e3340fb43e2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | 2 deployments: ethereum `0x3db35c654bbf0f777fc3b4b35a80ade783936552`; ethereum `0x750b9848b8f4956a41f6822f53ac1f80b4486bde` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | 2 deployments: ethereum `0x409b55175196fafc0e13f12b85fd9a27adad9d0b`; ethereum `0xbb81669b6aba6e15b5da4e30ab90bea920bc7b24` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x411cb02b25b8ad0e1e4296b8919b27baff6a0b55` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x433b57d0e9a7d555c6c802a39df9519013895d4c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x454f7bf0afa2201d34e770730174662ea519431d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x47ddda94ae5d8d0e62e770d199ed419b88e801ea` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x49831fd1b9753b630a5b220656dd42d6cd7ae8f1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4e05308b1e5424884ebec7822936d1af39b9b76e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4ebb34865ae375bc7f298384de5eeab78fd3572a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4fa2425edf435b52016447ab897d300d78c0afe4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x519020fa558a52df57854135345c28024a596b68` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x53a13a87124bbd71f58f6595b9133b5ef2173bc1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x53c5f74caea8b937b0d820c1d13b73b695f16728` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5409ff9585c9c942389f4f84ee4dc28ae2f361f1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x54a69e1de50b3d44def302087dbe3de0687213da` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5577d30300b7f7fa3ac8c5041a9909a031738b93` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5b433b06e73004a24217af16e6efe4b3292d45d5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5c1bbf2898022858ce348e8175f728c8a9f7aee5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5e5003e1b658a9c37660f4e6a730833b8a433047` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6206001e5e83c954eb11a7fb842f848bb12894bd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x63445986a5ff58cf9b344564f41ef039f5e848e1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x63644b7464bd753dea3cb5aeddf5edec00c0facb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6482d3157634e1f595066a945db68b88c642e4a4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x64ef1210965b7974b6cdb959d6d610c57cc64b8b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x65d999ddaaa6b0424be37a53d5574e43e9433788` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x674090a992d4cbf3d752a7998e864a6942af23e4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6a4c89eb9a26a2da34f13f8976daa9fd7526f35c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6d5058b64d5a51ab5b5f08382d3f99c35cace36f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x729ef93f7715cbac3f3fa604f5d0229af8db6153` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7300a4ddf133ac71fc1fbebee1fc3dd2de3ecd50` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7327717994a4ebabc6be9a09fe0f8379d7cc0b19` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x74e104fef61679b3cf08138eb1166a6b4553f88f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x77b3e31498113fef92372832820f4d93a65fc3f0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7bb823a17a427eb920ca2ff16c3b70ae33cf6f82` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7c7cb2485f3c04ef2ebd08fcc2356545c541142c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x85ed5c4488f9d17f81cc963ec17c2236209d7dd0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8815e486fb446e954497358582decd9fb3451ec6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8dac0a3750f198043af6080a13720681fbd222be` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8dd5d5b857213c9cba215a7e60ff80f9e3e02869` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8de3197dce575b0307a66f79607f9f21cd90a41f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | 2 deployments: ethereum `0x8e1c20f6a4b1756358d1d8f961b60fa458d55da9`; ethereum `0xe4e525d22f25d800db2cfd2af842cffaf627668b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8ea0c108981bff3b22115643ec453a6918a2298e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8f75358c5c48828ddbd249d8cbc6b43f4a56140c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9385fe25b39d1e5ac310ba16c631865add4ecee7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x956eb73f4296b2cd16b26343296529dc76aadf4a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | 2 deployments: ethereum `0x9687837f69ac8653857c15d05f8c5903582dd486`; ethereum `0xf804ba63992259dcddd7e6d8a88c45ea60fa0445` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x98fa8859b368279167c882fc9b9e638112dfe613` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9bf292c080f34c7f1c32f24c993ad9f3795d76c0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9d5f0495721e9002130a1cb1751d5653181b43e0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9f895e4f6ee3ed98488fe46fe25b537f6efd309d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa66fc863bd81878d2cc1dc0bc95c1fbae6b80c46` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa6b7fa5112c0c3dfe93430936047811f98bb8b40` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa7e576a5867d08d1bf0fd7f27b1ec710fd28e071` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xabcad77679099fef11cb7249c7dbe8f122812948` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xabdead9f8085c2321a5a66a2a0e649fd917e9aff` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xacbddf6f7a1b74c0aaea425b605397e443bdcd8a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xace336b02cdcbf7c66a3f8b42e68d7a6b212d40d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xafa9c49b07f2e4375ab853091221a86b0c7e8855` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb2265a122814da516318f727183a5d8feca8bace` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb51d7a841911461d4ae97a49de78be086a71a724` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb936e24d9d4b47f8ed3100964e0c96663019b28c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbb86f659b3236d2d28f0bd474375ee4179e8714f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbb9de9e1178731720b39c99c0248b5604a953fab` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbbf53226c3447a9e2acb1bd2c338375bdd970f78` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbc11091d6203500c480f0305140c687ab52b224b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbc6785e44a4a3ace7ede61c39f67376c4a5dc12b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbde7da64d68d7db95837f6e72b4e52b9cec05051` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbeb5bc6d40234ef89b24ca98f23ca5817709f0da` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbee0e20401ccbfb3f59dbfef3b9158799853e390` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc148934d44cc2e6592a8879cc5a7f5d0e8bb73f6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc6061ca95ad0378bdb12381206a1d723d14b72c4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc626befa4d22cc78c5fb74ab68edb02aaa9ab079` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc8757865920e0467f5d23b59845aa357a24ea38c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc91857b90e367d2a9d4e991659a358b5f3e8e74d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd0fd9390cd2a45756524ee9f07080d4b6b76b22a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd114e338290faeb55a449841a9c3ed0c87ecdeda` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd632845c89c2ef329702257d0da2f08c0e0efcad` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd6701b114df3303ffee13bc08a8b7345ee454afe` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd6c64e28c09d889950862a3456395739f55233f0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd93f4cf882d7d576a8dc09e606b38caf18eda796` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xdb79f131acac4bd38b320e36c60ac542468a3b89` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe014b8351f61bf37d2329fe3f8c845548bef61b5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe21b6194903282772bcf40fef6848f28f50b51ee` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe2a1d30cb17c44eb601812a5181043c203e897e6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe69762c9e19c6537bc1884287cd341c6e7014713` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe6dcf2a3ea2f90865205ae7c4709a3a6cce15d77` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe7604d54a8e5a37ce605218f3aa2c573544e24a1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe8db158643595b0f998cb9ff9ddbf7410918cb23` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xeb063e3c21ee3468f056d1f477b8ed8697aa7ff8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xece74c943eb325c8444f7e914af07eaea468ec4d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xed38db26a3a7643f4ea274c3e6139eb3d3a13d49` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xef40fd44b78775df6fb0b19eb680475cf2d239ea` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf04d66d509ce3dfa386ed5c57c10e608dcc00c4a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf14da7fc73c903936a89b30d5be3448ac840a751` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf199236b7af110f492c1a622089020b946911ffd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf19944e4d4910d2eb304f12272bead3f5af6fb69` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf1f4a550cfdf9c50deabfba69ba3b0f35834d04d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf5fbbdc4b69dcaafb3fb8e1dad532c266892cf0c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf8e8dcbba08fcf38ecf26228a99a1f27ba3e78ea` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfa02a5cd14a15c4717bdc7a4479aba40eb93a01c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfaaeafc5cdd1b8b54849b77f8e74a4d8c3895c44` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | 2 deployments: bsc `0x120af5748207161cc539ee5878fef9e3a12ad11a`; bsc `0xbc11091d6203500c480f0305140c687ab52b224b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | 2 deployments: bsc `0x17afa1eb1feede3ed791e1b5c4b32b544e6cbc0b`; bsc `0x49620e9bfd117c7b05b4732980b05b7afee60a69` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x206e179b89c18bf077b03df4ce224a7339447a0f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x22ada8420468ea3b3b39b87cda5742b183c7e28b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x252a7aa203a6df2f7781a124cb95c27aae4f286c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x30061d6b51f193223300787c3052aab6cfcb6df7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | 2 deployments: bsc `0x3c22f604cc8b422f43beca8d8cdef9922b96f454`; bsc `0x65d999ddaaa6b0424be37a53d5574e43e9433788` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x3c43b7a07bf8ef7fb8fa0ebe7b822a94a5731136` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x49831fd1b9753b630a5b220656dd42d6cd7ae8f1` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x4ebb34865ae375bc7f298384de5eeab78fd3572a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5409ff9585c9c942389f4f84ee4dc28ae2f361f1` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5e5003e1b658a9c37660f4e6a730833b8a433047` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6575cfa99a00a054cc3536f7978636701498fc81` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x683f5af0fdfc2894363517f7cf30fd8bdadf7b96` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6c75b6a04250c80b379a6b1cb0973020c9cbea26` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x730c1be5c55ecef7ccdffbe1c6841ca08b5e9076` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x7ab3a7059ebc247b25df7b492548c5e2737db84f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x8dfb9566316ef988978fdd5abf816e772880f549` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xab96cb2317dfc8280a90deb7ef7b97efe34f926f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb51701488e07b5afcc8e1ec046292baa2a4e2770` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb51d7a841911461d4ae97a49de78be086a71a724` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xcd8f29e4f73b725b83d73949e4a9cf2369737cfb` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xdf69e8da10f0f8407b87ac839550053a001d3d7d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe21b6194903282772bcf40fef6848f28f50b51ee` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xef40fd44b78775df6fb0b19eb680475cf2d239ea` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf0ee3d7181c3e3a46f85fa113e629167e06aa916` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf78274d7b5cca63b7d6692dfffd8398d69cefa34` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xfabf6eb0219e2ce7f38b0534053104b3400b8718` | ❓ Unverified |
| UnnamedContract | unknown | klaytn | n/a | `0x7a47ab305b8a2a3f4020d13fa9ef73cddcc0e7d4` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [lianantech.com](https://lianantech.com/) | BEOSIN | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [peckshield.com/en](https://peckshield.com/en) | PeckShield | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0xa1849880593e96d2f7df77d0d38a7f2372ae10e0`](./contracts/ethereum-1/0xa1849880593e96d2f7df77d0d38a7f2372ae10e0/) | CCompLikeDelegate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x39aa39c021dfbae8fac545936693ac917d5e7563`](./contracts/ethereum-1/0x39aa39c021dfbae8fac545936693ac917d5e7563/) | CErc20 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5d3a536e4d6dbd6114cc1ead35777bab948e3643`](./contracts/ethereum-1/0x5d3a536e4d6dbd6114cc1ead35777bab948e3643/) | CErc20Delegate | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4ddc2d193948926d02f9b1fe9e1daa0718270ed5`](./contracts/ethereum-1/0x4ddc2d193948926d02f9b1fe9e1daa0718270ed5/) | CEther | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x707b501cbce95c5fdb25005a51f33c5b1aa30607`](./contracts/ethereum-1/0x707b501cbce95c5fdb25005a51f33c5b1aa30607/) | Comptroller | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xff3c813559127d60da732a0e8ec836f4c162df82`](./contracts/ethereum-1/0xff3c813559127d60da732a0e8ec836f4c162df82/) | ComptrollerSweeper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xdb0f18081b505a7de20b18ac41856bcb4ba86a1a`](./contracts/ethereum-1/0xdb0f18081b505a7de20b18ac41856bcb4ba86a1a/) | ERC20Template | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x45239322a846578294eb9b2155d5cdb98d2519af`](./contracts/ethereum-1/0x45239322a846578294eb9b2155d5cdb98d2519af/) | NFTOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xcb46c550539ac3db72dc7af7c89b11c306c727c2`](./contracts/ethereum-1/0xcb46c550539ac3db72dc7af7c89b11c306c727c2/) | pONT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 9 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 160 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [11717] lianantech.com
- [11718] peckshield.com/en

Fork inheritance lineage and inherited audits are included when available.
